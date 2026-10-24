# dist_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d69f30c9-82d9-ffeb-f226-5b3f32b4cafe",
  "kind": "theorem",
  "lexical_name": "dist_comm",
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
  "slug": "dist-comm--97766c33a3f48c6e0ed6cbf5",
  "source": {
    "blob": "46fd8550d223dc731b01c1b25445ccd71665991a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 72,
    "path": "GRWTSK/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97766c33a3f48c6e0ed6cbf5e42bee41e752fbc9b943b4f4a3b78952bc3f57ef",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d69f30c9-82d9-ffeb-f226-5b3f32b4cafe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem dist_comm (x y : Completion α) : dist x y = dist y x := by
  refine induction_on₂ x y ?_ ?_
  · exact isClosed_eq (Completion.continuous_dist continuous_fst continuous_snd)
        (Completion.continuous_dist continuous_snd continuous_fst)
  · intro a b
    rw [Completion.dist_eq, Completion.dist_eq, dist_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46fd8550d223dc731b01c1b25445ccd71665991a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
