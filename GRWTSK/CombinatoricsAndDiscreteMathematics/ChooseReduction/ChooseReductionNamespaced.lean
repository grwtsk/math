-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Foo.Variante3484893dfee13beef0593447a4a220c0b5d816055aef3d09f0efc912e50e9c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3484893dfee13beef0593447a4a220c0b5d816055aef3d09f0efc912e50e9c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Foo.Variante3484893dfee13beef0593447a4a220c0b5d816055aef3d09f0efc912e50e9c2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e3484893dfee13beef0593447a4a220c0b5d816055aef3d09f0efc912e50e9c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/choose_reduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic
/-!
Tests that `List.choose` and friends all reduce appropriately.

Previously this was blocked by reducibility issues with `And.rec`
(https://leanprover.zulipchat.com/#narrow/stream/236446-Type-theory/topic/And.2Erec/near/398483665).
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Foo.Variante3484893dfee13beef0593447a4a220c0b5d816055aef3d09f0efc912e50e9c2

namespace List

lemma foo : ∃ x, x ∈ ([0,3] : List (Fin 5)) ∧ x = 3 := by
  use 3
  simp

example : choose _ _ foo = 3 := by rfl
example : choose _ _ foo = 3 := rfl
example : choose _ _ foo = 3 := by eq_refl
example : choose _ _ foo = 3 := by exact rfl
example : choose _ _ foo = 3 := by decide

end List

namespace Multiset

lemma foo : ∃! x, x ∈ ({0,3} : Multiset (Fin 5)) ∧ x = 3 := by
  use 3
  simp

example : choose _ _ foo = 3 := by rfl
example : choose _ _ foo = 3 := rfl
example : choose _ _ foo = 3 := by eq_refl
example : choose _ _ foo = 3 := by exact rfl
example : choose _ _ foo = 3 := by decide

end Multiset

namespace Finset

lemma foo : ∃! x, x ∈ ({0,3} : Finset (Fin 5)) ∧ x = 3 := by
  use 3
  simp

example : choose _ _ foo = 3 := by rfl
example : choose _ _ foo = 3 := rfl
example : choose _ _ foo = 3 := by eq_refl
example : choose _ _ foo = 3 := by exact rfl
example : choose _ _ foo = 3 := by decide

end Finset
