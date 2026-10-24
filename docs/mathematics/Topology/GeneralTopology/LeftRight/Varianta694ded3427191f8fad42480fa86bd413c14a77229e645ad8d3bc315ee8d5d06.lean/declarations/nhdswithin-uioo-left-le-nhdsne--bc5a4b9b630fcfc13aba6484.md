# nhdsWithin_uIoo_left_le_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf837e0a-279d-ba29-15f7-95cd2b398044",
  "kind": "lemma",
  "lexical_name": "nhdsWithin_uIoo_left_le_nhdsNE",
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
  "slug": "nhdswithin-uioo-left-le-nhdsne--bc5a4b9b630fcfc13aba6484",
  "source": {
    "blob": "e8af96b608a16a2a435f235885a11602a50c1e93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc5a4b9b630fcfc13aba648456ef0ad82edbd70ce8368fbcbd0bd573428fc654",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf837e0a-279d-ba29-15f7-95cd2b398044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nhdsWithin_uIoo_left_le_nhdsNE {a b : α} : 𝓝[uIoo a b] a ≤ 𝓝[≠] a :=
  nhdsWithin_mono _ (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8af96b608a16a2a435f235885a11602a50c1e93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
