# faithful_whiskeringRight_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f641fb699f037905c90752d7ef68635957b716072ff62be4f508607bbdfb767c",
  "kind": "instance",
  "lexical_name": "faithful_whiskeringRight_obj",
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
  "slug": "faithful-whiskeringright-obj--8d3bfefbd149e2484819c227",
  "source": {
    "blob": "6519dca04db6ebe90f209211fed3f78ed0fc3a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d3bfefbd149e2484819c2272d19e9c19e8b8e3ce3db2ff7d220966d8e2028f9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f641fb699f037905c90752d7ef68635957b716072ff62be4f508607bbdfb767c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance faithful_whiskeringRight_obj {F : D ⥤ E} [Faithful F] :
    Faithful ((whiskeringRight C D E).obj F) where
  map_injective hαβ := by
    ext X
    exact (F.map_injective <| congr_fun (congr_arg NatTrans.app hαβ) X)
#align category_theory.faithful_whiskering_right_obj CategoryTheory.faithful_whiskeringRight_obj

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6519dca04db6ebe90f209211fed3f78ed0fc3a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
