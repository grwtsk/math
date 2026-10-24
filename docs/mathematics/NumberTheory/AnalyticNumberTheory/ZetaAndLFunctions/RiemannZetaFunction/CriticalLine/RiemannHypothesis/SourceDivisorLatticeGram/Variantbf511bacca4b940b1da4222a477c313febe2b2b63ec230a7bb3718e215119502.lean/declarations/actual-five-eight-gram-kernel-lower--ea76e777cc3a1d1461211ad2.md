# actual_five_eight_gram_kernel_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:950ec17f-1bd7-079a-5641-b864b8a78d60",
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
  "slug": "actual-five-eight-gram-kernel-lower--ea76e777cc3a1d1461211ad2",
  "source": {
    "blob": "ce45d569c4f61fc17d1cc85f37fac92975936570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeGram/Variantbf511bacca4b940b1da4222a477c313febe2b2b63ec230a7bb3718e215119502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea76e777cc3a1d1461211ad298d4f6f051385d7eceae19154f7b7df914353824",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeGram/Variantbf511bacca4b940b1da4222a477c313febe2b2b63ec230a7bb3718e215119502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:950ec17f-1bd7-079a-5641-b864b8a78d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–58.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeGram/Variantbf511bacca4b940b1da4222a477c313febe2b2b63ec230a7bb3718e215119502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeGram/Variantbf511bacca4b940b1da4222a477c313febe2b2b63ec230a7bb3718e215119502.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce45d569c4f61fc17d1cc85f37fac92975936570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
