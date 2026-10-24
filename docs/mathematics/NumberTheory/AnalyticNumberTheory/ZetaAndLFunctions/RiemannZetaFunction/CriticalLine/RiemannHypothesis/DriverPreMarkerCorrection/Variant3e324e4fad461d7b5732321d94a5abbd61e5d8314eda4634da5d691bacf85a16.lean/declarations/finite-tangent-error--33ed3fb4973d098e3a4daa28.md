# finite_tangent_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a2c720f-c57d-72f8-e63c-6a8cf6124eb6",
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
  "slug": "finite-tangent-error--33ed3fb4973d098e3a4daa28",
  "source": {
    "blob": "ff381cce99d08451787da7c186feddafde662a78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 326,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DriverPreMarkerCorrection/Variant3e324e4fad461d7b5732321d94a5abbd61e5d8314eda4634da5d691bacf85a16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33ed3fb4973d098e3a4daa28155c91b3aee3096e8d824856500c5fa6b8ab4171",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DriverPreMarkerCorrection/Variant3e324e4fad461d7b5732321d94a5abbd61e5d8314eda4634da5d691bacf85a16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a2c720f-c57d-72f8-e63c-6a8cf6124eb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_tangent_error {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    |finiteCompensatedReadout A N - tangentReadout A N| ≤ tangentErrorConstant / A ^ 2 :=
  finite_tangent_error_of_inverse_budget hA N (inverseThreeHalves_sum_le N)

end
end FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell


-- Independent exact-source-prefix type, proof display and axiom review.
set_option pp.all true
set_option pp.proofs true
set_option pp.universes true
set_option pp.explicit true
set_option pp.maxDepth 100000
set_option pp.maxSteps 1000000
set_option pp.deepTerms true

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget"

#print "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error
#print "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error
#print "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error
#print "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DriverPreMarkerCorrection/Variant3e324e4fad461d7b5732321d94a5abbd61e5d8314eda4634da5d691bacf85a16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DriverPreMarkerCorrection/Variant3e324e4fad461d7b5732321d94a5abbd61e5d8314eda4634da5d691bacf85a16.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff381cce99d08451787da7c186feddafde662a78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
