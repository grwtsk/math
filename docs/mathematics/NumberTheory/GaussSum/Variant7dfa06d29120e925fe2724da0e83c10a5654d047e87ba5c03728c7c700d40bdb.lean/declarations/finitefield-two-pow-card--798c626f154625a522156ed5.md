# FiniteField.two_pow_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8ac10f0-de97-b026-b045-4c793226b843",
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
  "slug": "finitefield-two-pow-card--798c626f154625a522156ed5",
  "source": {
    "blob": "f6bbab1eefc328d0b5abf3ae1937fd8d3cc693e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 350,
    "path": "GRWTSK/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:798c626f154625a522156ed5b25f24dfb855991bc18637098e62403200cd13bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ac10f0-de97-b026-b045-4c793226b843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteField.two_pow_card {F : Type*} [Fintype F] [Field F] (hF : ringChar F ≠ 2) :
    (2 : F) ^ (Fintype.card F / 2) = χ₈ (Fintype.card F) := by
  have hp2 (n : ℕ) : (2 ^ n : F) ≠ 0 := pow_ne_zero n (Ring.two_ne_zero hF)
  obtain ⟨n, hp, hc⟩ := FiniteField.card F (ringChar F)
  -- we work in `FF`, the eighth cyclotomic field extension of `F`
  let FF := CyclotomicField 8 F
  have hchar := Algebra.ringChar_eq F FF
  have FFp := hchar.subst hp
  have := Fact.mk FFp
  have hFF := hchar ▸ hF -- `ringChar FF ≠ 2`
  have hu : IsUnit (ringChar FF : ZMod 8) := by
    rw [isUnit_iff_not_dvd_char, ringChar_zmod_n]
    rw [Ne, ← Nat.prime_dvd_prime_iff_eq FFp Nat.prime_two] at hFF
    change ¬_ ∣ 2 ^ 3
    exact mt FFp.dvd_of_dvd_pow hFF
  -- there is a primitive additive character `ℤ/8ℤ → FF`, sending `a + 8ℤ ↦ τ^a`
  -- with a primitive eighth root of unity `τ`
  let ψ₈ := primitiveZModChar 8 F (by convert! hp2 3 using 1; norm_cast)
  -- We cast from `AddChar (ZMod (8 : ℕ+)) FF` to `AddChar (ZMod 8) FF`
  -- This is needed to make `simp_rw [← h₁]` below work.
  let ψ₈char : AddChar (ZMod 8) FF := ψ₈.char
  let τ : FF := ψ₈char 1
  have τ_spec : τ ^ 4 = -1 := by
    rw [show τ = ψ₈.char 1 from rfl] -- to make `rw [ψ₈.prim.zmod_char_eq_one_iff]` work
    refine (sq_eq_one_iff.1 ?_).resolve_left ?_
    · rw [← pow_mul, ← map_nsmul_eq_pow ψ₈.char, ψ₈.prim.zmod_char_eq_one_iff]
      decide
    · rw [← map_nsmul_eq_pow ψ₈.char, ψ₈.prim.zmod_char_eq_one_iff]
      decide
  -- we consider `χ₈` as a multiplicative character `ℤ/8ℤ → FF`
  let χ := χ₈.ringHomComp (Int.castRingHom FF)
  have hχ : χ (-1) = 1 := Int.cast_one
  have hq : IsQuadratic χ := isQuadratic_χ₈.comp _
  -- we now show that the Gauss sum of `χ` and `ψ₈` has the relevant property
  have h₁ : (fun (a : Fin 8) ↦ ↑(χ₈ a) * τ ^ (a : ℕ)) = fun a ↦ χ a * ↑(ψ₈char a) := by
    ext1; congr; apply pow_one
  have hg₁ : gaussSum χ ψ₈char = 2 * (τ - τ ^ 3) := by
    rw [gaussSum, ← h₁, Fin.sum_univ_eight,
      -- evaluate `χ₈`
      show χ₈ 0 = 0 from rfl, show χ₈ 1 = 1 from rfl, show χ₈ 2 = 0 from rfl,
      show χ₈ 3 = -1 from rfl, show χ₈ 4 = 0 from rfl, show χ₈ 5 = -1 from rfl,
      show χ₈ 6 = 0 from rfl, show χ₈ 7 = 1 from rfl,
      -- normalize exponents
      show ((3 : Fin 8) : ℕ) = 3 from rfl, show ((5 : Fin 8) : ℕ) = 5 from rfl,
      show ((7 : Fin 8) : ℕ) = 7 from rfl]
    simp only [Int.cast_zero, zero_mul, Int.cast_one, Fin.val_one, pow_one, one_mul, zero_add,
      Fin.val_two, add_zero, Int.reduceNeg, Int.cast_neg]
    linear_combination (τ ^ 3 - τ) * τ_spec
  have hg : gaussSum χ ψ₈char ^ 2 = χ (-1) * Fintype.card (ZMod 8) := by
    rw [hχ, one_mul, ZMod.card, Nat.cast_ofNat, hg₁]
    linear_combination (4 * τ ^ 2 - 8) * τ_spec
  -- this allows us to apply `card_pow_char_pow` to our situation
  have h := Char.card_pow_char_pow (R := ZMod 8) hq ψ₈char (ringChar FF) n hu hFF hg
  rw [ZMod.card, ← hchar, hχ, one_mul, ← hc, ← Nat.cast_pow (ringChar F), ← hc] at h
  -- finally, we change `2` to `8` on the left-hand side
  convert_to (8 : F) ^ (Fintype.card F / 2) = _
  · rw [(by norm_num : (8 : F) = 2 ^ 2 * 2), mul_pow,
      (FiniteField.isSquare_iff hF <| hp2 2).mp ⟨2, pow_two 2⟩, one_mul]
  apply (algebraMap F FF).injective
  simpa only [map_pow, map_ofNat, map_intCast, Nat.cast_ofNat] using! h

end GaussSumTwo
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bbab1eefc328d0b5abf3ae1937fd8d3cc693e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
