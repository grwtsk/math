# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CubicIntegration.Variantee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d4d1a0f294e1922d3100383152c1292ca32241e` · SHA-256 `ee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
