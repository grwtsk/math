-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantd2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variantd2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/spread.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Spread


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantd2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b

set_option autoImplicit true
class Foo (α : Type) where
  bar : True

class Something where
  bar : True

instance : Something where
  bar := by trivial

instance : Foo α where
  __ := instSomething -- include fields from `instSomething`

example : Foo α := {
  __ := instSomething -- include fields from `instSomething`
}

structure A (α : Type) where
  default : α
  x : α

axiom mkDefault (α : Type) : Inhabited α

noncomputable example (α : Type) : A α where
  __ := mkDefault α
  x := default
