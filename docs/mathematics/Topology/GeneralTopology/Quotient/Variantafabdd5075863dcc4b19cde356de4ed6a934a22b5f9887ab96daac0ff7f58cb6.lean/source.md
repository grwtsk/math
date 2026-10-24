# Complete source: GRWTSK.Topology.GeneralTopology.Quotient.Variantafabdd5075863dcc4b19cde356de4ed6a934a22b5f9887ab96daac0ff7f58cb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2876f535d9739231933be28e4c5380a83324068c` · SHA-256 `598034d67759e2f227694bf3943e05b6614d6f12b98a31414ca2146bf7c905e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Congr.Variante53b928d2103b31022b942ac0efcfce5824d24aa614f0ed7e50d9d0f98f6a002","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e53b928d2103b31022b942ac0efcfce5824d24aa614f0ed7e50d9d0f98f6a002","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Congr.Variante53b928d2103b31022b942ac0efcfce5824d24aa614f0ed7e50d9d0f98f6a002","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e53b928d2103b31022b942ac0efcfce5824d24aa614f0ed7e50d9d0f98f6a002","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Homeomorph/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
module

public import Mathlib.Topology.Constructions

/-!
# Homeomorphisms between quotient spaces
-/


namespace GRWTSK.Topology.GeneralTopology.Congr.Variante53b928d2103b31022b942ac0efcfce5824d24aa614f0ed7e50d9d0f98f6a002

@[expose] public section

namespace Homeomorph

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

namespace Quot

/-- A homeomorphism `e : X ≃ₜ Y` generates a homeomorphism between quotient spaces,
if `rX x₁ x₂ ↔ rY (e x₁) (e x₂)`. -/
protected def congr {rX : X → X → Prop} {rY : Y → Y → Prop} (e : X ≃ₜ Y)
    (eq : ∀ x₁ x₂, rX x₁ x₂ ↔ rY (e x₁) (e x₂)) : Quot rX ≃ₜ Quot rY where
  toEquiv := _root_.Quot.congr e eq
  continuous_toFun := continuous_quot_map (fun x y ↦ by simp [eq]) e.continuous
  continuous_invFun := continuous_quot_map (fun x y ↦ by simp [eq]) e.symm.continuous

/-- Quotient spaces for equal relations are homeomorphic. -/
protected def congrRight {r r' : X → X → Prop} (eq : ∀ x₁ x₂, r x₁ x₂ ↔ r' x₁ x₂) :
    Quot r ≃ₜ Quot r' := Quot.congr (Homeomorph.refl X) eq

/-- A homeomorphism `e : X ≃ₜ Y` generates an equivalence between the quotient space of `X`
by a relation `rX` and the quotient space of `Y` by the image of this relation under `e`. -/
protected def congrLeft {r : X → X → Prop} (e : X ≃ₜ Y) :
    Quot r ≃ₜ Quot fun y₁ y₂ ↦ r (e.symm y₁) (e.symm y₂) :=
  Quot.congr e fun _ _ ↦ by simp only [e.symm_apply_apply]

end Quot

namespace Quotient

/-- A homeomorphism `e : X ≃ₜ Y` generates a homeomorphism between quotient spaces,
if `rX x₁ x₂ ↔ rY (e x₁) (e x₂)`. -/
protected def congr {rX : Setoid X} {rY : Setoid Y} (e : X ≃ₜ Y)
    (eq : ∀ x₁ x₂, rX x₁ x₂ ↔ rY (e x₁) (e x₂)) :
    Quotient rX ≃ₜ Quotient rY := Quot.congr e eq

/-- Quotient spaces for equal relations are homeomorphic. -/
protected def congrRight {r r' : Setoid X}
    (eq : ∀ x₁ x₂, r x₁ x₂ ↔ r' x₁ x₂) : Quotient r ≃ₜ Quotient r' :=
  Quot.congrRight eq

end Quotient

/-- The quotient by the trivial relation is homeomorphic to the original space. -/
def quotientBot :
    Quotient (⊥ : Setoid X) ≃ₜ X where
  toEquiv := Setoid.quotientBotEquiv
  continuous_toFun := continuous_quot_lift _ continuous_id
  continuous_invFun := continuous_quot_mk

end Homeomorph
```
