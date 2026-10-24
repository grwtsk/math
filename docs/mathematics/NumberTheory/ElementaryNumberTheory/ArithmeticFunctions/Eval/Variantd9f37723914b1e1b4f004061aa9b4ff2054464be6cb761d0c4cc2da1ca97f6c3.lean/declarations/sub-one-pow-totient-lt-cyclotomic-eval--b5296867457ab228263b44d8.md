# sub_one_pow_totient_lt_cyclotomic_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ebaaa56386a64dcdf8255008e78bf6978350e94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1a7d2fe-d035-bed6-7509-aa574043e221",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90e0be99-5709-0189-9da6-394ab6d2f5f7",
  "kind": "theorem",
  "lexical_name": "sub_one_pow_totient_lt_cyclotomic_eval",
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
  "slug": "sub-one-pow-totient-lt-cyclotomic-eval--b5296867457ab228263b44d8",
  "source": {
    "blob": "3ebaaa56386a64dcdf8255008e78bf6978350e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 166,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5296867457ab228263b44d874c9cddf288428543e8d6534baa72dea317443a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90e0be99-5709-0189-9da6-394ab6d2f5f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_one_pow_totient_lt_cyclotomic_eval {n : ℕ} {q : ℝ} (hn' : 2 ≤ n) (hq' : 1 < q) :
    (q - 1) ^ totient n < (cyclotomic n ℝ).eval q := by
  have hn : 0 < n := pos_of_gt hn'
  have hq := zero_lt_one.trans hq'
  have hfor : ∀ ζ' ∈ primitiveRoots n ℂ, q - 1 ≤ ‖↑q - ζ'‖ := by
    intro ζ' hζ'
    rw [mem_primitiveRoots hn] at hζ'
    convert norm_sub_norm_le (↑q) ζ'
    · rw [Complex.norm_real, Real.norm_of_nonneg hq.le]
    · rw [hζ'.norm'_eq_one hn.ne']
  let ζ := Complex.exp (2 * ↑Real.pi * Complex.I / ↑n)
  have hζ : IsPrimitiveRoot ζ n := Complex.isPrimitiveRoot_exp n hn.ne'
  have hex : ∃ ζ' ∈ primitiveRoots n ℂ, q - 1 < ‖↑q - ζ'‖ := by
    refine ⟨ζ, (mem_primitiveRoots hn).mpr hζ, ?_⟩
    suffices ¬SameRay ℝ (q : ℂ) ζ by
      convert lt_norm_sub_of_not_sameRay this <;>
        simp only [hζ.norm'_eq_one hn.ne', Real.norm_of_nonneg hq.le, Complex.norm_real]
    rw [Complex.sameRay_iff]
    push_neg
    refine ⟨mod_cast hq.ne', hζ.ne_zero hn.ne', ?_⟩
    rw [Complex.arg_ofReal_of_nonneg hq.le, Ne, eq_comm, hζ.arg_eq_zero_iff hn.ne']
    clear_value ζ
    rintro rfl
    linarith [hζ.unique IsPrimitiveRoot.one]
  have : ¬eval (↑q) (cyclotomic n ℂ) = 0 := by simpa using (cyclotomic_pos' n hq').ne'
  suffices Units.mk0 (Real.toNNReal (q - 1)) (by simp [hq']) ^ totient n <
      Units.mk0 ‖(cyclotomic n ℂ).eval ↑q‖₊ (by simp_all) by
    simp [← Units.val_lt_val, Units.val_pow_eq_pow_val, Units.val_mk0, ← NNReal.coe_lt_coe,
      hq'.le, Real.toNNReal_lt_toNNReal_iff_of_nonneg, coe_nnnorm, NNReal.coe_pow,
      Real.coe_toNNReal', max_eq_left, sub_nonneg] at this
    convert this
    rw [eq_comm]
    simp [cyclotomic_nonneg n hq'.le]
  simp only [cyclotomic_eq_prod_X_sub_primitiveRoots hζ, eval_prod, eval_C, eval_X, eval_sub,
    nnnorm_prod, Units.mk0_prod]
  convert Finset.prod_lt_prod' (M := NNRealˣ) _ _
  swap; · exact fun _ => Units.mk0 (Real.toNNReal (q - 1)) (by simp [hq'])
  · simp only [Complex.card_primitiveRoots, prod_const, card_attach]
  · simp only [Subtype.coe_mk, Finset.mem_attach, forall_true_left, Subtype.forall, ←
      Units.val_le_val, ← NNReal.coe_le_coe, norm_nonneg, hq'.le, Units.val_mk0,
      Real.coe_toNNReal', coe_nnnorm, max_le_iff, tsub_le_iff_right]
    intro x hx
    simpa only [and_true, tsub_le_iff_right] using hfor x hx
  · simp only [Subtype.coe_mk, Finset.mem_attach, exists_true_left, Subtype.exists, ←
      NNReal.coe_lt_coe, ← Units.val_lt_val, Units.val_mk0 _, coe_nnnorm]
    simpa [hq'.le, Real.coe_toNNReal', max_eq_left, sub_nonneg] using hex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ebaaa56386a64dcdf8255008e78bf6978350e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
