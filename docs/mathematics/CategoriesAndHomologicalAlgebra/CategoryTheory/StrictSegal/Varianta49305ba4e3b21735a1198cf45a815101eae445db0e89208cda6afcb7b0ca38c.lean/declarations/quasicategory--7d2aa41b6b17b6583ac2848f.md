# quasicategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43da7a3c-e7bb-5947-44bf-14e70fbf9c76",
  "kind": "theorem",
  "lexical_name": "quasicategory",
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
  "slug": "quasicategory--7d2aa41b6b17b6583ac2848f",
  "source": {
    "blob": "7a7b66be667b0e978d234e29374ad9210d69d9db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Varianta49305ba4e3b21735a1198cf45a815101eae445db0e89208cda6afcb7b0ca38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d2aa41b6b17b6583ac2848fac30b0de96852203b8a18ef5a74e8b4b7510b06d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Varianta49305ba4e3b21735a1198cf45a815101eae445db0e89208cda6afcb7b0ca38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43da7a3c-e7bb-5947-44bf-14e70fbf9c76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasicategory {X : SSet.{u}} (sx : StrictSegal X) : Quasicategory X := by
  apply quasicategory_of_filler X
  intro n i σ₀ h₀ hₙ
  use sx.spineToSimplex <| Path.map (horn.spineId i h₀ hₙ) σ₀
  intro j hj
  apply sx.spineInjective
  ext k
  dsimp only [spineEquiv, spine_arrow, Function.comp_apply, Equiv.coe_fn_mk]
  rw [← types_comp_apply (σ₀.app _) (X.map _), ← σ₀.naturality]
  let ksucc := k.succ.castSucc
  obtain hlt | hgt | heq : ksucc < j ∨ j < ksucc ∨ j = ksucc := by lia
  · rw [← spine_arrow, spine_δ_arrow_lt sx _ hlt]
    dsimp only [Path.map_arrow, spine_arrow, Fin.coe_eq_castSucc]
    dsimp
    apply congr_arg
    apply Subtype.ext
    dsimp [horn.face, CosimplicialObject.δ]
    rw [dsimp% Subcomplex.yonedaEquiv_coe, Subfunctor.lift_ι, stdSimplex.map_apply,
      Quiver.Hom.unop_op, SSet.yonedaEquiv_map, Equiv.apply_symm_apply,
      mkOfSucc_δ_lt hlt]
    rfl
  · rw [← spine_arrow, spine_δ_arrow_gt sx _ hgt]
    dsimp
    apply congr_arg
    apply Subtype.ext
    dsimp [horn.face, CosimplicialObject.δ]
    rw [dsimp% Subcomplex.yonedaEquiv_coe, Subfunctor.lift_ι, stdSimplex.map_apply,
      Quiver.Hom.unop_op, SSet.yonedaEquiv_map, Equiv.apply_symm_apply,
      mkOfSucc_δ_gt hgt]
    rfl
  · obtain _ | n := n
    · /- The only inner horn of `Δ[2]` does not contain the diagonal edge. -/
      obtain rfl : k = 0 := by omega
      fin_cases i <;> contradiction
    · /- We construct the triangle in the standard simplex as a 2-simplex in
      the horn. While the triangle is not contained in the inner horn `Λ[2, 1]`,
      it suffices to inhabit `Λ[n + 3, i] _⦋2⦌`. -/
      let triangle : (Λ[n + 3, i] : SSet.{u}) _⦋2⦌ :=
        horn.primitiveTriangle i h₀ hₙ k (by grind)
      /- The interval spanning from `k` to `k + 2` is equivalently the spine
      of the triangle with vertices `k`, `k + 1`, and `k + 2`. -/
      have hi : ((horn.spineId i h₀ hₙ).map σ₀).interval k 2 (by grind) =
          X.spine 2 (σ₀.app _ triangle) := by
        ext m
        dsimp [spine_arrow, Path.map_interval, Path.map_arrow]
        rw [← dsimp% σ₀.naturality_apply]
        apply congr_arg
        apply Subtype.ext
        ext a : 1
        fin_cases a <;> fin_cases m <;> rfl
      rw [← spine_arrow, spine_δ_arrow_eq sx _ heq, hi]
      simp only [spineToDiagonal, diagonal, spineToSimplex_spine_apply]
      rw [← types_comp_apply (σ₀.app _) (X.map _), ← σ₀.naturality, types_comp_apply]
      dsimp
      apply congr_arg
      apply Subtype.ext
      ext z : 1
      dsimp [horn.face]
      rw [dsimp% Subcomplex.yonedaEquiv_coe, Subfunctor.lift_ι, stdSimplex.map_apply,
        Quiver.Hom.unop_op, stdSimplex.map_apply, Quiver.Hom.unop_op]
      dsimp [CosimplicialObject.δ]
      rw [SSet.yonedaEquiv_map]
      simp only [Equiv.apply_symm_apply, triangle]
      rw [mkOfSucc_δ_eq heq]
      fin_cases z <;> rfl

/-- Any simplicial set satisfying `IsStrictSegal` is a `Quasicategory`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Varianta49305ba4e3b21735a1198cf45a815101eae445db0e89208cda6afcb7b0ca38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Varianta49305ba4e3b21735a1198cf45a815101eae445db0e89208cda6afcb7b0ca38c.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a7b66be667b0e978d234e29374ad9210d69d9db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
