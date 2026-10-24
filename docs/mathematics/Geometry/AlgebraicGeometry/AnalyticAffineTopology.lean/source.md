# Complete source: GRWTSK.AlgebraicGeometry.AnalyticAffineTopology

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9ebdd15d5b44ab0cbddd128442ef010691e13b1` · SHA-256 `414e68cbd7962c0f9227e810225518968e8d3c68f982c4b2c307a18d99bbb946`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.AlgebraicGeometry.AnalyticAffineBridge
import GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology
import Mathlib.Algebra.Polynomial.Eval.Defs

namespace GRWTSK.AlgebraicGeometry.AnalyticAffineBridge

open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing
open GRWTSK.Analysis.Complex.HolomorphicEvaluationSpectrum
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology

universe u

noncomputable section

namespace Bridge

/-- Every supplied analytic-affine coordinate map induces a continuous Zariski point map.

This uses holomorphy of its section-valued outputs and continuity of prime-ideal comap. It does
not assume, or conclude, continuity of the original abstract ring homomorphism on its carriers. -/
theorem pointMap_continuous {R : CommRingCat.{u}} {A : Domain}
    (bridge : Bridge R A) : Continuous bridge.pointMap :=
  (PrimeSpectrum.continuous_comap bridge.coordinateRing).comp
    (pointToSpectrum_continuous A)

/-- The already defined point map, now bundled with its derived continuity proof. -/
def continuousPointMap {R : CommRingCat.{u}} {A : Domain}
    (bridge : Bridge R A) : ContinuousMap A.carrier (PrimeSpectrum R) where
  toFun := bridge.pointMap
  continuous_toFun := bridge.pointMap_continuous

/-- Bundling topology does not change the exact prime ideal at a point. -/
@[simp]
theorem continuousPointMap_apply {R : CommRingCat.{u}} {A : Domain}
    (bridge : Bridge R A) (z : A.carrier) :
    bridge.continuousPointMap z = bridge.pointMap z := rfl

end Bridge

namespace PolynomialModel

/-- Constants embedded in the actual holomorphic-section ring. -/
def constantRingHom (A : Domain) : ℂ →+* HolomorphicSection A where
  toFun := constantSection A
  map_one' := by
    apply Subtype.ext
    rfl
  map_mul' := by
    intro c d
    apply Subtype.ext
    rfl
  map_zero' := by
    apply Subtype.ext
    rfl
  map_add' := by
    intro c d
    apply Subtype.ext
    rfl

/-- Concrete affine-line coordinate ring map: coefficients become constant sections and `X`
becomes the analytic coordinate. This is a construction, not a supplied bridge field. -/
def coordinateRingMap (A : Domain) : Polynomial ℂ →+* HolomorphicSection A :=
  Polynomial.eval₂RingHom (constantRingHom A) (coordinateSection A)

/-- The constant-coordinate rule is exact. -/
@[simp]
theorem coordinateRingMap_C (A : Domain) (c : ℂ) :
    coordinateRingMap A (Polynomial.C c) = constantSection A c := by
  change (Polynomial.C c).eval₂ (constantRingHom A) (coordinateSection A) = _
  exact Polynomial.eval₂_C _ _

/-- The variable is sent to the exact ambient-coordinate restriction. -/
@[simp]
theorem coordinateRingMap_X (A : Domain) :
    coordinateRingMap A Polynomial.X = coordinateSection A := by
  change Polynomial.X.eval₂ (constantRingHom A) (coordinateSection A) = _
  exact Polynomial.eval₂_X _ _

/-- Evaluating the constructed section agrees with ordinary polynomial evaluation. -/
theorem coordinateRingMap_eval (A : Domain) (z : A.carrier) (p : Polynomial ℂ) :
    evaluationRingHom A z (coordinateRingMap A p) = p.eval (z : ℂ) := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq =>
      simp only [map_add, Polynomial.eval_add, hp, hq]
  | monomial n c =>
      change evaluationRingHom A z
          ((Polynomial.monomial n c).eval₂ (constantRingHom A) (coordinateSection A)) =
        (Polynomial.monomial n c).eval (z : ℂ)
      rw [Polynomial.eval₂_monomial, map_mul, map_pow, Polynomial.eval_monomial]
      rfl

/-- The polynomial coordinate construction commutes with every exact domain restriction. -/
theorem restriction_coordinateRingMap {A B : Domain} (p : Port A B) :
    (GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom p).comp
        (coordinateRingMap A) = coordinateRingMap B := by
  apply RingHom.ext
  intro f
  apply Subtype.ext
  funext z
  exact (coordinateRingMap_eval A ⟨z.1, p.subset z.2⟩ f).trans
    (coordinateRingMap_eval B z f).symm

/-- A concrete analytic-affine bridge for the complex affine line. -/
def bridge (A : Domain) : Bridge (CommRingCat.of (Polynomial ℂ)) A where
  coordinateRing := coordinateRingMap A

/-- The concrete affine-line point map is continuous in the Zariski topology. -/
theorem bridge_pointMap_continuous (A : Domain) : Continuous (bridge A).pointMap :=
  (bridge A).pointMap_continuous

/-- Its prime ideal at `z` is exactly the kernel of ordinary polynomial evaluation at `z`. -/
theorem bridge_pointMap_asIdeal (A : Domain) (z : A.carrier) :
    ((bridge A).pointMap z).asIdeal =
      RingHom.ker (Polynomial.evalRingHom (z : ℂ)) := by
  ext p
  change evaluationRingHom A z (coordinateRingMap A p) = 0 ↔ p.eval (z : ℂ) = 0
  rw [coordinateRingMap_eval]

end PolynomialModel

namespace HostileFixtures

/-- A genuine unital coordinate-ring map whose induced spectrum point map forgets the point. -/
def constantBridge (A : Domain) : Bridge (CommRingCat.of ℂ) A where
  coordinateRing := PolynomialModel.constantRingHom A

/-- Continuity of a general bridge does not guarantee separation of analytic points. -/
theorem constantBridge_pointMap_eq (A : Domain) (z w : A.carrier) :
    (constantBridge A).pointMap z = (constantBridge A).pointMap w := by
  apply PrimeSpectrum.ext
  ext c
  rfl

/-- Explicit negative control: the whole-plane constant bridge is not injective. -/
theorem constantBridge_whole_not_injective :
    ¬ Function.Injective
      (constantBridge GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.whole).pointMap := by
  intro h
  let A := GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.whole
  let z : A.carrier := ⟨0, Set.mem_univ 0⟩
  let w : A.carrier := ⟨1, Set.mem_univ 1⟩
  have hzw : z = w := h (constantBridge_pointMap_eq A z w)
  have h01 : (0 : ℂ) = 1 := congrArg Subtype.val hzw
  exact zero_ne_one h01

end HostileFixtures

end

end GRWTSK.AlgebraicGeometry.AnalyticAffineBridge
```
