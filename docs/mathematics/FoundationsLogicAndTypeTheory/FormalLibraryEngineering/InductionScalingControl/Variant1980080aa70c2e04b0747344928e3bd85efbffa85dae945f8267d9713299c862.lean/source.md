# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InductionScalingControl.Variant1980080aa70c2e04b0747344928e3bd85efbffa85dae945f8267d9713299c862

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64f4079c3f0d3e55f73f44c79c3a6214b1238e30` · SHA-256 `1980080aa70c2e04b0747344928e3bd85efbffa85dae945f8267d9713299c862`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.Complexity.SpheroidalShellPivot

/-!
# Folder.GrandChallenge.Complexity.InductionScalingControl

Radiation role: research-boundary
BinaryMatrix spine: This module records induction-scaling controls for glitched BinaryMatrixStream smoothing.
Ontology: complexity_induction_scaling_control
Pivot role: complexity
Zero typology: smoothing-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Complexity

/--
Induction scaling data for a glitched traversal.

The scaling contract is the quantitative part of the smoothing route: either
glitch complexity decreases or a polynomial move bound is preserved.
-/
structure InductionScalingControl where
  glitch : GlitchedTraversal
  complexityMeasureLabel : String
  decreasesGlitchMeasure : Prop
  decreasesGlitchMeasure_certified : decreasesGlitchMeasure
  polynomialMoveBound : Prop
  polynomialMoveBound_certified : polynomialMoveBound
  sourceLabel : String

theorem induction_scaling_decreases_glitch_if_supplied
    (S : InductionScalingControl) :
    S.decreasesGlitchMeasure :=
  S.decreasesGlitchMeasure_certified

theorem induction_scaling_polynomial_move_bound_if_supplied
    (S : InductionScalingControl) :
    S.polynomialMoveBound :=
  S.polynomialMoveBound_certified

end Complexity
end GrandChallenge
end Folder
```
