# Continuous.continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fe7d935-a840-68e8-97be-2db537469815",
  "kind": "theorem",
  "lexical_name": "Continuous.continuousOn",
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
  "slug": "continuous-continuouson--aa59d8724ba3df27fff6b9c8",
  "source": {
    "blob": "931e16e1a32865a485503e751b0a0a5459c806c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 921,
    "line": 917,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa59d8724ba3df27fff6b9c815832739e7466786fa6599980f267cd5532d38b6",
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

Occurrence: `result:8fe7d935-a840-68e8-97be-2db537469815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 917–921.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.continuousOn {f : α → β} {s : Set α} (h : Continuous f) : ContinuousOn f s := by
  rw [continuous_iff_continuousOn_univ] at h
  exact h.mono (subset_univ _)
#align continuous.continuous_on Continuous.continuousOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean#L917).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931e16e1a32865a485503e751b0a0a5459c806c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
