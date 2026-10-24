import Folder.Analysis.CubicSemantics

/-!
# Folder.Theorem.Analysis.CubicIntegration

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.analysis.cubic_integration
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Analysis

theorem cubic_integral_same
    (p : Cubic)
    (x : ℝ) :
    p.integral x x = 0 :=
  Cubic.integral_same p x

theorem cubic_integral_add_interval
    (p : Cubic)
    (a b c : ℝ) :
    p.integral a b + p.integral b c = p.integral a c :=
  Cubic.integral_add_interval p a b c

theorem cubic_cell_semantics_sound
    (S : CubicCellSemantics) :
    S.value = S.cubic.integral S.lo S.hi :=
  S.correct

end Analysis
end Folder
