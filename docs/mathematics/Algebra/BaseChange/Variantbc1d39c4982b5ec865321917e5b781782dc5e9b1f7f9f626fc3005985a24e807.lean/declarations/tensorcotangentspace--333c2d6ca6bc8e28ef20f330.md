# tensorCotangentSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:304f784d77ba47d10da6a2be3ef4330c721b2c4095d997d75fd4a336e36aefae",
  "kind": "def",
  "lexical_name": "tensorCotangentSpace",
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
  "slug": "tensorcotangentspace--333c2d6ca6bc8e28ef20f330",
  "source": {
    "blob": "d926efa904cb03156f0b95a8bc966035081007e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 48,
    "path": "GRWTSK/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:333c2d6ca6bc8e28ef20f330243a68d9ec9cf848e5f71b5d02f7aab3c04bd3ce",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:304f784d77ba47d10da6a2be3ef4330c721b2c4095d997d75fd4a336e36aefae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorCotangentSpace (P : Extension.{u} R S) (T : Type*) [CommRing T] [Algebra R T] :
    T ⊗[R] P.CotangentSpace ≃ₗ[T] (P.baseChange (T := T)).CotangentSpace :=
  letI := P.algebraBaseChange T
  letI : Algebra S (T ⊗[R] S) := TensorProduct.rightAlgebra
  letI : Algebra P.Ring (T ⊗[R] S) := Algebra.compHom _ (algebraMap P.Ring S)
  haveI : IsScalarTower R P.Ring (T ⊗[R] S) :=
    .of_algebraMap_eq fun x ↦ by
      rw [TensorProduct.algebraMap_apply, RingHom.algebraMap_toAlgebra,
        Algebra.TensorProduct.tmul_one_eq_one_tmul, IsScalarTower.algebraMap_apply R P.Ring]
      rfl
  letI PT : Extension T (T ⊗[R] S) := P.baseChange
  haveI : IsPushout R T P.Ring PT.Ring := by
    convert! TensorProduct.isPushout (R := R) (T := P.Ring) (S := T)
    exact Algebra.algebra_ext _ _ fun _ ↦ rfl
  haveI : IsScalarTower P.Ring PT.Ring (T ⊗[R] S) := .of_algebraMap_eq' rfl
  (IsTensorProduct.assocOfMapSMul (TensorProduct.mk R T S) (isTensorProduct _ _ _)
    (TensorProduct.mk _ _ _) (isTensorProduct _ _ _) (by simp [Algebra.smul_def])
    (by simp [Algebra.smul_def, RingHom.algebraMap_toAlgebra])).symm ≪≫ₗ
  (AlgebraTensorModule.cancelBaseChange _ PT.Ring PT.Ring _ _).symm.restrictScalars T ≪≫ₗ
  (AlgebraTensorModule.congr (LinearEquiv.refl PT.Ring (T ⊗[R] S))
    (KaehlerDifferential.tensorKaehlerEquiv R T P.Ring PT.Ring)).restrictScalars T

set_option backward.isDefEq.respectTransparency.types false in
attribute [local instance] algebraBaseChange in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d926efa904cb03156f0b95a8bc966035081007e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
