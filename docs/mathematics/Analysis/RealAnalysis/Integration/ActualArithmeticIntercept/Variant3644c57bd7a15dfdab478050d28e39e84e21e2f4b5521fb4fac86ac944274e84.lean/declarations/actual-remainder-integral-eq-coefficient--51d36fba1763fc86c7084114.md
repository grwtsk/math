# actual_remainder_integral_eq_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:069c01fa-4b73-c274-380d-76c6d368cb3b",
  "kind": "theorem",
  "lexical_name": "actual_remainder_integral_eq_coefficient",
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
  "slug": "actual-remainder-integral-eq-coefficient--51d36fba1763fc86c7084114",
  "source": {
    "blob": "89c958da0219fa3600b7e56bfc36b53cde6d3bcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51d36fba1763fc86c708411410f2e44703fcbba1a3d15511fe711f1b25343ab5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:069c01fa-4b73-c274-380d-76c6d368cb3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_remainder_integral_eq_coefficient
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    (∫ t in Ioi (0:ℝ), actualRemainder t) =
      Real.eulerMascheroniConstant^2+2*firstStieltjesConstant := by
  exact tendsto_nhds_unique (actual_laplace_tendsto_right hI) actual_laplace_tendsto_coefficient

end ContinuousResearch.ActualArithmeticIntercept

/- Exact public type, full proof and trusted dependency audits. -/

#check ContinuousResearch.ActualArithmeticIntercept.exponential_integral
#print axioms ContinuousResearch.ActualArithmeticIntercept.exponential_integral
#print ContinuousResearch.ActualArithmeticIntercept.exponential_integral

#check ContinuousResearch.ActualArithmeticIntercept.linear_exponential_integral
#print axioms ContinuousResearch.ActualArithmeticIntercept.linear_exponential_integral
#print ContinuousResearch.ActualArithmeticIntercept.linear_exponential_integral

#check ContinuousResearch.ActualArithmeticIntercept.actual_laplace_integrable
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_laplace_integrable
#print ContinuousResearch.ActualArithmeticIntercept.actual_laplace_integrable

#check ContinuousResearch.ActualArithmeticIntercept.actual_laplace_compensation
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_laplace_compensation
#print ContinuousResearch.ActualArithmeticIntercept.actual_laplace_compensation

#check ContinuousResearch.ActualArithmeticIntercept.actual_laplace_eq_LSeries_quotient
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_laplace_eq_LSeries_quotient
#print ContinuousResearch.ActualArithmeticIntercept.actual_laplace_eq_LSeries_quotient

#check ContinuousResearch.ActualArithmeticIntercept.real_right_tendsto_complex_positive
#print axioms ContinuousResearch.ActualArithmeticIntercept.real_right_tendsto_complex_positive
#print ContinuousResearch.ActualArithmeticIntercept.real_right_tendsto_complex_positive

#check ContinuousResearch.ActualArithmeticIntercept.actual_laplace_tendsto_coefficient
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_laplace_tendsto_coefficient
#print ContinuousResearch.ActualArithmeticIntercept.actual_laplace_tendsto_coefficient

#check ContinuousResearch.ActualArithmeticIntercept.actual_remainder_integral_eq_coefficient
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_remainder_integral_eq_coefficient
#print ContinuousResearch.ActualArithmeticIntercept.actual_remainder_integral_eq_coefficient
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89c958da0219fa3600b7e56bfc36b53cde6d3bcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
