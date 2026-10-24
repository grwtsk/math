# quotientToQuotientRangePowQuotSucc_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34ec9c69-8743-7910-0990-e7c587c89617",
  "kind": "theorem",
  "lexical_name": "quotientToQuotientRangePowQuotSucc_surjective",
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
  "slug": "quotienttoquotientrangepowquotsucc-surjective--1c40626b457bfa2384c525e8",
  "source": {
    "blob": "0e5bf861f88ae866623850c06893862d51339719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 579,
    "path": "GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c40626b457bfa2384c525e8daa0fe4799d8e59014f2567b09ae65b22474f4e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34ec9c69-8743-7910-0990-e7c587c89617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientToQuotientRangePowQuotSucc_surjective [IsDomain S] [IsDedekindDomain S]
    (hP0 : P ≠ ⊥) [hP : P.IsPrime] {i : ℕ} (hi : i < e) {a : S} (a_mem : a ∈ P ^ i)
    (a_not_mem : a ∉ P ^ (i + 1)) :
    Function.Surjective (quotientToQuotientRangePowQuotSucc f p P a_mem) := by
  rintro ⟨⟨⟨x⟩, hx⟩⟩
  have Pe_le_Pi : P ^ e ≤ P ^ i := Ideal.pow_le_pow hi.le
  rw [Submodule.Quotient.quot_mk_eq_mk, Ideal.Quotient.mk_eq_mk, Ideal.mem_quotient_iff_mem_sup,
    sup_eq_left.mpr Pe_le_Pi] at hx
  suffices hx' : x ∈ Ideal.span {a} ⊔ P ^ (i + 1)
  · obtain ⟨y', hy', z, hz, rfl⟩ := Submodule.mem_sup.mp hx'
    obtain ⟨y, rfl⟩ := Ideal.mem_span_singleton.mp hy'
    refine ⟨Submodule.Quotient.mk y, ?_⟩
    simp only [Submodule.Quotient.quot_mk_eq_mk, quotientToQuotientRangePowQuotSucc_mk,
      Submodule.Quotient.eq, LinearMap.mem_range, Subtype.ext_iff, Subtype.coe_mk,
      Submodule.coe_sub]
    refine ⟨⟨_, Ideal.mem_map_of_mem _ (Submodule.neg_mem _ hz)⟩, ?_⟩
    rw [powQuotSuccInclusion_apply_coe, Subtype.coe_mk, Ideal.Quotient.mk_eq_mk, map_add,
      mul_comm y a, sub_add_cancel', map_neg]
  letI := Classical.decEq (Ideal S)
  rw [sup_eq_prod_inf_factors _ (pow_ne_zero _ hP0), normalizedFactors_pow,
    normalizedFactors_irreducible ((Ideal.prime_iff_isPrime hP0).mpr hP).irreducible, normalize_eq,
    Multiset.nsmul_singleton, Multiset.inter_replicate, Multiset.prod_replicate]
  rw [← Submodule.span_singleton_le_iff_mem, Ideal.submodule_span_eq] at a_mem a_not_mem
  rwa [Ideal.count_normalizedFactors_eq a_mem a_not_mem, min_eq_left i.le_succ]
  · intro ha
    rw [Ideal.span_singleton_eq_bot.mp ha] at a_not_mem
    have := (P ^ (i + 1)).zero_mem
    contradiction
#align ideal.quotient_to_quotient_range_pow_quot_succ_surjective Ideal.quotientToQuotientRangePowQuotSucc_surjective

/-- Quotienting `P^i / P^e` by its subspace `P^(i+1) ⧸ P^e` is
`R ⧸ p`-linearly isomorphic to `S ⧸ P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5bf861f88ae866623850c06893862d51339719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
