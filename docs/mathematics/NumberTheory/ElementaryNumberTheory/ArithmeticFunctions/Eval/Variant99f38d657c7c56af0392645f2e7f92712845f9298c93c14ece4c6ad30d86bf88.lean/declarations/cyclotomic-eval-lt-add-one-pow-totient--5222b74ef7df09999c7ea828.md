# cyclotomic_eval_lt_add_one_pow_totient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ced0501-077b-905c-94bd-2c2715d7f9bd",
  "kind": "theorem",
  "lexical_name": "cyclotomic_eval_lt_add_one_pow_totient",
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
  "slug": "cyclotomic-eval-lt-add-one-pow-totient--5222b74ef7df09999c7ea828",
  "source": {
    "blob": "1a228be8e757d1f3d4c9f6603d6f30bb0b084b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 227,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5222b74ef7df09999c7ea828409d66919aafd476bd1431c741e8e1282916b679",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ced0501-077b-905c-94bd-2c2715d7f9bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_eval_lt_add_one_pow_totient {n : ℕ} {q : ℝ} (hn' : 3 ≤ n) (hq' : 1 < q) :
    (cyclotomic n ℝ).eval q < (q + 1) ^ totient n := by
  have hn : 0 < n := pos_of_gt hn'
  have hq := zero_lt_one.trans hq'
  have hfor : ∀ ζ' ∈ primitiveRoots n ℂ, ‖↑q - ζ'‖ ≤ q + 1 := by
    intro ζ' hζ'
    rw [mem_primitiveRoots hn] at hζ'
    convert norm_sub_le (↑q) ζ'
    · rw [Complex.norm_real, Real.norm_of_nonneg (zero_le_one.trans_lt hq').le]
    · rw [hζ'.norm'_eq_one hn.ne']
  let ζ := Complex.exp (2 * ↑Real.pi * Complex.I / ↑n)
  have hζ : IsPrimitiveRoot ζ n := Complex.isPrimitiveRoot_exp n hn.ne'
  have hex : ∃ ζ' ∈ primitiveRoots n ℂ, ‖↑q - ζ'‖ < q + 1 := by
    refine ⟨ζ, (mem_primitiveRoots hn).mpr hζ, ?_⟩
    suffices ¬SameRay ℝ (q : ℂ) (-ζ) by
      convert norm_add_lt_of_not_sameRay this using 2
      · rw [Complex.norm_real]
        symm
        exact abs_eq_self.mpr hq.le
      · simp [abs_of_pos hq, hζ.norm'_eq_one hn.ne']
    rw [Complex.sameRay_iff]
    push_neg
    refine ⟨mod_cast hq.ne', neg_ne_zero.mpr <| hζ.ne_zero hn.ne', ?_⟩
    rw [Complex.arg_ofReal_of_nonneg hq.le, Ne, eq_comm]
    intro h
    rw [Complex.arg_eq_zero_iff, Complex.neg_re, neg_nonneg, Complex.neg_im, neg_eq_zero] at h
    have hζ₀ : ζ ≠ 0 := by
      clear_value ζ
      rintro rfl
      exact hn.ne' (hζ.unique IsPrimitiveRoot.zero)
    have : ζ.re < 0 ∧ ζ.im = 0 := ⟨h.1.lt_of_ne ?_, h.2⟩
    · rw [← Complex.arg_eq_pi_iff, hζ.arg_eq_pi_iff hn.ne'] at this
      rw [this] at hζ
      linarith [hζ.unique <| IsPrimitiveRoot.neg_one 0 two_ne_zero.symm]
    · contrapose! hζ₀
      apply Complex.ext <;> simp [hζ₀, h.2]
  have : ¬eval (↑q) (cyclotomic n ℂ) = 0 := by simpa using (cyclotomic_pos' n hq').ne.symm
  suffices Units.mk0 ‖(cyclotomic n ℂ).eval ↑q‖₊ (by simp_all) <
      Units.mk0 (Real.toNNReal (q + 1)) (by simp; linarith) ^ totient n by
    simp only [← Units.val_lt_val, Units.val_pow_eq_pow_val, Units.val_mk0, ← NNReal.coe_lt_coe,
      hq'.le, Real.toNNReal_lt_toNNReal_iff_of_nonneg, coe_nnnorm, NNReal.coe_pow,
      Real.coe_toNNReal', max_eq_left, sub_nonneg] at this
    convert this using 2
    · rw [eq_comm]
      simp [cyclotomic_nonneg n hq'.le]
    rw [eq_comm, max_eq_left_iff]
    linarith
  simp only [cyclotomic_eq_prod_X_sub_primitiveRoots hζ, eval_prod, eval_C, eval_X, eval_sub,
    nnnorm_prod, Units.mk0_prod]
  convert Finset.prod_lt_prod' (M := NNRealˣ) _ _
  swap; · exact fun _ => Units.mk0 (Real.toNNReal (q + 1)) (by simp; linarith only [hq'])
  · simp [Complex.card_primitiveRoots]
  · simp only [Subtype.coe_mk, Finset.mem_attach, forall_true_left, Subtype.forall, ←
      Units.val_le_val, ← NNReal.coe_le_coe, norm_nonneg, hq'.le, Units.val_mk0,
      Real.coe_toNNReal, coe_nnnorm, max_le_iff]
    intro x hx
    have : ‖_‖ ≤ _ := hfor x hx
    simp [this]
  · simp only [Subtype.coe_mk, Finset.mem_attach, exists_true_left, Subtype.exists, ←
      NNReal.coe_lt_coe, ← Units.val_lt_val, Units.val_mk0 _, coe_nnnorm]
    obtain ⟨ζ, hζ, hhζ : ‖_‖ < _⟩ := hex
    exact ⟨ζ, hζ, by simp [hhζ]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a228be8e757d1f3d4c9f6603d6f30bb0b084b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
