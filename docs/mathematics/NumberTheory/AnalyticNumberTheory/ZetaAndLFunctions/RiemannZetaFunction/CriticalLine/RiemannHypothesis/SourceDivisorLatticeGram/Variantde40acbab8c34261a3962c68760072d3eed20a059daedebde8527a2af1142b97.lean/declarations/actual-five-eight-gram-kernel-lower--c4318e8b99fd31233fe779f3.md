# actual_five_eight_gram_kernel_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf52553a-4a15-9ae6-9e05-928509d29d1a",
  "kind": "theorem",
  "lexical_name": "actual_five_eight_gram_kernel_lower",
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
  "slug": "actual-five-eight-gram-kernel-lower--c4318e8b99fd31233fe779f3",
  "source": {
    "blob": "62042c8253ba07d4b1c922ff68e46fec3bf9e328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeGram/Variantde40acbab8c34261a3962c68760072d3eed20a059daedebde8527a2af1142b97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4318e8b99fd31233fe779f3406709368145c01f327d9af355298564a445cd9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeGram/Variantde40acbab8c34261a3962c68760072d3eed20a059daedebde8527a2af1142b97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf52553a-4a15-9ae6-9e05-928509d29d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_five_eight_gram_kernel_lower :
    (3287 / 84700 : ℝ) ≤ sourceCorrelation explicitSecondDerivative 2 (Real.log (8 / 5 : ℝ)) := by
  have ht0 : 0 ≤ Real.log (8 / 5 : ℝ) := Real.log_nonneg (by norm_num)
  have ht : Real.log (8 / 5 : ℝ) ≤ 3 / 5 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 8/5)
    norm_num at h
    exact h
  have htsq : (Real.log (8 / 5 : ℝ))^2 ≤ 9 / 25 := by
    nlinarith [sq_nonneg (3 / 5 - Real.log (8 / 5 : ℝ))]
  have h := sourceCorrelation_linear_taylor_bound (A := 2) (by norm_num) 0
    (Real.log (8 / 5 : ℝ))
  rw [zero_add, sourceCorrelation_zero (by norm_num), actual_correlation_deriv_zero (by norm_num),
    mul_zero, sub_zero] at h
  have hl := (abs_le.mp h).1
  norm_num at hl
  linarith

/-- In particular the ordinary source Gram mixed entry cannot be deleted as zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeGram/Variantde40acbab8c34261a3962c68760072d3eed20a059daedebde8527a2af1142b97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeGram/Variantde40acbab8c34261a3962c68760072d3eed20a059daedebde8527a2af1142b97.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62042c8253ba07d4b1c922ff68e46fec3bf9e328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
