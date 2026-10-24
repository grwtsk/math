# DescentData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb9a2cd2e2f2450189193667c629fd033eebe386332d17b53b17ba102cc573b4",
  "kind": "structure",
  "lexical_name": "DescentData",
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
  "slug": "descentdata--0804577dc5f8afb28fe7fc42",
  "source": {
    "blob": "6fee7ec27284e06e620ee96f2ce41429e585e773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0804577dc5f8afb28fe7fc427eb6ab0d4da1a7ec7027d4312285b1dd3fdc1b0e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb9a2cd2e2f2450189193667c629fd033eebe386332d17b53b17ba102cc573b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DescentData where
  /-- The objects over `X i` for all `i` -/
  obj (i : ι) : F.obj (.mk (op (X i)))
  /-- The compatibility morphisms after pullbacks. It follows from the conditions
  `hom_self` and `hom_comp` that these are isomorphisms, see
  `CategoryTheory.Pseudofunctor.DescentData.iso` below. -/
  hom ⦃Y : C⦄ (q : Y ⟶ S) ⦃i₁ i₂ : ι⦄ (f₁ : Y ⟶ X i₁) (f₂ : Y ⟶ X i₂)
    (_hf₁ : f₁ ≫ f i₁ = q := by cat_disch) (_hf₂ : f₂ ≫ f i₂ = q := by cat_disch) :
      (F.map f₁.op.toLoc).toFunctor.obj (obj i₁) ⟶ (F.map f₂.op.toLoc).toFunctor.obj (obj i₂)
  pullHom_hom ⦃Y' Y : C⦄ (g : Y' ⟶ Y) (q : Y ⟶ S) (q' : Y' ⟶ S) (hq : g ≫ q = q')
    ⦃i₁ i₂ : ι⦄ (f₁ : Y ⟶ X i₁) (f₂ : Y ⟶ X i₂) (hf₁ : f₁ ≫ f i₁ = q) (hf₂ : f₂ ≫ f i₂ = q)
    (gf₁ : Y' ⟶ X i₁) (gf₂ : Y' ⟶ X i₂) (hgf₁ : g ≫ f₁ = gf₁) (hgf₂ : g ≫ f₂ = gf₂) :
      pullHom (hom q f₁ f₂) g gf₁ gf₂ = hom q' gf₁ gf₂ := by cat_disch
  hom_self ⦃Y : C⦄ (q : Y ⟶ S) ⦃i : ι⦄ (g : Y ⟶ X i) (_ : g ≫ f i = q) :
      hom q g g = 𝟙 _ := by cat_disch
  hom_comp ⦃Y : C⦄ (q : Y ⟶ S) ⦃i₁ i₂ i₃ : ι⦄ (f₁ : Y ⟶ X i₁) (f₂ : Y ⟶ X i₂) (f₃ : Y ⟶ X i₃)
      (hf₁ : f₁ ≫ f i₁ = q) (hf₂ : f₂ ≫ f i₂ = q) (hf₃ : f₃ ≫ f i₃ = q) :
      hom q f₁ f₂ hf₁ hf₂ ≫ hom q f₂ f₃ hf₂ hf₃ = hom q f₁ f₃ hf₁ hf₃ := by cat_disch

namespace DescentData

variable {F f} (D : F.DescentData f)

attribute [local simp] hom_self pullHom_hom
attribute [reassoc (attr := simp)] hom_comp

/-- The morphisms `DescentData.hom`, as isomorphisms. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fee7ec27284e06e620ee96f2ce41429e585e773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
