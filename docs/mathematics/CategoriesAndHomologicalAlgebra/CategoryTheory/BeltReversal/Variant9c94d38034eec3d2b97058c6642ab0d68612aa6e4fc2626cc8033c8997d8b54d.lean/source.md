# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BeltReversal.Variant9c94d38034eec3d2b97058c6642ab0d68612aa6e4fc2626cc8033c8997d8b54d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca0dff37bc4050c46fae4f7e45907b15a96c032e` · SHA-256 `d4dfef7f245cda6e916488d9dc9f66b35bfaee22372a146aeda48d8b5e18c1e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProductFramedBeltReversal.Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProductFramedBeltReversal.Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/BeltReversal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.SmoothFramedSurgery.CollaredGluing

/-!
# Conditional product-framed belt reversal

The classical inverse to a `(p,q)` surgery is surgery on the belt sphere with
the product framing and index pair `(q - 1, p + 1)`.  Constructing that belt
embedding, absorbing the intervening annulus, and smoothing corners is
geometric work not presently supplied by Mathlib.  This module packages those
operations as one explicit capability and derives the older unbundled dual
certificate and all invariant consequences from its bundled reversal map.

No belt-reversal capability is asserted to exist for a bare abstract surgery
theory.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProductFramedBeltReversal.Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa

namespace Surface.SmoothFramedSurgery

universe uD uI

/-- Product-framed belt construction and its relative-boundary cancellation map. -/
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
def reversal
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    G.Hom (T.surgery (B.beltEmbedding embedding hq)) M :=
  G.trans (G.symm (B.beltPresentation embedding hq).surgeryChart)
    (G.trans
      (B.gluing.extend
        (B.beltPresentation embedding hq).replacement_compatible
        (B.originalPresentation embedding).removed_compatible
        (B.factorSwitchPieceMap embedding hq))
      (B.originalPresentation embedding).originalChart)

/-- The constructed belt really carries the supplier's product-framing predicate. -/
theorem isProductFramed
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    B.ProductFramed (B.beltEmbedding embedding hq) :=
  B.belt_productFramed embedding hq

/-- The product chart, rather than an unrelated predicate, induces the belt framing. -/
theorem chart_induces_belt_framing
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    B.ChartInducesBeltFraming embedding hq (B.productChart embedding)
      (B.beltEmbedding embedding hq) :=
  B.chart_induces_product_framing embedding hq

/-- The selected product chart is the chart obtained from the selected belt core. -/
theorem productChart_is_core_chart
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M) :
    B.productChart embedding = B.chartOfCore embedding (B.beltCore embedding) :=
  B.productChart_eq_chartOfCore embedding

/-- The intervening annulus is explicitly absorbed into the selected collar. -/
theorem annulus_absorbed_by_collar
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M) :
    B.AnnulusAbsorbedByCollar embedding (B.annulus embedding)
      (B.collarAbsorption embedding) :=
  B.annulus_absorbed embedding

/-- Factor switching is certified compatible with the same product chart and gluing. -/
theorem factor_switch_compatible
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M) :
    B.FactorSwitchCompatibleWithGluing embedding (B.beltCore embedding)
      (B.productChart embedding) (B.collarAbsorption embedding)
      (B.factorSwitch embedding) :=
  B.factor_switch_gluing_compatible embedding

/--
The restoration map unfolds to the collared extension composite.  The theorem
is definitional evidence of gluing origin, not an unrelated predicate supplied
beside the map.
-/
theorem reversal_has_gluing_origin
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    B.reversal embedding hq =
      G.trans (G.symm (B.beltPresentation embedding hq).surgeryChart)
        (G.trans
          (B.gluing.extend
            (B.beltPresentation embedding hq).replacement_compatible
            (B.originalPresentation embedding).removed_compatible
            (B.factorSwitchPieceMap embedding hq))
          (B.originalPresentation embedding).originalChart) :=
  rfl

