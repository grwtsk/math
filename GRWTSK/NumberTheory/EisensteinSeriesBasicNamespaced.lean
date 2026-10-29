-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AutomorphicForms.ModularForms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AutomorphicForms.ModularForms.EisensteinSeriesMF.Variantdb1aea963b977d775e2c3a16195e28cce83b4b442c153b6bc53221bef497781a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db1aea963b977d775e2c3a16195e28cce83b4b442c153b6bc53221bef497781a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ModularForms.SourceCorpus.EisensteinSeriesMF.Variantdb1aea963b977d775e2c3a16195e28cce83b4b442c153b6bc53221bef497781a","mathematical_subject":"NumberTheory.ModularForms","original_sha256":"db1aea963b977d775e2c3a16195e28cce83b4b442c153b6bc53221bef497781a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/ModularForms/EisensteinSeries/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/

import Mathlib.NumberTheory.ModularForms.Basic
import Mathlib.NumberTheory.ModularForms.EisensteinSeries.IsBoundedAtImInfty
import Mathlib.NumberTheory.ModularForms.EisensteinSeries.MDifferentiable

/-!
# Eisenstein series are Modular Forms

We show that Eisenstein series of weight `k` and level `Γ(N)` with congruence condition
`a : Fin 2 → ZMod N` are Modular Forms.

# TODO

Add q-expansions and prove that they are not all identically zero.
-/


namespace GRWTSK.NumberTheory.AutomorphicForms.ModularForms.EisensteinSeriesMF.Variantdb1aea963b977d775e2c3a16195e28cce83b4b442c153b6bc53221bef497781a

noncomputable section

namespace ModularForm

open EisensteinSeries CongruenceSubgroup

/-- This defines Eisenstein series as modular forms of weight `k`, level `Γ(N)` and congruence
condition given by `a: Fin 2 → ZMod N`. -/
def eisensteinSeries_MF {k : ℤ} {N : ℕ+} (hk : 3 ≤ k) (a : Fin 2 → ZMod N) :
    ModularForm (Gamma N) k where
  toFun := eisensteinSeries_SIF a k
  slash_action_eq' := (eisensteinSeries_SIF a k).slash_action_eq'
  holo' := eisensteinSeries_SIF_MDifferentiable hk a
  bdd_at_infty' := isBoundedAtImInfty_eisensteinSeries_SIF a hk

end ModularForm
