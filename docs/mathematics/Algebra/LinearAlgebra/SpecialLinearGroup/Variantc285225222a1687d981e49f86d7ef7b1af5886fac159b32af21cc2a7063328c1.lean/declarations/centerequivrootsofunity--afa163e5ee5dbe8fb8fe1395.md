# centerEquivRootsOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a88ed19b20f2a41df1b8fda17908701b53a9f60eee4f6a14ccec3987f256d83",
  "kind": "def",
  "lexical_name": "centerEquivRootsOfUnity",
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
  "slug": "centerequivrootsofunity--afa163e5ee5dbe8fb8fe1395",
  "source": {
    "blob": "ccf30ad4eb34d16ce665df7db510553430114fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 432,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afa163e5ee5dbe8fb8fe1395fed3fbc7ca9e31721e70511ec32c0cb1f82e6051",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a88ed19b20f2a41df1b8fda17908701b53a9f60eee4f6a14ccec3987f256d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def centerEquivRootsOfUnity :
    (Subgroup.center (SpecialLinearGroup R V)) ≃*
      ↥(rootsOfUnity (max (Module.finrank R V) 1) R) where
  toFun g := (subsingleton_or_nontrivial R).by_cases
    (fun _ ↦ 1)
    (fun hR ↦ (subsingleton_or_nontrivial V).by_cases
      (fun _ ↦ 1)
      (fun hV ↦ by
        rw [← Module.finrank_pos_iff_of_free (R := R)] at hV
        replace hV : 1 ≤ Module.finrank R V := hV
        have hr := (mem_center_iff.mp g.prop).choose_spec.1
        set r := (mem_center_iff.mp g.prop).choose
        rw [← Nat.max_eq_left hV] at hr
        have : IsUnit r := by
          rw [← isUnit_pow_iff _, hr]
          · exact isUnit_one
          rw [Nat.max_eq_left hV]
          exact Nat.ne_zero_of_lt hV
        exact ⟨this.unit, by simp [mem_rootsOfUnity, ← Units.val_inj, hr]⟩))
  invFun := centerEquivRootsOfUnity_invFun
  left_inv g := by
    simp only [centerEquivRootsOfUnity_invFun, ← Subtype.val_inj,
      ← LinearEquiv.toLinearMap_inj, LinearMap.coe_equivOfIsUnitDet]
    simp only [Or.by_cases]
    split_ifs with hR hV
    · simp [Subsingleton.eq_one g]
    · simp [Subsingleton.eq_one g]
    · simp only [IsUnit.unit_spec, ← (mem_center_iff.mp g.prop).choose_spec.2]
  right_inv r := by
    rw [← Subtype.val_inj, SetLike.coe_eq_coe]
    simp only [Or.by_cases]
    split_ifs with hR hV
    · simp [Subsingleton.eq_one r]
    · replace hR := not_subsingleton_iff_nontrivial.mp hR
      symm
      rw [← Module.finrank_eq_zero_iff_of_free (R := R)] at hV
      simpa [hV] using (mem_rootsOfUnity _ _).mp r.prop
    · rw [not_subsingleton_iff_nontrivial] at hV
      have := Module.Free.instFaithfulSMulOfNontrivial R V
      simp only [← Subtype.val_inj, ← Units.val_inj, IsUnit.unit_spec]
      have H := mem_center_iff.mp (Subtype.prop (centerEquivRootsOfUnity_invFun r))
      suffices (H.choose • LinearMap.id : V →ₗ[R] V) = (r.val : R) • LinearMap.id by
        apply FaithfulSMul.eq_of_smul_eq_smul (α := V)
        intro x
        rw [LinearMap.ext_iff] at this
        simp only [LinearMap.smul_apply, LinearMap.id_coe, id_eq] at this
        rw [this x]
      rw [← H.choose_spec.2]
      simp [centerEquivRootsOfUnity_invFun]
  map_mul' g h := by
    simp only [Or.by_cases, Subgroup.coe_mul, coe_mul, LinearEquiv.coe_toLinearMap_mul,
      mul_dite, mul_one, dite_mul, one_mul, MulMemClass.mk_mul_mk]
    split_ifs with hR hV
    · rfl
    · rfl
    rw [not_subsingleton_iff_nontrivial] at hV
    have := Module.Free.instFaithfulSMulOfNontrivial R V
    set Hg := (mem_center_iff.mp g.prop)
    set Hh := (mem_center_iff.mp h.prop)
    set Hgh := (mem_center_iff.mp (g * h).prop)
    simp only [← Subtype.val_inj, ← Units.val_inj, IsUnit.unit_spec, Units.val_mul]
    change Hgh.choose = Hg.choose * Hh.choose
    suffices (Hgh.choose • LinearMap.id : V →ₗ[R] V)
      = (Hg.choose • LinearMap.id) * (Hh.choose • LinearMap.id) by
      apply FaithfulSMul.eq_of_smul_eq_smul (α := V)
      intro x
      simp [mul_smul,
        ← mem_center_iff_spec (g * h).prop, ← mem_center_iff_spec h.prop,
        ← mem_center_iff_spec g.prop]
    simp [← Hgh.choose_spec.2, ← Hh.choose_spec.2, ← Hg.choose_spec.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf30ad4eb34d16ce665df7db510553430114fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