/-- The inner cancellation extension selects the presentation's common exterior. -/
theorem reversal_extension_uses_selected_exterior
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    G.selectedExterior
        (B.gluing.extend
          (B.beltPresentation embedding hq).replacement_compatible
          (B.originalPresentation embedding).removed_compatible
          (B.factorSwitchPieceMap embedding hq)) =
      B.gluing.commonExterior (B.exterior embedding)
        (B.beltPresentation embedding hq).replacementPiece
        (B.originalPresentation embedding).removedPiece :=
  B.gluing.extend_selected_exterior _ _ _

/-- The factor-switch map induces a collar map preserving the common seam. -/
theorem reversal_factor_switch_preserves_seam
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    B.gluing.collarSeam
        (B.gluing.collarData
          (B.beltPresentation embedding hq).replacement_compatible) =
      B.gluing.collarSeam
        (B.gluing.collarData
          (B.originalPresentation embedding).removed_compatible) :=
  B.gluing.collarHom_preserves_seam
    (B.gluing.collarOfPieceHom
      (B.beltPresentation embedding hq).replacement_compatible
      (B.originalPresentation embedding).removed_compatible
      (B.factorSwitchPieceMap embedding hq))

/-- The annulus collar comparison is exactly the collar image of the factor switch. -/
theorem reversal_annulus_collar_is_factor_switch
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    B.annulusCollarMap embedding hq =
      B.gluing.collarOfPieceHom
        (B.beltPresentation embedding hq).replacement_compatible
        (B.originalPresentation embedding).removed_compatible
        (B.factorSwitchPieceMap embedding hq) :=
  B.annulusCollarMap_eq_factorSwitch embedding hq

/-- All geometric premises used by the product-framed reversal are retained together. -/
theorem reversal_geometric_data
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    B.ChartInducesBeltFraming embedding hq (B.productChart embedding)
        (B.beltEmbedding embedding hq) ∧
      B.AnnulusAbsorbedByCollar embedding (B.annulus embedding)
        (B.collarAbsorption embedding) ∧
      B.FactorSwitchCompatibleWithGluing embedding (B.beltCore embedding)
        (B.productChart embedding) (B.collarAbsorption embedding)
        (B.factorSwitch embedding) ∧
      B.reversal embedding hq =
        G.trans (G.symm (B.beltPresentation embedding hq).surgeryChart)
          (G.trans
            (B.gluing.extend
              (B.beltPresentation embedding hq).replacement_compatible
              (B.originalPresentation embedding).removed_compatible
              (B.factorSwitchPieceMap embedding hq))
            (B.originalPresentation embedding).originalChart) :=
  ⟨B.chart_induces_product_framing embedding hq,
    B.annulus_absorbed embedding,
    B.factor_switch_gluing_compatible embedding,
    rfl⟩

/-- Forgetting the bundled reversal map yields the original dual-surgery API. -/
def toDualSurgeryCertificate
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    DualSurgeryCertificate T embedding :=
  { q_pos := hq
    beltEmbedding := B.beltEmbedding embedding hq
    restores := G.sound (B.reversal embedding hq) }

/-- Product-framed belt surgery restores the original manifold relative to the exterior. -/
theorem surgery_on_belt_restores
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    T.RelBoundaryDiffeomorphic
      (T.surgery (B.beltEmbedding embedding hq)) M :=
  G.sound (B.reversal embedding hq)

/-- Reversal followed by its bundled inverse is the identity comparison. -/
@[simp]
theorem reversal_trans_inverse
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    G.trans (B.reversal embedding hq) (G.symm (B.reversal embedding hq)) =
      G.refl (T.surgery (B.beltEmbedding embedding hq)) :=
  G.trans_symm (B.reversal embedding hq)

/-- Every invariant functorial under relative diffeomorphisms is restored by belt surgery. -/
theorem invariant_restored
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q)
    {Invariant : Type uI}
    (value : T.Manifold → Invariant)
    (respects : ∀ {X Y}, G.Hom X Y → value X = value Y) :
    value (T.surgery (B.beltEmbedding embedding hq)) = value M :=
  respects (B.reversal embedding hq)

end ProductFramedBeltReversal

end Surface.SmoothFramedSurgery
```
