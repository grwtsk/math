/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Upstream complex norm inequalities, finite sums and hyperbolic functions: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#661. Parent draft: PR #656, exact head
6ce062764afff69749e69888830096d5e3b17897.
-/
import GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing

/-!
# A finite primitive-iterate trace-shaped packet

Marklof--Monk's twisted Selberg trace formula has finite terms indexed by
an *oriented primitive geodesic* gamma and a positive iterate n, with
homology n[gamma] and coefficient
ell_gamma * hat_h(n*ell_gamma) / (2*sinh(n*ell_gamma/2)).

This module provides a source-identity-preserving finite algebraic model
of those terms, built from *supplied candidate labels*. It does NOT
construct a hyperbolic surface, certify that a label is a geodesic,
derive its homology or length, import Selberg's trace identity,
prove compact support of a Fourier transform, or take an infinite limit.

The supplier proves one exact finite cutoff/error interface:
  |finite_q(K) - integral_selected(M)|
    <= modular_alias_mass(K) + omitted_selected_weight_mass(K,M)
for K <= M. Both error coordinates remain named and independent.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket

open scoped BigOperators
open GRWTSK.Analysis.Fourier.FiniteCharacterCylinder
open GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing

variable {γ : Type*} {m : ℕ}

/-- Candidate primitive IDs, marked signed integral homology coordinates,
positive candidate lengths, a *supplied* complex Fourier test function,
and a target homology class. No field certifies a genuine geodesic. -/
structure TraceShapedInput (γ : Type*) (m : ℕ) where
  primitiveCandidates : Finset γ
  homology : γ → Fin m → ℤ
  length : γ → ℝ
  length_pos : ∀ a ∈ primitiveCandidates, 0 < length a
  fourierTest : ℝ → ℂ
  target : Fin m → ℤ

/-- Preserve both the primitive candidate ID and the positive iterate ID.
At K = 0 the selected finite packet is empty. -/
def iterateSources (t : TraceShapedInput γ m) (K : ℕ) : Finset (γ × ℕ) :=
  t.primitiveCandidates.product (Finset.Icc 1 K)

/-- Integral homology of the iterate, *given* a homology label for the
primitive candidate. No homotopy or abelianization theorem is implied. -/
def iterateHomology (t : TraceShapedInput γ m) (a : γ × ℕ) :
    Fin m → ℤ :=
  fun i => (a.2 : ℤ) * t.homology a.1 i

/-- The exact Selberg geometric-side coefficient shape for a selected
primitive/iterate term. It is not an asserted geometric trace coefficient
until an external source-preservation theorem supplies actual data. -/
def traceShapeWeight (t : TraceShapedInput γ m) (a : γ × ℕ) : ℂ :=
  ((t.length a.1 : ℂ) *
    t.fourierTest ((a.2 : ℝ) * t.length a.1)) /
      ((2 * Real.sinh (((a.2 : ℝ) * t.length a.1) / 2) : ℝ) : ℂ)

/-- The complete finite tuple-indexed packet, directly consumed by the
exact modular-alias theorem from #653. -/
def tracePacket (t : TraceShapedInput γ m) (K : ℕ) :
    FiniteHomologyPacket (γ × ℕ) m where
  sources := iterateSources t K
  homology := iterateHomology t
  amplitude := traceShapeWeight t
  target := t.target

/-- Iterated integral homology is additive in the supplied iterate label. -/
theorem iterateHomology_add (t : TraceShapedInput γ m)
    (a : γ) (n k : ℕ) :
    iterateHomology t (a, n + k) =
      fun i => iterateHomology t (a, n) i +
        iterateHomology t (a, k) i := by
  funext i
  simp [iterateHomology, add_mul]

/-- At iteration zero, every supplied homology label is multiplied by zero.
Zero is not included in any of the actual trace packet source sets. -/
theorem iterateHomology_zero (t : TraceShapedInput γ m) (a : γ) :
    iterateHomology t (a, 0) = fun _ => 0 := by
  funext i
  simp [iterateHomology]

