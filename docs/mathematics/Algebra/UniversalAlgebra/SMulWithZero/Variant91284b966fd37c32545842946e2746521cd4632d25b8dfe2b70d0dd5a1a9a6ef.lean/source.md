# Complete source: GRWTSK.Algebra.UniversalAlgebra.SMulWithZero.Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b2f791841f83e82dc7548bc1f08e5c7dbba5071` · SHA-256 `7004923b12d633825d86d1e23a6123ae25ae855bdef35bef2b9cf1d71e16fdc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CoeSmul.Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finsupp/SMulWithZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Kim Morrison
-/
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Data.Finsupp.Single

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


namespace GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e

assert_not_exists Module

noncomputable section

open Finset Function

variable {α β γ ι M M' N P G H R S : Type*}

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
  smul := (· • ·)
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
