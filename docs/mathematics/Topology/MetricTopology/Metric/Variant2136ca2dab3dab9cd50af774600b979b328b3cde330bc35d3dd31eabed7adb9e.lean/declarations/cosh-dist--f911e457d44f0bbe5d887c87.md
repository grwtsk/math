# cosh_dist'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2282a017-3068-3984-8b5c-75b21b9c55e8",
  "kind": "theorem",
  "lexical_name": "cosh_dist'",
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
  "slug": "cosh-dist--f911e457d44f0bbe5d887c87",
  "source": {
    "blob": "49b8f8a80e6c4ab8b0dd447fa708525d276f186d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 150,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f911e457d44f0bbe5d887c87eb428761400fe99056d6f019d37d3aff34e961b5",
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

Occurrence: `result:2282a017-3068-3984-8b5c-75b21b9c55e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cosh_dist' (z w : ℍ) :
    Real.cosh (dist z w) = ((z.re - w.re) ^ 2 + z.im ^ 2 + w.im ^ 2) / (2 * z.im * w.im) := by
  have H : 0 < 2 * z.im * w.im := mul_pos (mul_pos two_pos z.im_pos) w.im_pos
  field_simp [cosh_dist, Complex.dist_eq, Complex.sq_abs, normSq_apply, H, H.ne']
  ring
#align upper_half_plane.cosh_dist' UpperHalfPlane.cosh_dist'

/-- Euclidean center of the circle with center `z` and radius `r` in the hyperbolic metric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49b8f8a80e6c4ab8b0dd447fa708525d276f186d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
