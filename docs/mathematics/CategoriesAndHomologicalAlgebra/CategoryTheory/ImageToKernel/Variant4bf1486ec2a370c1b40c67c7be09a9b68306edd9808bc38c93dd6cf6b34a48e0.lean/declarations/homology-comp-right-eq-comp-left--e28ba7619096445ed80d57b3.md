# homology.comp_right_eq_comp_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b76c141-ab24-5207-44d6-55164c014459",
  "kind": "theorem",
  "lexical_name": "homology.comp_right_eq_comp_left",
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
  "slug": "homology-comp-right-eq-comp-left--e28ba7619096445ed80d57b3",
  "source": {
    "blob": "f8107fb238bbb7de1f436388dd2bdeec886f6d73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 336,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e28ba7619096445ed80d57b38c6fb828083130a4fe08746072cffe9761e1976a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b76c141-ab24-5207-44d6-55164c014459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homology.comp_right_eq_comp_left {V : Type*} [Category V] {A₁ B₁ C₁ A₂ B₂ C₂ A₃ B₃ C₃ : V}
    {f₁ : A₁ ⟶ B₁} {g₁ : B₁ ⟶ C₁} {f₂ : A₂ ⟶ B₂} {g₂ : B₂ ⟶ C₂} {f₃ : A₃ ⟶ B₃} {g₃ : B₃ ⟶ C₃}
    {α₁ : Arrow.mk f₁ ⟶ Arrow.mk f₂} {β₁ : Arrow.mk g₁ ⟶ Arrow.mk g₂}
    {α₂ : Arrow.mk f₂ ⟶ Arrow.mk f₃} {β₂ : Arrow.mk g₂ ⟶ Arrow.mk g₃} (p₁ : α₁.right = β₁.left)
    (p₂ : α₂.right = β₂.left) : (α₁ ≫ α₂).right = (β₁ ≫ β₂).left := by
  simp only [Arrow.comp_left, Arrow.comp_right, p₁, p₂]
#align homology.comp_right_eq_comp_left homology.comp_right_eq_comp_left

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8107fb238bbb7de1f436388dd2bdeec886f6d73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
