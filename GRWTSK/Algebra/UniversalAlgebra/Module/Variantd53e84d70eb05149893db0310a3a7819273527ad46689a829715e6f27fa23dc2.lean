-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CoeSmul.Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Nonneg/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Apurva Nakade. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Apurva Nakade
-/
import Mathlib.Algebra.Module.RingHom
import Mathlib.Algebra.Order.Module.OrderedSMul
import Mathlib.Algebra.Order.Nonneg.Basic

/-!
# Modules over nonnegative elements

This file defines instances and prove some properties about modules over nonnegative elements
`{c : 𝕜 // 0 ≤ c}` of an arbitrary `OrderedSemiring 𝕜`.

These instances are useful for working with `ConvexCone`.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0

variable {𝕜 𝕜' E : Type*}
variable [Semiring 𝕜] [PartialOrder 𝕜]

local notation3 "𝕜≥0" => {c : 𝕜 // 0 ≤ c}

namespace Nonneg

section SMul

variable [SMul 𝕜 𝕜']

instance instSMul : SMul 𝕜≥0 𝕜' where
  smul c x := c.val • x

@[simp, norm_cast]
lemma coe_smul (a : 𝕜≥0) (x : 𝕜') : (a : 𝕜) • x = a • x :=
  rfl

@[simp]
lemma mk_smul (a) (ha) (x : 𝕜') : (⟨a, ha⟩ : 𝕜≥0) • x = a • x :=
  rfl

end SMul

section IsScalarTower

variable [IsOrderedRing 𝕜] [SMul 𝕜 𝕜'] [SMul 𝕜 E] [SMul 𝕜' E] [IsScalarTower 𝕜 𝕜' E]

instance instIsScalarTower : IsScalarTower 𝕜≥0 𝕜' E :=
  SMul.comp.isScalarTower ↑Nonneg.coeRingHom

end IsScalarTower

section SMulWithZero

variable [Zero 𝕜'] [SMulWithZero 𝕜 𝕜']

instance instSMulWithZero : SMulWithZero 𝕜≥0 𝕜' where
  smul_zero _ := smul_zero _
  zero_smul _ := zero_smul _ _

end SMulWithZero

section OrderedSMul

variable [IsOrderedRing 𝕜] [AddCommMonoid E] [PartialOrder E] [IsOrderedAddMonoid E]
  [SMulWithZero 𝕜 E] [hE : OrderedSMul 𝕜 E]

instance instOrderedSMul : OrderedSMul 𝕜≥0 E :=
  ⟨hE.1, hE.2⟩

end OrderedSMul

section Module

variable [IsOrderedRing 𝕜] [AddCommMonoid E] [Module 𝕜 E]

/-- A module over an ordered semiring is also a module over just the non-negative scalars. -/
instance instModule : Module 𝕜≥0 E :=
  Module.compHom E Nonneg.coeRingHom

end Module

end Nonneg
