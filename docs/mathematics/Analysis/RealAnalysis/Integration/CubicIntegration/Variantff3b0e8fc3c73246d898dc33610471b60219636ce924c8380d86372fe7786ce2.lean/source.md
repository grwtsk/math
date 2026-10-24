# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CubicIntegration.Variantff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42ae4519d68936b4c66d83ad54a7e19bf6217e8e` · SHA-256 `ff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Analysis.Cubic

/-!
# Folder.Analysis.CubicIntegration

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: analysis.cubic_integration
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Analysis

namespace Cubic

noncomputable def integral (p : Cubic) (lo hi : ℝ) : ℝ :=
  p.antiderivativeEval hi - p.antiderivativeEval lo

@[simp]
theorem integral_same (p : Cubic) (x : ℝ) :
    p.integral x x = 0 := by
  simp [integral]

theorem integral_add_interval
    (p : Cubic) (a b c : ℝ) :
    p.integral a b + p.integral b c = p.integral a c := by
  unfold integral
  ring

end Cubic

end Analysis
end Folder
```
