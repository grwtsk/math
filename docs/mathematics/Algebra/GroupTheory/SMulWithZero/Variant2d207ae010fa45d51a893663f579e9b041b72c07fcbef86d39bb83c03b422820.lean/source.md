# Complete source: GRWTSK.Algebra.GroupTheory.SMulWithZero.Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `070a595f292cfb38c6679e569965178bb6ff2829` · SHA-256 `99abb67a368a665cfac47e9b02fef6cc014501d51a2e1108b3fa9bdf47b8f125`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CoeSmul.Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CoeSmul.Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b","mathematical_subject":"Algebra.Groups","original_sha256":"e9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finsupp/SMulWithZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Kim Morrison
-/
module

public import Mathlib.Algebra.Group.Action.Pi
public import Mathlib.Algebra.Group.Finsupp
public import Mathlib.Algebra.GroupWithZero.Action.Defs

/-!
# Scalar multiplication on `Finsupp`

This file defines the pointwise scalar multiplication on `Finsupp`, assuming it preserves zero.

## Main declarations

* `Finsupp.smulZeroClass`: if the action of `R` on `M` preserves `0`, then it acts on `α →₀ M`

## Implementation notes

This file is intermediate between `Finsupp.Defs` and `Finsupp.Module` in that it covers scalar
multiplication but does not rely on the definition of `Module`. Scalar multiplication is needed to
supply the `nsmul` (and `zsmul`) fields of (semi)ring structures which are fundamental for e.g.
`Polynomial`, so we want to keep the imports required for the `Finsupp.smulZeroClass` instance
reasonably light.

This file is a `noncomputable theory` and uses classical logic throughout.
-/


namespace GRWTSK.Algebra.GroupTheory.CoeSmul.Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b

public section

assert_not_exists Module

noncomputable section

open Finset Function

variable {α M N R S : Type*}

namespace Finsupp

instance smulZeroClass [Zero M] [SMulZeroClass R M] : SMulZeroClass R (α →₀ M) where
  smul a v := v.mapRange (a • ·) (smul_zero _)
  smul_zero a := by
    ext
    apply smul_zero

/-!
Throughout this section, some `Monoid` and `Semiring` arguments are specified with `{}` instead of
`[]`. See note [implicit instance arguments].
-/

@[simp, norm_cast]
theorem coe_smul [Zero M] [SMulZeroClass R M] (b : R) (v : α →₀ M) : ⇑(b • v) = b • ⇑v :=
  rfl

theorem smul_apply [Zero M] [SMulZeroClass R M] (b : R) (v : α →₀ M) (a : α) :
    (b • v) a = b • v a :=
  rfl

instance instSMulWithZero [Zero R] [Zero M] [SMulWithZero R M] : SMulWithZero R (α →₀ M) where
  zero_smul f := by ext i; exact zero_smul _ _

variable (α M)

instance distribSMul [AddZeroClass M] [DistribSMul R M] : DistribSMul R (α →₀ M) where
  smul_add _ _ _ := ext fun _ => smul_add _ _ _
  smul_zero _ := ext fun _ => smul_zero _

instance isScalarTower [Zero M] [SMulZeroClass R M] [SMulZeroClass S M] [SMul R S]
    [IsScalarTower R S M] : IsScalarTower R S (α →₀ M) where
  smul_assoc _ _ _ := ext fun _ => smul_assoc _ _ _

instance smulCommClass [Zero M] [SMulZeroClass R M] [SMulZeroClass S M] [SMulCommClass R S M] :
    SMulCommClass R S (α →₀ M) where
  smul_comm _ _ _ := ext fun _ => smul_comm _ _ _

instance isCentralScalar [Zero M] [SMulZeroClass R M] [SMulZeroClass Rᵐᵒᵖ M] [IsCentralScalar R M] :
    IsCentralScalar R (α →₀ M) where
  op_smul_eq_smul _ _ := ext fun _ => op_smul_eq_smul _ _

variable {α M}

theorem support_smul [Zero M] [SMulZeroClass R M] {b : R} {g : α →₀ M} :
    (b • g).support ⊆ g.support := fun a => by
  simp only [smul_apply, mem_support_iff, Ne]
  exact mt fun h => h.symm ▸ smul_zero _

@[simp]
theorem smul_single [Zero M] [SMulZeroClass R M] (c : R) (a : α) (b : M) :
    c • Finsupp.single a b = Finsupp.single a (c • b) :=
  mapRange_single

theorem mapRange_smul' [Zero M] [SMulZeroClass R M] [Zero N]
    [SMulZeroClass S N] {f : M → N} {hf : f 0 = 0} (c : R) (d : S) (v : α →₀ M)
    (hsmul : ∀ x, f (c • x) = d • f x) : mapRange f hf (c • v) = d • mapRange f hf v := by
  ext
  simp [hsmul]

theorem mapRange_smul [Zero M] [SMulZeroClass R M] [Zero N]
    [SMulZeroClass R N] {f : M → N} {hf : f 0 = 0} (c : R) (v : α →₀ M)
    (hsmul : ∀ x, f (c • x) = c • f x) : mapRange f hf (c • v) = c • mapRange f hf v :=
  mapRange_smul' c c v hsmul

end Finsupp
```
