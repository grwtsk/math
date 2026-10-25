# detp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f6835dd606cf2b44811bda03edc4644595df1e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7a70cde-9fa3-69bc-6b4d-b68255e9d835",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1dcdfa8f-fa20-4f84-287e-5d4ed3643c6d",
  "kind": "theorem",
  "lexical_name": "detp_mul",
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
  "slug": "detp-mul--a6ceeec096bf9e42a0850461",
  "source": {
    "blob": "1f6835dd606cf2b44811bda03edc4644595df1e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6ceeec096bf9e42a0850461e63d95bc1e36c5b8226c36c75a84bb8b97cb146d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dcdfa8f-fa20-4f84-287e-5d4ed3643c6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem detp_mul :
    detp 1 (A * B) + (detp 1 A * detp (-1) B + detp (-1) A * detp 1 B) =
      detp (-1) (A * B) + (detp 1 A * detp 1 B + detp (-1) A * detp (-1) B) := by
  have hf {s t} {σ : Perm n} (hσ : σ ∈ ofSign s) :
      ofSign (t * s) = (ofSign t).map (mulRightEmbedding σ) := by
    ext τ
    simp_rw [mem_map, mulRightEmbedding_apply, ← eq_mul_inv_iff_mul_eq, exists_eq_right,
      mem_ofSign, map_mul, map_inv, mul_inv_eq_iff_eq_mul, mem_ofSign.mp hσ]
  have h {s t} : detp s A * detp t B =
      ∑ σ ∈ ofSign s, ∑ τ ∈ ofSign (t * s), ∏ k, A k (σ k) * B (σ k) (τ k) := by
    simp_rw [detp, sum_mul_sum, prod_mul_distrib]
    refine sum_congr rfl fun σ hσ ↦ ?_
    simp_rw [hf hσ, sum_map, mulRightEmbedding_apply, Perm.mul_apply]
    exact sum_congr rfl fun τ hτ ↦ (congr_arg (_ * ·) (Equiv.prod_comp σ _).symm)
  let ι : Perm n ↪ (n → n) := ⟨_, coe_fn_injective⟩
  have hι {σ x} : ι σ x = σ x := rfl
  let bij : Finset (n → n) := (disjUnion (ofSign 1) (ofSign (-1)) ofSign_disjoint).map ι
  replace h (s) : detp s (A * B) =
      ∑ σ ∈ bijᶜ, ∑ τ ∈ ofSign s, ∏ i : n, A i (σ i) * B (σ i) (τ i) +
        (detp 1 A * detp s B + detp (-1) A * detp (-s) B) := by
    simp_rw [h, neg_mul_neg, mul_one, detp, mul_apply, prod_univ_sum, Fintype.piFinset_univ]
    rw [sum_comm, ← sum_compl_add_sum bij, sum_map, sum_disjUnion]
    simp_rw [hι]
  rw [h, h, neg_neg, add_assoc]
  conv_rhs => rw [add_assoc]
  refine congr_arg₂ (· + ·) (sum_congr rfl fun σ hσ ↦ ?_) (add_comm _ _)
  replace hσ : ¬ Function.Injective σ := by
    contrapose! hσ
    rw [notMem_compl, mem_map, ofSign_disjUnion]
    exact ⟨Equiv.ofBijective σ hσ.bijective_of_finite, mem_univ _, rfl⟩
  obtain ⟨i, j, hσ, hij⟩ := Function.not_injective_iff.mp hσ
  replace hσ k : σ (swap i j k) = σ k := by
    rw [swap_apply_def]
    split_ifs with h h <;> simp only [hσ, h]
  rw [← mul_neg_one, hf (mem_ofSign.mpr (sign_swap hij)), sum_map]
  simp_rw [prod_mul_distrib, mulRightEmbedding_apply, Perm.mul_apply]
  refine sum_congr rfl fun τ hτ ↦ congr_arg (_ *  ·) ?_
  rw [← Equiv.prod_comp (swap i j)]
  simp only [hσ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f6835dd606cf2b44811bda03edc4644595df1e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
