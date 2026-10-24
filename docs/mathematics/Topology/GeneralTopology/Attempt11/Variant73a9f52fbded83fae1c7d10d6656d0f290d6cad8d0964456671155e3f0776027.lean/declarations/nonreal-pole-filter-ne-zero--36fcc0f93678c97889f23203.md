# nonreal_pole_filter_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae288fe7-bda6-e8e7-6574-ebe8e0d6a4b8",
  "kind": "theorem",
  "lexical_name": "nonreal_pole_filter_ne_zero",
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
  "slug": "nonreal-pole-filter-ne-zero--36fcc0f93678c97889f23203",
  "source": {
    "blob": "7b032a5115bb4c580e2736d5f85f0e1df346503c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt11/Variant73a9f52fbded83fae1c7d10d6656d0f290d6cad8d0964456671155e3f0776027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36fcc0f93678c97889f23203b9627856174383e6f23229ba8c0d79a9c9ac338c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt11/Variant73a9f52fbded83fae1c7d10d6656d0f290d6cad8d0964456671155e3f0776027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae288fe7-bda6-e8e7-6574-ebe8e0d6a4b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonreal_pole_filter_ne_zero {z : ℂ} (hz : z.im ≠ 0) : z^2-1/4 ≠ 0 := by
  have hleft : z-(1/2 : ℂ) ≠ 0 := by
    intro he
    have hh := sub_eq_zero.mp he
    apply hz
    rw [hh]
    norm_num
  have hright : z+(1/2 : ℂ) ≠ 0 := by
    intro he
    have hh := congrArg Complex.im he
    apply hz
    simpa using hh
  rw [show z^2-1/4 = (z-1/2)*(z+1/2) by ring]
  exact mul_ne_zero hleft hright

/-- A ratio-to-one asymptotic, with its genuine source and nonzero filter explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt11/Variant73a9f52fbded83fae1c7d10d6656d0f290d6cad8d0964456671155e3f0776027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt11/Variant73a9f52fbded83fae1c7d10d6656d0f290d6cad8d0964456671155e3f0776027.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b032a5115bb4c580e2736d5f85f0e1df346503c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
