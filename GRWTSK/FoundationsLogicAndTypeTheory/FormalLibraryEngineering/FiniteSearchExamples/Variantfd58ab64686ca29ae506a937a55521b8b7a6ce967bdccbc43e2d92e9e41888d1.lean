import Presentation.FiniteSearch

/-!
# Theorem-backed finite-search examples

Unlike smoke-test `Examples` modules that use `True`, this file demonstrates the
finite certificate shape with exact propositions and concrete proofs.  It is
still example material and is not used as phase-advance theorem evidence.
-/

namespace Presentation
namespace FiniteSearchExamples

def exactFiniteCertificate : FiniteSearch.PrismaticShadowFiniteCertificate where
  minimum :=
    { feasible :=
        { label := "singleton feasible set"
          stateCount := 1
          nonempty := 1 = 1
          nonemptyProof := rfl }
      minimumExists := 0 = 0
      minimumExistsProof := rfl }
  stableClass :=
    { classLabel := "singleton class"
      minimizersOneClass := 1 + 0 = 1
      minimizersOneClassProof := rfl }
  searchWitness :=
    { witnessLabel := "zero-energy witness"
      minimumEnergyWitness := 2 = 2
      minimumEnergyWitnessProof := rfl }
  energyGap :=
    { gapNumerator := 1
      gapDenominator := 1
      gapDenominatorPositive := by decide
      energyGapWitnessed := 3 = 3
      energyGapProof := rfl }
  projection :=
    { projectionLabel := "identity projection"
      preservesFeasibility := 4 = 4
      preservesFeasibilityProof := rfl }
  boundary :=
    { checkerLabel := "zero boundary checker"
      semanticBoundaryZero := 5 = 5
      semanticBoundaryZeroProof := rfl }
  residue :=
    { residueTableLabel := "empty residue table"
      allResidueWitnessed := 6 = 6
      allResidueWitnessedProof := rfl }

theorem exact_finite_certificate_sound :
    exactFiniteCertificate.sound :=
  FiniteSearch.prismatic_shadow_finite_certificate_sound exactFiniteCertificate

end FiniteSearchExamples
end Presentation
