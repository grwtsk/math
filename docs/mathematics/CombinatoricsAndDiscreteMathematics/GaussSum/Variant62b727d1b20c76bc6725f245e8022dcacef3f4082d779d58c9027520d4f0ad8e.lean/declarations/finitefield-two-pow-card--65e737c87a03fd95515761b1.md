# FiniteField.two_pow_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd74fd5a-a4b6-e4aa-7cc9-6e2f92673741",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18818ebe-17be-fb09-79b0-6174dda10bce",
  "kind": "theorem",
  "lexical_name": "FiniteField.two_pow_card",
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
  "slug": "finitefield-two-pow-card--65e737c87a03fd95515761b1",
  "source": {
    "blob": "9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65e737c87a03fd95515761b1392d697667416804110b39a96fe6e15ca68ddba0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18818ebe-17be-fb09-79b0-6174dda10bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteField.two_pow_card {F : Type*} [Fintype F] [Field F] (hF : ringChar F ≠ 2) :
    (2 : F) ^ (Fintype.card F / 2) = χ₈ (Fintype.card F) := by
  have hp2 : ∀ n : ℕ, (2 ^ n : F) ≠ 0 := fun n => pow_ne_zero n (Ring.two_ne_zero hF)
  obtain ⟨n, hp, hc⟩ := FiniteField.card F (ringChar F)

  -- we work in `FF`, the eighth cyclotomic field extension of `F`
  -- Porting note: was
  -- let FF := (Polynomial.cyclotomic 8 F).SplittingField
  -- but we want to unify with `CyclotomicField` below.
  let FF := CyclotomicField 8 F
  haveI : Polynomial.IsSplittingField F FF (Polynomial.cyclotomic 8 F) :=
    Polynomial.IsSplittingField.splittingField _
  haveI : FiniteDimensional F FF :=
    Polynomial.IsSplittingField.finiteDimensional FF (Polynomial.cyclotomic 8 F)
  haveI : Fintype FF := FiniteDimensional.fintypeOfFintype F FF
  have hchar := Algebra.ringChar_eq F FF
  have FFp := hchar.subst hp
  haveI := Fact.mk FFp
  have hFF := ne_of_eq_of_ne hchar.symm hF
  -- `ringChar FF ≠ 2`
  have hu : IsUnit (ringChar FF : ZMod 8) := by
    rw [isUnit_iff_not_dvd_char, ringChar_zmod_n]
    rw [Ne, ← Nat.prime_dvd_prime_iff_eq FFp Nat.prime_two] at hFF
    change ¬_ ∣ 2 ^ 3
    exact mt FFp.dvd_of_dvd_pow hFF

  -- there is a primitive additive character `ℤ/8ℤ → FF`, sending `a + 8ℤ ↦ τ^a`
  -- with a primitive eighth root of unity `τ`
  -- Porting note: The type is actually `PrimitiveAddChar (ZMod (8 : ℕ+)) F`, but this seems faster.
  let ψ₈ : PrimitiveAddChar (ZMod 8) F :=
    primitiveZModChar 8 F (by convert hp2 3 using 1; norm_cast)
  -- Porting note: unifying this is very slow, so only do it once.
  let ψ₈char : AddChar (ZMod 8) FF := ψ₈.char
  let τ : FF := ψ₈char 1
  have τ_spec : τ ^ 4 = -1 := by
    refine (sq_eq_one_iff.1 ?_).resolve_left ?_
    · rw [← pow_mul, ← map_nsmul_pow ψ₈char, AddChar.IsPrimitive.zmod_char_eq_one_iff 8 ψ₈.prim]
      decide
    · rw [← map_nsmul_pow ψ₈char, AddChar.IsPrimitive.zmod_char_eq_one_iff 8 ψ₈.prim]
      decide

  -- we consider `χ₈` as a multiplicative character `ℤ/8ℤ → FF`
  let χ := χ₈.ringHomComp (Int.castRingHom FF)
  have hχ : χ (-1) = 1 := Int.cast_one
  have hq : IsQuadratic χ := isQuadratic_χ₈.comp _

  -- we now show that the Gauss sum of `χ` and `ψ₈` has the relevant property
  have hg : gaussSum χ ψ₈char ^ 2 = χ (-1) * Fintype.card (ZMod 8) := by
    have _ := congr_arg (· ^ 2) (Fin.sum_univ_eight fun x => (χ₈ x : FF) * τ ^ x.1)
    have h₁ : (fun i : Fin 8 => ↑(χ₈ i) * τ ^ i.val) = (fun a : ZMod 8 => χ a * ↑(ψ₈char a)) := by
      -- Porting note: original proof
      -- ext; congr; apply pow_one
      ext (x : Fin 8); rw [← map_nsmul_pow ψ₈char]; congr 2;
      rw [Nat.smul_one_eq_coe, Fin.cast_val_eq_self x]
    have h₂ : (0 + 1 * τ ^ 1 + 0 + -1 * τ ^ 3 + 0 + -1 * τ ^ 5 + 0 + 1 * τ ^ 7) ^ 2 =
        8 + (τ ^ 4 + 1) * (τ ^ 10 - 2 * τ ^ 8 - 2 * τ ^ 6 + 6 * τ ^ 4 + τ ^ 2 - 8) := by ring
    have h₃ : 8 + (τ ^ 4 + 1) * (τ ^ 10 - 2 * τ ^ 8 - 2 * τ ^ 6 + 6 * τ ^ 4 + τ ^ 2 - 8) = ↑8 := by
      rw [τ_spec]; norm_num
    have h₄ : (0 + 1 * τ ^ 1 + 0 + -1 * τ ^ 3 + 0 + -1 * τ ^ 5 + 0 + 1 * τ ^ 7) ^ 2 = ↑8 := by
      rw [← h₃, ← h₂]
    have h₅ :
        (↑(χ₈ 0) * τ ^ 0 + ↑(χ₈ 1) * τ ^ 1 + ↑(χ₈ 2) * τ ^ 2 + ↑(χ₈ 3) * τ ^ 3 + ↑(χ₈ 4) * τ ^ 4 +
        ↑(χ₈ 5) * τ ^ 5 + ↑(χ₈ 6) * τ ^ 6 + ↑(χ₈ 7) * τ ^ 7) ^ 2 = 8 := by
      -- Porting note: original proof
      --  simp [← h₄, χ₈_apply, Matrix.cons_val_zero, algebraMap.coe_zero, zero_mul,
      -- Matrix.cons_val_one, Matrix.head_cons, algebraMap.coe_one, Matrix.cons_vec_bit0_eq_alt0,
      -- Matrix.cons_vecAppend, Matrix.cons_vecAlt0, Matrix.cons_vec_bit1_eq_alt1,
      -- Matrix.cons_vecAlt1, Int.cast_neg]
      simp_rw [χ₈_apply]
      rw [← h₄]
      dsimp only
      congr
      · rw [Matrix.cons_val_zero]; simp
      · simp only [Matrix.vecCons, ne_eq, Nat.cast_ofNat, id_eq, eq_mpr_eq_cast, mul_eq_zero,
          zero_lt_two, pow_eq_zero_iff]
        left
        rw [← Int.cast_zero (R := FF)]
        exact congr_arg Int.cast rfl
      · simp only [Matrix.vecCons]
        rw [show (-1 : FF) = ↑(- 1 : ℤ) by simp only [Int.cast_neg, Int.cast_one]]
        exact congr_arg Int.cast rfl
      · simp only [Matrix.vecCons, ne_eq, Nat.cast_ofNat, id_eq, eq_mpr_eq_cast, mul_eq_zero,
          zero_lt_two, pow_eq_zero_iff]
        left
        rw [← Int.cast_zero (R := FF)]
        exact congr_arg Int.cast rfl
      · simp only [Matrix.vecCons]
        rw [show (-1 : FF) = ↑(- 1 : ℤ) by simp only [Int.cast_neg, Int.cast_one]]
        exact congr_arg Int.cast rfl
      · simp only [Matrix.vecCons, ne_eq, Nat.cast_ofNat, id_eq, eq_mpr_eq_cast, mul_eq_zero,
          zero_lt_two, pow_eq_zero_iff]
        left
        rw [← Int.cast_zero (R := FF)]
        exact congr_arg Int.cast rfl
    -- Porting note: original proof
    -- simpa only [hχ, one_mul, card, gaussSum, ← h₅, h₁] using h
    rw [gaussSum, hχ, one_mul, ZMod.card, Nat.cast_ofNat, ← h₅]
    simp_rw [← h₁]
    rw [Fin.sum_univ_eight]
    rfl

  -- this allows us to apply `card_pow_char_pow` to our situation
  have h := Char.card_pow_char_pow (R := ZMod 8) hq ψ₈char (ringChar FF) n hu hFF hg
  rw [ZMod.card, ← hchar, hχ, one_mul, ← hc, ← Nat.cast_pow (ringChar F), ← hc] at h

  -- finally, we change `2` to `8` on the left hand side
  convert_to (8 : F) ^ (Fintype.card F / 2) = _
  · rw [(by norm_num : (8 : F) = 2 ^ 2 * 2), mul_pow,
      (FiniteField.isSquare_iff hF <| hp2 2).mp ⟨2, pow_two 2⟩, one_mul]
  apply (algebraMap F FF).injective
  simp only [map_pow, map_ofNat, map_intCast]
  simp only [Nat.cast_ofNat, ringHomComp_apply, eq_intCast] at h
  exact h
#align finite_field.two_pow_card FiniteField.two_pow_card

end GaussSumTwo
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
