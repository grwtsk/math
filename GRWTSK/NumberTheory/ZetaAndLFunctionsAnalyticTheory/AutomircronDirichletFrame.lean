/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AutomircronPrimeKernel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedResidueWaveform
import Mathlib.NumberTheory.DirichletCharacter.Basic
import Mathlib

/-!
# Actual A_j: complete residue fibers, flic and wind Dirichlet

Local attribution: grwtsk contributors.

The *source* A_j is the real signed square-root Möbius moment. The residue
frames are exactly the existing (parity, floor(n/2) mod d^2) classReciprocal
and classAbelSample. Neither the modulus d^2 nor the coefficient-precision
axis nor the dyadic time j is identified with another parameter.

'flic' is an involutive REFLECTION of ZMod q readout labels. 'windDirichlet'
is a multiplicative Dirichlet character on the actual ZMod q fiber. This
character is zero on NONUNITS; the nonunit contribution has a separate exact
signed return. Neither is claimed to be an automorphism of the numerical
indices, the original integral response, or the complete causal Gram.

An odd Dirichlet winding cancels a reflected pair exactly, but the unreflected
winding and the original (principal/unweighted) arithmetic can remain large.
The genuinely arithmetic Abel birth cancellation from the existing source
survives an arbitrary Dirichlet character winding. No unconditional bound on
A_j or the endpoint sum is obtained.

All new Lean theorem bodies: SOURCE_PROOF_CANDIDATE; compilation, expected
signatures, fresh kernel, transitive axioms: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AutomircronDirichletFrame

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform

