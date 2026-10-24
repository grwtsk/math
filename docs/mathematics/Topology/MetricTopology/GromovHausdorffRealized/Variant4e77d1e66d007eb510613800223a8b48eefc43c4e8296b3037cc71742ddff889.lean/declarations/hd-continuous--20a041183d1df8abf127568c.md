# HD_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fd0d214-ea7a-df28-4084-103b3d683755",
  "kind": "theorem",
  "lexical_name": "HD_continuous",
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
  "slug": "hd-continuous--20a041183d1df8abf127568c",
  "source": {
    "blob": "82db927467f984768136129aec9fe25b31eb2a38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 417,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20a041183d1df8abf127568c21afe7b4895a13e04265b0393321c643e3f27794",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fd0d214-ea7a-df28-4084-103b3d683755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem HD_continuous : Continuous (HD : Cb X Y → ℝ) :=
  LipschitzWith.continuous (LipschitzWith.of_le_add HD_lipschitz_aux3)

end Constructions

section Consequences

variable (X : Type u) (Y : Type v) [MetricSpace X] [CompactSpace X] [Nonempty X] [MetricSpace Y]
  [CompactSpace Y] [Nonempty Y]

/- Now that we have proved that the set of candidates is compact, and that `HD` is continuous,
we can finally select a candidate minimizing `HD`. This will be the candidate realizing the
optimal coupling. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82db927467f984768136129aec9fe25b31eb2a38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
