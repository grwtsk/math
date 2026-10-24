# actual_minus_kernel_error_fixed_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de99c5cb-d0cc-085c-0ef0-f76dc7e486c2",
  "kind": "theorem",
  "lexical_name": "actual_minus_kernel_error_fixed_head",
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
  "slug": "actual-minus-kernel-error-fixed-head--45dc91599780afb543d34c89",
  "source": {
    "blob": "11649700d1d09e7c4d985add2816a195e750b9db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFiniteHeadMinusWeightAttempt01/Variantc596db00062f577850c5dd15bc8e04185dc2b07652de8e1d2d852796554274c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45dc91599780afb543d34c8964ba17f93bdede4c5724f5ed5157243e241c0b7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFiniteHeadMinusWeightAttempt01/Variantc596db00062f577850c5dd15bc8e04185dc2b07652de8e1d2d852796554274c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de99c5cb-d0cc-085c-0ef0-f76dc7e486c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_minus_kernel_error_fixed_head (A t : ℝ) (hA : 91 ≤ A)
    (ht0 : 0 ≤ t) (ht7 : t ≤ Real.log 7) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t / 2 + 1 / 2| ≤ 15 / A ^ 2 := by
  have ht2 : t ≤ 2 := ht7.trans log_seven_lt_two.le
  have htsq : t ^ 2 ≤ 4 := by nlinarith
  have h1 : 5 * t / A ^ 2 ≤ 10 / A ^ 2 :=
    div_le_div_of_nonneg_right (by linarith) (sq_nonneg A)
  have h2 : 5 * t ^ 2 / (4 * A ^ 2) ≤ 5 / A ^ 2 := by
    calc
      _ ≤ 5 * 4 / (4 * A ^ 2) :=
        div_le_div_of_nonneg_right (by linarith) (by positivity)
      _ = _ := by ring
  exact (actual_minus_kernel_error_t_bound A t hA ht0).trans
    (by nlinarith [add_le_add h1 h2])

end RH16FiniteHeadMinusWeight
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFiniteHeadMinusWeightAttempt01/Variantc596db00062f577850c5dd15bc8e04185dc2b07652de8e1d2d852796554274c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFiniteHeadMinusWeightAttempt01/Variantc596db00062f577850c5dd15bc8e04185dc2b07652de8e1d2d852796554274c6.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11649700d1d09e7c4d985add2816a195e750b9db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
