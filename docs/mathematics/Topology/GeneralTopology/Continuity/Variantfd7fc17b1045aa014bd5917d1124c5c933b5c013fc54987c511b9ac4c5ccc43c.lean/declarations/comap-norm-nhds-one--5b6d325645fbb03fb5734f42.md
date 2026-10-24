# comap_norm_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e75fe4b6-a852-b14d-3546-c2794559f9e2",
  "kind": "theorem",
  "lexical_name": "comap_norm_nhds_one",
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
  "slug": "comap-norm-nhds-one--5b6d325645fbb03fb5734f42",
  "source": {
    "blob": "94b75e46d2a4619f2b5894465f010e2f8f5dd755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b6d325645fbb03fb5734f42cc0f188d6fb4ed5ebbfeaeb8b25f885e41b6ebb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e75fe4b6-a852-b14d-3546-c2794559f9e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_norm_nhds_one : comap norm (𝓝 0) = 𝓝 (1 : E) := by
  simpa only [dist_one_right] using nhds_comap_dist (1 : E)

/-- Special case of the sandwich theorem: if the norm of `f` is eventually bounded by a real
function `a` which tends to `0`, then `f` tends to `1` (neutral element of `SeminormedGroup`).
In this pair of lemmas (`squeeze_one_norm'` and `squeeze_one_norm`), following a convention of
similar lemmas in `Topology.MetricSpace.Basic` and `Topology.Algebra.Order`, the `'` version is
phrased using "eventually" and the non-`'` version is phrased absolutely. -/
@[to_additive /-- Special case of the sandwich theorem: if the norm of `f` is eventually bounded by
a real function `a` which tends to `0`, then `f` tends to `0`. In this pair of lemmas
(`squeeze_zero_norm'` and `squeeze_zero_norm`), following a convention of similar lemmas in
`Topology.MetricSpace.Pseudo.Defs` and `Topology.Algebra.Order`, the `'` version is phrased using
"eventually" and the non-`'` version is phrased absolutely. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b75e46d2a4619f2b5894465f010e2f8f5dd755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
