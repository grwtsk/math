# actualCorrelation_closed_first_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b90732e7-bcf4-1afa-2a24-e90a3829cf27",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_closed_first_moment_zero",
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
  "slug": "actualcorrelation-closed-first-moment-zero--0051b109bfb4f1dc01283428",
  "source": {
    "blob": "b967a1836ec536d80df01b78625d2d850497de87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 108,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant5ffac4665f35ff6b70b2d911dc61ddb0ceed792f5b860cc0e6b83caab7aa3613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0051b109bfb4f1dc012834282dd8f8c353ec57b28218d58a19e77c2783baf556",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variant5ffac4665f35ff6b70b2d911dc61ddb0ceed792f5b860cc0e6b83caab7aa3613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b90732e7-bcf4-1afa-2a24-e90a3829cf27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_closed_first_moment_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in Icc (-(2*A)) (2*A),
      t * Real.exp (t/2) * sourceCorrelation explicitSecondDerivative A t) = 0 := by
  have hs := actualEulerMellin_hasDerivAt A hA (1:ℂ)
  have hz : actualEulerMellinSlope A (1:ℂ) = 0 := by
    simp [actualEulerMellinSlope]
  rw [hz] at hs
  have hh := (actualInitialPrimeMellin_hasDerivAt_closed_first hA).unique hs
  have he : (∫ t in Icc (-(2*A)) (2*A),
      (sourceCorrelation explicitSecondDerivative A t : ℂ) *
        Complex.exp ((t:ℂ)/2) * (t:ℂ)) =
      ((∫ t in Icc (-(2*A)) (2*A),
        t * Real.exp (t/2) * sourceCorrelation explicitSecondDerivative A t):ℂ) := by
    rw [← integral_complex_ofReal]
    apply integral_congr_ae
    filter_upwards [] with t
    rw [show (t:ℂ)/2 = (t/2:ℝ) by push_cast; ring, ← Complex.ofReal_exp]
    push_cast
    ring
  rw [he] at hh
  exact_mod_cast hh

/-- Evenness reflects the positive first moment to the bounded opposite half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variant5ffac4665f35ff6b70b2d911dc61ddb0ceed792f5b860cc0e6b83caab7aa3613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant5ffac4665f35ff6b70b2d911dc61ddb0ceed792f5b860cc0e6b83caab7aa3613.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b967a1836ec536d80df01b78625d2d850497de87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
