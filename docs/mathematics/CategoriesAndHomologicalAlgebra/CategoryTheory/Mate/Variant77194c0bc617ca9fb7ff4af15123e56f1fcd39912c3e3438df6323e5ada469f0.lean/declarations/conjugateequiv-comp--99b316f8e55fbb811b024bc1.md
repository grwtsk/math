# conjugateEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58dbc80b-ab4f-87f3-bff3-2af9dce1d9f0",
  "kind": "theorem",
  "lexical_name": "conjugateEquiv_comp",
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
  "slug": "conjugateequiv-comp--99b316f8e55fbb811b024bc1",
  "source": {
    "blob": "2f86f5a3beec8a3a1454b7b12f7b8fc5f3951bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 386,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99b316f8e55fbb811b024bc1d5e9ec30d349dd359e2437a78a559ba255f18544",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58dbc80b-ab4f-87f3-bff3-2af9dce1d9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjugateEquiv_comp (α : l₂ ⟶ l₁) (β : l₃ ⟶ l₂) :
    conjugateEquiv adj₁ adj₂ α ≫ conjugateEquiv adj₂ adj₃ β =
      conjugateEquiv adj₁ adj₃ (β ≫ α) := by
  simp only [conjugateEquiv_apply]
  calc
    _ = 𝟙 r₁ ⊗≫
          rightAdjointSquare.vcomp
            (mateEquiv adj₁ adj₂ ((λ_ _).hom ≫ α ≫ (ρ_ _).inv))
            (mateEquiv adj₂ adj₃ ((λ_ _).hom ≫ β ≫ (ρ_ _).inv)) ⊗≫ 𝟙 r₃ := by
      dsimp only [rightAdjointSquare.vcomp]
      bicategory
    _ = _ := by
      rw [← mateEquiv_vcomp]
      dsimp only [leftAdjointSquare.vcomp, mateEquiv_apply]
      bicategory

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f86f5a3beec8a3a1454b7b12f7b8fc5f3951bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
