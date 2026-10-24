# cyclotomic_comp_X_add_one_isEisensteinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:920543cf-26da-310e-04ee-caa1ab3f48ee",
  "kind": "theorem",
  "lexical_name": "cyclotomic_comp_X_add_one_isEisensteinAt",
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
  "slug": "cyclotomic-comp-x-add-one-iseisensteinat--fcb460a5b7d1026b79854c61",
  "source": {
    "blob": "c147b737ce3a7765b9cf5ce8bf8767c7c81292ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 52,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcb460a5b7d1026b79854c61f465d483b5dc46d27570ea1de9d56d11638eeb4d",
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

Occurrence: `result:920543cf-26da-310e-04ee-caa1ab3f48ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_comp_X_add_one_isEisensteinAt [hp : Fact p.Prime] :
    ((cyclotomic p ℤ).comp (X + 1)).IsEisensteinAt 𝓟 := by
  refine Monic.isEisensteinAt_of_mem_of_not_mem ?_
      (Ideal.IsPrime.ne_top <| (Ideal.span_singleton_prime (by exact_mod_cast hp.out.ne_zero)).2 <|
        Nat.prime_iff_prime_int.1 hp.out) (fun {i hi} => ?_) ?_
  · rw [show (X + 1 : ℤ[X]) = X + C 1 by simp]
    refine (cyclotomic.monic p ℤ).comp (monic_X_add_C 1) fun h => ?_
    rw [natDegree_X_add_C] at h
    exact zero_ne_one h.symm
  · rw [cyclotomic_prime, geom_sum_X_comp_X_add_one_eq_sum, ← lcoeff_apply, LinearMap.map_sum]
    conv =>
      congr
      congr
      next => skip
      ext
      rw [lcoeff_apply, ← C_eq_nat_cast, C_mul_X_pow_eq_monomial, coeff_monomial]
    rw [natDegree_comp, show (X + 1 : ℤ[X]) = X + C 1 by simp, natDegree_X_add_C, mul_one,
      natDegree_cyclotomic, Nat.totient_prime hp.out] at hi
    simp only [hi.trans_le (Nat.sub_le _ _), sum_ite_eq', mem_range, if_true,
      Ideal.submodule_span_eq, Ideal.mem_span_singleton, Int.coe_nat_dvd]
    exact hp.out.dvd_choose_self i.succ_ne_zero (lt_tsub_iff_right.1 hi)
  · rw [coeff_zero_eq_eval_zero, eval_comp, cyclotomic_prime, eval_add, eval_X, eval_one, zero_add,
      eval_geom_sum, one_geom_sum, Ideal.submodule_span_eq, Ideal.span_singleton_pow,
      Ideal.mem_span_singleton]
    intro h
    obtain ⟨k, hk⟩ := Int.coe_nat_dvd.1 h
    rw [mul_assoc, mul_comm 1, mul_one] at hk
    nth_rw 1 [← Nat.mul_one p] at hk
    rw [mul_right_inj' hp.out.ne_zero] at hk
    exact Nat.Prime.not_dvd_one hp.out (Dvd.intro k hk.symm)
set_option linter.uppercaseLean3 false in
#align cyclotomic_comp_X_add_one_is_eisenstein_at cyclotomic_comp_X_add_one_isEisensteinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c147b737ce3a7765b9cf5ce8bf8767c7c81292ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
