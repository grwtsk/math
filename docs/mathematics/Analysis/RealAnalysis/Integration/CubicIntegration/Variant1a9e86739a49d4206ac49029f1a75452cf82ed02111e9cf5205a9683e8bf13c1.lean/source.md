# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CubicIntegration.Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f4d07931ea9b2231532f1e66797ea1de6287e22` · SHA-256 `b2a052d3b0d429697827a7c44f8d5b34ff5775ea39c40502cb22ed99f2d0daa4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CubicIntegralSame.Variantee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CubicIntegralSame.Variantee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9","mathematical_subject":"Analysis.Integration","original_sha256":"ee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Analysis/CubicIntegration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.Analysis.RealAnalysis.Integration.CubicIntegralSame.Variantee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9

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
