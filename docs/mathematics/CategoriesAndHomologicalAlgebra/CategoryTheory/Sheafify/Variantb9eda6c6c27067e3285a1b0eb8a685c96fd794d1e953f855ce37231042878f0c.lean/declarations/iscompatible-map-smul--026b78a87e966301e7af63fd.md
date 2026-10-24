# isCompatible_map_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc4c55b9-6fa4-5b19-ee01-2b43b0a83f90",
  "kind": "lemma",
  "lexical_name": "isCompatible_map_smul",
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
  "slug": "iscompatible-map-smul--026b78a87e966301e7af63fd",
  "source": {
    "blob": "10045c7187f1a7c70ec23b0b08a494137feccd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:026b78a87e966301e7af63fd3add3992317e38d3e47b547e287da5dc05a20349",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc4c55b9-6fa4-5b19-ee01-2b43b0a83f90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompatible_map_smul : ((r₀.smul m₀).map (whiskerRight φ (forget _))).Compatible := by
  intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ h₁ h₂ fac
  let a₁ := r₀ f₁ h₁
  let b₁ := m₀ f₁ h₁
  let a₂ := r₀ f₂ h₂
  let b₂ := m₀ f₂ h₂
  let a₀ := R₀.map g₁.op a₁
  let b₀ := M₀.map g₁.op b₁
  have ha₁ : (α.app (Opposite.op Y₁)) a₁ = (R.map f₁.op) r := (hr₀ f₁ h₁).symm
  have ha₂ : (α.app (Opposite.op Y₂)) a₂ = (R.map f₂.op) r := (hr₀ f₂ h₂).symm
  have hb₁ : (φ.app (Opposite.op Y₁)) b₁ = (A.map f₁.op) m := (hm₀ f₁ h₁).symm
  have hb₂ : (φ.app (Opposite.op Y₂)) b₂ = (A.map f₂.op) m := (hm₀ f₂ h₂).symm
  have ha₀ : (α.app (Opposite.op Z)) a₀ = (R.map (f₁.op ≫ g₁.op)) r := by
    dsimp [a₀]
    rw [← RingCat.comp_apply, NatTrans.naturality, RingCat.comp_apply, ha₁, Functor.map_comp,
      RingCat.comp_apply]
  have hb₀ : (φ.app (Opposite.op Z)) b₀ = (A.map (f₁.op ≫ g₁.op)) m := by
    dsimp [b₀]
    erw [NatTrans.naturality_apply φ, hb₁, Functor.map_comp, ConcreteCategory.comp_apply]
  have ha₀' : (α.app (Opposite.op Z)) a₀ = (R.map (f₂.op ≫ g₂.op)) r := by
    rw [ha₀, ← op_comp, fac, op_comp]
  have hb₀' : (φ.app (Opposite.op Z)) b₀ = (A.map (f₂.op ≫ g₂.op)) m := by
    rw [hb₀, ← op_comp, fac, op_comp]
  dsimp
  erw [← NatTrans.naturality_apply φ, ← NatTrans.naturality_apply φ]
  exact (isCompatible_map_smul_aux α φ hA r m f₁ g₁ a₁ a₀ b₁ b₀ ha₁ ha₀ hb₁ hb₀).trans
    (isCompatible_map_smul_aux α φ hA r m f₂ g₂ a₂ a₀ b₂ b₀ ha₂ ha₀' hb₂ hb₀').symm

end

end Presieve.FamilyOfElements

end CategoryTheory

variable {R₀ : Cᵒᵖ ⥤ RingCat.{u}} {R : Sheaf J RingCat.{u}} (α : R₀ ⟶ R.val)
  [Presheaf.IsLocallyInjective J α] [Presheaf.IsLocallySurjective J α]

namespace PresheafOfModules

variable {M₀ : PresheafOfModules.{v} R₀} {A : Sheaf J AddCommGrp.{v}}
  (φ : M₀.presheaf ⟶ A.val)
  [Presheaf.IsLocallyInjective J φ] [Presheaf.IsLocallySurjective J φ]

namespace Sheafify

variable {X Y : Cᵒᵖ} (π : X ⟶ Y) (r r' : R.val.obj X) (m m' : A.val.obj X)

/-- Assuming `α : R₀ ⟶ R.val` is the sheafification map of a presheaf of rings `R₀`
and `φ : M₀.presheaf ⟶ A.val` is the sheafification map of the underlying
sheaf of abelian groups of a presheaf of modules `M₀` over `R₀`, then given
`r : R.val.obj X` and `m : A.val.obj X`, this structure contains the data
of `x : A.val.obj X` along with the property which makes `x` a good candidate
for the definition of the scalar multiplication `r • m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10045c7187f1a7c70ec23b0b08a494137feccd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
