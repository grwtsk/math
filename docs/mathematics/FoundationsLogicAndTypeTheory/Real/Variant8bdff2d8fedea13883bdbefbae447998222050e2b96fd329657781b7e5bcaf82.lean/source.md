# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Real.Variant8bdff2d8fedea13883bdbefbae447998222050e2b96fd329657781b7e5bcaf82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24cb8d174912ef2aa1b2c339ce92108ea1363415` · SHA-256 `18e22ac29c9be98fc6f82541c9de5c85f41f8e59c1bd6532a4c0434445e19c58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.TestRepr.Varianta31f11eb241c32eddddc6d344cfd4858a6b899f8ba32e2253dceec1cee671f3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a31f11eb241c32eddddc6d344cfd4858a6b899f8ba32e2253dceec1cee671f3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TestRepr.Varianta31f11eb241c32eddddc6d344cfd4858a6b899f8ba32e2253dceec1cee671f3d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a31f11eb241c32eddddc6d344cfd4858a6b899f8ba32e2253dceec1cee671f3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
! This file was ported from Lean 3 source file `test/real.lean`
! leanprover-community/mathlib commit d7943885503965d07ccaeb390d65fbc3f45962e6
! Please do not edit these lines, except to modify the commit id
! if you have ported upstream changes.
-/
import Mathlib.Data.Real.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.TestRepr.Varianta31f11eb241c32eddddc6d344cfd4858a6b899f8ba32e2253dceec1cee671f3d

unsafe def testRepr (r : ℝ) (s : String) : Lean.Elab.Command.CommandElabM Unit  :=
unless toString (repr r) = s do throwError "got {repr r}"

run_cmd unsafe testRepr 0 "Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)"
run_cmd unsafe testRepr 1 "Real.ofCauchy (sorry /- 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ... -/)"
run_cmd unsafe testRepr (37 : ℕ) "Real.ofCauchy (sorry /- 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, ... -/)"
run_cmd unsafe testRepr (2 + 3) "Real.ofCauchy (sorry /- 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, ... -/)"
run_cmd unsafe testRepr ⟨CauSeq.Completion.mk $ ⟨fun n ↦ 2^(-n:ℤ), sorry⟩⟩
                        "Real.ofCauchy (sorry /- 1, (1 : Rat)/2, (1 : Rat)/4, (1 : Rat)/8, (1 : Rat)/16, (1 : Rat)/32, (1 : Rat)/64, (1 : Rat)/128, (1 : Rat)/256, (1 : Rat)/512, ... -/)"
```
