# tail_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50ce2cb3-5e47-032c-0821-8b794443e7cd",
  "kind": "theorem",
  "lexical_name": "tail_norm_bound",
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
  "slug": "tail-norm-bound--57ca674d1948c82847e85f9f",
  "source": {
    "blob": "f5c1ab335e2cd12bd9f7ba1938c314f8fb435867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variant2e32f4d3a17262b4e5cf9ead14d31b739da0a90b0bf6edfd523956d46fbc53e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ca674d1948c82847e85f9fb45773d0716e3ca758f8cea375c95bd30ce906b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variant2e32f4d3a17262b4e5cf9ead14d31b739da0a90b0bf6edfd523956d46fbc53e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50ce2cb3-5e47-032c-0821-8b794443e7cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tail_norm_bound {f : ℝ → ℝ} {K T : ℝ}
    (hf : IntegrableOn f (Ioi T)) (hT : 1 ≤ T)
    (hK : ∀ t : ℝ, 1 ≤ t → |f t| ≤ K/t^2) :
    |∫ t in Ioi T, f t| ≤ K/T := by
  have ht : 0 < T := by linarith
  calc
    |∫ t in Ioi T, f t| ≤ ∫ t in Ioi T, |f t| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ t in Ioi T, K*(1/t^2) := by
      refine integral_mono_ae hf.abs ((inverse_square_integrable ht).const_mul K) ?_
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t htt
      simpa only [mul_one_div] using hK t (hT.trans htt.le)
    _ = K/T := by rw [integral_const_mul,inverse_square_integral ht];ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variant2e32f4d3a17262b4e5cf9ead14d31b739da0a90b0bf6edfd523956d46fbc53e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variant2e32f4d3a17262b4e5cf9ead14d31b739da0a90b0bf6edfd523956d46fbc53e6.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5c1ab335e2cd12bd9f7ba1938c314f8fb435867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
