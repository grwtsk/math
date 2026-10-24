# actual_negativeErrorMean_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69b5285f-c448-b9e1-379b-2e2e3e326b5a",
  "kind": "theorem",
  "lexical_name": "actual_negativeErrorMean_lower",
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
  "slug": "actual-negativeerrormean-lower--61ceb256c3f5df5fc50a10f6",
  "source": {
    "blob": "52fd69a70b5f126acf9e2bb07932acce27692c09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61ceb256c3f5df5fc50a10f6bb1ad0eb3797506d2de642e9314a0c9a4da9cd86",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69b5285f-c448-b9e1-379b-2e2e3e326b5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negativeErrorMean_lower {A : ℝ} (hA : 1 ≤ A) :
    -(7+9*log 2)/4 ≤ negativeErrorMean A := by
  have hp : 0 < A := by linarith
  have hi := intervalIntegral.integral_mono_on (μ:=volume) (show 0≤2*A by linarith)
    ((negativeSlope_intervalIntegrable hp).const_mul (-(7+9*log 2)/4))
    (negativeSlopeWork_intervalIntegrable hp) (fun u hu=>
      mul_le_mul_of_nonneg_right (actual_primeLogError_bounds hu.1).1
        (negativeSlope_nonneg A u))
  rw [intervalIntegral.integral_const_mul] at hi
  change (-(7+9*log 2)/4)*negativeMass A ≤ negativeSlopeWork A at hi
  unfold negativeErrorMean
  exact (le_div_iff₀ (negativeMass_pos hA)).mpr hi

#check mangoldtError
#print axioms mangoldtError
#check primeError
#print axioms primeError
#check E₁
#print axioms E₁
#check E₁.summand_nonneg
#print axioms E₁.summand_nonneg
#check E₁.summable
#print axioms E₁.summable
#check E₁.le
#print axioms E₁.le
#check E₁.nonneg
#print axioms E₁.nonneg
#check mangoldtError.le_primeError_add_E₁
#print axioms mangoldtError.le_primeError_add_E₁
#check mangoldtError_bounds
#print axioms mangoldtError_bounds
#check primeError_le_mangoldtError
#print axioms primeError_le_mangoldtError
#check primeError_bounds
#print axioms primeError_bounds
#check log_four_eq
#print axioms log_four_eq
#check primeError_abs_le
#print axioms primeError_abs_le
#check actual_primeLogError_eq
#print axioms actual_primeLogError_eq
#check actual_primeLogError_bounds
#print axioms actual_primeLogError_bounds
#check actual_primeLogError_abs_le
#print axioms actual_primeLogError_abs_le
#check explicit_prime_budget_lt
#print axioms explicit_prime_budget_lt
#check actual_primeLogError_abs_lt
#print axioms actual_primeLogError_abs_lt
#check actual_negativeErrorMean_abs_le
#print axioms actual_negativeErrorMean_abs_le
#check actual_negativeErrorMean_abs_lt
#print axioms actual_negativeErrorMean_abs_lt
#check actual_negativeErrorMean_lower
#print axioms actual_negativeErrorMean_lower

end ContinuousResearch.ActualPrimeError

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52fd69a70b5f126acf9e2bb07932acce27692c09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
