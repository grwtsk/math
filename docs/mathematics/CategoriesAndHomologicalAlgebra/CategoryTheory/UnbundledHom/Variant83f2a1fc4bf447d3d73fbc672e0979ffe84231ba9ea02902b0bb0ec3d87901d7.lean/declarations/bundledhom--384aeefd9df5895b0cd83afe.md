# bundledHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6194e7711b3e7f5fd301062a37911122359bc256114c765b45b9ac9a4fbd61e1",
  "kind": "instance",
  "lexical_name": "bundledHom",
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
  "slug": "bundledhom--384aeefd9df5895b0cd83afe",
  "source": {
    "blob": "dad7f5800d3f39e6b766ddef69986d161398da95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnbundledHom/Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:384aeefd9df5895b0cd83afeed7f67fcdec9d8aa9fee77aa85ea8c408ff91f26",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UnbundledHom/Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6194e7711b3e7f5fd301062a37911122359bc256114c765b45b9ac9a4fbd61e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance bundledHom : BundledHom fun α β (Iα : c α) (Iβ : c β) => Subtype (hom Iα Iβ) where
  toFun _ _ := Subtype.val
  id Iα := ⟨id, hom_id Iα⟩
  id_toFun _ := rfl
  comp _ _ _ g f := ⟨g.1 ∘ f.1, hom_comp g.2 f.2⟩
  comp_toFun _ _ _ _ _ := rfl
  hom_ext _ _ _ _ := Subtype.eq

section HasForget₂

variable {c hom} {c' : Type u → Type u} {hom' : ∀ ⦃α β⦄, c' α → c' β → (α → β) → Prop}
  [𝒞' : UnbundledHom hom']

variable (obj : ∀ ⦃α⦄, c α → c' α)
  (map : ∀ ⦃α β Iα Iβ f⦄, @hom α β Iα Iβ f → hom' (obj Iα) (obj Iβ) f)

/-- A custom constructor for forgetful functor
between concrete categories defined using `UnbundledHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UnbundledHom/Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnbundledHom/Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dad7f5800d3f39e6b766ddef69986d161398da95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
