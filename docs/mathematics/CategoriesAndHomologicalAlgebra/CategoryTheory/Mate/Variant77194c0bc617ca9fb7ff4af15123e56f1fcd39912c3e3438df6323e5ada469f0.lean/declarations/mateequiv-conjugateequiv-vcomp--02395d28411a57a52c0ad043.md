# mateEquiv_conjugateEquiv_vcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e2ef27-f7f0-fca2-061a-9c6fe0f8e120",
  "kind": "theorem",
  "lexical_name": "mateEquiv_conjugateEquiv_vcomp",
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
  "slug": "mateequiv-conjugateequiv-vcomp--02395d28411a57a52c0ad043",
  "source": {
    "blob": "2f86f5a3beec8a3a1454b7b12f7b8fc5f3951bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 534,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02395d28411a57a52c0ad0436477322ec3796e84d67f246a7c97f65ac380148e",
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

Occurrence: `result:43e2ef27-f7f0-fca2-061a-9c6fe0f8e120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mateEquiv_conjugateEquiv_vcomp
    (α : g ≫ l₂ ⟶ l₁ ≫ h) (β : l₃ ⟶ l₂) :
    (mateEquiv adj₁ adj₃) (leftAdjointSquareConjugate.vcomp α β) =
      rightAdjointSquareConjugate.vcomp (mateEquiv adj₁ adj₂ α) (conjugateEquiv adj₂ adj₃ β) := by
  symm
  calc
    _ = 𝟙 _ ⊗≫
          rightAdjointSquare.vcomp
            (mateEquiv adj₁ adj₂ α)
            (mateEquiv adj₂ adj₃ ((λ_ l₃).hom ≫ β ≫ (ρ_ l₂).inv)) ⊗≫ 𝟙 _  := by
      dsimp only [conjugateEquiv_apply, rightAdjointSquareConjugate.vcomp,
        rightAdjointSquare.vcomp]
      bicategory
    _ = _ := by
      rw [← mateEquiv_vcomp]
      dsimp only [leftAdjointSquare.vcomp, mateEquiv_apply, leftAdjointSquareConjugate.vcomp]
      bicategory

end mateEquiv_conjugateEquiv_vcomp

section conjugateEquiv_mateEquiv_vcomp

variable {a b c d : B}
variable {g : a ⟶ c} {h : b ⟶ d}
variable {l₁ : a ⟶ b} {r₁ : b ⟶ a} {l₂ : a ⟶ b} {r₂ : b ⟶ a} {l₃ : c ⟶ d} {r₃ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : l₃ ⊣ r₃)

/-- Composition of a conjugate square with a squares between left adjoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f86f5a3beec8a3a1454b7b12f7b8fc5f3951bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