/-- The geometric coefficient's real denominator is nonzero for every
candidate with a proved positive length and every positive iterate.
The proof does not claim that this input came from a real surface. -/
theorem traceShape_denominator_ne_zero (t : TraceShapedInput γ m)
    (a : γ) (ha : a ∈ t.primitiveCandidates)
    (n : ℕ) (hn : 1 ≤ n) :
    (2 * Real.sinh (((n : ℝ) * t.length a) / 2)) ≠ 0 := by
  have hnreal : (0 : ℝ) < (n : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by omega : (0 : ℕ) < 1) hn)
  have hlen : 0 < t.length a := t.length_pos a ha
  have harg : (0 : ℝ) < ((n : ℝ) * t.length a) / 2 := by
    exact div_pos (mul_pos hnreal hlen) (by norm_num)
  have hsinh : 0 < Real.sinh (((n : ℝ) * t.length a) / 2) :=
    Real.sinh_pos_iff.mpr harg
  exact ne_of_gt (mul_pos (by norm_num) hsinh)

/-- Every actual source has both a candidate primitive and an iterate
in the closed interval [1,K]; in particular n=0 never enters. -/
theorem mem_iterateSources_iff (t : TraceShapedInput γ m)
    (K : ℕ) (a : γ × ℕ) :
    a ∈ iterateSources t K ↔
      a.1 ∈ t.primitiveCandidates ∧ 1 ≤ a.2 ∧ a.2 ≤ K := by
  simp [iterateSources, Finset.mem_product, Finset.mem_Icc, and_assoc]

@[simp] theorem iterateSources_zero (t : TraceShapedInput γ m) :
    iterateSources t 0 = ∅ := by
  simp [iterateSources]

/-- Increasing the iterate cutoff never deletes or relabels source IDs. -/
theorem iterateSources_mono (t : TraceShapedInput γ m)
    {K M : ℕ} (hKM : K ≤ M) :
    iterateSources t K ⊆ iterateSources t M := by
  intro a ha
  rcases (mem_iterateSources_iff t K a).mp ha with ⟨hsource, hlow, hhigh⟩
  exact (mem_iterateSources_iff t M a).mpr
    ⟨hsource, hlow, hhigh.trans hKM⟩

/-- The finite iterate cutoff is a *literal* double sum, including the
specific orientation/iterate source IDs supplied by the caller. -/
theorem torsionProjection_eq_trace_double_sum (t : TraceShapedInput γ m)
    (q : ℕ) [NeZero q] (K : ℕ) :
    torsionProjection q (tracePacket t K) =
      ∑ a ∈ t.primitiveCandidates, ∑ n ∈ Finset.Icc 1 K,
        traceShapeWeight t (a, n) *
          tupleCharacterMean q m
            (residueTuple q (iterateHomology t (a, n)))
            (residueTuple q t.target) := by
  classical
  change (∑ x ∈ t.primitiveCandidates.product (Finset.Icc 1 K),
    traceShapeWeight t x *
      tupleCharacterMean q m
        (residueTuple q (iterateHomology t x))
        (residueTuple q t.target)) = _
  exact Finset.sum_product' _ _ _

/-- The terms genuinely omitted between finite cutoffs K and M.
This set is not an infinite trace-formula tail. -/
def omittedSources (t : TraceShapedInput γ m) (K M : ℕ) :
    Finset (γ × ℕ) :=
  iterateSources t M \ iterateSources t K

/-- The omitted integral-homology-selected complex amplitude. -/
def omittedIntegral (t : TraceShapedInput γ m) (K M : ℕ) : ℂ :=
  ∑ a ∈ omittedSources t K M,
    if iterateHomology t a = t.target then traceShapeWeight t a else 0

/-- A finite, explicitly nonnegative L1 tail budget. -/
def omittedMass (t : TraceShapedInput γ m) (K M : ℕ) : ℝ :=
  ∑ a ∈ omittedSources t K M, ‖traceShapeWeight t a‖

