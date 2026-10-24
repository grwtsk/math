# homEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4754657cf67132e1927e86ffacc394ca198f36ed3d53b6e55f826524b0d71c26",
  "kind": "def",
  "lexical_name": "homEquiv",
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
  "slug": "homequiv--4cf652b3c2499f592bbf0a85",
  "source": {
    "blob": "2db92f77ea09edd6e4438541676df69d32b5882c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 377,
    "path": "GRWTSK/Algebra/GroupTheory/Rep/Variantb2c38cd35a1f31795f15d81d88165beaf3eb1edc01a5ef32f719481827e4c068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cf652b3c2499f592bbf0a85fae4baae4ddcb62b684d0a19fc4be830ccf2d1ec",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Rep/Variantb2c38cd35a1f31795f15d81d88165beaf3eb1edc01a5ef32f719481827e4c068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4754657cf67132e1927e86ffacc394ca198f36ed3d53b6e55f826524b0d71c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homEquiv (A B C : Rep k G) : (A ⊗ B ⟶ C) ≃ (B ⟶ (Rep.ihom A).obj C) where
  toFun f :=
    { hom := (TensorProduct.curry f.hom).flip
      comm := fun g => by
        refine' LinearMap.ext fun x => LinearMap.ext fun y => _
        change f.hom (_ ⊗ₜ[k] _) = C.ρ g (f.hom (_ ⊗ₜ[k] _))
        rw [←hom_comm_apply]
        change _ = f.hom ((A.ρ g * A.ρ g⁻¹) y ⊗ₜ[k] _)
        simp only [←map_mul, mul_inv_self, map_one]
        rfl }
  invFun f :=
    { hom := TensorProduct.uncurry k _ _ _ f.hom.flip
      comm := fun g => TensorProduct.ext' fun x y => by
/- Porting note: rest of broken proof was
        dsimp only [MonoidalCategory.tensorLeft_obj, ModuleCat.comp_def, LinearMap.comp_apply,
          tensor_rho, ModuleCat.MonoidalCategory.hom_apply, TensorProduct.map_tmul]
        simp only [TensorProduct.uncurry_apply f.hom.flip, LinearMap.flip_apply, Action_ρ_eq_ρ,
          hom_comm_apply f g y, Rep.ihom_obj_ρ_apply, LinearMap.comp_apply, ρ_inv_self_apply] -/
        change TensorProduct.uncurry k _ _ _ f.hom.flip (A.ρ g x ⊗ₜ[k] B.ρ g y) =
          C.ρ g (TensorProduct.uncurry k _ _ _ f.hom.flip (x ⊗ₜ[k] y))
        rw [TensorProduct.uncurry_apply, LinearMap.flip_apply, hom_comm_apply, Rep.ihom_obj_ρ_apply,
          LinearMap.comp_apply, LinearMap.comp_apply, ρ_inv_self_apply]
        rfl}
  left_inv f := Action.Hom.ext _ _ (TensorProduct.ext' fun _ _ => rfl)
  right_inv f := by ext; rfl
set_option linter.uppercaseLean3 false in
#align Rep.hom_equiv Rep.homEquiv

variable {A B C}

/-- Porting note: if we generate this with `@[simps]` the linter complains some types in the LHS
simplify. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Rep/Variantb2c38cd35a1f31795f15d81d88165beaf3eb1edc01a5ef32f719481827e4c068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Rep/Variantb2c38cd35a1f31795f15d81d88165beaf3eb1edc01a5ef32f719481827e4c068.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2db92f77ea09edd6e4438541676df69d32b5882c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
