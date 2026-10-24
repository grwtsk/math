import GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing
import Mathlib.RingTheory.Spectrum.Prime.Topology

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationSpectrum

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing

/-- Evaluation of an actual holomorphic section at one exact point. -/
def evaluationRingHom (A : Domain) (z : A.carrier) :
    HolomorphicSection A →+* ℂ where
  toFun f := (f : Section A) z
  map_one' := rfl
  map_mul' := by
    intro f g
    rfl
  map_zero' := rfl
  map_add' := by
    intro f g
    rfl

/-- The prime ideal of holomorphic sections vanishing at one exact point. -/
def evaluationPrime (A : Domain) (z : A.carrier) :
    PrimeSpectrum (HolomorphicSection A) :=
  ⟨RingHom.ker (evaluationRingHom A z), RingHom.ker_isPrime _⟩

/-- Pointwise evaluation map into the prime spectrum of the holomorphic-section ring.

No continuity claim about this map is implicit. -/
def pointToSpectrum (A : Domain) :
    A.carrier → PrimeSpectrum (HolomorphicSection A) :=
  evaluationPrime A

/-- Evaluation is natural under exact restriction of holomorphic sections.

For `B ⊆ A`, the prime ideal obtained by evaluating on `B` pulls back along
`𝒪(A) →+* 𝒪(B)` to the prime ideal obtained by evaluating on `A` at the same point. -/
theorem evaluationPrime_comap {A B : Domain} (p : Port A B)
    (z : B.carrier) :
    PrimeSpectrum.comap (restrictionRingHom p) (evaluationPrime B z) =
      evaluationPrime A ⟨z.1, p.subset z.2⟩ := by
  apply PrimeSpectrum.ext
  ext f
  rfl

/-- Proof-carrying naturality certificate for one exact restriction port. -/
structure EvaluationNaturalityCertificate {A B : Domain} (p : Port A B) : Prop where
  natural :
    ∀ z : B.carrier,
      PrimeSpectrum.comap (restrictionRingHom p) (evaluationPrime B z) =
        evaluationPrime A ⟨z.1, p.subset z.2⟩

namespace EvaluationNaturalityCertificate

/-- Every exact restriction port carries the evaluation-spectrum naturality theorem. -/
def canonical {A B : Domain} (p : Port A B) :
    EvaluationNaturalityCertificate p where
  natural := evaluationPrime_comap p

end EvaluationNaturalityCertificate

namespace Fixtures

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures

/-- Evaluation naturality for the complete whole-plane to real-axis restriction. -/
theorem restrictionPath_evaluation_natural
    (z : realAxis.carrier) :
    PrimeSpectrum.comap
        (restrictionRingHom
          GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.Fixtures.restrictionPath.composite)
        (evaluationPrime realAxis z) =
      evaluationPrime whole
        ⟨z.1,
          GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.Fixtures.restrictionPath.composite.subset
            z.2⟩ :=
  evaluationPrime_comap
    GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.Fixtures.restrictionPath.composite z

end Fixtures

end GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationSpectrum
