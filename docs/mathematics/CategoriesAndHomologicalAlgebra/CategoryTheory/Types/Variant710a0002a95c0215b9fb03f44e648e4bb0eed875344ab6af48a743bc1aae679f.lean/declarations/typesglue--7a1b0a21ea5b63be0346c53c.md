# typesGlue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:410e34bb38477a28c1e89a7bb2b967e195312fdf1aa480c8a772e27e3e43ecbe",
  "kind": "def",
  "lexical_name": "typesGlue",
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
  "slug": "typesglue--7a1b0a21ea5b63be0346c53c",
  "source": {
    "blob": "f4f2eb8bbec95bca55a7c157feace34232433f4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a1b0a21ea5b63be0346c53c26311589f6ad2d5d8de273d40a696b2c1a7f6d2a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:410e34bb38477a28c1e89a7bb2b967e195312fdf1aa480c8a772e27e3e43ecbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def typesGlue (S : Type uᵒᵖ ⥤ Type u) (hs : IsSheaf typesGrothendieckTopology S)
    (α : Type u) (f : α → S.obj (op PUnit)) : S.obj (op α) :=
  (hs.isSheafFor _ _ (generate_discretePresieve_mem α)).amalgamate
    (fun β g hg => S.map (↾fun _ => PUnit.unit).op <| f <| g <| Classical.choose hg)
    fun β γ δ g₁ g₂ f₁ f₂ hf₁ hf₂ h =>
    (hs.isSheafFor _ _ (generate_discretePresieve_mem δ)).isSeparatedFor.ext fun ε g ⟨x, _⟩ => by
      have : f₁ (Classical.choose hf₁) = f₂ (Classical.choose hf₂) :=
        Classical.choose_spec hf₁ (g₁ <| g x) ▸
          Classical.choose_spec hf₂ (g₂ <| g x) ▸ congr_fun h _
      simp_rw [← FunctorToTypes.map_comp_apply, this, ← op_comp]
      rfl
#align category_theory.types_glue CategoryTheory.typesGlue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4f2eb8bbec95bca55a7c157feace34232433f4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
