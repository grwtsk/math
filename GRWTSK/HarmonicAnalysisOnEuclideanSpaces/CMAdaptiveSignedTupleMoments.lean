/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveFourierMoments
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.Chebyshev
import Mathlib.Tactic

/-!
# All-k finite signed additive-convolution point-observation bound

The source is EXACTLY the original Mobius coefficient multiplied by the
individually smoothed causal response (from CMAdaptiveDisjointBirth).
Each tuple ranges over the original closed integer inventory 1..2^j.
Its address is the sum of n_i-1, retaining each full integer and winding.

No periodic positivity is substituted for a coherent signed source.
The exact algebraic moment inequality is independent of any unproved
arithmetic cancellation, C-infinity integration estimate, periodic Lp
transference, or RH theorem. Every trace-related tuple is formed with
its original signs BEFORE squaring its aggregate.

The integrated all-k arithmetic bound is a proposition (OPEN), not an
axiom or a purported consequence of spatial Parseval.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveSignedTupleMoments

open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveFourierMoments

/-- The complete family of original integer labels in a k-fold source atom. -/
def tupleInventory (k j : ℕ) : Finset (Fin k → ℕ) :=
  Fintype.piFinset (fun (_ : Fin k) => indices j)

/-- Each original n contributes displacement n-1. Thus integer source labels
are not quotiented by any parity, arithmetic residue or Fourier grid. -/
def tupleAddress (k : ℕ) (v : Fin k → ℕ) : ℕ :=
  ∑ i : Fin k, (v i - 1)

/-- The product of the ORIGINAL signed adaptive coefficients at all k sites. -/
def tupleSignedWeight (k : ℕ) (v : Fin k → ℕ) (t : ℝ) : ℝ :=
  ∏ i : Fin k, signedAdaptiveCoefficient (v i) t

/-- Smallest collision-free cyclic modulus for kth spatial moments, N=2^j. -/
def tupleModulus (k j : ℕ) : ℕ :=
  k * (2 ^ j - 1) + 1

theorem tupleModulus_pos (k j : ℕ) : 0 < tupleModulus k j := by
  unfold tupleModulus
  omega

/-- Every complete source tuple lies in the exact displacement range. -/
theorem tupleAddress_lt_modulus (k j : ℕ) (v : Fin k → ℕ)
    (hv : v ∈ tupleInventory k j) :
    tupleAddress k v < tupleModulus k j := by
  have hm (i : Fin k) : v i ∈ indices j := by
    exact (Fintype.mem_piFinset.mp hv) i
  have hcoord (i : Fin k) : v i - 1 ≤ 2 ^ j - 1 := by
    have hi := (Finset.mem_Icc.mp (hm i)).2
    omega
  have hs :
      (∑ i : Fin k, (v i - 1)) ≤ ∑ _i : Fin k, (2 ^ j - 1) := by
    apply Finset.sum_le_sum
    intro i hi
    exact hcoord i
  have hn : (∑ _i : Fin k, (2 ^ j - 1)) =
      k * (2 ^ j - 1) := by simp
  unfold tupleAddress tupleModulus
  omega

/-- A complete signed k-fold additive-convolution coefficient at displacement s.
The indicator is an integer equality, not a projected modular reconstruction. -/
def signedTupleCoefficient (k j s : ℕ) (t : ℝ) : ℝ :=
  ∑ v ∈ tupleInventory k j,
    if tupleAddress k v = s then tupleSignedWeight k v t else 0

/-- Nonnegative aggregate formed only AFTER the original signed coefficient
products have been accumulated at each exact additive address. -/
def signedTupleMoment (k j : ℕ) (t : ℝ) : ℝ :=
  ∑ s ∈ Finset.range (tupleModulus k j),
    (signedTupleCoefficient k j s t) ^ 2

theorem signedTupleMoment_nonneg (k j : ℕ) (t : ℝ) :
    0 ≤ signedTupleMoment k j t := by
  unfold signedTupleMoment
  apply Finset.sum_nonneg
  intro s hs
  exact sq_nonneg _

/-- Grouping original k-tuples by integer displacement loses no term. -/
theorem sum_signedTupleCoefficient (k j : ℕ) (t : ℝ) :
    (∑ s ∈ Finset.range (tupleModulus k j),
      signedTupleCoefficient k j s t) =
      (adaptiveSmoothWave j t) ^ k := by
  classical
  calc
    (∑ s ∈ Finset.range (tupleModulus k j),
        signedTupleCoefficient k j s t) =
        ∑ v ∈ tupleInventory k j,
          ∑ s ∈ Finset.range (tupleModulus k j),
            if tupleAddress k v = s then tupleSignedWeight k v t else 0 := by
              unfold signedTupleCoefficient
              rw [Finset.sum_comm]
    _ = ∑ v ∈ tupleInventory k j, tupleSignedWeight k v t := by
          apply Finset.sum_congr rfl
          intro v hv
          have hmem : tupleAddress k v ∈ Finset.range (tupleModulus k j) :=
            Finset.mem_range.mpr (tupleAddress_lt_modulus k j v hv)
          simp [hmem]
    _ = (∑ n ∈ indices j, signedAdaptiveCoefficient n t) ^ k := by
          simpa [tupleInventory, tupleSignedWeight] using
            (Finset.sum_pow' (indices j)
              (fun n => signedAdaptiveCoefficient n t) k).symm
    _ = (adaptiveSmoothWave j t) ^ k := by
          simp [adaptiveSmoothWave, signedAdaptiveCoefficient]

/-- A full all-k, original-source finite Cauchy bound with the SHARP
arithmetic address count k*(2^j-1)+1, no Fourier approximation. -/
theorem signed_kfold_trace_cauchy (k j : ℕ) (t : ℝ) :
    ((adaptiveSmoothWave j t) ^ k) ^ 2 ≤
      (tupleModulus k j : ℝ) * signedTupleMoment k j t := by
  have h :=
    (sq_sum_le_card_mul_sum_sq
      (s := Finset.range (tupleModulus k j))
      (f := fun s => signedTupleCoefficient k j s t))
  rw [sum_signedTupleCoefficient] at h
  simpa only [Finset.card_range, signedTupleMoment] using h

/-- The actual full dyadic time integral of the exact signed k-tuple ledger. -/
def integratedSignedTupleMoment (k j : ℕ) : ℝ :=
  ∫ t in (0 : ℝ)..dyadicTime j, signedTupleMoment k j t

/-- STRONG optional supplier: every fixed k has a polynomial time budget.
No such Mobius cancellation is asserted here. -/
def PolynomialSignedTupleMoments : Prop :=
  ∀ k : ℕ, 1 ≤ k →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ A : ℕ, ∀ j : ℕ,
        integratedSignedTupleMoment k j ≤
          C * (1 + dyadicTime j) ^ A

/-- WEAKER sufficient arithmetic target: each requested rate may select a
different k and an exponential moment exponent eta, provided the ratio
(1+eta)/k is smaller than that requested rate. The remaining time Holder
and error-integral transfers are kept separate and still require Lean proofs. -/
def FlexibleSignedTupleMomentProfile : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ k : ℕ, 1 ≤ k ∧
      ∃ η : ℝ, 0 ≤ η ∧
        1 + η < ε * (k : ℝ) ∧
          ∃ C : ℝ, 0 ≤ C ∧
            ∃ A : ℕ, ∀ j : ℕ,
              integratedSignedTupleMoment k j ≤
                C * Real.exp (η * dyadicTime j) *
                  (1 + dyadicTime j) ^ A

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveSignedTupleMoments
