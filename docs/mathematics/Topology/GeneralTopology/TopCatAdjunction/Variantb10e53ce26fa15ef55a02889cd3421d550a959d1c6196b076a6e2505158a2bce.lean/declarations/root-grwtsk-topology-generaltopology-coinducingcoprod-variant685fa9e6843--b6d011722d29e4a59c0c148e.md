# _root_.GRWTSK.Topology.GeneralTopology.CoinducingCoprod.Variant685fa9e68434165faac5f3e49b025de8fd5eb8c13c12922983733a46e429e477.lightCondSetToTopCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25a4c7ecd4a5854ddf3918e251cbcc4f60c7bb547723c7b99aa2f9fcfbf96603",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.CoinducingCoprod.Variant685fa9e68434165faac5f3e49b025de8fd5eb8c13c12922983733a46e429e477.lightCondSetToTopCat",
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
  "slug": "root-grwtsk-topology-generaltopology-coinducingcoprod-variant685fa9e6843--b6d011722d29e4a59c0c148e",
  "source": {
    "blob": "e40b52552c8a805e1abc1870913b23553f19e0e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantb10e53ce26fa15ef55a02889cd3421d550a959d1c6196b076a6e2505158a2bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6d011722d29e4a59c0c148edb8630ffa36c67a3eae1cfe8bd430b64856b6ad6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopCatAdjunction/Variantb10e53ce26fa15ef55a02889cd3421d550a959d1c6196b076a6e2505158a2bce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25a4c7ecd4a5854ddf3918e251cbcc4f60c7bb547723c7b99aa2f9fcfbf96603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.CoinducingCoprod.Variant685fa9e68434165faac5f3e49b025de8fd5eb8c13c12922983733a46e429e477.lightCondSetToTopCat : LightCondSet.{u} ⥤ TopCat.{u} where
  obj X := X.toTopCat
  map f := toTopCatMap f

set_option backward.isDefEq.respectTransparency.types false in
/-- The counit of the adjunction `lightCondSetToTopCat ⊣ topCatToLightCondSet` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopCatAdjunction/Variantb10e53ce26fa15ef55a02889cd3421d550a959d1c6196b076a6e2505158a2bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantb10e53ce26fa15ef55a02889cd3421d550a959d1c6196b076a6e2505158a2bce.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e40b52552c8a805e1abc1870913b23553f19e0e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
