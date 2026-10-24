# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CubicIntegration.Variante94f458b46ba358a7011fdbcc6298989d9644c139726b643b06b1f3d416b0cfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c5c07d5a7b2004628960f9e7cbcc927d094c5df` · SHA-256 `a226f297fdefe011035f15bfe89070b965c66dd3708777c391182bc71cfb3944`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Integral.Variantff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2","mathematical_subject":"Analysis.Integration","original_sha256":"ff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Analysis/CubicIntegration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2

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
