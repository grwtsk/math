-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Single.Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Single.Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/DeriveCountableModule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import Mathlib.Basic.Countable.Basic
import Mathlib.Tactic.DeriveCountable

/-!
# Regression test: `deriving Countable` under the module system

The deriving handler emits user-facing code that mentions a few helper lemmas.
Under the module system, marking those helpers `private` makes them invisible
to importers (without `import all`), so `deriving Countable` failed with
`Unknown constant '_private.Mathlib.Tactic.DeriveCountable.0.…cons_eq_imp_init'`.

These tests cover the single-constructor MWE from the bug report and a
recursive case that exercises `cons_eq_imp` and `pair_encode_step`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Single.Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34

namespace Test

inductive Single where
  | test
  deriving Countable

example : Countable Single := inferInstance

inductive Tree where
  | leaf (n : Nat)
  | node (l r : Tree)
  deriving Countable

example : Countable Tree := inferInstance

end Test
