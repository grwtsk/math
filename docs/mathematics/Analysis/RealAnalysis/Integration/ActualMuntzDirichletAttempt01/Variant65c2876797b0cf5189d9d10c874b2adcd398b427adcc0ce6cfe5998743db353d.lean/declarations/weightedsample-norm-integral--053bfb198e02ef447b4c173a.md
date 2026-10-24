# weightedSample_norm_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4b4ea56-7af8-76c9-74d7-af6f6b565d58",
  "kind": "theorem",
  "lexical_name": "weightedSample_norm_integral",
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
  "slug": "weightedsample-norm-integral--053bfb198e02ef447b4c173a",
  "source": {
    "blob": "d0829db6ec074c465299ca998396c3dce6fe4103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variant65c2876797b0cf5189d9d10c874b2adcd398b427adcc0ce6cfe5998743db353d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:053bfb198e02ef447b4c173a576d0408b5591343db080ecc69a99cf7bf39f39f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variant65c2876797b0cf5189d9d10c874b2adcd398b427adcc0ce6cfe5998743db353d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4b4ea56-7af8-76c9-74d7-af6f6b565d58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSample_norm_integral (A : ℝ) (s : ℂ) (n : ℕ) :
    (∫ x in Ioi 0, ‖weightedSample A s n x‖) =
      (((n+1 : ℕ) : ℝ) ^ (-s.re)) * sourceNormMoment A s.re := by
  let c : ℝ := ((n+1 : ℕ) : ℝ)
  have hc : 0 < c := by dsimp [c]; positivity
  have he : EqOn (fun x => ‖weightedSample A s n x‖)
      (fun x => c^(1-s.re) * ((c*x)^(s.re-1) * ‖complexSource A (c*x)‖)) (Ioi 0) := by
    intro x hx
    rw [weightedSample_norm s n hx]
    change x^(s.re-1) * ‖complexSource A (c*x)‖ = _
    rw [Real.mul_rpow hc.le hx.le]
    rw [← mul_assoc,← mul_assoc,← Real.rpow_add hc]
    have hz : 1-s.re+(s.re-1) = 0 := by ring
    rw [hz,Real.rpow_zero,one_mul]
  rw [setIntegral_congr_fun measurableSet_Ioi he,integral_const_mul,
    integral_comp_mul_left_Ioi (fun u => u^(s.re-1)*‖complexSource A u‖) 0 hc,mul_zero]
  change c^(1-s.re)*(c⁻¹*sourceNormMoment A s.re) = _
  rw [← mul_assoc,← Real.rpow_neg_one,← Real.rpow_add hc]
  congr 2
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variant65c2876797b0cf5189d9d10c874b2adcd398b427adcc0ce6cfe5998743db353d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variant65c2876797b0cf5189d9d10c874b2adcd398b427adcc0ce6cfe5998743db353d.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0829db6ec074c465299ca998396c3dce6fe4103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
