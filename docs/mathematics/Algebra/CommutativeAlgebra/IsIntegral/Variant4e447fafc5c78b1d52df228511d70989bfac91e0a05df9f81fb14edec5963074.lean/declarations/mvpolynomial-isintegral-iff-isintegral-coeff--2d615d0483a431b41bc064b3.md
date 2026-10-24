# MvPolynomial.isIntegral_iff_isIntegral_coeff.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6e37a8b-77a8-53be-714e-a451157c3fac",
  "kind": "theorem",
  "lexical_name": "MvPolynomial.isIntegral_iff_isIntegral_coeff.",
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
  "slug": "mvpolynomial-isintegral-iff-isintegral-coeff--2d615d0483a431b41bc064b3",
  "source": {
    "blob": "e833e58cf732999d245764fc68f7fff367ddfc3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 197,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d615d0483a431b41bc064b372260734bc8911c51e09eebec96224c351ede116",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6e37a8b-77a8-53be-714e-a451157c3fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MvPolynomial.isIntegral_iff_isIntegral_coeff.{w} {σ : Type w} {f : MvPolynomial σ S} :
    IsIntegral (MvPolynomial σ R) f ↔ ∀ n, IsIntegral R (f.coeff n) := by
  refine ⟨fun H n ↦ ?mp, fun H ↦ ?mpr⟩
  case mpr =>
    rw [← f.support_sum_monomial_coeff]
    simp_rw [monomial_eq]
    refine IsIntegral.sum _ fun n _ ↦ .mul ((H n).map (Algebra.ofId _ _)).tower_top
      (.prod _ fun i _ ↦ .pow ?_ _)
    convert! isIntegral_algebraMap (x := MvPolynomial.X i)
    simp only [algebraMap_def, map_X]
  unfold IsIntegral at H
  wlog hσ : Finite σ generalizing σ
  · obtain ⟨g, hg⟩ := MvPolynomial.exists_rename_eq_of_vars_subset_range (τ := f.vars) f _
      Subtype.val_injective (by simp)
    by_cases hn : n ∈ Set.range (Finsupp.mapDomain ((↑) : f.vars → σ))
    · obtain ⟨n, rfl⟩ := hn
      simp_rw [← hg, coeff_rename_mapDomain _ Subtype.val_injective]
      exact this (f := g) (RingHom.IsIntegralElem.of_map
        (g := (rename ((↑) : f.vars → σ)).toRingHom) (rename_injective _ Subtype.val_injective)
        (.of_comp (f := (killCompl (f := ((↑) : f.vars → σ)) Subtype.val_injective).toRingHom) <| by
        simp only [AlgHom.toRingHom_eq_coe, algebraMap_def, RingHom.coe_coe, hg]
        convert!
          H.map
            ((rename Subtype.val).comp
                (killCompl (f := ((↑) : f.vars → σ)) Subtype.val_injective)).toRingHom
        · exact RingHom.ext (by simp [MvPolynomial.killCompl_map])
        · nth_rw 1 12 [← hg]; simp)) n (.of_fintype _)
    · rw [← hg, coeff_rename_eq_zero _ _ _ (by grind)]
      exact isIntegral_zero
  revert f n
  apply Finite.induction_empty_option _ _ _ σ
  · intro α β e IH f H n
    have := @IH (rename e.symm f) (.of_map (g := (rename e).toRingHom)
      (rename_injective _ e.injective) <| .of_comp (f := (rename e.symm).toRingHom)
        (by convert H <;> aesop)) (n.embDomain e.symm)
    simpa [Finsupp.embDomain_eq_mapDomain, coeff_rename_mapDomain _ e.symm.injective] using! this
  · intro f H n
    refine .of_map (g := (isEmptyAlgEquiv _ PEmpty).symm.toRingHom)
      (isEmptyAlgEquiv _ PEmpty).symm.injective
      (.of_comp (f := (isEmptyAlgEquiv _ PEmpty).toRingHom) ?_)
    convert! H
    · ext r m <;> simp [Subsingleton.elim m 0, C, X, monomial, map]
    · obtain rfl := Subsingleton.elim n 0
      have : constantCoeff = (isEmptyAlgEquiv S PEmpty).toRingHom := by aesop
      simpa [-EmbeddingLike.apply_eq_iff_eq, -isEmptyAlgEquiv_apply] using!
        congr((isEmptyAlgEquiv S PEmpty.{w + 1}).symm ($this f))
  · intro α _ IH f H n
    have := IH (IsIntegral.coeff (R := MvPolynomial α R)
      (p := optionEquivLeft _ _ f) (.of_map
      (g := (optionEquivLeft _ _).symm.toRingHom) (optionEquivLeft _ _).symm.injective
      (.of_comp (f := (optionEquivLeft _ _).toRingHom) (by
        convert! H
        · ext i m
          · aesop
          · cases i <;> aesop
        · aesop))) (n .none)) n.some
    rwa [optionEquivLeft_coeff_some_coeff_none] at this

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e833e58cf732999d245764fc68f7fff367ddfc3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
