# Complete source: GRWTSK.Algebra.UniversalAlgebra.Module.Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6ad9ea964ca1d20919e4553d722005329ffef69` · SHA-256 `cdd06a03abda9375ebba0156fec6715a4cbf859d8e57a250a485a7f0166ec45d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CoeSmul.Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Nonneg/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Apurva Nakade. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Apurva Nakade
-/
module

public import Mathlib.Algebra.Module.RingHom
public import Mathlib.Algebra.Order.Module.Defs
public import Mathlib.Algebra.Order.Nonneg.Basic

/-!
# Modules over nonnegative elements

For an ordered ring `R`, this file proves that any (ordered) `R`-module `M` is also an (ordered)
`R≥0`-module.

Among other things, these instances are useful for working with `ConvexCone`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e

public section

assert_not_exists Finset

variable {R S M : Type*}

local notation3 "R≥0" => Nonneg R

namespace Nonneg
variable [Semiring R] [PartialOrder R]

section SMul

variable [SMul R S]

instance instSMul : SMul R≥0 S where
  smul c x := c.val • x

@[simp, norm_cast]
lemma coe_smul (a : R≥0) (x : S) : (a : R) • x = a • x :=
  rfl

@[simp]
lemma mk_smul (a) (ha) (x : S) : (⟨a, ha⟩ : R≥0) • x = a • x :=
  rfl

end SMul

section IsScalarTower

variable [IsOrderedRing R] [SMul R S] [SMul R M] [SMul S M] [IsScalarTower R S M]

instance instIsScalarTower : IsScalarTower R≥0 S M :=
  SMul.comp.isScalarTower ↑Nonneg.coeRingHom

end IsScalarTower

section SMulWithZero

variable [Zero S] [SMulWithZero R S]

instance instSMulWithZero : SMulWithZero R≥0 S where
  smul_zero _ := smul_zero _
  zero_smul _ := zero_smul _ _

end SMulWithZero

section IsOrderedModule

variable [IsOrderedRing R] [AddCommMonoid M] [PartialOrder M] [IsOrderedAddMonoid M]
  [SMulWithZero R M]

instance instIsOrderedModule [hM : IsOrderedModule R M] : IsOrderedModule R≥0 M where
  smul_le_smul_of_nonneg_left _b hb _a₁ _a₂ ha := hM.smul_le_smul_of_nonneg_left hb ha
  smul_le_smul_of_nonneg_right _b hb _a₁ _a₂ ha := hM.smul_le_smul_of_nonneg_right hb ha

instance instIsStrictOrderedModule [hM : IsStrictOrderedModule R M] :
    IsStrictOrderedModule R≥0 M where
  smul_lt_smul_of_pos_left _b hb _a₁ _a₂ ha := hM.smul_lt_smul_of_pos_left hb ha
  smul_lt_smul_of_pos_right _b hb _a₁ _a₂ ha := hM.smul_lt_smul_of_pos_right hb ha

end IsOrderedModule

section Module

variable [IsOrderedRing R] [AddCommMonoid M] [Module R M]

/-- A module over an ordered semiring is also a module over just the non-negative scalars. -/
instance instModule : Module R≥0 M where
  smul := instSMul.smul
  __ := Module.compHom M coeRingHom

end Module
end Nonneg
```
