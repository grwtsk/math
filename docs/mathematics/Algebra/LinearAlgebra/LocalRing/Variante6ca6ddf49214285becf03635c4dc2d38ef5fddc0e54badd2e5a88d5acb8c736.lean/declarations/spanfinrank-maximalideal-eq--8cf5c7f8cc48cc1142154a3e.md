# spanFinrank_maximalIdeal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:403db253-2b69-1033-92e7-f113d7602b54",
  "kind": "lemma",
  "lexical_name": "spanFinrank_maximalIdeal_eq",
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
  "slug": "spanfinrank-maximalideal-eq--8cf5c7f8cc48cc1142154a3e",
  "source": {
    "blob": "44757b59a49db134747b0ee04ad3523cea44f43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 164,
    "path": "GRWTSK/Algebra/LinearAlgebra/LocalRing/Variante6ca6ddf49214285becf03635c4dc2d38ef5fddc0e54badd2e5a88d5acb8c736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf5c7f8cc48cc1142154a3e1a955c8d5bb63ebe89758306ab07d376f9901b76",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LocalRing/Variante6ca6ddf49214285becf03635c4dc2d38ef5fddc0e54badd2e5a88d5acb8c736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:403db253-2b69-1033-92e7-f113d7602b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spanFinrank_maximalIdeal_eq [IsNoetherianRing R] [IsLocalRing R] :
    (maximalIdeal (AdicCompletion (maximalIdeal R) R)).spanFinrank =
    (maximalIdeal R).spanFinrank := by
  have fg : (maximalIdeal R).FG := fg_of_isNoetherianRing (maximalIdeal R)
  have comapeq := IsLocalRing.maximalIdeal_comap (algebraMap R (AdicCompletion (maximalIdeal R) R))
  let f := Ideal.mapCotangent _ _ (Algebra.ofId R (AdicCompletion (maximalIdeal R) R))
    (le_of_eq comapeq.symm)
  have inj : Function.Injective f := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro m hm
    rcases Ideal.toCotangent_surjective _ m with ⟨m', hm'⟩
    simp only [← hm', mapCotangent_toCotangent, Algebra.ofId_apply, toCotangent_eq_zero,
      maximalIdeal_eq_map, ← Ideal.map_pow, f] at hm
    rw [← Submodule.restrictScalars_mem R, ← Ideal.smul_top_eq_map,
      pow_smul_top_eq_ker_eval fg] at hm
    have : (algebraMap R (AdicCompletion (maximalIdeal R) R)) m'.1 = of _ R m'.1 := rfl
    simp only [smul_eq_mul, eval, this, LinearMap.mem_ker, LinearMap.coe_mk, AddHom.coe_mk,
      of_apply, Submodule.mkQ_apply, mk_eq_mk, Ideal.Quotient.eq_zero_iff_mem] at hm
    simpa [← hm', toCotangent_eq_zero] using hm
  have surj : Function.Surjective f := by
    intro m
    rcases Ideal.toCotangent_surjective _ m with ⟨m', hm'⟩
    rcases Submodule.Quotient.mk_surjective _ (m'.1.1 2) with ⟨l, hl⟩
    have lmem : (transitionMap _ R (Nat.le_succ 1)) (m'.1.1 2) = m'.1.1 1 := m'.1.2 (Nat.le_succ 1)
    simp only [smul_eq_mul, Nat.succ_eq_add_one, Nat.reduceAdd, transitionMap, Submodule.factorPow,
      Submodule.mapQ_eq_factor, Submodule.factor_eq_factor, ← hl, mk_eq_mk, factor_mk, pow_one,
      (mem_maximalIdeal_iff_eval_one_eq_zero m'.1).mp m'.2, eq_zero_iff_mem, mul_top] at lmem
    use (maximalIdeal R).toCotangent ⟨l, lmem⟩
    simp only [mapCotangent_toCotangent, Algebra.ofId_apply, ← hm', toCotangent_eq, f]
    change (of (maximalIdeal R) R l) - m' ∈ _
    simp only [maximalIdeal_eq_map, ← Ideal.map_pow]
    rw [← Submodule.restrictScalars_mem R, ← Ideal.smul_top_eq_map]
    simpa [pow_smul_top_eq_ker_eval (maximalIdeal R).fg_of_isNoetherianRing, eval, sub_eq_zero]
      using hl
  have rkeq := rank_eq_of_equiv_equiv _
    (LinearEquiv.ofBijective f ⟨inj, surj⟩).toAddEquiv
    (residueField_map_bijective R) (fun r m ↦ by
      rcases IsLocalRing.residue_surjective r with ⟨s, rfl⟩
      exact map_smul f s m )
  have fg' : (maximalIdeal (AdicCompletion (maximalIdeal R) R)).FG := by
    simpa [AdicCompletion.maximalIdeal_eq_map] using fg.map _
  rw [IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace_of_fg fg,
    IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace_of_fg fg', eq_comm]
  simp [Module.finrank, CotangentSpace, rkeq]

end AdicCompletion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LocalRing/Variante6ca6ddf49214285becf03635c4dc2d38ef5fddc0e54badd2e5a88d5acb8c736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LocalRing/Variante6ca6ddf49214285becf03635c4dc2d38ef5fddc0e54badd2e5a88d5acb8c736.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44757b59a49db134747b0ee04ad3523cea44f43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