/-- The original five-moment A_j, with no replacement coefficient. -/
def Aj (j : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 j, moebiusReal n * (Real.sqrt n)⁻¹

/-- The closed sampled source is exactly A_j minus its Mertens endpoint. -/
theorem Aj_eq_source_sample (j : ℕ) :
    Aj j = sampleResidue j +
      (Real.sqrt j)⁻¹ * mertensPrefix (j : ℝ) := by
  unfold Aj sampleResidue
  ring

/-- Exact finite partition through BOTH parity classes and ALL square-modulus
classes. This generalizes the source's private finite-sum helper to the
specific A_j readout; the source-side class definition is unchanged. -/
theorem Aj_eq_complete_classReciprocal (j d : ℕ) [NeZero d] :
    Aj j = ∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
      classReciprocal d r a j := by
  classical
  have hparity (n : ℕ) : n % 2 ∈ Finset.range 2 := by
    simp only [Finset.mem_range]
    omega
  have hsingle (n : ℕ) :
      (∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
        if n % 2 = r ∧ classCoordinate d n = a then
          moebiusReal n * (Real.sqrt n)⁻¹ else 0) =
          moebiusReal n * (Real.sqrt n)⁻¹ := by
    calc
      _ = ∑ r ∈ Finset.range 2,
            if n % 2 = r then
              moebiusReal n * (Real.sqrt n)⁻¹ else 0 := by
          apply Finset.sum_congr rfl
          intro r _
          by_cases hr : n % 2 = r
          · simp [hr]
          · simp [hr]
      _ = _ := by simp [hparity n]
  unfold Aj classReciprocal
  calc
    (∑ n ∈ Finset.Icc 1 j,
        moebiusReal n * (Real.sqrt n)⁻¹) =
      ∑ n ∈ Finset.Icc 1 j, ∑ r ∈ Finset.range 2,
        ∑ a : ZMod (d * d),
          if n % 2 = r ∧ classCoordinate d n = a then
            moebiusReal n * (Real.sqrt n)⁻¹ else 0 := by
      apply Finset.sum_congr rfl
      intro n _
      exact (hsingle n).symm
    _ = ∑ r ∈ Finset.range 2, ∑ n ∈ Finset.Icc 1 j,
        ∑ a : ZMod (d * d),
          if n % 2 = r ∧ classCoordinate d n = a then
            moebiusReal n * (Real.sqrt n)⁻¹ else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
          ∑ n ∈ Finset.Icc 1 j,
            if n % 2 = r ∧ classCoordinate d n = a then
              moebiusReal n * (Real.sqrt n)⁻¹ else 0 := by
      apply Finset.sum_congr rfl
      intro r _
      rw [Finset.sum_comm]

/-- Reflection of residue READOUTS, not of the physical integer n. -/
def flic {q : ℕ} (v : ZMod q → ℂ) : ZMod q → ℂ :=
  fun a => v (-a)

theorem flic_involution {q : ℕ} (v : ZMod q → ℂ) :
    flic (flic v) = v := by
  funext a
  simp [flic]

/-- Every Dirichlet winding is typed by its actual arithmetic modulus. -/
def windDirichlet {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (v : ZMod q → ℂ) : ℂ :=
  ∑ a : ZMod q, χ a * v a

/-- Reflection reindexes the character, with NO assumption that v(-a)=v(a). -/
theorem windDirichlet_flic_reindex {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (v : ZMod q → ℂ) :
    windDirichlet χ (flic v) =
      ∑ a : ZMod q, χ (-a) * v a := by
  classical
  unfold windDirichlet flic
  apply Finset.sum_bij (fun a _ => -a)
  · intro a _
    simp
  · intro a _ b _ h
    exact neg_injective h
  · intro a _
    refine ⟨-a, by simp, by simp⟩
  · intro a _
    simp

/-- 'Odd Dirichlet' is explicitly typed as a parity equation, not
presupposed for all moduli. -/
def OddWind {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) : Prop :=
  ∀ a : ZMod q, χ (-a) = -χ a

/-- TRUE cancellation between a wound frame and its reflected partner.
It does not imply the original unreflected wind is zero. -/
theorem windDirichlet_flic_odd {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (v : ZMod q → ℂ)
    (hχ : OddWind χ) :
    windDirichlet χ (flic v) = -windDirichlet χ v := by
  rw [windDirichlet_flic_reindex]
  calc
    (∑ a : ZMod q, χ (-a) * v a) =
      ∑ a : ZMod q, -(χ a * v a) := by
        apply Finset.sum_congr rfl
        intro a _
        rw [hχ a]
        ring
    _ = -windDirichlet χ v := by simp [windDirichlet]

theorem windDirichlet_odd_reflection_cancellation {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (v : ZMod q → ℂ)
    (hχ : OddWind χ) :
    windDirichlet χ v + windDirichlet χ (flic v) = 0 := by
  rw [windDirichlet_flic_odd χ v hχ]
  simp


/-- The pinned Mathlib Odd predicate is a real supplier for the sign law;
no separately assumed parity function is necessary. -/
theorem oddWind_of_mathlib_odd {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hχ : χ.Odd) : OddWind χ := by
  intro a
  exact DirichletCharacter.Odd.eval_neg χ a hχ

/-- A fully typed odd Dirichlet character cancels the reflected winding.
This is an exact character-sector identity, NOT a bound for the scalar A_j. -/
theorem odd_dirichlet_reflection_cancellation {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (v : ZMod q → ℂ)
    (hχ : χ.Odd) :
    windDirichlet χ v + windDirichlet χ (flic v) = 0 :=
  windDirichlet_odd_reflection_cancellation χ v
    (oddWind_of_mathlib_odd χ hχ)

/-- Exact nonunit accounting: a Dirichlet character is NOT an additive
Fourier character of every residue of ZMod q. -/
def unitPart {q : ℕ} [NeZero q] (v : ZMod q → ℂ) : ℂ :=
  ∑ a : ZMod q, if IsUnit a then v a else 0

def nonunitPart {q : ℕ} [NeZero q] (v : ZMod q → ℂ) : ℂ :=
  ∑ a : ZMod q, if IsUnit a then 0 else v a

theorem complete_eq_unit_add_nonunit {q : ℕ} [NeZero q]
    (v : ZMod q → ℂ) :
    (∑ a : ZMod q, v a) = unitPart v + nonunitPart v := by
  classical
  unfold unitPart nonunitPart
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro a _
  by_cases h : IsUnit a <;> simp [h]

/-- Actual signed Abel response of a single parity and residue class. -/
def abelFiber (d r j : ℕ) [NeZero d] (a : ZMod (d * d)) : ℂ :=
  (classAbelSample d r a j : ℂ)

/-- Actual source Abel data transported through a level-d^2 Dirichlet wind. -/
def woundAbel (d r j : ℕ) [NeZero d]
    (χ : DirichletCharacter ℂ (d * d)) : ℂ :=
  windDirichlet χ (abelFiber d r j)

/-- Exact newest-birth Möbius coefficient cancellation SURVIVES the winding.
Every remaining prefix and sign comes from the unchanged source theorem. -/
theorem woundAbel_succ_sub (d r j : ℕ) [NeZero d]
    (χ : DirichletCharacter ℂ (d * d)) :
    woundAbel d r (j + 1) χ - woundAbel d r j χ =
      ∑ a : ZMod (d * d), χ a *
        ((classMertens d r a j *
          ((Real.sqrt j)⁻¹ - (Real.sqrt (j + 1 : ℕ))⁻¹) : ℝ) : ℂ) := by
  unfold woundAbel windDirichlet abelFiber
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro a _
  calc
    χ a * (classAbelSample d r a (j + 1) : ℂ) -
        χ a * (classAbelSample d r a j : ℂ) =
      χ a * ((classAbelSample d r a (j + 1) -
        classAbelSample d r a j : ℝ) : ℂ) := by
          push_cast
          ring
    _ = _ :=
      congrArg (fun z : ℝ => χ a * (z : ℂ))
        (classAbelSample_succ_sub d r a j)

end GRWTSK.NumberTheory.AutomircronDirichletFrame