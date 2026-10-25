# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reordering.Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc874a692efba35b5b2167aeba5f79318851536f` · SHA-256 `afb7c0d604cc0900f42b008fe03aef6fc9519fe993ce8e43da4ed0b616362297`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Word.Variantdad39bffad7012b9ba8cfaef298f5a3de6713a80f9bbeaafb20361409cc8d2a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dad39bffad7012b9ba8cfaef298f5a3de6713a80f9bbeaafb20361409cc8d2a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Word.Variantdad39bffad7012b9ba8cfaef298f5a3de6713a80f9bbeaafb20361409cc8d2a4","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"dad39bffad7012b9ba8cfaef298f5a3de6713a80f9bbeaafb20361409cc8d2a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/repo/FormalResearch/MathematicalTooling/SymbolCounts/Reordering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finsupp.Multiset

/-!
# Symbol counts and reordering

Finite words are represented by lists, arbitrary reordering classes by multisets,
and absolute count profiles by finitely supported natural-valued functions. The
main theorem identifies the latter two exactly.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Word.Variantdad39bffad7012b9ba8cfaef298f5a3de6713a80f9bbeaafb20361409cc8d2a4

namespace FormalResearch.MathematicalTooling.SymbolCounts

universe u

/-- A finite word over `α`, represented by its ordered list of symbols. -/
abbrev Word (α : Type u) := List α

/-- A finite word modulo arbitrary reordering.

Mathlib's `Multiset α` is the quotient of `List α` by `List.Perm`, so this is the
formal counterpart of the reordering quotient used in T-001.
-/
abbrev ReorderingClass (α : Type u) := Multiset α

/-- A finitely supported absolute symbol-count profile. -/
abbrev CountProfile (α : Type u) := α →₀ ℕ

/-- The canonical equivalence between reordering classes and absolute count profiles. -/
noncomputable def countProfileEquiv (α : Type u) :
    ReorderingClass α ≃ CountProfile α := by
  classical
  exact (Multiset.toFinsupp (α := α)).toEquiv

/-- Send a reordering class to its absolute symbol-count profile. -/
noncomputable def quotientCountProfile {α : Type u} :
    ReorderingClass α → CountProfile α :=
  countProfileEquiv α

/-- Absolute symbol counts classify finite words exactly up to arbitrary reordering. -/
theorem count_profiles_classify_reordering {α : Type u} :
    Function.Bijective (quotientCountProfile (α := α)) := by
  simpa [quotientCountProfile] using (countProfileEquiv α).bijective

end FormalResearch.MathematicalTooling.SymbolCounts
```
