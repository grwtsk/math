# centerCongr_toLin_equiv_trans_centerEquivRootsOfUnity_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97ed2db615a8505566275f8fa1f9a83e91e9cee5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 544,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4126187e-1d96-a046-6818-c19c1aeade5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61febf42-10cc-0984-7f6e-152b53a2f10f",
  "kind": "theorem",
  "lexical_name": "centerCongr_toLin_equiv_trans_centerEquivRootsOfUnity_eq",
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
  "slug": "centercongr-tolin-equiv-trans-centerequivrootsofunity-eq--50c9500b02f9a441eaeb048f",
  "source": {
    "blob": "97ed2db615a8505566275f8fa1f9a83e91e9cee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 544,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c9500b02f9a441eaeb048f39ae8d5e162b2c7265164fd91b33e4df23375dc2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61febf42-10cc-0984-7f6e-152b53a2f10f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centerCongr_toLin_equiv_trans_centerEquivRootsOfUnity_eq (g) :
    ((centerCongr (toLin_equiv b)).trans centerEquivRootsOfUnity g).val =
      Matrix.SpecialLinearGroup.center_equiv_rootsOfUnity g := by
  nontriviality R
  by_cases hV : Subsingleton V
  · convert! Eq.refl (1 : Rˣ) <;>
    · apply rootsOfUnity.eq_one
      rw [← Module.finrank_eq_zero_iff_of_free (R := R)] at hV
      simp only [hV, sup_eq_right, zero_le_one, ← Module.finrank_eq_card_basis b]
  · have hι : ¬ IsEmpty ι := fun hι ↦ hV (by
      rw [← Module.finrank_eq_zero_iff_of_free (R := R),
        Module.finrank_eq_card_basis b, Fintype.card_of_isEmpty])
    rw [not_subsingleton_iff_nontrivial] at hV
    have := Module.Free.instFaithfulSMulOfNontrivial R V
    suffices (((((Subgroup.centerCongr (Matrix.SpecialLinearGroup.toLin_equiv b)).trans
      centerEquivRootsOfUnity g).val : R) • LinearMap.id) : V →ₗ[R] V) =
        ((Matrix.SpecialLinearGroup.center_equiv_rootsOfUnity g).val : R) • LinearMap.id by
      rw [← Units.val_inj]
      apply FaithfulSMul.eq_of_smul_eq_smul (α := V)
      intro x
      simp only [MulEquiv.trans_apply, LinearMap.ext_iff, LinearMap.smul_apply, LinearMap.id_coe,
        id_eq] at this
      rw [MulEquiv.trans_apply, this]
    simp only [MulEquiv.trans_apply]
    have hgg' := Subgroup.centerCongr_apply_coe (Matrix.SpecialLinearGroup.toLin_equiv b) g
    rw [← Subtype.coe_inj, ← LinearEquiv.toLinearMap_inj, LinearMap.ext_iff] at hgg'
    set g' := ((Subgroup.centerCongr (Matrix.SpecialLinearGroup.toLin_equiv b)) g)
    ext x
    have := centerEquivRootsOfUnity_apply_apply g' x
    simp only [Subgroup.smul_def, Units.smul_def] at this
    simp only [LinearMap.smul_apply, LinearMap.id_coe, id_eq]
    rw [this, ← LinearEquiv.coe_toLinearMap, hgg',
      Matrix.SpecialLinearGroup.toLin_equiv.toLinearMap_eq,
      Matrix.SpecialLinearGroup.eq_scalar_center_equiv_rootsOfUnity g,
      Matrix.toLin_scalar]
    simp

end

end center

end SpecialLinearGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed2db615a8505566275f8fa1f9a83e91e9cee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
