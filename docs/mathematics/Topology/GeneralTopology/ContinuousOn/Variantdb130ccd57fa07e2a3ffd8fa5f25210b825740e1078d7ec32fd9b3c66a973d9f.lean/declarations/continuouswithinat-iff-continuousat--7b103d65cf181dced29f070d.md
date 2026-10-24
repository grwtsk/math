# continuousWithinAt_iff_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab9fcb1a-89ce-6c8b-c04f-fb21b113f350",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_iff_continuousAt",
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
  "slug": "continuouswithinat-iff-continuousat--7b103d65cf181dced29f070d",
  "source": {
    "blob": "931e16e1a32865a485503e751b0a0a5459c806c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 862,
    "line": 858,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b103d65cf181dced29f070d9d97be3c3cbff6e2e75a62b0a04a2cb12c023862",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab9fcb1a-89ce-6c8b-c04f-fb21b113f350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 858–862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_iff_continuousAt {f : α → β} {s : Set α} {x : α} (h : s ∈ 𝓝 x) :
    ContinuousWithinAt f s x ↔ ContinuousAt f x := by
  rw [← univ_inter s, continuousWithinAt_inter h, continuousWithinAt_univ]
#align continuous_within_at_iff_continuous_at continuousWithinAt_iff_continuousAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean#L858).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931e16e1a32865a485503e751b0a0a5459c806c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
