# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TestFunctions.Variant178d60ba7b74497d483ce55cd824019fdf2bbe78e5cce08f370efa3d2cf1cc2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b432eb8d663f060220a7a8e0bee88698cbe44c4` · SHA-256 `4dd2c4d031ac0ea80e3083b6fc37681ab35c77d1eddf2cab6ce100cd0da13d7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.RHTestFunction.Variant4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.RHTestFunction.Variant4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/RH/TestFunctions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic

/-!
# Folder.RH.TestFunctions

Radiation role: test-functions
BinaryMatrix spine: This module fixes the test-function type for trace formulas.
Ontology: rh.test_functions
Pivot role: spectral
Zero typology: zeta
Contract boundary: checked-test-function-type
Composite stack role: rh
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.RHTestFunction.Variant4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae

namespace Folder
namespace RH

noncomputable section

/--
Schwartz test functions for the RH trace-formula layer.

The Schwartz hypothesis is carried by Mathlib's `SchwartzMap` type rather than
by a project-specific proposition field.
-/
structure RHTestFunction where
  func : SchwartzMap ℝ ℂ
  label : String

theorem rh_test_function_has_schwartz_map
    (φ : RHTestFunction) :
    ∃ f : SchwartzMap ℝ ℂ, f = φ.func :=
  ⟨φ.func, rfl⟩

end

end RH
end Folder
```
