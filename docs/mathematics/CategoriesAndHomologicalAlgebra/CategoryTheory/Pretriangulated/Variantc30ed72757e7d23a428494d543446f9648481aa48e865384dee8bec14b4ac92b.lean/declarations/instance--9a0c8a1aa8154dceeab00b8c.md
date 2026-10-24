# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:421e98feb1dec4d41902a17f7fc93b44d9ce9e9c7d8d2949e4fc592bfa1f2124",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9a0c8a1aa8154dceeab00b8c",
  "source": {
    "blob": "2761fb222aa79c26ed3573e707f04ca2e0e97b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 565,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a0c8a1aa8154dceeab00b8c3e11236e223be66a16f249d30ebcec1a806251e8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:421e98feb1dec4d41902a17f7fc93b44d9ce9e9c7d8d2949e4fc592bfa1f2124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasBinaryBiproducts C := ⟨fun X₁ X₃ => by
  obtain ⟨X₂, inl, snd, mem⟩ := distinguished_cocone_triangle₂ (0 : X₃ ⟶ X₁⟦(1 : ℤ)⟧)
  obtain ⟨inr : X₃ ⟶ X₂, inr_snd : 𝟙 _ = inr ≫ snd⟩ :=
    Triangle.coyoneda_exact₃ _ mem (𝟙 X₃) (by simp)
  obtain ⟨fst : X₂ ⟶ X₁, hfst : 𝟙 X₂ - snd ≫ inr = fst ≫ inl⟩ :=
    Triangle.coyoneda_exact₂ _ mem (𝟙 X₂ - snd ≫ inr) (by
      dsimp
      simp only [sub_comp, assoc, id_comp, ← inr_snd, comp_id, sub_self])
  refine ⟨⟨binaryBiproductData _ mem rfl inr inr_snd.symm fst ?_⟩⟩
  dsimp
  simp only [← hfst, sub_add_cancel]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2761fb222aa79c26ed3573e707f04ca2e0e97b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
