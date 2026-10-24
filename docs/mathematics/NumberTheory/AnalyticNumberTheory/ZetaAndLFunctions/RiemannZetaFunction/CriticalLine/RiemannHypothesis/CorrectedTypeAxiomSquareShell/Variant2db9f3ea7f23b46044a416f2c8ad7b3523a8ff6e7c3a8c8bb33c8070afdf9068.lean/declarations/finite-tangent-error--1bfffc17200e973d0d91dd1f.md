# finite_tangent_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17022c7c-af53-8d8b-46be-2ebdb168f238",
  "kind": "theorem",
  "lexical_name": "finite_tangent_error",
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
  "slug": "finite-tangent-error--1bfffc17200e973d0d91dd1f",
  "source": {
    "blob": "acbaace9f842e205d10a3cb4d55df0b5416ff22d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 334,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedTypeAxiomSquareShell/Variant2db9f3ea7f23b46044a416f2c8ad7b3523a8ff6e7c3a8c8bb33c8070afdf9068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bfffc17200e973d0d91dd1fa4952dbe7d1ba0b0ca718adbab99bb4fba5f7dd8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedTypeAxiomSquareShell/Variant2db9f3ea7f23b46044a416f2c8ad7b3523a8ff6e7c3a8c8bb33c8070afdf9068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17022c7c-af53-8d8b-46be-2ebdb168f238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_tangent_error {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    |finiteCompensatedReadout A N - tangentReadout A N| ≤ tangentErrorConstant / A ^ 2 :=
  finite_tangent_error_of_inverse_budget hA N (inverseThreeHalves_sum_le N)

end
end FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell


-- Independent complete exported-type and axiom review.
open FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shellEndpoint")
#check @shellEndpoint

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shellEndpoint")
#print axioms shellEndpoint

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shellEndpoint")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finiteCompensatedReadout")
#check @finiteCompensatedReadout

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finiteCompensatedReadout")
#print axioms finiteCompensatedReadout

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finiteCompensatedReadout")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "allNaturalBaseline")
#check @allNaturalBaseline

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "allNaturalBaseline")
#print axioms allNaturalBaseline

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "allNaturalBaseline")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "tangentReadout")
#check @tangentReadout

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "tangentReadout")
#print axioms tangentReadout

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "tangentReadout")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "tangentErrorConstant")
#check @tangentErrorConstant

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "tangentErrorConstant")
#print axioms tangentErrorConstant

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "tangentErrorConstant")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finiteCompensatedReadout_eq_prime_sub_baseline")
#check @finiteCompensatedReadout_eq_prime_sub_baseline

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finiteCompensatedReadout_eq_prime_sub_baseline")
#print axioms finiteCompensatedReadout_eq_prime_sub_baseline

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finiteCompensatedReadout_eq_prime_sub_baseline")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finiteCompensatedReadout_actual_eq")
#check @finiteCompensatedReadout_actual_eq

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finiteCompensatedReadout_actual_eq")
#print axioms finiteCompensatedReadout_actual_eq

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finiteCompensatedReadout_actual_eq")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shellEndpoint_bounds")
#check @shellEndpoint_bounds

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shellEndpoint_bounds")
#print axioms shellEndpoint_bounds

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shellEndpoint_bounds")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shell_lower_strict")
#check @shell_lower_strict

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shell_lower_strict")
#print axioms shell_lower_strict

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shell_lower_strict")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shell_sqrt_gap_lt_one")
#check @shell_sqrt_gap_lt_one

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shell_sqrt_gap_lt_one")
#print axioms shell_sqrt_gap_lt_one

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shell_sqrt_gap_lt_one")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shell_log_squared_le")
#check @shell_log_squared_le

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shell_log_squared_le")
#print axioms shell_log_squared_le

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "shell_log_squared_le")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "event_taylor_error")
#check @event_taylor_error

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "event_taylor_error")
#print axioms event_taylor_error

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "event_taylor_error")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "threeHalves_eq_mul_sqrt")
#check @threeHalves_eq_mul_sqrt

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "threeHalves_eq_mul_sqrt")
#print axioms threeHalves_eq_mul_sqrt

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "threeHalves_eq_mul_sqrt")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "mangoldt_sub_one_abs_le_quad")
#check @mangoldt_sub_one_abs_le_quad

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "mangoldt_sub_one_abs_le_quad")
#print axioms mangoldt_sub_one_abs_le_quad

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "mangoldt_sub_one_abs_le_quad")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves")
#check @inverseThreeHalves

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves")
#print axioms inverseThreeHalves

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inversePrimitive")
#check @inversePrimitive

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inversePrimitive")
#print axioms inversePrimitive

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inversePrimitive")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inversePrimitive_hasDerivAt")
#check @inversePrimitive_hasDerivAt

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inversePrimitive_hasDerivAt")
#print axioms inversePrimitive_hasDerivAt

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inversePrimitive_hasDerivAt")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves_continuousOn")
#check @inverseThreeHalves_continuousOn

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves_continuousOn")
#print axioms inverseThreeHalves_continuousOn

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves_continuousOn")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves_integral_le")
#check @inverseThreeHalves_integral_le

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves_integral_le")
#print axioms inverseThreeHalves_integral_le

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves_integral_le")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves_sum_le")
#check @inverseThreeHalves_sum_le

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves_sum_le")
#print axioms inverseThreeHalves_sum_le

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "inverseThreeHalves_sum_le")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "signedErrorWeight_le_of_inverse_budget")
#check @signedErrorWeight_le_of_inverse_budget

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "signedErrorWeight_le_of_inverse_budget")
#print axioms signedErrorWeight_le_of_inverse_budget

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "signedErrorWeight_le_of_inverse_budget")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finite_tangent_error_of_inverse_budget")
#check @finite_tangent_error_of_inverse_budget

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finite_tangent_error_of_inverse_budget")
#print axioms finite_tangent_error_of_inverse_budget

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finite_tangent_error_of_inverse_budget")

#eval IO.println ("BEGIN_TYPE " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finite_tangent_error")
#check @finite_tangent_error

#eval IO.println ("BEGIN_AXIOMS " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finite_tangent_error")
#print axioms finite_tangent_error

#eval IO.println ("END_EXPORT " ++
  "FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell." ++
  "finite_tangent_error")
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedTypeAxiomSquareShell/Variant2db9f3ea7f23b46044a416f2c8ad7b3523a8ff6e7c3a8c8bb33c8070afdf9068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedTypeAxiomSquareShell/Variant2db9f3ea7f23b46044a416f2c8ad7b3523a8ff6e7c3a8c8bb33c8070afdf9068.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acbaace9f842e205d10a3cb4d55df0b5416ff22d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
