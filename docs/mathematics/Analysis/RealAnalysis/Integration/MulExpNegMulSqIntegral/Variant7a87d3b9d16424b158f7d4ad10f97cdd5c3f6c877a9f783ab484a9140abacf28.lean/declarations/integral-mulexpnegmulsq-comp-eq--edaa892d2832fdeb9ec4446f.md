# integral_mulExpNegMulSq_comp_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9710a5608d8e461dce2e62bdc919b68a4dc9b10f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48f636db-18dc-7101-7716-d1c372ef8016",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f703973-5047-3728-3327-5ef5e02d6bca",
  "kind": "theorem",
  "lexical_name": "integral_mulExpNegMulSq_comp_eq",
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
  "slug": "integral-mulexpnegmulsq-comp-eq--edaa892d2832fdeb9ec4446f",
  "source": {
    "blob": "9710a5608d8e461dce2e62bdc919b68a4dc9b10f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edaa892d2832fdeb9ec4446f5d702ae59ab32325efaddb1d33ddc2f8e0337a5c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f703973-5047-3728-3327-5ef5e02d6bca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_mulExpNegMulSq_comp_eq {P' : Measure E} [IsFiniteMeasure P']
    {A : Subalgebra ℝ (E →ᵇ ℝ)} (hε : 0 < ε)
    (heq : ∀ g ∈ A, ∫ x, (g : E → ℝ) x ∂P = ∫ x, (g : E → ℝ) x ∂P') {g : E →ᵇ ℝ} (hgA : g ∈ A) :
    ∫ x, mulExpNegMulSq ε (g x) ∂P = ∫ x, mulExpNegMulSq ε (g x) ∂P' := by
  have one_add_inv_mul_mem (n : ℕ) : g * (1 + (n : ℝ)⁻¹ • -(ε • g * g)) ^ n ∈ A := by
    apply Subalgebra.mul_mem A hgA (Subalgebra.pow_mem A _ n)
    apply Subalgebra.add_mem A (Subalgebra.one_mem A) (Subalgebra.smul_mem A _ n⁻¹)
    exact Subalgebra.neg_mem A (Subalgebra.mul_mem A (Subalgebra.smul_mem A hgA ε) hgA)
  have limP : Tendsto (fun n : ℕ => ∫ x, (g * (1 + (n : ℝ)⁻¹ • -(ε • g * g)) ^ n) x ∂P) atTop
      (𝓝 (∫ x, mulExpNegMulSq ε (g x) ∂P')) := by
    rw [funext fun n => heq _ (one_add_inv_mul_mem n)]
    exact tendsto_integral_mul_one_add_inv_smul_sq_pow g hε
  exact tendsto_nhds_unique
    (tendsto_integral_mul_one_add_inv_smul_sq_pow g hε) limP

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9710a5608d8e461dce2e62bdc919b68a4dc9b10f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
