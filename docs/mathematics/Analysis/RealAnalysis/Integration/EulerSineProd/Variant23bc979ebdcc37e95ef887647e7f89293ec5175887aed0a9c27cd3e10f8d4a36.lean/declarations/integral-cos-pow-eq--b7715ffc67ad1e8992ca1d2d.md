# integral_cos_pow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf7e3c1d-c68e-784d-8549-9455fe040af3",
  "kind": "theorem",
  "lexical_name": "integral_cos_pow_eq",
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
  "slug": "integral-cos-pow-eq--b7715ffc67ad1e8992ca1d2d",
  "source": {
    "blob": "c1ef4b5a7288d7062b79a2d08429a7d278dafae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7715ffc67ad1e8992ca1d2d01888eaead76f1b5d47a83559ac1e32b226fd4da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf7e3c1d-c68e-784d-8549-9455fe040af3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_cos_pow_eq (n : ℕ) :
    (∫ x in (0 : ℝ)..π / 2, cos x ^ n) = 1 / 2 * ∫ x in (0 : ℝ)..π, sin x ^ n := by
  rw [mul_comm (1 / 2 : ℝ), ← div_eq_iff (one_div_ne_zero (two_ne_zero' ℝ)), ← div_mul, div_one,
    mul_two]
  have L : IntervalIntegrable _ volume 0 (π / 2) := (continuous_sin.pow n).intervalIntegrable _ _
  have R : IntervalIntegrable _ volume (π / 2) π := (continuous_sin.pow n).intervalIntegrable _ _
  rw [← integral_add_adjacent_intervals L R]
  congr 1
  · nth_rw 1 [(by ring : 0 = π / 2 - π / 2)]
    nth_rw 3 [(by ring : π / 2 = π / 2 - 0)]
    rw [← integral_comp_sub_left]
    refine integral_congr fun x _ => ?_
    rw [cos_pi_div_two_sub]
  · nth_rw 3 [(by ring : π = π / 2 + π / 2)]
    nth_rw 2 [(by ring : π / 2 = 0 + π / 2)]
    rw [← integral_comp_add_right]
    refine integral_congr fun x _ => ?_
    rw [sin_add_pi_div_two]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1ef4b5a7288d7062b79a2d08429a7d278dafae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
