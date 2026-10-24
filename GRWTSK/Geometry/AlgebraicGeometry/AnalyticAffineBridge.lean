import GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationSpectrum
import GRWTSK.Topology.PortFiber.Basic

namespace GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineBridge

open CategoryTheory
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationSpectrum

universe u

/-- A supplied coordinate-ring map from an affine ring into the exact holomorphic-section ring of
a selected complex domain.

The structure does not assert that such a map exists for an arithmetic or geometric source. -/
structure Bridge (R : CommRingCat.{u}) (A : Domain) where
  coordinateRing : R →+* HolomorphicSection A

namespace Bridge

/-- A coordinate-ring map sends every analytic point to a prime ideal of the source ring by
pulling back its holomorphic evaluation prime. -/
def pointMap {R : CommRingCat.{u}} {A : Domain} (C : Bridge R A) :
    A.carrier → PrimeSpectrum R :=
  fun z => PrimeSpectrum.comap C.coordinateRing (evaluationPrime A z)

/-- Precompose a coordinate-ring bridge with an exact ring morphism. -/
def precomp {R S : CommRingCat.{u}} {A : Domain}
    (C : Bridge R A) (f : S ⟶ R) : Bridge S A where
  coordinateRing := C.coordinateRing.comp f.hom

/-- Precomposition acts contravariantly on the induced prime-spectrum point map. -/
theorem pointMap_precomp {R S : CommRingCat.{u}} {A : Domain}
    (C : Bridge R A) (f : S ⟶ R) (z : A.carrier) :
    (C.precomp f).pointMap z =
      PrimeSpectrum.comap f.hom (C.pointMap z) :=
  rfl

/-- Restrict a coordinate-ring bridge along an exact complex-domain inclusion. -/
def restrict {R : CommRingCat.{u}} {A B : Domain}
    (C : Bridge R A) (p : Port A B) : Bridge R B where
  coordinateRing := (restrictionRingHom p).comp C.coordinateRing

/-- Restriction of analytic domains preserves the induced source-spectrum point exactly. -/
theorem pointMap_restrict {R : CommRingCat.{u}} {A B : Domain}
    (C : Bridge R A) (p : Port A B) (z : B.carrier) :
    (C.restrict p).pointMap z =
      C.pointMap ⟨z.1, p.subset z.2⟩ := by
  change
    PrimeSpectrum.comap ((restrictionRingHom p).comp C.coordinateRing)
        (evaluationPrime B z) =
      PrimeSpectrum.comap C.coordinateRing
        (evaluationPrime A ⟨z.1, p.subset z.2⟩)
  rw [PrimeSpectrum.comap_comp_apply]
  rw [evaluationPrime_comap]

/-- Ring precomposition and analytic restriction commute as exact coordinate-ring maps. -/
theorem restrict_precomp {R S : CommRingCat.{u}} {A B : Domain}
    (C : Bridge R A) (f : S ⟶ R) (p : Port A B) :
    (C.precomp f).restrict p = (C.restrict p).precomp f := by
  cases C
  rfl

/-- Identity analytic-affine bridge on the holomorphic-section ring itself. -/
def identity (A : Domain) :
    Bridge (CommRingCat.of (HolomorphicSection A)) A where
  coordinateRing := RingHom.id _

/-- The identity bridge point map is exactly the holomorphic evaluation-prime map. -/
theorem identity_pointMap (A : Domain) (z : A.carrier) :
    (identity A).pointMap z = evaluationPrime A z :=
  rfl

end Bridge

/-- Exact public binding for one supplied analytic-affine bridge. Metadata has no power to create
the coordinate-ring morphism. -/
structure SourceBoundBridge (R : CommRingCat.{u}) (A : Domain)
    extends Bridge R A where
  sourceIdentity : GRWTSK.Topology.PortFiber.SourceIdentity
  invalidationKey : String

namespace Fixtures

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures

/-- Every supplied coordinate-ring bridge over the whole plane remains pointwise compatible with
the complete restriction to the real axis. -/
theorem restrictionPath_pointMap
    (R : CommRingCat)
    (C : Bridge R whole)
    (z : realAxis.carrier) :
    (C.restrict
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.Fixtures.restrictionPath.composite).pointMap z =
      C.pointMap
        ⟨z.1,
          GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.Fixtures.restrictionPath.composite.subset
            z.2⟩ :=
  C.pointMap_restrict
    GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.Fixtures.restrictionPath.composite z

end Fixtures

end GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineBridge
