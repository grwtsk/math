# finite_tangent_error_of_inverse_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5be3cb05-cf80-ccc4-da65-864c324d3c97",
  "kind": "theorem",
  "lexical_name": "finite_tangent_error_of_inverse_budget",
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
  "slug": "finite-tangent-error-of-inverse-budget--75a86fc98e1dd77e60b38766",
  "source": {
    "blob": "a15ac8f85d921306f3ee040ac7e7b3e4da36010e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 288,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DriverPreMarkerCorrection/Variant99f78e8ef402bf641c05a10f5b11f235eb2b7b4afd42c4b12082026175e1c3cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75a86fc98e1dd77e60b38766ca8458c80e0def500851af5fa8365cee9b486891",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DriverPreMarkerCorrection/Variant99f78e8ef402bf641c05a10f5b11f235eb2b7b4afd42c4b12082026175e1c3cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5be3cb05-cf80-ccc4-da65-864c324d3c97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_tangent_error_of_inverse_budget {A : ℝ} (hA : 200 ≤ A) (N : ℕ)
    (hInv : (∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ)) ≤ 2) :
    |finiteCompensatedReadout A N - tangentReadout A N| ≤ tangentErrorConstant / A ^ 2 := by
  have hA0 : 0 < A := by linarith
  have hcoeff : 0 ≤ 10 / A ^ 2 := by positivity
  have hw := signedErrorWeight_le_of_inverse_budget N hInv
  unfold finiteCompensatedReadout tangentReadout
  rw [← Finset.sum_sub_distrib]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  calc
    _ ≤ ∑ n ∈ Finset.Icc 2 N,
        (10 / A ^ 2) * (|ArithmeticFunction.vonMangoldt n - 1| /
          (n : ℝ) ^ (3 / 2 : ℝ)) := by
      apply Finset.sum_le_sum
      intro n hn
      rcases Finset.mem_Icc.mp hn with ⟨hn2, hnN⟩
      have hn0 : 0 < n := by omega
      have hnr : (0 : ℝ) < n := by exact_mod_cast hn0
      have hnS : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnr
      have ht := event_taylor_error hA hn2 hnN
      have heq :
          (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
            sourceCorrelation explicitSecondDerivative A (Real.log n) -
          (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
            (sourceCorrelation explicitSecondDerivative A (Real.log (shellEndpoint N n)) +
              (Real.log n - Real.log (shellEndpoint N n)) *
                deriv (sourceCorrelation explicitSecondDerivative A)
                  (Real.log (shellEndpoint N n))) =
          (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
            (sourceCorrelation explicitSecondDerivative A (Real.log n) -
              sourceCorrelation explicitSecondDerivative A (Real.log (shellEndpoint N n)) -
              (Real.log n - Real.log (shellEndpoint N n)) *
                deriv (sourceCorrelation explicitSecondDerivative A)
                  (Real.log (shellEndpoint N n))) := by ring
      rw [heq, abs_mul, abs_div, abs_of_pos hnS]
      apply (mul_le_mul_of_nonneg_left ht (by positivity)).trans_eq
      rw [threeHalves_eq_mul_sqrt hn0]
      ring
    _ = (10 / A ^ 2) * (∑ n ∈ Finset.Icc 2 N,
          |ArithmeticFunction.vonMangoldt n - 1| / (n : ℝ) ^ (3 / 2 : ℝ)) := by
      rw [Finset.mul_sum]
    _ ≤ (10 / A ^ 2) * ((quadraticConstant + 6) / 2) :=
      mul_le_mul_of_nonneg_left hw hcoeff
    _ = tangentErrorConstant / A ^ 2 := by unfold tangentErrorConstant; ring

/-- Unconditional finite source transfer from the elementary inverse-power provider. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DriverPreMarkerCorrection/Variant99f78e8ef402bf641c05a10f5b11f235eb2b7b4afd42c4b12082026175e1c3cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DriverPreMarkerCorrection/Variant99f78e8ef402bf641c05a10f5b11f235eb2b7b4afd42c4b12082026175e1c3cc.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a15ac8f85d921306f3ee040ac7e7b3e4da36010e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
