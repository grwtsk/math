# actualDampedXiReturnDensity_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7432ba0-9f4d-c2d9-6f20-cedbb7877502",
  "kind": "theorem",
  "lexical_name": "actualDampedXiReturnDensity_edge_abs_le",
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
  "slug": "actualdampedxireturndensity-edge-abs-le--18f7417c511a9f55a3470f05",
  "source": {
    "blob": "1c5aa8172bdbe2ed0ba6ee3a4dbd4184be4a780c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantf6b889b49573df6386fa11b397b352d1f105caef00e7a1164fac95b4d0c9b54c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18f7417c511a9f55a3470f055c07eaa3ce8d26f5f60aa51ffbc027761e83a766",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantf6b889b49573df6386fa11b397b352d1f105caef00e7a1164fac95b4d0c9b54c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7432ba0-9f4d-c2d9-6f20-cedbb7877502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiReturnDensity_edge_abs_le {A t : ℝ} (hA : 91 ≤ A)
    (ht : t ≤ 2 * A) :
    |actualDampedXiReturnDensity A t| ≤
      67 / A ^ 4 * Real.exp (t / 2) *
        ((2 * A - t) + (2 * A - t) ^ 3 / 24) := by
  have h3 := actual_correlation_third_edge_abs_le hA ht
  have h1 := actual_correlation_first_edge_abs_le hA ht
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h1
  have he := Real.exp_pos (t / 2)
  unfold actualDampedXiReturnDensity
  rw [abs_mul, abs_of_pos he]
  have hs := abs_sub (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 4)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)] at hs
  have hx : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t -
      deriv (sourceCorrelation explicitSecondDerivative A) t / 4| ≤
      67 / A ^ 4 * ((2 * A - t) + (2 * A - t) ^ 3 / 24) := by
    linarith
  calc
    _ ≤ Real.exp (t / 2) * (67 / A ^ 4 *
        ((2 * A - t) + (2 * A - t) ^ 3 / 24)) :=
      mul_le_mul_of_nonneg_left hx he.le
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantf6b889b49573df6386fa11b397b352d1f105caef00e7a1164fac95b4d0c9b54c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantf6b889b49573df6386fa11b397b352d1f105caef00e7a1164fac95b4d0c9b54c.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c5aa8172bdbe2ed0ba6ee3a4dbd4184be4a780c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
