# toSucc_surjectivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72a61206-0920-e08e-c344-8f1ef619cdbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51334c98-75ba-24b5-32af-15f450854a0d",
  "kind": "lemma",
  "lexical_name": "toSucc_surjectivity",
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
  "slug": "tosucc-surjectivity--5e516d547288ecabe3a176bc",
  "source": {
    "blob": "ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 273,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e516d547288ecabe3a176bc5b2b7e68b50c5db4187355054463e24db343210f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51334c98-75ba-24b5-32af-15f450854a0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSucc_surjectivity {X Y : C} (f : X ⟶ Y) (hf : W f) (g : X ⟶ Z) :
    ∃ (g' : Y ⟶ succ W Z), f ≫ g' = g ≫ toSucc W Z :=
  ⟨D₁.ιRight f hf g ≫ pushout.inl _ _ ≫ fromStep W Z, by
    simp [← D₁.ιLeft_comp_t_assoc, pushout.condition_assoc]⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
