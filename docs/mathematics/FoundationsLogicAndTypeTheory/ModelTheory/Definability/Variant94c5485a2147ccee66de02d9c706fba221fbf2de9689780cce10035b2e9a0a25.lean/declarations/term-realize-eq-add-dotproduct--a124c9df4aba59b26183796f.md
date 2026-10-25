# term_realize_eq_add_dotProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec7cc9de-daba-ef54-8af3-05dd8aaff3b4",
  "kind": "lemma",
  "lexical_name": "term_realize_eq_add_dotProduct",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "term-realize-eq-add-dotproduct--a124c9df4aba59b26183796f",
  "source": {
    "blob": "bb4472520b8da73a5d334293ae7b7f44e70acb77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a124c9df4aba59b26183796f83cac734826fb9702014fa8ff9b1f6325de967bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec7cc9de-daba-ef54-8af3-05dd8aaff3b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma term_realize_eq_add_dotProduct [Fintype α] (t : presburger[[A]].Term α) :
    ∃ (k : ℕ) (u : α → ℕ), ∀ (v : α → ℕ), t.realize v = k + u ⬝ᵥ v := by
  classical
  induction t with simp only [Term.realize]
  | var i =>
    exact ⟨0, Pi.single i 1, by simp⟩
  | @func l f ts ih =>
    cases f with
    | inl f =>
      choose k u ih using ih
      cases f with
      | zero =>
        refine ⟨0, 0, fun v => ?_⟩
        rw [withConstants_funMap_sumInl]
        simp
      | one =>
        refine ⟨1, 0, fun v => ?_⟩
        rw [withConstants_funMap_sumInl]
        simp [ih]
      | add =>
        refine ⟨k 0 + k 1, u 0 + u 1, fun v => ?_⟩
        rw [withConstants_funMap_sumInl, add_dotProduct, add_left_comm, add_assoc, add_left_comm,
          ← add_assoc]
        simp [ih]
    | inr f =>
      cases l with
      | zero =>
        refine ⟨f, 0, fun v => ?_⟩
        rw [withConstants_funMap_sumInr, zero_dotProduct, add_zero]
        rfl
      | succ => nomatch f

variable [Finite α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb4472520b8da73a5d334293ae7b7f44e70acb77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
