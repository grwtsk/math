# semidirectProductToGroupExtensionEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b31456de992350551352a7dcfecffa481fe7c7ec402eda9151586ad58bab5344",
  "kind": "def",
  "lexical_name": "semidirectProductToGroupExtensionEquiv",
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
  "slug": "semidirectproducttogroupextensionequiv--98f5848990cd252e4581780d",
  "source": {
    "blob": "18dbabf2c6ecba605276642f02ddde9c2ccffba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 159,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98f5848990cd252e4581780d632209d1165fe0397cae9145bfb8acdd75972f4d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b31456de992350551352a7dcfecffa481fe7c7ec402eda9151586ad58bab5344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def semidirectProductToGroupExtensionEquiv :
    (SemidirectProduct.toGroupExtension s.conjAct).Equiv S where
  toFun := fun ⟨n, g⟩ ↦ S.inl n * s g
  invFun := fun e ↦ ⟨Function.invFun S.inl (e * (s (S.rightHom e))⁻¹), S.rightHom e⟩
  left_inv := fun ⟨n, g⟩ ↦ by
    simp only [map_mul, rightHom_inl, rightHom_splitting, one_mul, mul_inv_cancel_right,
      Function.leftInverse_invFun S.inl_injective n]
  right_inv := fun e ↦ by
    simp only [← eq_mul_inv_iff_mul_eq]
    apply Function.invFun_eq
    rw [← MonoidHom.mem_range, S.range_inl_eq_ker_rightHom, MonoidHom.mem_ker, map_mul, map_inv,
      rightHom_splitting, mul_inv_cancel]
  map_mul' := fun ⟨n₁, g₁⟩ ⟨n₂, g₂⟩ ↦ by
    simp only [conjAct, MonoidHom.comp_apply, map_mul, inl_conjAct_comm, MonoidHom.coe_coe]
    group
  inl_comm := by
    ext n
    simp only [SemidirectProduct.toGroupExtension, Function.comp_apply, MulEquiv.coe_mk,
      Equiv.coe_fn_mk, SemidirectProduct.left_inl, SemidirectProduct.right_inl, map_one, mul_one]
  rightHom_comm := by
    ext ⟨n, g⟩
    simp only [SemidirectProduct.toGroupExtension, Function.comp_apply, MulEquiv.coe_mk,
      Equiv.coe_fn_mk, map_mul, rightHom_inl, one_mul, rightHom_splitting,
      SemidirectProduct.rightHom_eq_right]

/-- The group associated to a split extension is isomorphic to a semidirect product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18dbabf2c6ecba605276642f02ddde9c2ccffba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
