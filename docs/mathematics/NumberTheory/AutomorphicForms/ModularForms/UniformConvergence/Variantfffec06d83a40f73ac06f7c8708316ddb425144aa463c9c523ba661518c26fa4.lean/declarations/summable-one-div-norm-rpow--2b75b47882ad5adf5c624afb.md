# summable_one_div_norm_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0c229e96e5f3753a48c765c62c5e9c685289c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/fffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7196a393-628e-1caf-8d68-10f4e867b700",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62b7d16f-4051-1617-7790-b0cd5f222797",
  "kind": "lemma",
  "lexical_name": "summable_one_div_norm_rpow",
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
  "slug": "summable-one-div-norm-rpow--2b75b47882ad5adf5c624afb",
  "source": {
    "blob": "a0c229e96e5f3753a48c765c62c5e9c685289c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 150,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b75b47882ad5adf5c624afb4a76160f023ef315eecd88c8ed93c78c68e7a309",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62b7d16f-4051-1617-7790-b0cd5f222797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_one_div_norm_rpow {k : ℝ} (hk : 2 < k) :
    Summable fun (x : Fin 2 → ℤ) ↦ ‖x‖ ^ (-k) := by
  rw [← (finTwoArrowEquiv _).symm.summable_iff, summable_partition _ Int.existsUnique_mem_box]
  · simp only [finTwoArrowEquiv_symm_apply, Function.comp_def]
    refine ⟨fun n ↦ (hasSum_fintype (β := box (α := ℤ × ℤ) n) _).summable, ?_⟩
    suffices Summable fun n : ℕ ↦ ∑' (_ : box (α := ℤ × ℤ) n), (n : ℝ) ^ (-k) by
      refine this.congr fun n ↦ tsum_congr fun p ↦ ?_
      simp only [← Int.mem_box.mp p.2, Nat.cast_max, norm_eq_max_natAbs, Matrix.cons_val_zero,
        Matrix.cons_val_one, Matrix.head_cons]
    simp only [tsum_fintype, univ_eq_attach, sum_const, card_attach, nsmul_eq_mul]
    apply ((Real.summable_nat_rpow.mpr (by linarith : 1 - k < -1)).mul_left
      8).of_norm_bounded_eventually_nat
    filter_upwards [Filter.eventually_gt_atTop 0] with n hn
    rw [Int.card_box hn.ne', Real.norm_of_nonneg (by positivity), sub_eq_add_neg,
      Real.rpow_add (Nat.cast_pos.mpr hn), Real.rpow_one, Nat.cast_mul, Nat.cast_ofNat, mul_assoc]
  · exact fun n ↦ Real.rpow_nonneg (norm_nonneg _) _

/-- The sum defining the Eisenstein series (of weight `k` and level `Γ(N)` with congruence
condition `a : Fin 2 → ZMod N`) converges locally uniformly on `ℍ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0c229e96e5f3753a48c765c62c5e9c685289c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
