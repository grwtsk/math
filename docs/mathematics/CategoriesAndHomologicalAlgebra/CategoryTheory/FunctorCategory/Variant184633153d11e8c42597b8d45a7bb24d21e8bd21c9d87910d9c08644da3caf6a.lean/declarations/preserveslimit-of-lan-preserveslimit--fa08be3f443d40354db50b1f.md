# preservesLimit_of_lan_preservesLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7d0e1961c8b7e876644cc235b1d138e9bb1bfde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2a6a689-d7c0-d7fa-f1a1-6d2eb8ccb89c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f6a610c-279d-5bd0-045f-350d277c4340",
  "kind": "lemma",
  "lexical_name": "preservesLimit_of_lan_preservesLimit",
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
  "slug": "preserveslimit-of-lan-preserveslimit--fa08be3f443d40354db50b1f",
  "source": {
    "blob": "a7d0e1961c8b7e876644cc235b1d138e9bb1bfde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 219,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa08be3f443d40354db50b1f2f47ec5efcbffd1c1840321cf9cd6ed90cf55aa4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f6a610c-279d-5bd0-045f-350d277c4340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesLimit_of_lan_preservesLimit {C D : Type u} [SmallCategory C]
    [SmallCategory D] (F : C ⥤ D) (J : Type u) [SmallCategory J]
    [PreservesLimitsOfShape J (F.op.lan : _ ⥤ Dᵒᵖ ⥤ Type u)] : PreservesLimitsOfShape J F :=
  letI := preservesLimitsOfShape_of_natIso (J := J)
    (Presheaf.compULiftYonedaIsoULiftYonedaCompLan.{u} F).symm
  preservesLimitsOfShape_of_reflects_of_preserves F uliftYoneda.{u}

/-- `F : C ⥤ D ⥤ E` preserves finite limits if it does for each `d : D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d0e1961c8b7e876644cc235b1d138e9bb1bfde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
