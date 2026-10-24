# gl_smul_eq_self_iff_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6772d44-29f0-3479-92db-8338389db9ea",
  "kind": "theorem",
  "lexical_name": "gl_smul_eq_self_iff_dist_eq",
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
  "slug": "gl-smul-eq-self-iff-dist-eq--39ff08f3c01ba44148840e9c",
  "source": {
    "blob": "8f3cb21f4417916793fc7585d7a0402e302db6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 86,
    "path": "GRWTSK/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39ff08f3c01ba44148840e9c44822746c829fd42c055879206365dac856bea0e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6772d44-29f0-3479-92db-8338389db9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gl_smul_eq_self_iff_dist_eq (h : g.val.det < 0) (htrace : g.val.trace = 0)
    (hc : g 1 0 ≠ 0) :
    g • z = z ↔ dist (z : ℂ) (-g 1 1 / g 1 0) = √(-g.val.det) / |g 1 0| := by
  rw [gl_smul_eq_self_iff_dist_sq_eq h htrace hc, eq_comm, ← Real.sqrt_eq_iff_eq_sq, eq_comm,
    Real.sqrt_div', Real.sqrt_sq_eq_abs] <;> positivity [neg_pos.mpr h]

/-- An orientation-reversing isometry of the hyperbolic plane has a fixed point
iff the corresponding matrix has zero trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3cb21f4417916793fc7585d7a0402e302db6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
