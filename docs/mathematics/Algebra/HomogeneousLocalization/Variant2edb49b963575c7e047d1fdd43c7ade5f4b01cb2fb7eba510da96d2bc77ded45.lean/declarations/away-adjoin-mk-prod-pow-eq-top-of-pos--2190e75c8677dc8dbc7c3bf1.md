# Away.adjoin_mk_prod_pow_eq_top_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f01b151-cb6f-e959-98be-83bf70541456",
  "kind": "theorem",
  "lexical_name": "Away.adjoin_mk_prod_pow_eq_top_of_pos",
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
  "slug": "away-adjoin-mk-prod-pow-eq-top-of-pos--2190e75c8677dc8dbc7c3bf1",
  "source": {
    "blob": "38300e7a2a2befa2a7a8c0432a959d87ca5669d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 946,
    "line": 880,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2190e75c8677dc8dbc7c3bf15edf397e93eb628725dfcb5b3663f025d761dd37",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f01b151-cb6f-e959-98be-83bf70541456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–946.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Away.adjoin_mk_prod_pow_eq_top_of_pos {f : A} {d : ℕ} (hf : f ∈ 𝒜 d)
    {ι' : Type*} [Fintype ι'] (v : ι' → A)
    (hx : Algebra.adjoin (𝒜 0) (Set.range v) = ⊤) (dv : ι' → ℕ)
    (hxd : ∀ i, v i ∈ 𝒜 (dv i)) (hxd' : ∀ i, 0 < dv i) :
    Algebra.adjoin (𝒜 0) { Away.mk 𝒜 hf a (∏ i, v i ^ ai i)
      (hai ▸ SetLike.prod_pow_mem_graded _ _ _ _ fun i _ ↦ hxd i) |
        (a : ℕ) (ai : ι' → ℕ) (hai : ∑ i, ai i • dv i = a • d) (_ : ∀ i, ai i ≤ d) } = ⊤ := by
  rw [← top_le_iff]
  show ⊤ ≤ (Algebra.adjoin (𝒜 0) _).toSubmodule
  rw [← HomogeneousLocalization.Away.span_mk_prod_pow_eq_top hf v hx dv hxd, Submodule.span_le]
  rintro _ ⟨a, ai, hai, rfl⟩
  have H₀ : (a - ∑ i : ι', dv i * (ai i / d)) • d = ∑ k : ι', (ai k % d) • dv k := by
    rw [smul_eq_mul, tsub_mul, ← smul_eq_mul, ← hai]
    conv => enter [1, 1, 2, i]; rw [← Nat.mod_add_div (ai i) d]
    simp_rw [smul_eq_mul, add_mul, Finset.sum_add_distrib,
      mul_assoc, ← Finset.mul_sum, mul_comm d, mul_comm (_ / _)]
    simp only [add_tsub_cancel_right, smul_eq_mul]
  have H : Away.mk 𝒜 hf a (∏ i, v i ^ ai i)
      (hai ▸ SetLike.prod_pow_mem_graded _ _ _ _ fun i _ ↦ hxd i) =
      Away.mk 𝒜 hf (a - ∑ i : ι', dv i * (ai i / d)) (∏ i, v i ^ (ai i % d))
      (H₀ ▸ SetLike.prod_pow_mem_graded _ _ _ _ fun i _ ↦ hxd i) *
      ∏ i, Away.isLocalizationElem hf (hxd i) ^ (ai i / d) := by
    apply (show Function.Injective (algebraMap (Away 𝒜 f) (Localization.Away f))
      from val_injective _)
    simp only [map_pow, map_prod, map_mul]
    simp only [HomogeneousLocalization.algebraMap_apply, val_mk,
      Localization.mk_pow, Localization.mk_prod, Localization.mk_mul,
      ← Finset.prod_mul_distrib, ← pow_add, ← pow_mul]
    congr
    · ext i
      congr
      exact Eq.symm (Nat.mod_add_div (ai i) d)
    · simp only [SubmonoidClass.mk_pow, SubmonoidClass.coe_finset_prod, ← pow_add, ← pow_mul,
        Finset.prod_pow_eq_pow_sum, SubmonoidClass.coe_pow]
      rw [tsub_add_cancel_of_le]
      rcases d.eq_zero_or_pos with hd | hd
      · simp [hd]
      rw [← mul_le_mul_iff_of_pos_right hd, ← smul_eq_mul (a := a), ← hai, Finset.sum_mul]
      simp_rw [smul_eq_mul, mul_comm (ai _), mul_assoc]
      gcongr
      exact Nat.div_mul_le_self (ai _) d
  rw [H, SetLike.mem_coe]
  apply (Algebra.adjoin (𝒜 0) _).mul_mem
  · apply Algebra.subset_adjoin
    refine ⟨a - ∑ i : ι', dv i * (ai i / d), (ai · % d), H₀.symm, ?_, rfl⟩
    rcases d.eq_zero_or_pos with hd | hd
    · have : ∀ (x : ι'), ai x = 0 := by simpa [hd, fun i ↦ (hxd' i).ne'] using hai
      simp [this]
    exact fun i ↦ (Nat.mod_lt _ hd).le
  apply prod_mem
  · classical
    rintro j -
    apply pow_mem
    apply Algebra.subset_adjoin
    refine ⟨dv j, Pi.single j d, ?_, ?_, ?_⟩
    · simp [Pi.single_apply, mul_comm]
    · aesop (add simp Pi.single_apply)
    ext
    simp [Pi.single_apply]

variable {𝒜 : ℕ → Submodule R A} [GradedAlgebra 𝒜] in
/--
Let `𝒜` be a graded algebra, finitely generated (as an algebra) over `𝒜₀` by `{ vᵢ }`,
where `vᵢ` has degree `dvᵢ`.
If `f : A` has degree `d`, then `𝒜_(f)` is generated (as an algebra) over `𝒜₀` by
elements of the form `(∏ i, vᵢ ^ aᵢ) / fᵃ` such that `∑ aᵢ • dvᵢ = a • d` and `∀ i, aᵢ ≤ d`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38300e7a2a2befa2a7a8c0432a959d87ca5669d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
