# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variant94be049c1e600e365d63099e890396a81423efe90a8c3c32d6cfa8386ca9c61c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b59dc0ce1a695e879a8150e8e0b2ee2a2999b68` · SHA-256 `dcf03689672cae2031891e9384ba1882a7d0152b3caaff81e90c1942550de429`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variant54b45ff452fe4233dd5501145121db8b393ae088091f232010760d3053b83b15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54b45ff452fe4233dd5501145121db8b393ae088091f232010760d3053b83b15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TypeCheck.Variant54b45ff452fe4233dd5501145121db8b393ae088091f232010760d3053b83b15","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"54b45ff452fe4233dd5501145121db8b393ae088091f232010760d3053b83b15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/TypeCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.TypeCheck


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variant54b45ff452fe4233dd5501145121db8b393ae088091f232010760d3053b83b15

/-- A term where `inferType` returns `Prop`, but which does not type check. -/
elab "wrong" : term =>
  return Lean.mkApp2 (.const ``id [.zero]) (.sort .zero) (.app (.sort .zero) (.sort .zero))

example : True := by
  type_check Nat -- Type
  type_check Bool.true -- Bool
  type_check nat_lit 1 -- Nat
  type_check (1 : Nat) -- Nat
  type_check (True : _) -- Prop
  type_check ∀ x y : Nat, x = y -- Prop
  type_check fun x : Nat => 2 * x + 1 -- Nat -> Nat
  fail_if_success type_check wrong
  trivial
```
