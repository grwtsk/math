# IsColimit.mono_ι_app_of_isFiltered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34b1ecaf-5560-a7d4-88f1-236e8eeb57ad",
  "kind": "lemma",
  "lexical_name": "IsColimit.mono_ι_app_of_isFiltered",
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
  "slug": "iscolimit-mono-app-of-isfiltered--07b3e09adbb8db0189ecedd0",
  "source": {
    "blob": "dcee2ed729b8e0ff9b75c6b5e0253bba82aad274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b3e09adbb8db0189ecedd016f590bfc5d14983f3e4bf6d7a63e593b2f194f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34b1ecaf-5560-a7d4-88f1-236e8eeb57ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsColimit.mono_ι_app_of_isFiltered
    {X : J ⥤ C} [∀ (j j' : J) (φ : j ⟶ j'), Mono (X.map φ)]
    {c : Cocone X} (hc : IsColimit c) [IsFiltered J] (j₀ : J)
    [HasColimitsOfShape (Under j₀) C]
    [(colim : (Under j₀ ⥤ C) ⥤ C).PreservesMonomorphisms] :
    Mono (c.ι.app j₀) := by
  let f : (Functor.const _).obj (X.obj j₀) ⟶ Under.forget j₀ ⋙ X :=
    { app j := X.map j.hom
      naturality _ _ g := by
        dsimp
        simp only [Category.id_comp, ← X.map_comp, Under.w] }
  have := NatTrans.mono_of_mono_app f
  exact colim.map_mono' f (isColimitConstCocone _ _)
    ((Functor.Final.isColimitWhiskerEquiv _ _).symm hc) (c.ι.app j₀) (by aesop_cat)

section

variable [HasColimitsOfShape J C] [HasExactColimitsOfShape J C] [HasZeroMorphisms C]
  (S : ShortComplex (J ⥤ C)) (hS : S.Exact)
  {c₁ : Cocone S.X₁} (hc₁ : IsColimit c₁) (c₂ : Cocone S.X₂) (hc₂ : IsColimit c₂)
  (c₃ : Cocone S.X₃) (hc₃ : IsColimit c₃)
  (f : c₁.pt ⟶ c₂.pt) (g : c₂.pt ⟶ c₃.pt)
  (hf : ∀ j, c₁.ι.app j ≫ f = S.f.app j ≫ c₂.ι.app j)
  (hg : ∀ j, c₂.ι.app j ≫ g = S.g.app j ≫ c₃.ι.app j)

/-- Given `S : ShortCompex (J ⥤ C)` and (colimit) cocones for `S.X₁`, `S.X₂`,
`S.X₃` equipped with suitable data, this is the induced
short complex `c₁.pt ⟶ c₂.pt ⟶ c₃.pt`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantf6f2d2925008d5b09543f881281e2f1a5356688b9f8265531977b39b2477f359.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcee2ed729b8e0ff9b75c6b5e0253bba82aad274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
