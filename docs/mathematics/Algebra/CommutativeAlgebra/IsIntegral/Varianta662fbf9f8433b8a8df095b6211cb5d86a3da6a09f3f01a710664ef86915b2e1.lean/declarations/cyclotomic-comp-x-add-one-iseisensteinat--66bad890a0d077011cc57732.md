# cyclotomic_comp_X_add_one_isEisensteinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "757c9ab8b462db32b9a0520597ab0182cba600ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4d45f02-0a33-2a67-5daa-59b50f14190e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f1697e2-0d76-d7f9-ac1a-da3668e7ce6b",
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
  "slug": "cyclotomic-comp-x-add-one-iseisensteinat--66bad890a0d077011cc57732",
  "source": {
    "blob": "757c9ab8b462db32b9a0520597ab0182cba600ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 47,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Varianta662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66bad890a0d077011cc57732513365fb5c926cbd4ad59d15ade7e85c1d37cf18",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Varianta662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f1697e2-0d76-d7f9-ac1a-da3668e7ce6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_comp_X_add_one_isEisensteinAt [hp : Fact p.Prime] :
    ((cyclotomic p ℤ).comp (X + 1)).IsEisensteinAt 𝓟 := by
  refine Monic.isEisensteinAt_of_mem_of_notMem ?_
      (Ideal.IsPrime.ne_top <| (Ideal.span_singleton_prime (mod_cast hp.out.ne_zero)).2 <|
        Nat.prime_iff_prime_int.1 hp.out) (fun {i hi} => ?_) ?_
  · rw [show (X + 1 : ℤ[X]) = X + C 1 by simp]
    refine (cyclotomic.monic p ℤ).comp (monic_X_add_C 1) fun h => ?_
    rw [natDegree_X_add_C] at h
    exact zero_ne_one h.symm
  · rw [cyclotomic_prime, geom_sum_X_comp_X_add_one_eq_sum, ← lcoeff_apply, map_sum]
    conv =>
      congr
      congr
      next => skip
      congr
      next => skip
      ext
      rw [lcoeff_apply, ← C_eq_natCast, C_mul_X_pow_eq_monomial, coeff_monomial]
    rw [natDegree_comp, show (X + 1 : ℤ[X]) = X + C 1 by simp, natDegree_X_add_C, mul_one,
      natDegree_cyclotomic, Nat.totient_prime hp.out] at hi
    simp only [hi.trans_le (Nat.sub_le _ _), sum_ite_eq', mem_range, ite_true,
      Ideal.submodule_span_eq, Ideal.mem_span_singleton, Int.natCast_dvd_natCast]
    exact hp.out.dvd_choose_self i.succ_ne_zero (lt_tsub_iff_right.1 hi)
  · rw [coeff_zero_eq_eval_zero, eval_comp, cyclotomic_prime, eval_add, eval_X, eval_one, zero_add,
      eval_geom_sum, one_geom_sum, Ideal.submodule_span_eq, Ideal.span_singleton_pow,
      Ideal.mem_span_singleton]
    intro h
    obtain ⟨k, hk⟩ := Int.natCast_dvd_natCast.1 h
    have : 2 ≤ p := Nat.Prime.two_le hp.out
    have : p < p ^ 2 := by nlinarith
    cases k <;> grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Varianta662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Varianta662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `757c9ab8b462db32b9a0520597ab0182cba600ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
