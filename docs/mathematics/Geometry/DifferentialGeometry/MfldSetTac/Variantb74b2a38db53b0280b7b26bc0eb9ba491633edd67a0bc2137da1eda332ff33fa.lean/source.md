# Complete source: GRWTSK.Geometry.DifferentialGeometry.MfldSetTac.Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `436c675e2da6c70ea92f0d2985598eb168b5714d` · SHA-256 `e7f8cfb380be1c7c94b7146698f5dbf144ec85eb0a74f466061cd0230296cd98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.DifferentialGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.DifferentialGeometry.LocalHomeomorph.Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.DifferentialGeometry.SourceCorpus.LocalHomeomorph.Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924","mathematical_subject":"Geometry.DifferentialGeometry","original_sha256":"060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/MfldSetTac.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Heather Macbeth, Frédéric Dupuis
-/

import Mathlib.Logic.Equiv.LocalEquiv

/-!
This is a test file for the tactic `mfld_set_tac`. Because this tactic applies a simp-set which
mostly contains lemmas in advanced parts of mathlib, it is currently impossible to truly test it
in realistic conditions. Instead, we create stub definitions and lemmas on objects such as
`LocalHomeomorph`, label them with `mfld_simps` and run tests on those.
-/


namespace GRWTSK.Geometry.DifferentialGeometry.LocalHomeomorph.Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924

open Lean Meta Elab Tactic

/-! ## Syntax of objects and lemmas needed for testing `MfldSetTac` -/

set_option autoImplicit true
section stub_lemmas

structure LocalHomeomorph (α : Type u) (β : Type u) extends LocalEquiv α β

instance LocalHomeomorph.has_coe_to_fun : CoeFun (LocalHomeomorph α β) (λ _ => α → β) := sorry

def LocalHomeomorph.symm (e : LocalHomeomorph α β) : LocalHomeomorph β α := sorry

@[mfld_simps] lemma LocalHomeomorph.left_inv (e : LocalHomeomorph α β) {x : α}
  (h : x ∈ e.toLocalEquiv.source) :
  e.symm (e x) = x :=
sorry

@[mfld_simps] theorem LocalHomeomorph.symm_to_LocalEquiv (e : LocalHomeomorph α β) :
  e.symm.toLocalEquiv = e.toLocalEquiv.symm :=
sorry

@[mfld_simps] lemma LocalHomeomorph.coe_coe (e : LocalHomeomorph α β) :
  (e.toLocalEquiv : α → β) = e :=
sorry

@[mfld_simps] lemma LocalHomeomorph.coe_coe_symm (e : LocalHomeomorph α β) :
  (e.toLocalEquiv.symm : β → α) = (e.symm : β → α) :=
sorry

structure ModelWithCorners (𝕜 E H : Type u) extends LocalEquiv H E :=
  (source_eq : source = Set.univ)

attribute [mfld_simps] ModelWithCorners.source_eq

def ModelWithCorners.symm (I : ModelWithCorners 𝕜 E H) : LocalEquiv E H := sorry

instance ModelWithCorners.has_coe_to_fun : CoeFun (ModelWithCorners 𝕜 E H) (λ _ => H → E) := sorry

@[mfld_simps] lemma ModelWithCorners.left_inv (I : ModelWithCorners 𝕜 E H) (x : H) :
  I.symm (I x) = x :=
sorry

@[mfld_simps] lemma ModelWithCorners.to_local_equiv_coe (I : ModelWithCorners 𝕜 E H) :
  (I.toLocalEquiv : H → E) = I :=
sorry

@[mfld_simps] lemma ModelWithCorners.to_local_equiv_coe_symm (I : ModelWithCorners 𝕜 E H) :
  (I.toLocalEquiv.symm : E → H) = I.symm :=
sorry

end stub_lemmas


/-! ## Tests for `MfldSetTac` -/
section tests

example (e : LocalEquiv α β) (e' : LocalEquiv β γ) :
  (e.trans e').source = e.source ∩ Set.preimage e (e.target ∩ e'.source) := by
  mfld_set_tac

example (e : LocalEquiv α β) : (e.trans e.symm).source = e.source := by mfld_set_tac

example (s : Set α) (f : LocalHomeomorph α β) :
  f.symm.toLocalEquiv.source ∩ (f.toLocalEquiv.target ∩ Set.preimage f.symm s)
  = f.symm.toLocalEquiv.source ∩ Set.preimage f.symm s := by mfld_set_tac

example
  {I : ModelWithCorners 𝕜 E H}
  {I' : ModelWithCorners 𝕜 E' H'}
  {I'' : ModelWithCorners 𝕜 E'' H''}
  (e₁ : LocalHomeomorph M H)
  (e₂ : LocalHomeomorph M' H')
  (e₃ : LocalHomeomorph M'' H'')
  {f : M → M'}
  {g : M' → M''} :
  (Set.preimage (f ∘ ((e₁.toLocalEquiv.trans I.toLocalEquiv).symm))
      (e₂.toLocalEquiv.trans I'.toLocalEquiv).source) ⊆
    {y : E |
    ((e₃.toLocalEquiv.trans I''.toLocalEquiv) ∘
          (g ∘ f) ∘ ((e₁.toLocalEquiv.trans I.toLocalEquiv).symm)) y
    = (((e₃.toLocalEquiv.trans I''.toLocalEquiv : M'' → E'') ∘
             g ∘ ((e₂.toLocalEquiv.trans I'.toLocalEquiv).symm)) ∘
          (e₂.toLocalEquiv.trans I'.toLocalEquiv : M' → E') ∘
            f ∘ ((e₁.toLocalEquiv.trans I.toLocalEquiv).symm)) y} := by
  mfld_set_tac

end tests
```
