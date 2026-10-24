# HoRel₂.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47352e33-b38e-bb3d-3d0d-2806ee767215",
  "kind": "theorem",
  "lexical_name": "HoRel₂.mk'",
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
  "slug": "horel-mk--b1ae87acca396c6a9d2fa8c5",
  "source": {
    "blob": "5735b26e11096397d31d1caffd34f764a611a43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 279,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1ae87acca396c6a9d2fa8c5c82f71c74ff7d117f477b7d6d95aa2e8b7497eba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47352e33-b38e-bb3d-3d0d-2806ee767215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HoRel₂.mk' {V : SSet.Truncated 2} (φ : V _⦋2⦌₂) {X₀ X₁ X₂ : OneTruncation₂ V}
    (f₀₁ : X₀ ⟶ X₁) (f₁₂ : X₁ ⟶ X₂) (f₀₂ : X₀ ⟶ X₂)
    (h₀₁ : f₀₁.edge = V.map (δ₂ 2).op φ) (h₁₂ : f₁₂.edge = V.map (δ₂ 0).op φ)
    (h₀₂ : f₀₂.edge = V.map (δ₂ 1).op φ) :
    HoRel₂ _ _ (Quot.mk _ (Quiver.Hom.toPath f₀₂))
      (Quot.mk _ ((Quiver.Hom.toPath f₀₁).comp (Quiver.Hom.toPath f₁₂))) := by
  obtain rfl : X₀ = ev0₂ φ := by
    rw [← f₀₂.src_eq, h₀₂, ← FunctorToTypes.map_comp_apply, ← op_comp]
    rfl
  obtain rfl : X₁ = ev1₂ φ := by
    rw [← f₀₁.tgt_eq, h₀₁, ← FunctorToTypes.map_comp_apply, ← op_comp]
    rfl
  obtain rfl : X₂ = ev2₂ φ := by
    rw [← f₁₂.tgt_eq, h₁₂, ← FunctorToTypes.map_comp_apply, ← op_comp]
    rfl
  obtain rfl : f₀₁ = ev01₂ φ := by ext; assumption
  obtain rfl : f₁₂ = ev12₂ φ := by ext; assumption
  obtain rfl : f₀₂ = ev02₂ φ := by ext; assumption
  constructor

/-- The type underlying the homotopy category of a 2-truncated simplicial set `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5735b26e11096397d31d1caffd34f764a611a43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
