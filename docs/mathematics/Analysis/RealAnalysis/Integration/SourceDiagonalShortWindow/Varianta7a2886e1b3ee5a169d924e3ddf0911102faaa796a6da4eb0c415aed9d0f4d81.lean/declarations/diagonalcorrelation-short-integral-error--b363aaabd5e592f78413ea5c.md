# diagonalCorrelation_short_integral_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5f592c0-3c0c-07f7-6feb-ce4ee2788a2a",
  "kind": "theorem",
  "lexical_name": "diagonalCorrelation_short_integral_error",
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
  "slug": "diagonalcorrelation-short-integral-error--b363aaabd5e592f78413ea5c",
  "source": {
    "blob": "4d66f955c9e243c25c4796dc2212961337839240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta7a2886e1b3ee5a169d924e3ddf0911102faaa796a6da4eb0c415aed9d0f4d81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b363aaabd5e592f78413ea5c8140041b3b2a6fc0a638a64995c0f95f3559d2d3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta7a2886e1b3ee5a169d924e3ddf0911102faaa796a6da4eb0c415aed9d0f4d81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5f592c0-3c0c-07f7-6feb-ce4ee2788a2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalCorrelation_short_integral_error (A : ℝ) (hA : 1 ≤ A)
    (L : ℝ) (hL : 0 ≤ L) :
    |(∫ t in 0..L, diagonalCorrelation A t) - L| ≤ 5 * L ^ 2 / A := by
  have hc := (diagonalCorrelation_contDiff A (by linarith)).continuous
  have hs : (∫ t in 0..L, diagonalCorrelation A t) - L =
      ∫ t in 0..L, diagonalCorrelation A t - 1 := by
    rw [intervalIntegral.integral_sub (hc.intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _), intervalIntegral.integral_const]
    simp
  rw [hs]
  calc
    |∫ t in 0..L, diagonalCorrelation A t - 1| ≤
        ∫ t in 0..L, |diagonalCorrelation A t - 1| :=
      intervalIntegral.abs_integral_le_integral_abs hL
    _ ≤ ∫ t in 0..L, (10 / A) * t :=
      intervalIntegral.integral_mono_on hL
        ((hc.sub continuous_const).abs.intervalIntegrable _ _)
        ((continuous_const.mul continuous_id).intervalIntegrable _ _)
        (fun t ht => diagonalCorrelation_sub_one_abs_le A hA t ht.1)
    _ = 5 * L ^ 2 / A := by
      rw [intervalIntegral.integral_const_mul, integral_id]
      ring

/-- A coarse scale-independent logarithmic budget preserves the exact floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta7a2886e1b3ee5a169d924e3ddf0911102faaa796a6da4eb0c415aed9d0f4d81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta7a2886e1b3ee5a169d924e3ddf0911102faaa796a6da4eb0c415aed9d0f4d81.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d66f955c9e243c25c4796dc2212961337839240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
