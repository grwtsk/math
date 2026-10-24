# toSimplicialObjectHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59f19fec893ea351b87425f6e46f60520b2e34ce5b2d4426d7456d3e1687b226",
  "kind": "def",
  "lexical_name": "toSimplicialObjectHomotopy",
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
  "slug": "tosimplicialobjecthomotopy--bb92eada062c77c95c9fbb5e",
  "source": {
    "blob": "fe605c348f2f9fbc02b9c09432faa69c84ee7aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 78,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variant4fa7d2b0e935eb5f19b00b0479c28eaa72357ba22b3719f172964b56460de45f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb92eada062c77c95c9fbb5e7939c92006882987402b042455155933d79f3314",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Homotopy/Variant4fa7d2b0e935eb5f19b00b0479c28eaa72357ba22b3719f172964b56460de45f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59f19fec893ea351b87425f6e46f60520b2e34ce5b2d4426d7456d3e1687b226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toSimplicialObjectHomotopy (H : Homotopy f g) :
    SimplicialObject.Homotopy f g where
  h i := ↾fun x ↦
    (yonedaEquiv.symm x ▷ Δ[1] ≫ H.h).app _ (prodStdSimplex₁.nonDegenerateEquiv i).1
  h_zero_comp_δ_zero n := by
    ext x
    simp only [TypeCat.Fun.toFun_apply, types_comp_apply, TypeCat.hom_ofHom, TypeCat.Fun.coe_mk,
      ← SSet.δ_naturality_apply, ← H.h₁]
    dsimp
    apply congr_arg
    ext k : 2
    · simp [dsimp% SimplexCategory.δ_comp_σ_self (i := (0 : Fin (n + 1)))]
    · rw [stdSimplex.δ_objMk₁_of_lt _ _ (by tauto)]
      rfl
  h_last_comp_δ_last n := by
    ext x
    simp only [TypeCat.Fun.toFun_apply, types_comp_apply, TypeCat.hom_ofHom, TypeCat.Fun.coe_mk,
      ← SSet.δ_naturality_apply, ← H.h₀]
    dsimp
    apply congr_arg
    ext k
    · simp [dsimp% SimplexCategory.δ_comp_σ_succ (i := Fin.last n)]
    · simp [stdSimplex.δ_objMk₁_of_le, stdSimplex.objMk₁_apply_eq_zero_iff, ← Fin.castSucc_succ]
  h_succ_comp_δ_castSucc_of_lt {n} i j hij := by
    ext x
    simp only [TypeCat.Fun.toFun_apply, types_comp_apply, TypeCat.hom_ofHom, TypeCat.Fun.coe_mk,
      ← SSet.δ_naturality_apply]
    dsimp
    apply congr_arg
    ext k : 2
    · simpa [stdSimplex.δ_objEquiv_symm_apply,
        SSet.yonedaEquiv_symm_app_objEquiv_symm.{u}] using!
          ConcreteCategory.congr_hom (X.δ_comp_σ_of_le hij) x
    · rw [stdSimplex.δ_objMk₁_of_lt, Fin.pred_succ]
      rw [Fin.castSucc_lt_succ_iff, ← Fin.castSucc_succ]
      simp only [Fin.castSucc_le_castSucc_iff]
      exact hij.trans (j.castSucc_le_succ)
  h_succ_comp_δ_castSucc_succ {n} i := by
    ext x
    simp only [TypeCat.Fun.toFun_apply, types_comp_apply, TypeCat.hom_ofHom, TypeCat.Fun.coe_mk,
      ← SSet.δ_naturality_apply]
    dsimp
    apply congr_arg
    ext k : 2
    · rw [SimplexCategory.δ_comp_σ_succ, ← Fin.castSucc_succ, SimplexCategory.δ_comp_σ_self]
    · rw [stdSimplex.δ_objMk₁_of_lt _ _ (by simp), stdSimplex.δ_objMk₁_of_le _ _ (by simp)]
      rfl
  h_castSucc_comp_δ_succ_of_lt {n} i j hij := by
    ext x
    simp only [TypeCat.Fun.toFun_apply, types_comp_apply, TypeCat.hom_ofHom, TypeCat.Fun.coe_mk,
      ← SSet.δ_naturality_apply]
    dsimp
    apply congr_arg
    ext k : 2
    · simp [SimplexCategory.δ_comp_σ_of_gt hij, ← δ_def]
    · rw [stdSimplex.δ_objMk₁_of_le _ _ (by simpa using! Fin.le_of_lt hij)]
      rfl
  h_comp_σ_castSucc_of_le {n} i j hij := by
    ext x
    simp only [TypeCat.Fun.toFun_apply, types_comp_apply, TypeCat.hom_ofHom, TypeCat.Fun.coe_mk,
      ← SSet.σ_naturality_apply]
    dsimp
    apply congr_arg
    ext k : 2
    · simp [SimplexCategory.σ_comp_σ hij]
      rfl
    · rw [stdSimplex.σ_objMk₁_of_lt _ _ (by simpa)]
  h_comp_σ_succ_of_lt {n} i j hij := by
    ext x
    simp only [TypeCat.Fun.toFun_apply, types_comp_apply, TypeCat.hom_ofHom, TypeCat.Fun.coe_mk,
      ← SSet.σ_naturality_apply]
    dsimp
    apply congr_arg
    ext k : 2
    · simp [← SimplexCategory.σ_comp_σ hij]
      rfl
    · rw [stdSimplex.σ_objMk₁_of_le _ _ (by simpa)]
      rfl

end Homotopy

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Homotopy/Variant4fa7d2b0e935eb5f19b00b0479c28eaa72357ba22b3719f172964b56460de45f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variant4fa7d2b0e935eb5f19b00b0479c28eaa72357ba22b3719f172964b56460de45f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe605c348f2f9fbc02b9c09432faa69c84ee7aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
