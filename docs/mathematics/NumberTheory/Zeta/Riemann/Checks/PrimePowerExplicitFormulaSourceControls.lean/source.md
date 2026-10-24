# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimePowerExplicitFormulaSourceControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b569b5e4dd1136e2db9c30ab43a804f8462ec93c` · SHA-256 `db6100125305816eafe02e451cb92cec635a7120cfa76ef18359d4c10331cd25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerExplicitFormulaSource
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.PrimePowerExplicitFormulaSource.Checks

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.RiemannHypothesis.PrimePowerExplicitFormulaSource

/-- Linear and quadratic contributions cannot be conflated even for one
prime-power atom. -/
theorem linear_quadratic_atomic_separation :
    atomWeight (unitAtom primeTwo) * (2 : ℝ) ≠
      atomWeight (unitAtom primeTwo) * (2 : ℝ) ^ 2 :=
  atom_linear_ne_quadratic_at_two (unitAtom primeTwo)

/-- A source with all non-prime channels set to zero. -/
def zeroAuxSource : Source PUnit where
  sourceId := "prime-power-linear-source-control"
  revision := "v0"
  stage := fun _ => { atoms := ∅ }
  test := fun _ _ => 0
  archimedean := fun _ => 0
  pole := fun _ => 0
  trivialZero := fun _ => 0
  nontrivialZero := fun _ => 0
  endpoint := fun _ => 0
  tail := fun _ => 0

theorem zeroAuxSource_primePower :
    zeroAuxSource.toArithmeticSource.primePower PUnit.unit = 0 := by
  classical
  simp [zeroAuxSource, Source.toArithmeticSource, stageReadout]

theorem zeroAuxSource_energy :
    stageEnergy (zeroAuxSource.stage PUnit.unit)
      (zeroAuxSource.test PUnit.unit) = 0 := by
  classical
  simp [zeroAuxSource, stageEnergy]

theorem zeroAuxSource_quadraticization :
    zeroAuxSource.quadraticizationResidual PUnit.unit = 0 := by
  unfold Source.quadraticizationResidual
  rw [zeroAuxSource_primePower, zeroAuxSource_energy, sub_self]

/-- The complete decomposition keeps all named channels present even when a
fixture proves them zero. -/
theorem zeroAuxSource_complete_decomposition :
    zeroAuxSource.completeChannelSum PUnit.unit -
        stageEnergy (zeroAuxSource.stage PUnit.unit)
          (zeroAuxSource.test PUnit.unit) =
      zeroAuxSource.quadraticizationResidual PUnit.unit +
      zeroAuxSource.archimedean PUnit.unit +
      zeroAuxSource.pole PUnit.unit +
      zeroAuxSource.trivialZero PUnit.unit +
      zeroAuxSource.nontrivialZero PUnit.unit +
      zeroAuxSource.endpoint PUnit.unit +
      zeroAuxSource.tail PUnit.unit := by
  exact completeTarget_sub_energy_decomposition
    (source := zeroAuxSource)
    (target := zeroAuxSource.completeChannelSum) (fun _ => rfl) PUnit.unit

/-- The first three phases remain the triangular base. -/
theorem triangle_still_three :
    Nat.card GRWTSK.Geometry.ThreePlusOne.TrianglePhase = 3 := by
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase]

end GRWTSK.RiemannHypothesis.PrimePowerExplicitFormulaSource.Checks
```
