# candidatesBDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b5155f748cdcbaeca1934a3bf0456ef2a2b7b8a7e48e5d6c78129983bd70f15",
  "kind": "def",
  "lexical_name": "candidatesBDist",
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
  "slug": "candidatesbdist--abbaaf4bea61484c015496f3",
  "source": {
    "blob": "f554c13e90b90b506b2b80187f766c837c76fa45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 225,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abbaaf4bea61484c015496f31374273b751ef3fec8633ffa2e87540fed310883",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b5155f748cdcbaeca1934a3bf0456ef2a2b7b8a7e48e5d6c78129983bd70f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def candidatesBDist (X : Type u) (Y : Type v) [MetricSpace X] [CompactSpace X] [Inhabited X]
    [MetricSpace Y] [CompactSpace Y] [Inhabited Y] : Cb X Y :=
  candidatesBOfCandidates _ dist_mem_candidates
#align Gromov_Hausdorff.candidates_b_dist GromovHausdorff.candidatesBDist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f554c13e90b90b506b2b80187f766c837c76fa45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
