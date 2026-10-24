# EssentiallySmall.exists_small_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2a8189732d657bf7852b9b2c8f15df804ee2b2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0333484da123eaf4180eae8a81358f16f8afa5bef34e8348cebbc5e5d609067a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2e12284-24a9-e162-38c2-3d86a451f8cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5a6afea-b6f8-d6ff-2e9a-09ae75f6f013",
  "kind": "lemma",
  "lexical_name": "EssentiallySmall.exists_small_le",
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
  "slug": "essentiallysmall-exists-small-le--0d43e3a5c29a39b5916eff88",
  "source": {
    "blob": "f2a8189732d657bf7852b9b2c8f15df804ee2b2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant0333484da123eaf4180eae8a81358f16f8afa5bef34e8348cebbc5e5d609067a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d43e3a5c29a39b5916eff88ae55410cfee7af86101ba98f3bdee7e8589d8e4f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant0333484da123eaf4180eae8a81358f16f8afa5bef34e8348cebbc5e5d609067a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5a6afea-b6f8-d6ff-2e9a-09ae75f6f013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EssentiallySmall.exists_small_le (P : ObjectProperty C)
    [ObjectProperty.EssentiallySmall.{w} P] :
    ∃ (Q : ObjectProperty C) (_ : ObjectProperty.Small.{w} Q), Q ≤ P ∧ P ≤ Q.isoClosure := by
  obtain ⟨Q, _, hQ⟩ := exists_small_le' P
  let P' := Q ⊓ P.isoClosure
  have h (X' : Subtype P') : ∃ (X : Subtype P), Nonempty (X'.1 ≅ X.1) :=
    ⟨⟨X'.2.2.choose, X'.2.2.choose_spec.choose⟩, X'.2.2.choose_spec.choose_spec⟩
  choose φ hφ using h
  refine ⟨fun X ↦ X ∈ Set.range (Subtype.val ∘ φ), ?_, ?_, ?_⟩
  · exact small_of_surjective (f := fun X ↦ ⟨(φ X).1, by tauto⟩)
      (by rintro ⟨_, Z, rfl⟩; exact ⟨Z, rfl⟩)
  · intro X hX
    simp only [Set.mem_range, Function.comp_apply, Subtype.exists] at hX
    obtain ⟨Y, hY, rfl⟩ := hX
    exact (φ ⟨Y, hY⟩).2
  · intro X hX
    obtain ⟨Y, hY, ⟨e⟩⟩ := hQ _ hX
    let Z : Subtype P' := ⟨Y, hY, ⟨X, hX, ⟨e.symm⟩⟩⟩
    exact ⟨_, ⟨Z, rfl⟩, ⟨e ≪≫ (hφ Z).some⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant0333484da123eaf4180eae8a81358f16f8afa5bef34e8348cebbc5e5d609067a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant0333484da123eaf4180eae8a81358f16f8afa5bef34e8348cebbc5e5d609067a.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2a8189732d657bf7852b9b2c8f15df804ee2b2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
