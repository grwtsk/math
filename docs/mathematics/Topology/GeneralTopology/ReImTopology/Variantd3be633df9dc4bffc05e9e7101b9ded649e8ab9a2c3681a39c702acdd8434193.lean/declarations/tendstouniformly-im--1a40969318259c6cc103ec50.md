# TendstoUniformly.im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd86803c-80d8-8b6d-1a9b-081372d31d41",
  "kind": "lemma",
  "lexical_name": "TendstoUniformly.im",
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
  "slug": "tendstouniformly-im--1a40969318259c6cc103ec50",
  "source": {
    "blob": "b9408c427495f6f5f395674aee273c0821ac8295",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/ReImTopology/Variantd3be633df9dc4bffc05e9e7101b9ded649e8ab9a2c3681a39c702acdd8434193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a40969318259c6cc103ec50eac741875c80174c611997bf7f9acab9baefe880",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReImTopology/Variantd3be633df9dc4bffc05e9e7101b9ded649e8ab9a2c3681a39c702acdd8434193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd86803c-80d8-8b6d-1a9b-081372d31d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma TendstoUniformly.im {f : ι → α → ℂ} {p : Filter ι} {g : α → ℂ}
    (hf : TendstoUniformly f g p) :
    TendstoUniformly (fun n x => (f n x).im) (fun y => (g y).im) p := by
  apply UniformContinuous.comp_tendstoUniformly uniformContinuous_im hf

end continuity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReImTopology/Variantd3be633df9dc4bffc05e9e7101b9ded649e8ab9a2c3681a39c702acdd8434193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReImTopology/Variantd3be633df9dc4bffc05e9e7101b9ded649e8ab9a2c3681a39c702acdd8434193.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9408c427495f6f5f395674aee273c0821ac8295` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
