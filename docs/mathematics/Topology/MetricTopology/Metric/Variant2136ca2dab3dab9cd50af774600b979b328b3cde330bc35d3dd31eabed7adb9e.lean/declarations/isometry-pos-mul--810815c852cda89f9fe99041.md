# isometry_pos_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24722307-f3b6-2aab-5eb1-679bb96766f7",
  "kind": "theorem",
  "lexical_name": "isometry_pos_mul",
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
  "slug": "isometry-pos-mul--810815c852cda89f9fe99041",
  "source": {
    "blob": "49b8f8a80e6c4ab8b0dd447fa708525d276f186d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 373,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:810815c852cda89f9fe99041f9cbf49650e934c9287c0eb922650efeb0e70224",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24722307-f3b6-2aab-5eb1-679bb96766f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isometry_pos_mul (a : { x : ℝ // 0 < x }) : Isometry ((· • ·) a : ℍ → ℍ) := by
  refine' Isometry.of_dist_eq fun y₁ y₂ => _
  simp only [dist_eq, coe_pos_real_smul, pos_real_im]; congr 2
  rw [dist_smul₀, mul_mul_mul_comm, Real.sqrt_mul (mul_self_nonneg _), Real.sqrt_mul_self_eq_abs,
    Real.norm_eq_abs, mul_left_comm]
  exact mul_div_mul_left _ _ (mt _root_.abs_eq_zero.1 a.2.ne')
#align upper_half_plane.isometry_pos_mul UpperHalfPlane.isometry_pos_mul

/-- `SL(2, ℝ)` acts on the upper half plane as an isometry.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49b8f8a80e6c4ab8b0dd447fa708525d276f186d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
