# map_toComp_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbc810cf-05ec-713f-45cc-b5960ea53d90",
  "kind": "lemma",
  "lexical_name": "map_toComp_ker",
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
  "slug": "map-tocomp-ker--a31e605ab97a230cf0600c1b",
  "source": {
    "blob": "1bc38c074ab0787fce0fc6bfe038df33d6828931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 507,
    "path": "GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a31e605ab97a230cf0600c1b345fa38913c5bb96bd9f201cb79ae2df94d90a96",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbc810cf-05ec-713f-45cc-b5960ea53d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_toComp_ker (Q : Generators S T) (P : Generators R S) :
    P.ker.map (Q.toComp P).toAlgHom = RingHom.ker (Q.ofComp P).toAlgHom := by
  letI : DecidableEq (Q.vars →₀ ℕ) := Classical.decEq _
  apply le_antisymm
  · rw [Ideal.map_le_iff_le_comap]
    rintro x (hx : algebraMap P.Ring S x = 0)
    have : (Q.ofComp P).toAlgHom.comp (Q.toComp P).toAlgHom = IsScalarTower.toAlgHom R _ _ := by
      ext1; simp
    simp only [comp_vars, AlgHom.toRingHom_eq_coe, Ideal.mem_comap, RingHom.coe_coe,
      RingHom.mem_ker, ← AlgHom.comp_apply, this, IsScalarTower.toAlgHom_apply]
    rw [IsScalarTower.algebraMap_apply P.Ring S, hx, map_zero]
  · rintro x (h₂ : (Q.ofComp P).toAlgHom x = 0)
    let e : ((Q.comp P).vars →₀ ℕ) ≃+ (Q.vars →₀ ℕ) × (P.vars →₀ ℕ) :=
      Finsupp.sumFinsuppAddEquivProdFinsupp
    suffices ∑ v ∈ (support x).map e, (monomial (e.symm v)) (coeff (e.symm v) x) ∈
        Ideal.map (Q.toComp P).toAlgHom.toRingHom P.ker by
      simpa only [AlgHom.toRingHom_eq_coe, Finset.sum_map, Equiv.coe_toEmbedding,
        EquivLike.coe_coe, AddEquiv.symm_apply_apply, support_sum_monomial_coeff] using this
    rw [← Finset.sum_fiberwise_of_maps_to (fun i ↦ Finset.mem_image_of_mem Prod.fst)]
    refine sum_mem fun i hi ↦ ?_
    convert_to monomial (e.symm (i, 0)) 1 * (Q.toComp P).toAlgHom.toRingHom
      (∑ j ∈ (support x).map e.toEmbedding with j.1 = i, monomial j.2 (coeff (e.symm j) x)) ∈ _
    · rw [map_sum, Finset.mul_sum]
      refine Finset.sum_congr rfl fun j hj ↦ ?_
      obtain rfl := (Finset.mem_filter.mp hj).2
      obtain ⟨i, j⟩ := j
      clear hj hi
      have : (Q.toComp P).toAlgHom (monomial j (coeff (e.symm (i, j)) x)) =
          monomial (e.symm (0, j)) (coeff (e.symm (i, j)) x) :=
        toComp_toAlgHom_monomial ..
      simp only [AlgHom.toRingHom_eq_coe, monomial_zero', RingHom.coe_coe, algHom_C,
          MvPolynomial.algebraMap_eq, this]
      rw [monomial_mul, ← map_add, Prod.mk_add_mk, add_zero, zero_add, one_mul]
    · apply Ideal.mul_mem_left
      refine Ideal.mem_map_of_mem _ ?_
      simp only [ker_eq_ker_aeval_val, AddEquiv.toEquiv_eq_coe, RingHom.mem_ker, map_sum]
      rw [← coeff_zero i, ← h₂]
      clear h₂ hi
      have (x : (Q.comp P).Ring) : (Function.support fun a ↦ if a.1 = i then aeval P.val
          (monomial a.2 (coeff (e.symm a) x)) else 0) ⊆ ((support x).map e).toSet := by
        rw [← Set.compl_subset_compl]
        intro j
        obtain ⟨j, rfl⟩ := e.surjective j
        simp_all
      rw [Finset.sum_filter, ← finsum_eq_sum_of_support_subset _ (this x)]
      induction x using MvPolynomial.induction_on' with
      | monomial v a =>
        rw [finsum_eq_sum_of_support_subset _ (this _), ← Finset.sum_filter]
        obtain ⟨v, rfl⟩ := e.symm.surjective v
        -- Rewrite `e` in the right hand side only.
        conv_rhs => simp only [e, comp_vars, Finsupp.sumFinsuppAddEquivProdFinsupp,
          Finsupp.sumFinsuppEquivProdFinsupp, AddEquiv.symm_mk, AddEquiv.coe_mk,
          Equiv.coe_fn_symm_mk, ofComp_toAlgHom_monomial_sumElim]
        classical
        simp only [comp_vars, coeff_monomial, ← e.injective.eq_iff,
          map_zero, AddEquiv.apply_symm_apply, apply_ite]
        rw [← apply_ite, Finset.sum_ite_eq]
        simp only [Finset.mem_filter, Finset.mem_map_equiv, AddEquiv.coe_toEquiv_symm, comp_vars,
          mem_support_iff, coeff_monomial, ↓reduceIte, ne_eq, ite_and, ite_not]
        split
        · simp only [zero_smul, coeff_zero, *, map_zero, ite_self]
        · congr
      | add p q hp hq =>
        simp only [coeff_add, map_add, ite_add_zero]
        rw [finsum_add_distrib, hp, hq]
        · refine (((support p).map e).finite_toSet.subset ?_)
          convert this p
        · refine (((support q).map e).finite_toSet.subset ?_)
          convert this q

/--
Given `R[X] → S` and `S[Y] → T`, this is the lift of an element in `ker(S[Y] → T)`
to `ker(R[X][Y] → S[Y] → T)` constructed from `P.σ`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc38c074ab0787fce0fc6bfe038df33d6828931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
