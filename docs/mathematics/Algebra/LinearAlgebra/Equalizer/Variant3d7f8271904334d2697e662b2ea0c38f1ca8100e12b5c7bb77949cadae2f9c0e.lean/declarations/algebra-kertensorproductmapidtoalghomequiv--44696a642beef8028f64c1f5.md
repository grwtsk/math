# Algebra.kerTensorProductMapIdToAlgHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2893a1490a09347607f29bfe61f55dc110a337b89a4a5c03aecb5f8d2881e4c9",
  "kind": "def",
  "lexical_name": "Algebra.kerTensorProductMapIdToAlgHomEquiv",
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
  "slug": "algebra-kertensorproductmapidtoalghomequiv--44696a642beef8028f64c1f5",
  "source": {
    "blob": "10ee1cdddfba10606249558bc7e1b9babe3f0bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 309,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44696a642beef8028f64c1f56e857239e78d224543674717a7bff65dbf4b6166",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2893a1490a09347607f29bfe61f55dc110a337b89a4a5c03aecb5f8d2881e4c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Algebra.kerTensorProductMapIdToAlgHomEquiv
    [Module.Flat R T] (h₁ : Function.Surjective (algebraMap S T)) :
    RingHom.ker (Algebra.TensorProduct.map (.id A A) (IsScalarTower.toAlgHom R S T)) ≃ₗ[A ⊗[R] S]
      (A ⊗[R] S) ⊗[S] (RingHom.ker (algebraMap S T)) := by
  let φ : A ⊗[R] S →ₐ[A] A ⊗[R] T :=
    Algebra.TensorProduct.map (.id _ _) (IsScalarTower.toAlgHom _ _ _)
  let ePp : A ⊗[R] S ≃ₐ[S] S ⊗[R] A :=
    { __ := Algebra.TensorProduct.comm _ _ _, commutes' _ := rfl }
  let e₃ : (RingHom.ker φ) ≃ₗ[R] A ⊗[R] (RingHom.ker (algebraMap S T)) :=
    (LinearMap.kerLTensorEquivOfSurjective (IsScalarTower.toAlgHom R S T).toLinearMap
      h₁ A).restrictScalars R
  let e₄' : (RingHom.ker φ) ≃ₗ[R] (A ⊗[R] S) ⊗[S] (RingHom.ker (algebraMap S T)) :=
    e₃ ≪≫ₗ _root_.TensorProduct.comm _ _ _ ≪≫ₗ
      (AlgebraTensorModule.cancelBaseChange _ _ S _ _).symm.restrictScalars R ≪≫ₗ
      (AlgebraTensorModule.congr (.refl S _) ePp.symm.toLinearEquiv).restrictScalars R ≪≫ₗ
      (_root_.TensorProduct.comm _ _ _).restrictScalars R
  let e₄ : (A ⊗[R] S) ⊗[S] (RingHom.ker (algebraMap S T)) ≃ₗ[A ⊗[R] S] (RingHom.ker φ) :=
    { __ := e₄'.symm, map_smul' r' x := by
        dsimp
        induction x with
        | add x y _ _ => simp only [smul_add, LinearEquiv.map_add, *]
        | tmul x y =>
        induction x with
        | add x y _ _ => simp only [smul_add, add_tmul, LinearEquiv.map_add, *]
        | tmul x z =>
        induction r' with
        | add x y _ _ => simp only [add_smul, LinearEquiv.map_add, *]
        | tmul r s =>
        rw [smul_tmul']
        ext1
        dsimp [e₄', ePp, φ]
        change ((r * x) ⊗ₜ[R] ((s * z) * y.1)) = (r ⊗ₜ[R] s) * (x ⊗ₜ[R] (z * y.1))
        rw [Algebra.TensorProduct.tmul_mul_tmul, mul_assoc] }
  exact e₄.symm

attribute [local instance] Algebra.TensorProduct.rightAlgebra in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ee1cdddfba10606249558bc7e1b9babe3f0bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
