# nonreal_pole_filter_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1e59222-24f5-72c7-d104-c5b23e8720d3",
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
  "slug": "nonreal-pole-filter-ne-zero--5c5d867efdf55d4e6bb34ac2",
  "source": {
    "blob": "13b87d10d63ab239b4f05452c2592fa373f204e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 154,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant79db959d8e3f7ab6482a406d1816060ada30f5c4a3a5042d04bb0264b528d4d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c5d867efdf55d4e6bb34ac25897cb784ce8ee0fa1ce9dd9bcb01598cf8ef3bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant79db959d8e3f7ab6482a406d1816060ada30f5c4a3a5042d04bb0264b528d4d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1e59222-24f5-72c7-d104-c5b23e8720d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–169.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant79db959d8e3f7ab6482a406d1816060ada30f5c4a3a5042d04bb0264b528d4d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant79db959d8e3f7ab6482a406d1816060ada30f5c4a3a5042d04bb0264b528d4d2.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13b87d10d63ab239b4f05452c2592fa373f204e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
