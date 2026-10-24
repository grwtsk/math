# cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7ed4b75ed6cc5949f8f47c605c8eceec98fbd64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c43ed56-b654-1d1a-c7bc-75fd921090b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a171264-80b9-934b-94fa-2e49d54d9f9e",
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
  "slug": "cyclotomic-prime-pow-comp-x-add-one-iseisensteinat--70467b4635aac67873749b05",
  "source": {
    "blob": "f7ed4b75ed6cc5949f8f47c605c8eceec98fbd64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 75,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70467b4635aac67873749b0599d4698d4a3b8324b7fa138756170933ad646b3e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a171264-80b9-934b-94fa-2e49d54d9f9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt [hp : Fact p.Prime] (n : ℕ) :
    ((cyclotomic (p ^ (n + 1)) ℤ).comp (X + 1)).IsEisensteinAt 𝓟 := by
  refine Monic.isEisensteinAt_of_mem_of_notMem ?_
      (Ideal.IsPrime.ne_top <| (Ideal.span_singleton_prime (mod_cast hp.out.ne_zero)).2 <|
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
      rw [Ideal.submodule_span_eq, Ideal.mem_span_singleton, ← ZMod.intCast_zmod_eq_zero_iff_dvd,
        show ↑(_ : ℤ) = Int.castRingHom (ZMod p) _ by rfl, ← coeff_map, map_comp, map_cyclotomic,
        Polynomial.map_add, map_X, Polynomial.map_one, pow_add, pow_one,
        cyclotomic_mul_prime_dvd_eq_pow, pow_comp, ← ZMod.expand_card, coeff_expand hp.out.pos]
      · simp only [ite_eq_right_iff]
        rintro ⟨k, hk⟩
        rw [natDegree_comp, show (X + 1 : ℤ[X]) = X + C 1 by simp, natDegree_X_add_C, mul_one,
          natDegree_cyclotomic, Nat.totient_prime_pow hp.out (Nat.succ_pos _), Nat.add_one_sub_one]
          at hn hi
        rw [hk, pow_succ', mul_assoc] at hi
        rw [hk, mul_comm, Nat.mul_div_cancel _ hp.out.pos]
        replace hn := hn (lt_of_mul_lt_mul_left' hi)
        rw [Ideal.submodule_span_eq, Ideal.mem_span_singleton, ← ZMod.intCast_zmod_eq_zero_iff_dvd,
           show ↑(_ : ℤ) = Int.castRingHom (ZMod p) _ by rfl, ← coeff_map] at hn
        simpa [map_comp] using hn
      · exact ⟨p ^ n, by rw [pow_succ']⟩
  · rw [coeff_zero_eq_eval_zero, eval_comp, cyclotomic_prime_pow_eq_geom_sum hp.out, eval_add,
      eval_X, eval_one, zero_add, eval_finset_sum]
    simp only [eval_pow, eval_X, one_pow, sum_const, card_range, Nat.smul_one_eq_cast,
      submodule_span_eq, Ideal.submodule_span_eq, Ideal.span_singleton_pow,
      Ideal.mem_span_singleton]
    intro h
    obtain ⟨k, hk⟩ := Int.natCast_dvd_natCast.1 h
    rw [mul_assoc, mul_comm 1, mul_one] at hk
    nth_rw 1 [← Nat.mul_one p] at hk
    rw [mul_right_inj' hp.out.ne_zero] at hk
    exact Nat.Prime.not_dvd_one hp.out (Dvd.intro k hk.symm)

end Cyclotomic

section IsIntegral

variable {K : Type v} {L : Type z} {p : R} [CommRing R] [Field K] [Field L]
variable [Algebra K L] [Algebra R L] [Algebra R K] [IsScalarTower R K L] [Algebra.IsSeparable K L]
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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7ed4b75ed6cc5949f8f47c605c8eceec98fbd64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