/-- The selected integral projection at the larger finite cutoff is the
smaller cutoff plus the actually omitted selected terms. -/
theorem integralProjection_large_eq_small_add_omitted
    (t : TraceShapedInput γ m) {K M : ℕ} (hKM : K ≤ M) :
    integralProjection (tracePacket t M) =
      integralProjection (tracePacket t K) +
        omittedIntegral t K M := by
  classical
  have hsum :=
    (Finset.sum_sdiff
      (f := fun a : γ × ℕ =>
        if iterateHomology t a = t.target then traceShapeWeight t a else 0)
      (iterateSources_mono t hKM)).symm
  simpa only [integralProjection, tracePacket, omittedIntegral, omittedSources,
    add_comm] using hsum

/-- Triangle inequality for the *finite* omitted-term budget, with the
integral selection predicate kept in the exact expression. -/
theorem omittedIntegral_norm_le
    (t : TraceShapedInput γ m) (K M : ℕ) :
    ‖omittedIntegral t K M‖ ≤ omittedMass t K M := by
  classical
  calc
    ‖omittedIntegral t K M‖ ≤
        ∑ a ∈ omittedSources t K M,
          ‖(if iterateHomology t a = t.target
            then traceShapeWeight t a else (0 : ℂ))‖ := by
          exact norm_sum_le _ _
    _ ≤ omittedMass t K M := by
      unfold omittedMass
      apply Finset.sum_le_sum
      intro a ha
      split_ifs <;> simp

/-- One auditable finite bound with *two independent errors*: source-level
finite modular aliases at K, and truly omitted terms K<n<=M.
Nothing here estimates an infinite geodesic sum or its growth. -/
theorem finite_trace_cutoff_alias_error
    (t : TraceShapedInput γ m)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M) :
    ‖torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t M)‖ ≤
      aliasMass q (tracePacket t K) + omittedMass t K M := by
  have hlarge := integralProjection_large_eq_small_add_omitted t hKM
  have hdiff :
      torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t M) =
      (torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t K)) -
        omittedIntegral t K M := by
    rw [hlarge]
    abel
  rw [hdiff]
  exact (norm_sub_le _ _).trans
    (add_le_add
      (torsionProjection_error_le q (tracePacket t K))
      (omittedIntegral_norm_le t K M))

/-- If the selected Fourier test vanishes on *each* omitted term's
n*length argument, its actual finite coefficient vanishes. This does
not assert a theorem about omitted primitive geodesics beyond the
supplied candidate family. -/
theorem traceShapeWeight_zero_of_fourier_zero
    (t : TraceShapedInput γ m) (a : γ × ℕ)
    (h : t.fourierTest ((a.2 : ℝ) * t.length a.1) = 0) :
    traceShapeWeight t a = 0 := by
  simp [traceShapeWeight, h]

/-- Pointwise zero Fourier contributions eliminate this finite tail
budget only. The original q-modular alias budget remains. -/
theorem omittedMass_zero_of_fourier_zero
    (t : TraceShapedInput γ m) (K M : ℕ)
    (h : ∀ a ∈ omittedSources t K M,
      t.fourierTest ((a.2 : ℝ) * t.length a.1) = 0) :
    omittedMass t K M = 0 := by
  classical
  unfold omittedMass
  apply Finset.sum_eq_zero
  intro a ha
  rw [traceShapeWeight_zero_of_fourier_zero t a (h a ha)]
  simp

/-- Even when all omitted Fourier test contributions vanish, one still
needs an independent modular-alias estimate. -/
theorem finite_trace_cutoff_error_of_fourier_zero
    (t : TraceShapedInput γ m)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M)
    (hzero : ∀ a ∈ omittedSources t K M,
      t.fourierTest ((a.2 : ℝ) * t.length a.1) = 0) :
    ‖torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t M)‖ ≤
      aliasMass q (tracePacket t K) := by
  have hbound := finite_trace_cutoff_alias_error t q hKM
  rw [omittedMass_zero_of_fourier_zero t K M hzero, add_zero] at hbound
  exact hbound

/-- A zero cutoff has no primitive-iterate terms, even if the input
candidate collection is nonempty. -/
theorem tracePacket_zero_sources (t : TraceShapedInput γ m) :
    (tracePacket t 0).sources = ∅ :=
  iterateSources_zero t

end GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket
