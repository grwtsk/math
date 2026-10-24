# Functor.preservesEpimorphisms_of_adjunction_of_preservesProjectiveObjects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0d3eebe558c6163493fb6ea9c7fc748cb49b512",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1a6216a-7f49-863f-1652-b87006addcd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c50c826-929a-ba82-2536-e26b1fdcb2ac",
  "kind": "theorem",
  "lexical_name": "Functor.preservesEpimorphisms_of_adjunction_of_preservesProjectiveObjects",
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
  "slug": "functor-preservesepimorphisms-of-adjunction-of-preservesprojectiveobject--f92e46022df790d1a4ea9d07",
  "source": {
    "blob": "b0d3eebe558c6163493fb6ea9c7fc748cb49b512",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f92e46022df790d1a4ea9d07a912a7181a28a1a9aa9fc2fb22a008a3e9bdc18f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c50c826-929a-ba82-2536-e26b1fdcb2ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.preservesEpimorphisms_of_adjunction_of_preservesProjectiveObjects
    [EnoughProjectives C] {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [F.PreservesProjectiveObjects] :
    G.PreservesEpimorphisms where
  preserves {X Y} f _ := by
    suffices ∃ h, h ≫ G.map f = Projective.π (G.obj Y) from epi_of_epi_fac this.choose_spec
    have : Projective (F.obj (Projective.over (G.obj Y))) := F.projective_obj _
    refine ⟨adj.unit.app (Projective.over (G.obj Y)) ≫
      G.map (Projective.factorThru (F.map (Projective.π _) ≫ adj.counit.app Y) f), ?_⟩
    rw [Category.assoc, ← Functor.map_comp]
    simp

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0d3eebe558c6163493fb6ea9c7fc748cb49b512` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
