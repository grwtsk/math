import Folder.Basic

/-!
# Folder.Analysis.Cubic

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: analysis.cubic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Analysis

structure Quadratic where
  a : ℝ
  b : ℝ
  c : ℝ

namespace Quadratic

def eval (p : Quadratic) (x : ℝ) : ℝ :=
  p.a * x ^ 2 + p.b * x + p.c

end Quadratic

structure Cubic where
  a : ℝ
  b : ℝ
  c : ℝ
  d : ℝ

namespace Cubic

def eval (p : Cubic) (x : ℝ) : ℝ :=
  p.a * x ^ 3 + p.b * x ^ 2 + p.c * x + p.d

def derivative (p : Cubic) : Quadratic where
  a := 3 * p.a
  b := 2 * p.b
  c := p.c

noncomputable def antiderivativeEval (p : Cubic) (x : ℝ) : ℝ :=
  p.a / 4 * x ^ 4 + p.b / 3 * x ^ 3 + p.c / 2 * x ^ 2 + p.d * x

end Cubic

end Analysis
end Folder
