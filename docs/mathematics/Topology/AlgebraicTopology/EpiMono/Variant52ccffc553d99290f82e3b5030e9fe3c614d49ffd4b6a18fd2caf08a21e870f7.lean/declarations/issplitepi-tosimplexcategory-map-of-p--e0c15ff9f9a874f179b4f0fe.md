# isSplitEpi_toSimplexCategory_map_of_P_σ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:955a7825-36b1-56c9-d26e-a3eb6d7820ea",
  "kind": "lemma",
  "lexical_name": "isSplitEpi_toSimplexCategory_map_of_P_σ",
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
  "slug": "issplitepi-tosimplexcategory-map-of-p--e0c15ff9f9a874f179b4f0fe",
  "source": {
    "blob": "7c0eb86ab9302f55fdb3de15c95412434e245ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 78,
    "path": "GRWTSK/Topology/AlgebraicTopology/EpiMono/Variant52ccffc553d99290f82e3b5030e9fe3c614d49ffd4b6a18fd2caf08a21e870f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0c15ff9f9a874f179b4f0feadf8883ad10c0619b29357f66122ef5449015e98",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/EpiMono/Variant52ccffc553d99290f82e3b5030e9fe3c614d49ffd4b6a18fd2caf08a21e870f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:955a7825-36b1-56c9-d26e-a3eb6d7820ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSplitEpi_toSimplexCategory_map_of_P_σ {x y : SimplexCategoryGenRel} {e : x ⟶ y}
    (he : P_σ e) : IsSplitEpi <| toSimplexCategory.map e := by
  constructor
  constructor
  apply SplitEpi.map
  exact isSplitEpi_P_σ he |>.exists_splitEpi.some

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/EpiMono/Variant52ccffc553d99290f82e3b5030e9fe3c614d49ffd4b6a18fd2caf08a21e870f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/EpiMono/Variant52ccffc553d99290f82e3b5030e9fe3c614d49ffd4b6a18fd2caf08a21e870f7.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c0eb86ab9302f55fdb3de15c95412434e245ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
