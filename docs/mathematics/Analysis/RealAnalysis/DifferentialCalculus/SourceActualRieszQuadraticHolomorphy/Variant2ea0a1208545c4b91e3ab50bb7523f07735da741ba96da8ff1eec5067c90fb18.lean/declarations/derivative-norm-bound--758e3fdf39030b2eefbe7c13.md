# derivative_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c02cfb05-8d0e-7051-6eeb-37b01e63988f",
  "kind": "theorem",
  "lexical_name": "derivative_norm_bound",
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
  "slug": "derivative-norm-bound--758e3fdf39030b2eefbe7c13",
  "source": {
    "blob": "3582f7f97812e4c397e77bb0c6981c0453509bdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758e3fdf39030b2eefbe7c13a9f9b3d21878fc74f81ae9ad87d8ef941913e41b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c02cfb05-8d0e-7051-6eeb-37b01e63988f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem derivative_norm_bound {c r t : ℝ} (hc : 0 < c)
    (hr : 2 * c ≤ r) (ht : 0 ≤ t) :
    t * |profile t| * Real.exp (-r * t) ≤
      (1 / c) * ‖profile t * Real.exp (-c * t)‖ := by
  have he : Real.exp (-r * t) ≤ Real.exp (-(2 * c) * t) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  calc
    _ ≤ t * |profile t| * Real.exp (-(2 * c) * t) :=
      mul_le_mul_of_nonneg_left he (mul_nonneg ht (abs_nonneg _))
    _ ≤ ((1 / c) * Real.exp (c * t)) * |profile t| *
        Real.exp (-(2 * c) * t) := by
      gcongr
      exact time_exp_bound hc ht
    _ = _ := by
      rw [norm_mul]
      simp only [Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
      rw [show ((1 / c) * Real.exp (c * t)) * |profile t| *
        Real.exp (-(2 * c) * t) = (1 / c) * |profile t| *
          (Real.exp (c * t) * Real.exp (-(2 * c) * t)) by ring, ← Real.exp_add]
      rw [show c * t + -(2 * c) * t = -c * t by ring]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3582f7f97812e4c397e77bb0c6981c0453509bdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
