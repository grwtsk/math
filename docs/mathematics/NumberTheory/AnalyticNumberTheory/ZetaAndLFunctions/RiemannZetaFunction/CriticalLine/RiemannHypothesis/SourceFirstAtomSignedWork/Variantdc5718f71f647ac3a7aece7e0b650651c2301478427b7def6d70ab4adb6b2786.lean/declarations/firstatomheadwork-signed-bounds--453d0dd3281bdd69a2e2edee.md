# firstAtomHeadWork_signed_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0827d8c5-2732-cb7b-8f3f-fef971d889f9",
  "kind": "theorem",
  "lexical_name": "firstAtomHeadWork_signed_bounds",
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
  "slug": "firstatomheadwork-signed-bounds--453d0dd3281bdd69a2e2edee",
  "source": {
    "blob": "534477b4a97f3a9212295ce9b8b5af3ca6bf5c83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variantdc5718f71f647ac3a7aece7e0b650651c2301478427b7def6d70ab4adb6b2786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:453d0dd3281bdd69a2e2edee4f321258903ee5e59d69643657d2263f333949dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variantdc5718f71f647ac3a7aece7e0b650651c2301478427b7def6d70ab4adb6b2786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0827d8c5-2732-cb7b-8f3f-fef971d889f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstAtomHeadWork_signed_bounds (A : ℝ) (hA : 40 ≤ A) :
    -(5 / 8 : ℝ) ≤ firstAtomHeadWork A ∧
      firstAtomHeadWork A ≤ -(5 / 32 : ℝ) * (Real.log 2) ^ 2 := by
  have hp : 0 < A := by linarith
  have hb : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hblog : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hg := (criticalPrimeTest_contDiff A hp).continuous_deriv_one
  have hf : IntervalIntegrable (fun t : ℝ => -t * deriv (criticalPrimeTest A) t)
      volume 0 (Real.log 2) := (continuous_id.neg.mul hg).intervalIntegrable _ _
  have hlo : (∫ t in 0..Real.log 2, -(5 / 4 : ℝ) * t) ≤
      ∫ t in 0..Real.log 2, -t * deriv (criticalPrimeTest A) t := by
    apply intervalIntegral.integral_mono_on hb
      ((by fun_prop : Continuous (fun t : ℝ => -(5 / 4 : ℝ) * t)).intervalIntegrable _ _) hf
    intro t ht
    have hd := (actual_criticalPrimeTest_deriv_first_interval A t hA ht.1 ht.2).2
    nlinarith
  have hhi : (∫ t in 0..Real.log 2, -t * deriv (criticalPrimeTest A) t) ≤
      ∫ t in 0..Real.log 2, -(5 / 16 : ℝ) * t := by
    apply intervalIntegral.integral_mono_on hb hf
      ((by fun_prop : Continuous (fun t : ℝ => -(5 / 16 : ℝ) * t)).intervalIntegrable _ _)
    intro t ht
    have hd := (actual_criticalPrimeTest_deriv_first_interval A t hA ht.1 ht.2).1
    nlinarith
  rw [linear_integral] at hlo hhi
  rw [firstAtomHeadWork_eq_empty_prefix]
  constructor <;> nlinarith [sq_nonneg (Real.log (2 : ℝ))]

/-- Its sign is proved for the actual source, separately from the tail estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variantdc5718f71f647ac3a7aece7e0b650651c2301478427b7def6d70ab4adb6b2786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variantdc5718f71f647ac3a7aece7e0b650651c2301478427b7def6d70ab4adb6b2786.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `534477b4a97f3a9212295ce9b8b5af3ca6bf5c83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
