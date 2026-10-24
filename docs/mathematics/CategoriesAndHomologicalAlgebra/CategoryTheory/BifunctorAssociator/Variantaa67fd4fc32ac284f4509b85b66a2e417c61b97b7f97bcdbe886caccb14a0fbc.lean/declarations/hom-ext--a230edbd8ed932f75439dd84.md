# hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bca0125-a0b4-c31c-1b97-05348f2f7e31",
  "kind": "lemma",
  "lexical_name": "hom_ext",
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
  "slug": "hom-ext--a230edbd8ed932f75439dd84",
  "source": {
    "blob": "6fe480810a48ceb2e29311e442e53be568228752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 464,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantaa67fd4fc32ac284f4509b85b66a2e417c61b97b7f97bcdbe886caccb14a0fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a230edbd8ed932f75439dd84671ff18107138bd5169316672b69428bf893fc7d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantaa67fd4fc32ac284f4509b85b66a2e417c61b97b7f97bcdbe886caccb14a0fbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bca0125-a0b4-c31c-1b97-05348f2f7e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hom_ext {j : ι₄} {A : C₄}
    {f g : (mapBifunctor K₁ (mapBifunctor K₂ K₃ G₂₃ c₂₃) F c₄).X j ⟶ A}
    (hfg : ∀ (i₁ : ι₁) (i₂ : ι₂) (i₃ : ι₃)
      (h : ComplexShape.r c₁ c₂ c₃ c₁₂ c₄ (i₁, i₂, i₃) = j),
      ι F G₂₃ K₁ K₂ K₃ c₁₂ c₂₃ c₄ i₁ i₂ i₃ j h ≫ f =
        ι F G₂₃ K₁ K₂ K₃ c₁₂ c₂₃ c₄ i₁ i₂ i₃ j h ≫ g) :
    f = g :=
  GradedObject.mapBifunctorBifunctor₂₃MapObj_ext
    (ρ₂₃ := ComplexShape.ρ₂₃ c₁ c₂ c₃ c₁₂ c₂₃ c₄) hfg

variable {F G₂₃ K₁ K₂ K₃ c₂₃ c₄}
variable {j : ι₄} {A : C₄}
  (f : ∀ (i₁ : ι₁) (i₂ : ι₂) (i₃ : ι₃) (_ : ComplexShape.r c₁ c₂ c₃ c₁₂ c₄ (i₁, i₂, i₃) = j),
        (F.obj (K₁.X i₁)).obj ((G₂₃.obj (K₂.X i₂)).obj (K₃.X i₃)) ⟶ A)

/-- Constructor for morphisms from
`(mapBifunctor K₁ (mapBifunctor K₂ K₃ G₂₃ c₂₃) F c₄).X j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantaa67fd4fc32ac284f4509b85b66a2e417c61b97b7f97bcdbe886caccb14a0fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantaa67fd4fc32ac284f4509b85b66a2e417c61b97b7f97bcdbe886caccb14a0fbc.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fe480810a48ceb2e29311e442e53be568228752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
