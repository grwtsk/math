# isLeftAdjoint_pushforward_of_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:819443181e7951d5297e8b9ccea6971d09491705302dbb4ec16ed6f8ccf95037",
  "kind": "instance",
  "lexical_name": "isLeftAdjoint_pushforward_of_isIso",
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
  "slug": "isleftadjoint-pushforward-of-isiso--6a68205496a1be4babac1add",
  "source": {
    "blob": "da5ea3495c1c6589b3f1960ad5c652e3cb52c62e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 307,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a68205496a1be4babac1addfddfb38eb1d0145ec109c1f3e01b80af5830728b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:819443181e7951d5297e8b9ccea6971d09491705302dbb4ec16ed6f8ccf95037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isLeftAdjoint_pushforward_of_isIso [F.IsCocontinuous J K] [IsIso φ] [F.IsLeftAdjoint] :
    (pushforward.{u} φ).IsLeftAdjoint := by
  let adj := Adjunction.ofIsLeftAdjoint F
  let shAdj := adj.sheafPushforwardContinuous (E := RingCat.{u}) J K
  let ψ : R ⟶ (F.rightAdjoint.sheafPushforwardContinuous RingCat.{u} K J).obj S :=
    shAdj.unit.app R ≫ (F.rightAdjoint.sheafPushforwardContinuous _ _ _).map (inv φ)
  refine (SheafOfModules.pushforwardPushforwardAdj adj φ ψ ?_ ?_).isLeftAdjoint
  · ext U : 2
    simp [ψ, shAdj]
  · ext U : 2
    have := (inv φ).hom.naturality
    dsimp at this
    simp only [ObjectProperty.hom_inv, NatIso.isIso_inv_app, sheafPushforwardContinuous_obj_obj_obj,
      IsIso.eq_inv_comp] at this
    simp [ψ, shAdj, ← this, ← Functor.map_comp_assoc, ← op_comp]

noncomputable section

open CategoryTheory Limits

variable {C : Type u'} [Category.{v'} C] [HasBinaryProducts C] {J : GrothendieckTopology C}
  {R : Sheaf J RingCat.{u}}

set_option backward.defeqAttrib.useBackward true in
/-- The canonical morphism from `R` to the pushforward of its restriction to `Over x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5ea3495c1c6589b3f1960ad5c652e3cb52c62e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
