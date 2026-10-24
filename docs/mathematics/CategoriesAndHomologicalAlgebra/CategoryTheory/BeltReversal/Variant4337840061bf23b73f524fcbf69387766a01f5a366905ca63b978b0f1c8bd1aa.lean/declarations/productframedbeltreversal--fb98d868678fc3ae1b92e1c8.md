# ProductFramedBeltReversal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ffe2c481b3fbe8a514264dbf7242355fc95718a6ba7b10f95ad48416a679dea",
  "kind": "structure",
  "lexical_name": "ProductFramedBeltReversal",
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
  "slug": "productframedbeltreversal--fb98d868678fc3ae1b92e1c8",
  "source": {
    "blob": "8b56772e95ecf0fb09f1c21d069e54667534ee72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 22,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb98d868678fc3ae1b92e1c8838c01042af3edb87a60718a4fad13a7526b9834",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ffe2c481b3fbe8a514264dbf7242355fc95718a6ba7b10f95ad48416a679dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProductFramedBeltReversal
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T) where
  /-- All cancellation data use one actual collared gluing model. -/
  gluing : CollaredGluingCapability.{uD, uD} T G
  BeltCore : ∀ {p q M}, T.FramedEmbedding p q M → Type uD
  ProductChart : ∀ {p q M}, T.FramedEmbedding p q M → Type uD
  Annulus : ∀ {p q M}, T.FramedEmbedding p q M → Type uD
  CollarAbsorption : ∀ {p q M}, T.FramedEmbedding p q M → Type uD
  FactorSwitch : ∀ {p q M}, T.FramedEmbedding p q M → Type uD
  ProductFramed : ∀ {p q M}
      {embedding : T.FramedEmbedding p q M},
    T.FramedEmbedding (q - 1) (p + 1) (T.surgery embedding) → Prop
  beltEmbedding : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M),
    0 < q → T.FramedEmbedding (q - 1) (p + 1) (T.surgery embedding)
  exterior : ∀ {p q M} (embedding : T.FramedEmbedding p q M), gluing.Exterior
  originalPresentation : ∀ {p q M} (embedding : T.FramedEmbedding p q M),
    CollaredSurgeryPresentation G gluing embedding (exterior embedding)
  beltPresentation : ∀ {p q M} (embedding : T.FramedEmbedding p q M)
      (hq : 0 < q),
    CollaredSurgeryPresentation G gluing (beltEmbedding embedding hq)
      (exterior embedding)
  beltCore : ∀ {p q M} (embedding : T.FramedEmbedding p q M),
    BeltCore embedding
  productChart : ∀ {p q M} (embedding : T.FramedEmbedding p q M),
    ProductChart embedding
  annulus : ∀ {p q M} (embedding : T.FramedEmbedding p q M),
    Annulus embedding
  collarAbsorption : ∀ {p q M} (embedding : T.FramedEmbedding p q M),
    CollarAbsorption embedding
  factorSwitch : ∀ {p q M} (embedding : T.FramedEmbedding p q M),
    FactorSwitch embedding
  chartOfCore : ∀ {p q M} (embedding : T.FramedEmbedding p q M),
    BeltCore embedding → ProductChart embedding
  productChart_eq_chartOfCore : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M),
    productChart embedding = chartOfCore embedding (beltCore embedding)
  ChartInducesBeltFraming : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M) (_hq : 0 < q),
    ProductChart embedding →
      T.FramedEmbedding (q - 1) (p + 1) (T.surgery embedding) → Prop
  chart_induces_product_framing : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M) (hq : 0 < q),
    ChartInducesBeltFraming embedding hq (productChart embedding)
      (beltEmbedding embedding hq)
  AnnulusAbsorbedByCollar : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M),
    Annulus embedding → CollarAbsorption embedding → Prop
  annulus_absorbed : ∀ {p q M} (embedding : T.FramedEmbedding p q M),
    AnnulusAbsorbedByCollar embedding (annulus embedding)
      (collarAbsorption embedding)
  FactorSwitchCompatibleWithGluing : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M),
    BeltCore embedding → ProductChart embedding →
      CollarAbsorption embedding → FactorSwitch embedding → Prop
  factor_switch_gluing_compatible : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M),
    FactorSwitchCompatibleWithGluing embedding (beltCore embedding)
      (productChart embedding) (collarAbsorption embedding)
      (factorSwitch embedding)
  /-- The factor switch is an actual map between the two replacement pieces. -/
  factorSwitchPieceMap : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M) (hq : 0 < q),
    gluing.PieceHom (beltPresentation embedding hq).replacementPiece
      (originalPresentation embedding).removedPiece
  /-- The annulus/collar absorption is the collar image of that exact piece map. -/
  annulusCollarMap : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M) (hq : 0 < q),
    gluing.CollarHom
      (gluing.collarData (beltPresentation embedding hq).replacement_compatible)
      (gluing.collarData (originalPresentation embedding).removed_compatible)
  annulusCollarMap_eq_factorSwitch : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M) (hq : 0 < q),
    annulusCollarMap embedding hq =
      gluing.collarOfPieceHom
        (beltPresentation embedding hq).replacement_compatible
        (originalPresentation embedding).removed_compatible
        (factorSwitchPieceMap embedding hq)
  belt_productFramed : ∀ {p q M}
      (embedding : T.FramedEmbedding p q M)
      (hq : 0 < q),
    ProductFramed (beltEmbedding embedding hq)

namespace ProductFramedBeltReversal

variable
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (B : ProductFramedBeltReversal T G)

/--
The cancellation map is not independent data.  It is obtained by reversing
the second surgery chart, extending the factor-switch map over the selected
common exterior, and then applying the first presentation's original chart.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b56772e95ecf0fb09f1c21d069e54667534ee72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
