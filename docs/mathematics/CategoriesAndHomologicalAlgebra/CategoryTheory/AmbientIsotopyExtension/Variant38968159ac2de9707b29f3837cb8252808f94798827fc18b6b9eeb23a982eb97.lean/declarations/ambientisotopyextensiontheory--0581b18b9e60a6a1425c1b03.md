# AmbientIsotopyExtensionTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c233972a42c65be55b73ff3d68e3e276fd0765bf01eab830e8e869d67681bdd5",
  "kind": "structure",
  "lexical_name": "AmbientIsotopyExtensionTheory",
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
  "slug": "ambientisotopyextensiontheory--0581b18b9e60a6a1425c1b03",
  "source": {
    "blob": "7e2ea1e382339d4f06277cff8e733da5b0724334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant38968159ac2de9707b29f3837cb8252808f94798827fc18b6b9eeb23a982eb97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0581b18b9e60a6a1425c1b03db91f8d1801be24cbc542969bd4b2cbfb5fc3a8b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant38968159ac2de9707b29f3837cb8252808f94798827fc18b6b9eeb23a982eb97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c233972a42c65be55b73ff3d68e3e276fd0765bf01eab830e8e869d67681bdd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AmbientIsotopyExtensionTheory
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T) where
  /-- The parameter object used by the supplied smooth isotopies. -/
  Time : Type uD
  /-- The initial parameter. -/
  timeZero : Time
  /-- The terminal parameter. -/
  timeOne : Time
  /-- An ambient isotopy has genuinely distinct initial and terminal parameters. -/
  time_zero_ne_one : timeZero ≠ timeOne
  isotopyRefl : ∀ {p q M},
    (e : T.FramedEmbedding p q M) → T.FramedIsotopic e e
  isotopySymm : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → T.FramedIsotopic e₁ e₀
  isotopyTrans : ∀ {p q M} {e₀ e₁ e₂ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → T.FramedIsotopic e₁ e₂ →
      T.FramedIsotopic e₀ e₂
  /-- The actual ambient family extending a supplied framed isotopy. -/
  ambientFamily : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → Time → G.Hom M M
  /-- The framed attaching data carried by the ambient family at each time. -/
  framedEmbeddingAt : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → Time → T.FramedEmbedding p q M
  /-- Model-specific joint smoothness of a parameterized family of ambient maps. -/
  AmbientFamilySmooth : ∀ {M}, (Time → G.Hom M M) → Prop
  /-- Model-specific joint smoothness of a parameterized family of framed embeddings. -/
  FramedFamilySmooth : ∀ {p q M},
    (Time → T.FramedEmbedding p q M) → Prop
  ambient_family_smooth : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    AmbientFamilySmooth (ambientFamily h)
  framed_family_smooth : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    FramedFamilySmooth (framedEmbeddingAt h)
  /-- The ambient family starts at the identity map. -/
  ambient_family_zero : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    ambientFamily h timeZero = G.refl M
  /-- The framed path starts at the first supplied attaching embedding. -/
  framed_embedding_zero : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    framedEmbeddingAt h timeZero = e₀
  /-- The framed path ends at the second supplied attaching embedding. -/
  framed_embedding_one : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    framedEmbeddingAt h timeOne = e₁
  ambientEnd : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → G.Hom M M
  /-- The separately named terminal map is exactly the time-one family member. -/
  ambient_family_one : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    ambientFamily h timeOne = ambientEnd h
  /-- The model-specific assertion that an ambient map has controlled support. -/
  SupportedAwayFromOldBoundary : ∀ {M}, G.Hom M M → Prop
  /-- The support is contained in the interior of the selected ambient manifold. -/
  SupportedInInterior : ∀ {M}, G.Hom M M → Prop
  /-- The ambient map is pointwise fixed outside its selected support. -/
  FixesOutsideSupport : ∀ {M}, G.Hom M M → Prop
  /-- The model-specific assertion that an ambient map fixes the old boundary. -/
  FixesOldBoundary : ∀ {M}, G.Hom M M → Prop
  /-- The model-specific assertion that an ambient map carries framed data exactly. -/
  CarriesEmbedding : ∀ {p q M},
    G.Hom M M → T.FramedEmbedding p q M → T.FramedEmbedding p q M → Prop
  /-- At every time, the ambient family carries the initial embedding to the path value. -/
  ambient_carries_embedding_at : ∀ {p q M}
      {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    CarriesEmbedding (ambientFamily h t) e₀ (framedEmbeddingAt h t)
  ambient_supported : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    SupportedAwayFromOldBoundary (ambientFamily h t)
  ambient_interior : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    SupportedInInterior (ambientFamily h t)
  ambient_fixes_outside : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    FixesOutsideSupport (ambientFamily h t)
  ambient_fixes_boundary : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    FixesOldBoundary (ambientFamily h t)
  ambient_carries_embedding : ∀ {p q M}
      {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    CarriesEmbedding (ambientEnd h) e₀ e₁
  /-- Surgery is functorial for a controlled ambient map carrying the attaching data. -/
  inducedOnSurgery : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (ambient : G.Hom M M),
    CarriesEmbedding ambient e₀ e₁ →
      G.Hom (T.surgery e₀) (T.surgery e₁)
  surgeryEnd : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → G.Hom (T.surgery e₀) (T.surgery e₁)
  surgery_naturality : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    surgeryEnd h = inducedOnSurgery (ambientEnd h) (ambient_carries_embedding h)
  ambient_refl : ∀ {p q M} (e : T.FramedEmbedding p q M),
    ambientEnd (isotopyRefl e) = G.refl M
  surgery_refl : ∀ {p q M} (e : T.FramedEmbedding p q M),
    surgeryEnd (isotopyRefl e) = G.refl (T.surgery e)
  ambient_symm : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    ambientEnd (isotopySymm h) = G.symm (ambientEnd h)
  surgery_symm : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    surgeryEnd (isotopySymm h) = G.symm (surgeryEnd h)
  ambient_trans : ∀ {p q M} {e₀ e₁ e₂ : T.FramedEmbedding p q M}
      (h₀₁ : T.FramedIsotopic e₀ e₁)
      (h₁₂ : T.FramedIsotopic e₁ e₂),
    ambientEnd (isotopyTrans h₀₁ h₁₂) =
      G.trans (ambientEnd h₀₁) (ambientEnd h₁₂)
  surgery_trans : ∀ {p q M} {e₀ e₁ e₂ : T.FramedEmbedding p q M}
      (h₀₁ : T.FramedIsotopic e₀ e₁)
      (h₁₂ : T.FramedIsotopic e₁ e₂),
    surgeryEnd (isotopyTrans h₀₁ h₁₂) =
      G.trans (surgeryEnd h₀₁) (surgeryEnd h₁₂)

namespace AmbientIsotopyExtensionTheory

variable
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (A : AmbientIsotopyExtensionTheory T G)

include A G

/-- The time object used by ambient extension has distinct named endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant38968159ac2de9707b29f3837cb8252808f94798827fc18b6b9eeb23a982eb97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant38968159ac2de9707b29f3837cb8252808f94798827fc18b6b9eeb23a982eb97.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2ea1e382339d4f06277cff8e733da5b0724334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
