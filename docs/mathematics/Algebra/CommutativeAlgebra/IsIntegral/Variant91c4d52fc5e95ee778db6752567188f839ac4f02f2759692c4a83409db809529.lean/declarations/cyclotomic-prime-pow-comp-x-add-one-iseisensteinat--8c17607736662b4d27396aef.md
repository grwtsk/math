# cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6182f8a-e3a1-d083-2f7f-4cdcce382d0d",
  "kind": "theorem",
  "lexical_name": "cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt",
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
  "slug": "cyclotomic-prime-pow-comp-x-add-one-iseisensteinat--8c17607736662b4d27396aef",
  "source": {
    "blob": "c147b737ce3a7765b9cf5ce8bf8767c7c81292ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 85,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c17607736662b4d27396aef40c73b272402cae94b1fb591547340bea96d9b95",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6182f8a-e3a1-d083-2f7f-4cdcce382d0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt [hp : Fact p.Prime] (n : ℕ) :
    ((cyclotomic (p ^ (n + 1)) ℤ).comp (X + 1)).IsEisensteinAt 𝓟 := by
  refine Monic.isEisensteinAt_of_mem_of_not_mem ?_
      (Ideal.IsPrime.ne_top <| (Ideal.span_singleton_prime (by exact_mod_cast hp.out.ne_zero)).2 <|
        Nat.prime_iff_prime_int.1 hp.out) ?_ ?_
  · rw [show (X + 1 : ℤ[X]) = X + C 1 by simp]
    refine (cyclotomic.monic _ ℤ).comp (monic_X_add_C 1) fun h => ?_
    rw [natDegree_X_add_C] at h
    exact zero_ne_one h.symm
  · induction' n with n hn
    · intro i hi
      rw [Nat.zero_add, pow_one] at hi ⊢
      exact (cyclotomic_comp_X_add_one_isEisensteinAt p).mem hi
    · intro i hi
      rw [Ideal.submodule_span_eq, Ideal.mem_span_singleton, ← ZMod.int_cast_zmod_eq_zero_iff_dvd,
        show ↑(_  : ℤ) = Int.castRingHom (ZMod p) _ by rfl, ← coeff_map, map_comp, map_cyclotomic,
        Polynomial.map_add, map_X, Polynomial.map_one, pow_add, pow_one,
        cyclotomic_mul_prime_dvd_eq_pow, pow_comp, ← ZMod.expand_card, coeff_expand hp.out.pos]
      · simp only [ite_eq_right_iff]
        rintro ⟨k, hk⟩
        rw [natDegree_comp, show (X + 1 : ℤ[X]) = X + C 1 by simp, natDegree_X_add_C, mul_one,
          natDegree_cyclotomic, Nat.totient_prime_pow hp.out (Nat.succ_pos _), Nat.succ_sub_one]
          at hn hi
        rw [hk, pow_succ, mul_assoc] at hi
        rw [hk, mul_comm, Nat.mul_div_cancel _ hp.out.pos]
        replace hn := hn (lt_of_mul_lt_mul_left' hi)
        rw [Ideal.submodule_span_eq, Ideal.mem_span_singleton, ← ZMod.int_cast_zmod_eq_zero_iff_dvd,
           show ↑(_  : ℤ) = Int.castRingHom (ZMod p) _ by rfl, ← coeff_map] at hn
        simpa [map_comp] using hn
      · exact ⟨p ^ n, by rw [pow_succ]⟩
  · rw [coeff_zero_eq_eval_zero, eval_comp, cyclotomic_prime_pow_eq_geom_sum hp.out, eval_add,
      eval_X, eval_one, zero_add, eval_finset_sum]
    simp only [eval_pow, eval_X, one_pow, sum_const, card_range, Nat.smul_one_eq_coe,
      submodule_span_eq, Ideal.submodule_span_eq, Ideal.span_singleton_pow,
      Ideal.mem_span_singleton]
    intro h
    obtain ⟨k, hk⟩ := Int.coe_nat_dvd.1 h
    rw [mul_assoc, mul_comm 1, mul_one] at hk
    nth_rw 1 [← Nat.mul_one p] at hk
    rw [mul_right_inj' hp.out.ne_zero] at hk
    exact Nat.Prime.not_dvd_one hp.out (Dvd.intro k hk.symm)
set_option linter.uppercaseLean3 false in
#align cyclotomic_prime_pow_comp_X_add_one_is_eisenstein_at cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt

end Cyclotomic

section IsIntegral

variable {K : Type v} {L : Type z} {p : R} [CommRing R] [Field K] [Field L]

variable [Algebra K L] [Algebra R L] [Algebra R K] [IsScalarTower R K L] [IsSeparable K L]

variable [IsDomain R] [IsFractionRing R K] [IsIntegrallyClosed R]

local notation "𝓟" => Submodule.span R {(p : R)}

open IsIntegrallyClosed PowerBasis Nat Polynomial IsScalarTower

/-- Let `K` be the field of fraction of an integrally closed domain `R` and let `L` be a separable
extension of `K`, generated by an integral power basis `B` such that the minimal polynomial of
`B.gen` is Eisenstein at `p`. Given `z : L` integral over `R`, if `Q : R[X]` is such that
`aeval B.gen Q = p • z`, then `p ∣ Q.coeff 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c147b737ce3a7765b9cf5ce8bf8767c7c81292ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
