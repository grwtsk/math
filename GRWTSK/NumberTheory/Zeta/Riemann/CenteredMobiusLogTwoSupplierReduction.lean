/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryPrefixSupplier
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- Endpoint prefix error is exactly the raw dyadic Mangoldt error. -/
theorem prefixMangoldtError_two_mul_eq_raw
    {X : ℕ} (hX : 1 ≤ X) :
    centeredGreenDyadicPrefixMangoldtError X (2 * X) =
      centeredGreenDyadicMangoldtRawError X := by
  unfold centeredGreenDyadicPrefixMangoldtError
    centeredGreenDyadicMangoldtRawError
    centeredGreenDyadicMangoldtMass centeredGreenWindow
  ring

/-- Uniform prefix control immediately supplies the endpoint raw error bound. -/
theorem allDyadicRawMangoldt_of_prefixMangoldt
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound) :
    AllDyadicRawMangoldtSquareRootPlusEpsilonBound := by
  intro η hη
  obtain ⟨C, hC, j0, hb⟩ := hprefix η hη
  refine ⟨C, hC, j0, ?_⟩
  intro j hj
  let X := dyadicScale j
  have hX : 2 ≤ X := historicalDyadicScale_ge_two j
  have hend := hb j hj (2 * X) (by
    simp
    omega)
  rw [prefixMangoldtError_two_mul_eq_raw (by omega)] at hend
  exact hend

theorem allDyadicNormalizedMangoldt_of_prefixMangoldt
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound) :
    AllDyadicNormalizedMangoldtDiscrepancySquareBound :=
  allDyadicNormalizedMangoldt_iff_rawSquareRoot.mpr
    (allDyadicRawMangoldt_of_prefixMangoldt hprefix)

/-- One prefix-Mangoldt premise supplies both historical boundary channels. -/
theorem allDyadicBoundaryBounds_of_prefixMangoldt
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound) :
    AllDyadicBoundarySquareBound dyadicScale mass0 ∧
    AllDyadicBoundarySquareBound dyadicScale mass1 := by
  have h0 := allDyadicMass0Bound_of_prefixMangoldt hprefix
  have hψ := allDyadicNormalizedMangoldt_of_prefixMangoldt hprefix
  exact ⟨h0, allDyadicMass1Bound_of_mass0_and_normalizedMangoldt h0 hψ⟩

/-- Final two-supplier reduction to the actual historical dyadic Green energy
premise. Both premises remain explicitly open. -/
def CenteredMobiusLogTwoSupplierPackage : Prop :=
  AllDyadicCenteredMobiusLogEnergyBound dyadicScale ∧
  AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound

theorem allDyadicEnergyBound_of_twoSupplierPackage
    (h : CenteredMobiusLogTwoSupplierPackage) :
    AllDyadicEnergyBound := by
  obtain ⟨h0, h1⟩ := allDyadicBoundaryBounds_of_prefixMangoldt h.2
  exact allDyadicEnergyBound_of_centered_and_boundaries h.1 h0 h1

end GRWTSK.RiemannHypothesis
