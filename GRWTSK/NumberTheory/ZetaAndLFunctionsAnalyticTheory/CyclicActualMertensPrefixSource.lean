/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CyclicConstantModeSignedPrefixObstruction
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.SignedPrefixDyadicCorrelation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact enumeration of actual Mertens-transform increments on a cycle.
No increment, coefficient diagonal or terminal prefix is dropped.
The energy-to-signed-statistic bound remains missing.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.CyclicActualMertensPrefixSource
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open CyclicConstantModeSignedPrefixObstruction
variable (N : ℕ) [NeZero N]

def canonicalEnumeration : ZMod N ≃ Fin N := (ZMod.finEquiv N).toEquiv.symm

def actualIncrement (e : ZMod N ≃ Fin N) (i : ZMod N) : ℝ :=
  sampleResidue ((e i).val + 2) - sampleResidue ((e i).val + 1)

theorem actualIncrement_source (e : ZMod N ≃ Fin N) (i : ZMod N) :
    actualIncrement N e i = sampleSignedIncrementSource ((e i).val + 1) := by
  simpa only [actualIncrement, sampleSignedIncrementSource, Nat.add_assoc] using
    sampleResidue_succ_sub ((e i).val + 1)

lemma actual_prefix_telescope (K : ℕ) :
    (∑ k ∈ Finset.range K, (sampleResidue (k + 2) - sampleResidue (k + 1))) =
      sampleResidue (K + 1) := by
  induction K with
  | zero => simp [sampleResidue_one]
  | succ K ih =>
    rw [Finset.sum_range_succ, ih]
    simpa only [Nat.add_assoc] using
      (show sampleResidue (K + 1) + (sampleResidue (K + 2) - sampleResidue (K + 1)) =
        sampleResidue (K + 2) by ring)

theorem actual_full_prefix (e : ZMod N ≃ Fin N) :
    (∑ i : ZMod N, actualIncrement N e i) = sampleResidue (N + 1) := by
  calc
    _ = ∑ k : Fin N, (sampleResidue (k.val + 2) - sampleResidue (k.val + 1)) :=
      Fintype.sum_equiv e _ _ (fun i => rfl)
    _ = ∑ k ∈ Finset.range N, (sampleResidue (k + 2) - sampleResidue (k + 1)) := by
      rw [Fin.sum_univ_eq_sum_range]
    _ = _ := actual_prefix_telescope N

theorem actual_full_diagonal (e : ZMod N ≃ Fin N) :
    (∑ i : ZMod N, actualIncrement N e i ^ 2) = sampleUnweightedDiagonal N := by
  calc
    _ = ∑ k : Fin N, (sampleResidue (k.val + 2) - sampleResidue (k.val + 1)) ^ 2 :=
      Fintype.sum_equiv e _ _ (fun i => rfl)
    _ = _ := by rw [Fin.sum_univ_eq_sum_range]; rfl

theorem actual_signed_prefix_statistic (e : ZMod N ≃ Fin N) :
    signedPrefixStatistic N (actualIncrement N e) = sampleSignedMixedPrefix N := by
  unfold signedPrefixStatistic
  rw [actual_full_prefix, actual_full_diagonal]
  have h := sampleResidue_square_eq_signedPrefix_add_diagonal N
  linarith

end GRWTSK.NumberTheory.Zeta.Riemann.CyclicActualMertensPrefixSource
