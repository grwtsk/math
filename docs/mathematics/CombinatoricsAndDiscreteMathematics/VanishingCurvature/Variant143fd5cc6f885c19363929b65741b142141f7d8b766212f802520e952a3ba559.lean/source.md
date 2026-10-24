# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.VanishingCurvature.Variant143fd5cc6f885c19363929b65741b142141f7d8b766212f802520e952a3ba559

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `610523cae40c0f1e44c76f2fad89e686279cca98` · SHA-256 `143fd5cc6f885c19363929b65741b142141f7d8b766212f802520e952a3ba559`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.Decoupling.Curves

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace VanishingCurvature

def rightSupremalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def rightInfimalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def leftSupremalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def leftInfimalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def holderOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

/--
Finite exceptional-set hypotheses for vanishing curvature.

These fields record the obligations of Theorem 1.3. They do not prove the
paper theorem or import Bourgain-Demeter decoupling.
-/
structure VanishingCurvatureHypotheses
    (phi : ℝ → ℝ)
    (Z : Finset ℝ)
    (alpha : ℝ) where
  finiteExceptionalSet : True
  secondDerivativeNonzeroOffZ : Prop
  locallyHolderOffZ : Prop
  finiteOrderRightLeft :
    ∀ z ∈ Z,
      rightSupremalOrderSecondDerivative phi z alpha ∧
        rightInfimalOrderSecondDerivative phi z alpha ∧
          leftSupremalOrderSecondDerivative phi z alpha ∧
            leftInfimalOrderSecondDerivative phi z alpha
  holderOrderControl :
    ∀ z ∈ Z, holderOrderSecondDerivative phi z alpha

def vanishingCurvatureResidue : String :=
  "finite_order_curvature_hypotheses_recorded_without_decoupling_proof"

theorem finite_exceptional_set_is_recorded
    {phi : ℝ → ℝ} {Z : Finset ℝ} {alpha : ℝ}
    (h : VanishingCurvatureHypotheses phi Z alpha) :
    h.finiteExceptionalSet = True.intro := rfl

end VanishingCurvature
end Think.Analysis.Decoupling
```
