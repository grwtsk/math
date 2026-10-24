# exists_kerSquareLift_comp_eq_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ac21f18-6be9-5adc-5676-d29a838d27a1",
  "kind": "lemma",
  "lexical_name": "exists_kerSquareLift_comp_eq_id",
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
  "slug": "exists-kersquarelift-comp-eq-id--3270da6018bf4e8c47158bac",
  "source": {
    "blob": "2755b2b19d3f590bf08e0342c37f71ba9a7974d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 167,
    "path": "GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3270da6018bf4e8c47158bac7da00d59782060233b9e7bf13c3039deb6dabe49",
  "verification": {
    "reference": "docs/verification/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ac21f18-6be9-5adc-5676-d29a838d27a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_kerSquareLift_comp_eq_id :
    ∃ (σ₀ : D.P.ModelOfHasCoeffs (D.subalgebra R) →ₐ[D.subalgebra R]
        MvPolynomial D.vars (D.subalgebra R) ⧸ (RingHom.ker f₀ ^ 2)),
      (AlgHom.kerSquareLift f₀).comp σ₀ =
        .id (D.subalgebra R) (Presentation.ModelOfHasCoeffs (D.subalgebra R)) := by
  choose p hp using fun i ↦ (D.h i).mem_range_map_iff_coeffs_subset.mpr (D.coeffs_h_subset R i)
  refine ⟨?_, ?_⟩
  · refine Ideal.Quotient.liftₐ _ ((Ideal.Quotient.mkₐ _ _).comp <| aeval p) ?_
    simp_rw [← RingHom.mem_ker, ← SetLike.le_def, Ideal.span_le, Set.range_subset_iff]
    intro i
    simp only [← AlgHom.comap_ker, Ideal.coe_comap, Set.mem_preimage, SetLike.mem_coe]
    rw [← RingHom.ker_coe_toRingHom, Ideal.Quotient.mkₐ_ker,
      ← RingHom.ker_coe_toRingHom, Ideal.Quotient.mkₐ_ker]
    have hinj : Function.Injective
        (MvPolynomial.map (σ := D.vars) (algebraMap (D.subalgebra R) A)) :=
      map_injective _ (FaithfulSMul.algebraMap_injective (D.subalgebra R) A)
    rw [Ideal.mem_span_pow_iff_exists_isHomogeneous]
    obtain ⟨q, hq⟩ := (D.p i).mem_range_map_iff_coeffs_subset.mpr (D.coeffs_p_subset R i)
    refine ⟨q, .of_map hinj ?_, hinj ?_⟩
    · rw [hq]
      exact D.hphom i
    · simp_rw [map_eval, Function.comp_def, Presentation.map_relationOfHasCoeffs,
        hq, D.hp, MvPolynomial.map_aeval, hp]
      simp [MvPolynomial.eval₂_map_comp_C, Presentation.map_relationOfHasCoeffs, aeval_def]
  · have hf₀ : Function.Surjective f₀ := Ideal.Quotient.mk_surjective
    rw [← AlgHom.cancel_right hf₀]
    refine MvPolynomial.algHom_ext fun i ↦ ?_
    suffices h : ∃ p', p'.IsHomogeneous 1 ∧ (eval (D.P.relationOfHasCoeffs (D.subalgebra R))) p' =
        p i - X i by
      -- Reducible def-eq issues caused by `RingHom.ker f.toRingHom` discrepancies
      -- Can be fixed after #25138.
      apply (Ideal.Quotient.mk_eq_mk_iff_sub_mem _ _).mpr
      simpa [Ideal.mem_span_iff_exists_isHomogeneous, hp]
    have hinj : Function.Injective
        (MvPolynomial.map (σ := D.vars) (algebraMap (D.subalgebra R) A)) :=
      map_injective _ (FaithfulSMul.algebraMap_injective (D.subalgebra R) A)
    obtain ⟨t, ht⟩ := (D.q i).mem_range_map_iff_coeffs_subset.mpr (D.coeffs_q_subset R i)
    refine ⟨t, .of_map hinj ?_, hinj ?_⟩
    · rw [ht]
      exact D.hqhom i
    · simp [MvPolynomial.map_eval, Function.comp_def,
        Presentation.map_relationOfHasCoeffs, ht, hq, hp]

end DescentAux

variable (R A B)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/--
Let `A` be an `R`-algebra. If `B` is a smooth `A`-algebra, there exists an
`R`-subalgebra of finite type `A₀` of `A` and a smooth `A₀`-algebra `B₀` such that
`B ≃ₐ A ⊗[A₀] B₀`.
See `Algebra.Smooth.exists_finiteType` for a version in terms of `Function.Injective`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2755b2b19d3f590bf08e0342c37f71ba9a7974d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
