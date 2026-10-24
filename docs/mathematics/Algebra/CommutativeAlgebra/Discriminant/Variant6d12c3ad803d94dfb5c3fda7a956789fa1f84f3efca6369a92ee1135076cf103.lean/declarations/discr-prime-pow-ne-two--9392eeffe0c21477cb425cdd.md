# discr_prime_pow_ne_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81b7c425-16a5-44f7-2c03-df90928dff2d",
  "kind": "theorem",
  "lexical_name": "discr_prime_pow_ne_two",
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
  "slug": "discr-prime-pow-ne-two--9392eeffe0c21477cb425cdd",
  "source": {
    "blob": "345cbe97065f18528b9c2f079af9b567e211cdbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 73,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9392eeffe0c21477cb425cdd3a66ca45ef841b77cf04ecc11fbbbd35554e040e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81b7c425-16a5-44f7-2c03-df90928dff2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_prime_pow_ne_two [IsCyclotomicExtension {p ^ (k + 1)} K L] [hp : Fact (p : ℕ).Prime]
    (hζ : IsPrimitiveRoot ζ ↑(p ^ (k + 1))) (hirr : Irreducible (cyclotomic (↑(p ^ (k + 1)) : ℕ) K))
    (hk : p ^ (k + 1) ≠ 2) : discr K (hζ.powerBasis K).basis =
      (-1) ^ ((p ^ (k + 1) : ℕ).totient / 2) * p ^ ((p : ℕ) ^ k * ((p - 1) * (k + 1) - 1)) := by
  haveI hne := IsCyclotomicExtension.neZero' (p ^ (k + 1)) K L
  -- Porting note: these two instances are not automatically synthesised and must be constructed
  haveI mf : Module.Finite K L := finiteDimensional {p ^ (k + 1)} K L
  haveI se : IsSeparable K L := (isGalois (p ^ (k + 1)) K L).to_isSeparable
  rw [discr_powerBasis_eq_norm, finrank L hirr, hζ.powerBasis_gen _, ←
    hζ.minpoly_eq_cyclotomic_of_irreducible hirr, PNat.pow_coe,
    totient_prime_pow hp.out (succ_pos k), succ_sub_one]
  have coe_two : ((2 : ℕ+) : ℕ) = 2 := rfl
  have hp2 : p = 2 → k ≠ 0 := by
    rintro rfl rfl
    exact absurd rfl hk
  congr 1
  · rcases eq_or_ne p 2 with (rfl | hp2)
    · rcases Nat.exists_eq_succ_of_ne_zero (hp2 rfl) with ⟨k, rfl⟩
      rw [coe_two, succ_sub_succ_eq_sub, tsub_zero, mul_one]; simp only [_root_.pow_succ]
      rw [mul_assoc, Nat.mul_div_cancel_left _ zero_lt_two, Nat.mul_div_cancel_left _ zero_lt_two]
      cases k
      · simp
      · norm_num; simp_rw [_root_.pow_succ, (even_two.mul_right _).neg_one_pow,
          ((even_two.mul_right _).mul_right _).neg_one_pow]
    · replace hp2 : (p : ℕ) ≠ 2
      · rwa [Ne.def, ← coe_two, PNat.coe_inj]
      have hpo : Odd (p : ℕ) := hp.out.odd_of_ne_two hp2
      obtain ⟨a, ha⟩ := (hp.out.even_sub_one hp2).two_dvd
      rw [ha, mul_left_comm, mul_assoc, Nat.mul_div_cancel_left _ two_pos,
        Nat.mul_div_cancel_left _ two_pos, mul_right_comm, pow_mul, (hpo.pow.mul _).neg_one_pow,
        pow_mul, hpo.pow.neg_one_pow]; · norm_cast
      refine' Nat.Even.sub_odd _ (even_two_mul _) odd_one
      rw [mul_left_comm, ← ha]
      exact one_le_mul (one_le_pow _ _ hp.1.pos) (succ_le_iff.2 <| tsub_pos_of_lt hp.1.one_lt)
  · have H := congr_arg (@derivative K _) (cyclotomic_prime_pow_mul_X_pow_sub_one K p k)
    rw [derivative_mul, derivative_sub, derivative_one, sub_zero, derivative_X_pow, C_eq_nat_cast,
      derivative_sub, derivative_one, sub_zero, derivative_X_pow, C_eq_nat_cast, ← PNat.pow_coe,
      hζ.minpoly_eq_cyclotomic_of_irreducible hirr] at H
    replace H := congr_arg (fun P => aeval ζ P) H
    simp only [aeval_add, aeval_mul, minpoly.aeval, zero_mul, add_zero, aeval_nat_cast,
      _root_.map_sub, aeval_one, aeval_X_pow] at H
    replace H := congr_arg (Algebra.norm K) H
    have hnorm : (norm K) (ζ ^ (p : ℕ) ^ k - 1) = (p : K) ^ (p : ℕ) ^ k := by
      by_cases hp : p = 2
      · exact_mod_cast hζ.pow_sub_one_norm_prime_pow_of_ne_zero hirr le_rfl (hp2 hp)
      · exact_mod_cast hζ.pow_sub_one_norm_prime_ne_two hirr le_rfl hp
    rw [MonoidHom.map_mul, hnorm, MonoidHom.map_mul, ← map_natCast (algebraMap K L),
      Algebra.norm_algebraMap, finrank L hirr] at H
    conv_rhs at H => -- Porting note: need to drill down to successfully rewrite the totient
      enter [1, 2]
      rw [PNat.pow_coe, ← succ_eq_add_one, totient_prime_pow hp.out (succ_pos k), Nat.sub_one,
        Nat.pred_succ]
    rw [← hζ.minpoly_eq_cyclotomic_of_irreducible hirr, map_pow, hζ.norm_eq_one hk hirr, one_pow,
      mul_one, PNat.pow_coe, cast_pow, ← pow_mul, ← mul_assoc, mul_comm (k + 1), mul_assoc] at H
    have := mul_pos (succ_pos k) (tsub_pos_of_lt hp.out.one_lt)
    rw [← succ_pred_eq_of_pos this, mul_succ, pow_add _ _ ((p : ℕ) ^ k)] at H
    replace H := (mul_left_inj' fun h => ?_).1 H
    · simp only [H, mul_comm _ (k + 1)]; norm_cast
    · -- Porting note: was `replace h := pow_eq_zero h; rw [coe_coe] at h; simpa using hne.1`
      have := hne.1
      rw [PNat.pow_coe, Nat.cast_pow, Ne.def, pow_eq_zero_iff (by linarith)] at this
      exact absurd (pow_eq_zero h) this
#align is_cyclotomic_extension.discr_prime_pow_ne_two IsCyclotomicExtension.discr_prime_pow_ne_two

/-- If `p` is a prime and `IsCyclotomicExtension {p ^ (k + 1)} K L`, then the discriminant of
`hζ.powerBasis K` is `(-1) ^ (p ^ k * (p - 1) / 2) * p ^ (p ^ k * ((p - 1) * (k + 1) - 1))`
if `Irreducible (cyclotomic (p ^ (k + 1)) K))`, and `p ^ (k + 1) ≠ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345cbe97065f18528b9c2f079af9b567e211cdbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
