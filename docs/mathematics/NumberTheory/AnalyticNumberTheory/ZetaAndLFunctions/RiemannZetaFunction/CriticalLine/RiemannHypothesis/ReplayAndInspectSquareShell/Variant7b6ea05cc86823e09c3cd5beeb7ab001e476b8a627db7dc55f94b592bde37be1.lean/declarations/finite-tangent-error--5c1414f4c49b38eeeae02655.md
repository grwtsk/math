# finite_tangent_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f8d45bb-a797-2973-1a60-8168df628497",
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
  "slug": "finite-tangent-error--5c1414f4c49b38eeeae02655",
  "source": {
    "blob": "2bad5643774eb2b4bc84e59a2d525a3b85415354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 334,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c1414f4c49b38eeeae026554f40cedd2a3ecc270518771cb0200948d2428b64",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f8d45bb-a797-2973-1a60-8168df628497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–519.

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

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.allNaturalBaseline"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentReadout"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.tangentErrorConstant"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_eq_prime_sub_baseline"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finiteCompensatedReadout_actual_eq"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shellEndpoint_bounds"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_lower_strict"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_sqrt_gap_lt_one"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.shell_log_squared_le"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.event_taylor_error"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.threeHalves_eq_mul_sqrt"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.mangoldt_sub_one_abs_le_quad"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inversePrimitive_hasDerivAt"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_continuousOn"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_integral_le"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.inverseThreeHalves_sum_le"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.signedErrorWeight_le_of_inverse_budget"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error_of_inverse_budget"

#eval IO.println "BEGIN_TYPE FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error"
#check @FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error
#eval IO.println "BEGIN_PROOF FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error"
#print FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error
#eval IO.println "BEGIN_AXIOMS FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error"
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error
#eval IO.println "END_EXPORT FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell.finite_tangent_error"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bad5643774eb2b4bc84e59a2d525a3b85415354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
