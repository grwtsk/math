# abs_logSamplingDerivative_anchored_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76ecbdd5-e0d3-3b44-74a7-024a32803028",
  "kind": "theorem",
  "lexical_name": "abs_logSamplingDerivative_anchored_le",
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
  "slug": "abs-logsamplingderivative-anchored-le--3277093515ef7d75e2e1e1be",
  "source": {
    "blob": "bfd3891d155ef0d1ec274c0d41b51fd96dce50e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3277093515ef7d75e2e1e1bebb8bf806f43172d1c46f8d1372c7fb73447108b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76ecbdd5-e0d3-3b44-74a7-024a32803028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_logSamplingDerivative_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) {L s u : ℝ} (hzero : F 0 = 0)
    (_hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) (hu : 1 ≤ u) :
    |logSamplingDerivative F (Real.exp s) u| ≤ anchoredDerivativeMajorant s L u := by
  have hu0 : 0 < u := lt_of_lt_of_le zero_lt_one hu
  have hr : 0 ≤ Real.log u := Real.log_nonneg hu
  have hFt : |F (s + Real.log u)| ≤ L * (s + Real.log u) := by
    simpa only [abs_of_nonneg (add_nonneg hs hr)] using
      anchored_profile_abs_le hF hzero hderiv (s + Real.log u)
  have hcoef : |1 - Real.log u / 2| ≤ 1 + Real.log u / 2 := by
    rw [abs_le]
    constructor <;> linarith
  have hinner : |(1 - Real.log u / 2) * F (s + Real.log u) +
      Real.log u * deriv F (s + Real.log u)| ≤
      (1 + Real.log u / 2) * (L * (s + Real.log u)) + Real.log u * L := by
    calc
      _ ≤ |1 - Real.log u / 2| * |F (s + Real.log u)| +
          |Real.log u| * |deriv F (s + Real.log u)| := by
        simpa only [abs_mul] using abs_add_le
          ((1 - Real.log u / 2) * F (s + Real.log u))
          (Real.log u * deriv F (s + Real.log u))
      _ ≤ _ := by
        rw [abs_of_nonneg hr]
        exact add_le_add
          (mul_le_mul hcoef hFt (abs_nonneg _) (by positivity))
          (mul_le_mul_of_nonneg_left (hderiv _) hr)
  have he : Real.exp (-(s + Real.log u) / 2) =
      Real.exp (-s / 2) * Real.exp (-Real.log u / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold logSamplingDerivative
  rw [Real.log_exp, abs_mul, abs_div, abs_of_pos (Real.exp_pos _), abs_of_pos hu0, he]
  calc
    _ ≤ (Real.exp (-s / 2) * Real.exp (-Real.log u / 2) / u) *
        ((1 + Real.log u / 2) * (L * (s + Real.log u)) + Real.log u * L) :=
      mul_le_mul_of_nonneg_left hinner (by positivity)
    _ = _ := by
      unfold anchoredDerivativeMajorant logSquareHalfDensity logHalfDensity halfDensity
      ring

/-- The sampling derivative is integrable under the anchored linear envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfd3891d155ef0d1ec274c0d41b51fd96dce50e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
