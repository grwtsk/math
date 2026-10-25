# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cubic.Variant3b1eb9b64d22e4834a5ebea4d9e88c19c691567f3e39d49b2df9b7acf27b4ea3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e213d71aab2bc1d7c9f3b91ac651f7a0211b4bdf` · SHA-256 `c982eadb27255f41be3a0daaf281cafc35d8db108e04746f39ecfc4e9a922a9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Quadratic.Variantaa3e58a81e6d6e827aa83c821aaf5836440a9c14a2ee401875ea4f091a99dfa3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa3e58a81e6d6e827aa83c821aaf5836440a9c14a2ee401875ea4f091a99dfa3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Quadratic.Variantaa3e58a81e6d6e827aa83c821aaf5836440a9c14a2ee401875ea4f091a99dfa3","mathematical_subject":"Foundations.Unclassified","original_sha256":"aa3e58a81e6d6e827aa83c821aaf5836440a9c14a2ee401875ea4f091a99dfa3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Analysis/Cubic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Quadratic.Variantaa3e58a81e6d6e827aa83c821aaf5836440a9c14a2ee401875ea4f091a99dfa3

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
```
