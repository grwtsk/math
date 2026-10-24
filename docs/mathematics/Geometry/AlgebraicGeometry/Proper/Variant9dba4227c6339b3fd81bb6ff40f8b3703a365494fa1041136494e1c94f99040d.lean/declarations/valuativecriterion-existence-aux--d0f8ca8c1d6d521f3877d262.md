# valuativeCriterion_existence_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b5e3a95-5a46-8447-2987-1d60f881a1be",
  "kind": "theorem",
  "lexical_name": "valuativeCriterion_existence_aux",
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
  "slug": "valuativecriterion-existence-aux--d0f8ca8c1d6d521f3877d262",
  "source": {
    "blob": "22a24576b956c6d844dfe8958730d2701dadeff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 198,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0f8ca8c1d6d521f3877d2623f1ef7816e0a8d79d4ee23c73e99e3359f96c853",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b5e3a95-5a46-8447-2987-1d60f881a1be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuativeCriterion_existence_aux
    {O : Type*} [CommRing O] [IsDomain O] [ValuationRing O]
    {K : Type*} [Field K] [Algebra O K] [IsFractionRing O K]
    (φ₀ : (𝒜 0) →+* O)
    (ι : Type*) [Finite ι] (x : ι → A) (h2 : Algebra.adjoin (𝒜 0) (Set.range x) = ⊤)
    (j : ι) (φ : Away 𝒜 (x j) →+* K)
    (hcomm : (algebraMap O K).comp φ₀ = φ.comp (fromZeroRingHom 𝒜 _))
    (d : ι → ℕ) (hdi : ∀ i, 0 < d i) (hxdi : ∀ i, x i ∈ 𝒜 (d i)) :
    ∃ (j₀ : ι) (φ' : Away 𝒜 (x j * x j₀) →+* K), φ'.comp (awayMap 𝒜 (hxdi j₀) rfl) = φ ∧
      (φ'.comp (awayMap 𝒜 (hxdi j) (mul_comm (x j) (x j₀)))).range ≤ (algebraMap O K).range := by
  classical
  cases nonempty_fintype ι
  let ψ (i : ι) : ValueGroup O K :=
    valuation O K ((φ (Away.isLocalizationElem (hxdi j) (hxdi i))) ^ ∏ k ∈ Finset.univ.erase i, d k)
  have : Nonempty ι := ⟨j⟩
  let Kmax := (Finset.univ.image ψ).max' (by simp)
  have ⟨i₀, hi1⟩ : ∃ a, ψ a = Kmax := by simpa using Finset.max'_mem (Finset.univ.image ψ)
  have hi₀ (j) : ψ j ≤ ψ i₀ := hi1 ▸ (Finset.univ.image ψ).le_max' (ψ j) (by simp)
  have hKmax : 0 < Kmax := by
    refine zero_lt_iff.mpr fun hKmax ↦ ?_
    have (i) : ψ i = 0 := le_zero_iff.mp (hKmax ▸ Finset.le_max' _ _ (by simp))
    simp only [ψ, map_pow, pow_eq_zero_iff', map_eq_zero, ne_eq] at this
    have : φ 1 = 0 := by convert (this j).1; ext; simp
    simp only [map_one, one_ne_zero] at this
  letI := (awayMap 𝒜 (f := x j) (hxdi i₀) rfl).toAlgebra
  have := Away.isLocalization_mul (hxdi j) (hxdi i₀) rfl (hdi _).ne'
  have hunit : IsUnit (φ (Away.isLocalizationElem (hxdi j) (hxdi i₀))) := isUnit_iff_ne_zero.mpr
    fun rid ↦ hKmax.ne' (.symm (by simpa [ψ, rid, Finset.prod_eq_zero_iff, (hdi _).ne'] using hi1))
  let φ' := IsLocalization.Away.lift (S := Away 𝒜 (x j * x i₀)) _ hunit
  have hφ'1 (s) : φ' (awayMap 𝒜 (hxdi i₀) rfl s) = φ s := IsLocalization.Away.lift_eq _ hunit s
  use i₀, φ', IsLocalization.Away.lift_comp ..
  rintro _ ⟨sx, rfl⟩
  rw [RingHom.mem_range, ← ValuationRing.mem_integer_iff, Valuation.mem_integer_iff]
  have := (Away.span_mk_prod_pow_eq_top (hxdi i₀) x h2 d hxdi).ge (Submodule.mem_top (x := sx))
  induction this using Submodule.span_induction with
  | zero => simp
  | add x y hx hy hhx hhy =>
    simp only [RingHom.coe_comp, Function.comp_apply, map_add, ge_iff_le]
    exact ((valuation O K).map_add _ _).trans <| sup_le_iff.mpr ⟨hhx, hhy⟩
  | smul a x₀ hx hx1 =>
    simp only [Algebra.smul_def, RingHom.coe_comp, Function.comp_apply, map_mul, ge_iff_le]
    refine mul_le_one' ?_ hx1
    rw [RingHom.algebraMap_toAlgebra, awayMap_fromZeroRingHom 𝒜 (hxdi j) (mul_comm (x j) (x i₀)),
      ← awayMap_fromZeroRingHom 𝒜 (hxdi i₀) rfl a, hφ'1]
    change valuation O K (φ.comp (fromZeroRingHom 𝒜 (.powers (x j))) a) ≤ 1
    simp only [← hcomm, RingHom.coe_comp, Function.comp_apply, ← Valuation.mem_integer_iff,
      IsFractionRing.coe_inj, exists_eq, mem_integer_iff]
  | mem x1 h =>
    obtain ⟨a, ai, hai, rfl⟩ := h
    simp only [smul_eq_mul] at hai
    have H : (∏ i, x i ^ ai i) * x i₀ ^ (a * (d j - 1)) ∈ 𝒜 ((a * d i₀) • d j) := by
      convert SetLike.mul_mem_graded (SetLike.prod_pow_mem_graded 𝒜 d x ai fun _ _ ↦ hxdi _)
        (SetLike.pow_mem_graded (a * (d j - 1)) (hxdi i₀)) using 2
      simp only [smul_eq_mul, hai]
      cases h : d j
      · cases (hdi j).ne' h
      · simp only [add_tsub_cancel_right]; ring
    suffices valuation O K (φ (Away.mk 𝒜 (hxdi j) _ _ H) /
          φ (Away.isLocalizationElem (hxdi j) (hxdi i₀)) ^ a) ≤ 1 by
      convert this
      rw [eq_div_iff (pow_ne_zero _ hunit.ne_zero), ← hφ'1, ← hφ'1, RingHom.comp_apply,
        ← map_pow, ← map_mul]
      congr
      ext
      simp only [awayMap_mk, Away.val_mk, val_pow, Localization.mk_pow, Localization.mk_mul,
        Localization.mk_eq_mk_iff, Localization.r_iff_exists, val_mul]
      use 1
      simp only [OneMemClass.coe_one, one_mul, Submonoid.coe_mul, SubmonoidClass.coe_pow]
      cases h : d j
      · cases (hdi j).ne' h
      · rw [Nat.add_sub_cancel]; ring
    rw [map_div₀, div_le_iff₀ ((pow_pos ((Valuation.pos_iff _).mpr hunit.ne_zero) _).trans_eq
      (Valuation.map_pow _ _ _).symm), one_mul, ← pow_le_pow_iff_left₀ zero_le' zero_le'
        (mul_pos (hdi j) (Finset.prod_pos fun i _ => hdi i)).ne.symm]
    calc
      _ = (∏ i, ψ i ^ (d i * ai i)) * ψ i₀ ^ (d i₀ * a * (d j - 1)) := by
          simp only [ψ, ← map_pow, ← map_prod, ← map_mul]
          congr 2
          apply (show Function.Injective (algebraMap (Away 𝒜 (x j)) (Localization.Away (x j)))
            from val_injective _)
          simp only [map_pow, map_prod, map_mul]
          simp only [HomogeneousLocalization.algebraMap_apply, Away.val_mk, Localization.mk_pow,
            Localization.mk_prod, Localization.mk_mul, ψ]
          rw [Localization.mk_eq_mk_iff, Localization.r_iff_exists]
          use 1
          simp only [OneMemClass.coe_one, SubmonoidClass.mk_pow, ← pow_mul, Submonoid.coe_mul,
            SubmonoidClass.coe_finset_prod, one_mul]
          simp_rw [← mul_assoc, Finset.prod_erase_mul _ d (h := Finset.mem_univ _), mul_assoc,
            ← mul_assoc (Finset.prod ..), Finset.prod_erase_mul _ d (h := Finset.mem_univ _),
            SubmonoidClass.coe_pow, ← pow_mul, Finset.prod_pow_eq_pow_sum,
            ← pow_add, mul_pow, ← Finset.prod_pow, ← pow_mul]
          congr 3
          · simp only [mul_comm _ (∏ i, d i), mul_assoc, mul_left_comm _ (∏ i, d i),
              mul_comm (d _) (ai _), ← Finset.mul_sum, hai]
            cases h : d j
            · cases (hdi j).ne' h
            · simp; ring
          · ext i; congr 1; ring
          · ring
      _ ≤ (∏ i : ι, ψ i₀ ^ (d i * ai i)) * ψ i₀ ^ (d i₀ * a * (d j - 1)) :=
          mul_le_mul_right' (Finset.prod_le_prod' fun i a ↦ pow_le_pow_left₀ zero_le' (hi₀ i) _) _
      _ = ψ i₀ ^ (d i₀ * a * d j) := by
          rw [Finset.prod_pow_eq_pow_sum, ← pow_add]
          simp_rw [mul_comm (d _) (ai _), hai]
          cases h : d j
          · cases (hdi j).ne' h
          · simp; ring_nf
      _ = valuation O K ((φ _) ^ a) ^ (d j * ∏ i, d i) := by
          · simp only [ψ, ← map_pow, ← map_prod, ← map_mul]
            congr 2
            rw [← pow_mul, ← pow_mul, ← mul_assoc, ← mul_assoc, ← mul_assoc,
              Finset.univ.prod_erase_mul d (h := Finset.mem_univ _),
              mul_comm _ a, mul_right_comm]

@[stacks 01MF]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22a24576b956c6d844dfe8958730d2701dadeff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
