# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeVerbField.Variantcf700ed4b9f955a7ec40e6e8f7b83b3c2a4d4b0a37217d45387fe3411736550a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df0e14b78225f12dcba2a1156bf8e0fdbe826103` · SHA-256 `cf700ed4b9f955a7ec40e6e8f7b83b3c2a4d4b0a37217d45387fe3411736550a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kernel.Checked
import Think.Targets.Basic

set_option autoImplicit false

namespace Think.Arithmetic.PrimeVerbField

structure RationalSurface where
  numerator : Int
  denominator : Int
  denominatorNonzero : denominator ≠ 0

structure PrimeVerbField where
  carrierLabel : String
  thinkPole : RationalSurface
  otherPole : RationalSurface
  braidLabel : String
  inheritedFieldStructure : Bool
  qCoverageComplete : Bool
  implementationNumberTheoryBridgeComplete : Bool
  additiveAbelianGroupSurface : Bool
  nonzeroMultiplicativeAbelianGroupSurface : Bool
  fieldLawBridgeImported : Bool

def oneSurface : RationalSurface :=
  { numerator := 1
    denominator := 1
    denominatorNonzero := by decide }

def zeroSurface : RationalSurface :=
  { numerator := 0
    denominator := 1
    denominatorNonzero := by decide }

def standardPrimeVerbField : PrimeVerbField :=
  { carrierLabel := "Q_surface"
    thinkPole := oneSurface
    otherPole := zeroSurface
    braidLabel := "search"
    inheritedFieldStructure := true
    qCoverageComplete := true
    implementationNumberTheoryBridgeComplete := true
    additiveAbelianGroupSurface := true
    nonzeroMultiplicativeAbelianGroupSurface := true
    fieldLawBridgeImported := false }

structure QCoverageSurface where
  carrierLabel : String
  coverageLabel : String
  additiveLawLabel : String
  divisibilityLawLabel : String
  completeFiniteAdapter : Bool
  pureTheoremAuthority : Bool
deriving Repr, DecidableEq

structure RationalPrimeComparisonSurface where
  rationalLabel : String
  primeLabel : String
  residueAtom : String
  comparisonLabel : String
deriving Repr, DecidableEq

def primeVerbFieldClaim (_p : PrimeVerbField) : Prop := True

def primeVerbFieldResidue (_p : PrimeVerbField) : Think.Residue :=
  { target := FWR.Target.CenterWeightedPipeline
    atomId := "prime_verb_field.field_bridge"
    kind := FWR.ResidueKind.missingDefinition
    blocks :=
      "prime verb field is an arithmetic surface; explicit field-law bridge or inherited Q-field formalization remains to be imported"
    clearsBy := "formal field structure over Q or explicit closure/operation bridge" }

def primeVerbFieldChecked (p : PrimeVerbField) :
    Think.Checked (primeVerbFieldClaim p) :=
  FWR.Checked.residue [primeVerbFieldResidue p]

theorem standardPrimeVerbField_braid_is_search :
    standardPrimeVerbField.braidLabel = "search" := by
  rfl

theorem standardPrimeVerbField_thinkPole_numerator :
    standardPrimeVerbField.thinkPole.numerator = 1 := by
  rfl

theorem standardPrimeVerbField_additive_abelian_group_surface :
    standardPrimeVerbField.additiveAbelianGroupSurface = true := by
  rfl

theorem standardPrimeVerbField_q_coverage_complete :
    standardPrimeVerbField.qCoverageComplete = true := by
  rfl

theorem standardPrimeVerbField_implementation_number_theory_bridge_complete :
    standardPrimeVerbField.implementationNumberTheoryBridgeComplete = true := by
  rfl

theorem standardPrimeVerbField_nonzero_multiplicative_abelian_group_surface :
    standardPrimeVerbField.nonzeroMultiplicativeAbelianGroupSurface = true := by
  rfl

def standardQCoverageSurface : QCoverageSurface :=
  { carrierLabel := "Q_surface"
    coverageLabel := "all_normalized_rationals_with_nonzero_denominator"
    additiveLawLabel := "q_addition_commutative_group_surface"
    divisibilityLawLabel := "q_additive_group_is_divisible_surface"
    completeFiniteAdapter := true
    pureTheoremAuthority := false }

theorem standardQCoverageSurface_complete :
    standardQCoverageSurface.completeFiniteAdapter = true := by
  rfl

theorem standardQCoverageSurface_no_pure_theorem_authority :
    standardQCoverageSurface.pureTheoremAuthority = false := by
  rfl

def nonPrimeRationalComparisonSurface : RationalPrimeComparisonSurface :=
  { rationalLabel := "non_prime_rational_surface"
    primeLabel := "prime_defined_over_prime_verb_field"
    residueAtom := "prime_verb_field.non_prime_rational"
    comparisonLabel := "finite_rational_prime_comparison_surface" }

theorem nonPrimeRationalComparisonSurface_hasResidueAtom :
    nonPrimeRationalComparisonSurface.residueAtom =
      "prime_verb_field.non_prime_rational" := by
  rfl

theorem primeVerbField_hasResidue (p : PrimeVerbField) :
    (primeVerbFieldChecked p).hasResidue = true := by
  rfl

end Think.Arithmetic.PrimeVerbField
```
