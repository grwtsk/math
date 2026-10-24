# evaluation_paid_by_coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca3f40cd-ee8d-336c-2f92-14f51b1515a0",
  "kind": "theorem",
  "lexical_name": "evaluation_paid_by_coefficients",
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
  "slug": "evaluation-paid-by-coefficients--f5f3aebc4804d0b9d04f2d3f",
  "source": {
    "blob": "c8be5f68763401acd31bb06277211e249ad2fb77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 49,
    "path": "GRWTSK/Algebra/InterpolationScalingCost/Varianta1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5f3aebc4804d0b9d04f2d3f75b6be564b266295af1bdb64459463022ccdf440",
  "verification": {
    "reference": "docs/verification/Algebra/InterpolationScalingCost/Varianta1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca3f40cd-ee8d-336c-2f92-14f51b1515a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evaluation_paid_by_coefficients (P : MvPolynomial (Fin 3) ℂ)
    (x : Fin 3 → ℂ) {ε : ℝ} (hε : 0 ≤ ε) (hε1 : ε ≤ 1)
    (hx : ∀ i, ‖x i‖ ≤ ε) (hzero : P.coeff 0 = 0) :
    ‖MvPolynomial.eval x P‖ ≤ ε * coefficientMass P := by
  rw [MvPolynomial.eval_eq]
  calc
    _ ≤ ∑ d ∈ P.support, ‖P.coeff d * ∏ i ∈ d.support, x i ^ d i‖ := norm_sum_le _ _
    _ ≤ ∑ d ∈ P.support, ε * ‖P.coeff d‖ := by
      apply Finset.sum_le_sum
      intro d _
      by_cases hd : d = 0
      · subst d; simp [hzero]
      · rw [norm_mul]
        simpa [mul_comm] using mul_le_mul_of_nonneg_left
          (nonconstant_monomial_small x hε hε1 hx d hd) (norm_nonneg _)
    _ = _ := by rw [← Finset.mul_sum]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InterpolationScalingCost/Varianta1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InterpolationScalingCost/Varianta1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8be5f68763401acd31bb06277211e249ad2fb77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
