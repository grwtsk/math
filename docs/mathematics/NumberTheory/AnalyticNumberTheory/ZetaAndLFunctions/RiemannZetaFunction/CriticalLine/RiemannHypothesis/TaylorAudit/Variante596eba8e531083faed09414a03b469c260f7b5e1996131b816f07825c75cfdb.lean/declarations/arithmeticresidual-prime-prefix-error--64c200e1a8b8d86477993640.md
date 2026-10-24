# arithmeticResidual_prime_prefix_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd9ef20f-8750-27aa-2592-e21edb2de57d",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_prime_prefix_error",
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
  "slug": "arithmeticresidual-prime-prefix-error--64c200e1a8b8d86477993640",
  "source": {
    "blob": "970a5d1234df03056cfa5f1d946e87c2f6c68b9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variante596eba8e531083faed09414a03b469c260f7b5e1996131b816f07825c75cfdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64c200e1a8b8d8647799364096a8ad5c66ffdaa2b31d503df52231db79eec4d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variante596eba8e531083faed09414a03b469c260f7b5e1996131b816f07825c75cfdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd9ef20f-8750-27aa-2592-e21edb2de57d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_prime_prefix_error (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X)
    (hε : 0 ≤ ε) (hx : 1 ≤ x) (hxX : x < X) :
    ‖arithmeticResidual X ε x - ((x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ))‖ ≤
        ε ^ 2 * x * Real.log x ^ 2 := by
  rw [arithmeticResidual_eq_divisor_prefix X ε x hX hx hxX]
  have he : (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
      ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) -
      ((x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
        (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) =
      -(((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) := by
    push_cast
    ring
  rw [he, norm_neg, Complex.norm_real, Real.norm_eq_abs]
  exact dampedDivisorCoefficient_real_prefix_first_order ε hε x hx

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.dampedDivisorCoefficient_first_order
#print FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.dampedDivisorCoefficient_first_order
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.dampedDivisorCoefficient_first_order
#check @FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.dampedDivisorCoefficient_prefix_first_order
#print FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.dampedDivisorCoefficient_prefix_first_order
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.dampedDivisorCoefficient_prefix_first_order
#check @FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.dampedDivisorCoefficient_real_prefix_first_order
#print FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.dampedDivisorCoefficient_real_prefix_first_order
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.dampedDivisorCoefficient_real_prefix_first_order
#check @FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.arithmeticResidual_prime_prefix_error
#print FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.arithmeticResidual_prime_prefix_error
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor.arithmeticResidual_prime_prefix_error
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variante596eba8e531083faed09414a03b469c260f7b5e1996131b816f07825c75cfdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variante596eba8e531083faed09414a03b469c260f7b5e1996131b816f07825c75cfdb.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `970a5d1234df03056cfa5f1d946e87c2f6c68b9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
