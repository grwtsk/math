# pre_comp_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9687b4f4-099b-fde4-e6d7-4082343b9557",
  "kind": "lemma",
  "lexical_name": "pre_comp_map",
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
  "slug": "pre-comp-map--a5ff5d020d1023df1a43353e",
  "source": {
    "blob": "148e5a3d4bdb9c92c888240a5741295c9acf8628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 461,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant8c55bdd63a60a9869e17788090004a114cb29923012b5f3c4aef5fed8b62e2b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5ff5d020d1023df1a43353ed4762cba3cf90fba22c40350a6abf0da62e549b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant8c55bdd63a60a9869e17788090004a114cb29923012b5f3c4aef5fed8b62e2b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9687b4f4-099b-fde4-e6d7-4082343b9557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pre_comp_map (G : D ⥤ C) {H : C ⥤ Cat} (α : F ⟶ H) :
    pre F G ⋙ map α = map (whiskerLeft G α) ⋙ pre H G := rfl

variable {F} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant8c55bdd63a60a9869e17788090004a114cb29923012b5f3c4aef5fed8b62e2b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant8c55bdd63a60a9869e17788090004a114cb29923012b5f3c4aef5fed8b62e2b8.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148e5a3d4bdb9c92c888240a5741295c9acf8628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
