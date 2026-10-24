# IsExtrOn.closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51a53e8f-c917-19d5-1763-0066ad04a6ac",
  "kind": "theorem",
  "lexical_name": "IsExtrOn.closure",
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
  "slug": "isextron-closure--1e49cd4651a18c537682ebbb",
  "source": {
    "blob": "bb0cc23863c9339823dbc531090eda353f5ceb94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e49cd4651a18c537682ebbbc915de0e14227dd2e3e6c7581ec2625f58d222e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a53e8f-c917-19d5-1763-0066ad04a6ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsExtrOn.closure (h : IsExtrOn f s a) (hc : ContinuousOn f (closure s)) :
    IsExtrOn f (closure s) a :=
  h.elim (fun h => Or.inl <| h.closure hc) fun h => Or.inr <| h.closure hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb0cc23863c9339823dbc531090eda353f5ceb94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
