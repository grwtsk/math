# measure_ge_le_exp_mul_mgf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5981eb9-c43d-69bb-5597-791056f9820a",
  "kind": "theorem",
  "lexical_name": "measure_ge_le_exp_mul_mgf",
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
  "slug": "measure-ge-le-exp-mul-mgf--073b1bb638e469143c5e7b94",
  "source": {
    "blob": "2b83bf9f6135d20de6cace523778bdbd9c0bdf4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 401,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:073b1bb638e469143c5e7b9496358f335a3ce52cf94c9c5a22c9637a181b3fb3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5981eb9-c43d-69bb-5597-791056f9820a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_ge_le_exp_mul_mgf [IsFiniteMeasure μ] (ε : ℝ) (ht : 0 ≤ t)
    (h_int : Integrable (fun ω => exp (t * X ω)) μ) :
    μ.real {ω | ε ≤ X ω} ≤ exp (-t * ε) * mgf X μ t := by
  rcases ht.eq_or_lt with ht_zero_eq | ht_pos
  · rw [ht_zero_eq.symm]
    simp only [neg_zero, zero_mul, exp_zero, mgf_zero', one_mul]
    gcongr
    exacts [measure_ne_top _ _, Set.subset_univ _]
  calc
    μ.real {ω | ε ≤ X ω} = μ.real {ω | exp (t * ε) ≤ exp (t * X ω)} := by
      congr with ω
      simp only [Set.mem_setOf_eq, exp_le_exp, gt_iff_lt]
      exact ⟨fun h => mul_le_mul_of_nonneg_left h ht_pos.le,
        fun h => le_of_mul_le_mul_left h ht_pos⟩
    _ ≤ (exp (t * ε))⁻¹ * μ[fun ω => exp (t * X ω)] := by
      have : exp (t * ε) * μ.real {ω | exp (t * ε) ≤ exp (t * X ω)} ≤
          μ[fun ω => exp (t * X ω)] :=
        mul_meas_ge_le_integral_of_nonneg (ae_of_all _ fun x => (exp_pos _).le) h_int _
      rwa [mul_comm (exp (t * ε))⁻¹, ← div_eq_mul_inv, le_div_iff₀' (exp_pos _)]
    _ = exp (-t * ε) * mgf X μ t := by rw [neg_mul, exp_neg]; rfl

/-- **Chernoff bound** on the lower tail of a real random variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b83bf9f6135d20de6cace523778bdbd9c0bdf4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
