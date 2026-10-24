# monoidalClosedHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcfe0fc52e9c03604e9ef23dd08bd706af9513d0c1dc5d21375b473ce605b842",
  "kind": "def",
  "lexical_name": "monoidalClosedHomEquiv",
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
  "slug": "monoidalclosedhomequiv--1471c7cea9016802e32c5742",
  "source": {
    "blob": "ddcce4f281924e087eefb98ab89d0d7b6e680278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 27,
    "path": "GRWTSK/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1471c7cea9016802e32c574207b1a0337c17e7ca674d06a617755a1e47214a1d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcfe0fc52e9c03604e9ef23dd08bd706af9513d0c1dc5d21375b473ce605b842`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidalClosedHomEquiv (M N P : ModuleCat.{u} R) :
    ((MonoidalCategory.tensorLeft M).obj N ⟶ P) ≃
      (N ⟶ ((linearCoyoneda R (ModuleCat R)).obj (op M)).obj P) where
  toFun f := ofHom₂ <| LinearMap.compr₂ (TensorProduct.mk R N M) ((β_ N M).hom ≫ f).hom
  invFun f := (β_ M N).hom ≫ ofHom (TensorProduct.lift f.hom₂)
  left_inv f := by
    ext : 1
    apply TensorProduct.ext'
    intro m n
    simp only [Hom.hom₂_ofHom₂, LinearMap.comp_apply, hom_comp, MonoidalCategory.tensorLeft_obj]
    erw [MonoidalCategory.braiding_hom_apply m n, TensorProduct.lift.tmul]
  right_inv _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcce4f281924e087eefb98ab89d0d7b6e680278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
