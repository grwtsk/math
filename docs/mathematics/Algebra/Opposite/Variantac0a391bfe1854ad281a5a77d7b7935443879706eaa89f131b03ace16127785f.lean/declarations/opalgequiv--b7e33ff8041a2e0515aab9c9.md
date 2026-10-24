# opAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b24e15afdb4f02a7d933e8de1355d61833afd42d4267f8e4fedc5c72640e7e7",
  "kind": "def",
  "lexical_name": "opAlgEquiv",
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
  "slug": "opalgequiv--b7e33ff8041a2e0515aab9c9",
  "source": {
    "blob": "f3a1ced355dc90c018a047412def773194e5c11b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 31,
    "path": "GRWTSK/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7e33ff8041a2e0515aab9c9bb593a5a1ef7dad485783cd4c6016efd359158ae",
  "verification": {
    "reference": "docs/verification/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b24e15afdb4f02a7d933e8de1355d61833afd42d4267f8e4fedc5c72640e7e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opAlgEquiv : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ ≃ₐ[S] (A ⊗[R] B)ᵐᵒᵖ :=
  letI e₁ : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ ≃ₗ[S] (A ⊗[R] B)ᵐᵒᵖ :=
    TensorProduct.AlgebraTensorModule.congr
      (opLinearEquiv S).symm (opLinearEquiv R).symm ≪≫ₗ opLinearEquiv S
  letI e₂ : A ⊗[R] B ≃ₗ[S] (Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ)ᵐᵒᵖ :=
    TensorProduct.AlgebraTensorModule.congr (opLinearEquiv S) (opLinearEquiv R) ≪≫ₗ opLinearEquiv S
  AlgEquiv.ofAlgHom
    (algHomOfLinearMapTensorProduct e₁.toLinearMap
      (fun a₁ a₂ b₁ b₂ => unop_injective (by with_unfolding_all rfl)) (unop_injective rfl))
    (AlgHom.opComm <| algHomOfLinearMapTensorProduct e₂.toLinearMap
      (fun a₁ a₂ b₁ b₂ => unop_injective (by with_unfolding_all rfl)) (unop_injective rfl))
    (AlgHom.op.symm.injective <| by ext <;> rfl) (by ext <;> rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a1ced355dc90c018a047412def773194e5c11b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
