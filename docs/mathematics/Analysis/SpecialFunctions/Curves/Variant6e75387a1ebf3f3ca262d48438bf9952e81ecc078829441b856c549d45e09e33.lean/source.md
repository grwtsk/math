# Complete source: GRWTSK.Analysis.SpecialFunctions.Curves.Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43dbf19902f2b1c05ac79b1ddaaa78c24c25bf9a` · SHA-256 `6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Think.SourceTree.Legacy.Analysis.Decoupling.WeightedLp

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace Curves

/-- Model curve phase `t |-> t^(1 + nu)`, using real powers. -/
noncomputable def modelCurvePhi (nu : ℝ) (t : ℝ) : ℝ :=
  Real.rpow t (1 + nu)

structure GraphCurve where
  phi : ℝ → ℝ
  domainRecorded : Bool

structure PlaneCurve where
  phiOne : ℝ → ℝ
  phiTwo : ℝ → ℝ
  regularityRecorded : Bool

noncomputable def modelGraphCurve (nu : ℝ) : GraphCurve :=
  { phi := modelCurvePhi nu
    domainRecorded := true }

def CurvatureIdenticallyZero (_phi : ℝ → ℝ) : Prop :=
  False

def RegularPlaneCurve (_phiOne _phiTwo : ℝ → ℝ) : Prop :=
  True

def WronskianVanishesOnlyFinitelyToFiniteOrder (_phiOne _phiTwo : ℝ → ℝ) : Prop :=
  False

theorem model_curve_domain_recorded (nu : ℝ) :
    (modelGraphCurve nu).domainRecorded = true := rfl

end Curves
end Think.Analysis.Decoupling
```
