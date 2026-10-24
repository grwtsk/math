# Complete source: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.Basic.Variant0b60f03d3c5f73319daa22622e8331506b08eef18894b7bd01c6a22e3f4c17c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94155547e336c1db1f3f3ad67b6a11369affa7c1` · SHA-256 `37973d955f1b7b81e53233f35d558c80e37d6c6e289ccf1bb830477a30bd4a97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AutomorphicForms.ModularForms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AutomorphicForms.ModularForms.EisensteinSeriesMF.Variant532f23d66f84a5553a4e3122bdf22285bc0c2b7ba2e9a0c689fa5ef7ae54713e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"532f23d66f84a5553a4e3122bdf22285bc0c2b7ba2e9a0c689fa5ef7ae54713e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ModularForms.SourceCorpus.EisensteinSeriesMF.Variant532f23d66f84a5553a4e3122bdf22285bc0c2b7ba2e9a0c689fa5ef7ae54713e","mathematical_subject":"NumberTheory.ModularForms","original_sha256":"532f23d66f84a5553a4e3122bdf22285bc0c2b7ba2e9a0c689fa5ef7ae54713e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/ModularForms/EisensteinSeries/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
module

public import Mathlib.NumberTheory.ModularForms.Basic
public import Mathlib.NumberTheory.ModularForms.EisensteinSeries.IsBoundedAtImInfty
public import Mathlib.NumberTheory.ModularForms.EisensteinSeries.MDifferentiable

/-!
# Eisenstein series are Modular Forms

We show that Eisenstein series of weight `k` and level `Γ(N)` with congruence condition
`a : Fin 2 → ZMod N` are Modular Forms.

## TODO

Add q-expansions and prove that they are not all identically zero.
-/


namespace GRWTSK.NumberTheory.AutomorphicForms.ModularForms.EisensteinSeriesMF.Variant532f23d66f84a5553a4e3122bdf22285bc0c2b7ba2e9a0c689fa5ef7ae54713e

@[expose] public section

noncomputable section

namespace ModularForm

open EisensteinSeries CongruenceSubgroup

open scoped MatrixGroups

/-- This defines Eisenstein series as modular forms of weight `k`, level `Γ(N)` and congruence
condition given by `a : Fin 2 → ZMod N`. -/
def eisensteinSeriesMF {k : ℤ} {N : ℕ} [NeZero N] (hk : 3 ≤ k) (a : Fin 2 → ZMod N) :
    ModularForm Γ(N) k where
  toFun := eisensteinSeriesSIF a k
  slash_action_eq' := (eisensteinSeriesSIF a k).slash_action_eq'
  holo' := eisensteinSeriesSIF_mdifferentiable hk a
  bdd_at_cusps' {c} hc := by
    rw [Subgroup.IsArithmetic.isCusp_iff_isCusp_SL2Z] at hc
    rw [OnePoint.isBoundedAt_iff_forall_SL2Z hc]
    exact fun γ hγ ↦ isBoundedAtImInfty_eisensteinSeriesSIF a hk γ

/-- Normalised Eisenstein series of level 1 and weight `k`,
here they have been scaled by `1/2` since we sum over coprime pairs. -/
def E {k : ℕ} (hk : 3 ≤ k) : ModularForm 𝒮ℒ k :=
  ((1 / 2 : ℂ) • eisensteinSeriesMF (mod_cast hk) 0).copy _ rfl Gamma_one_coe_eq_SL.symm

/-- The normalised level 1 Eisenstein series of weight 4. -/
abbrev E₄ : ModularForm 𝒮ℒ 4 := E (by norm_num : 3 ≤ 4)

/-- The normalised level 1 Eisenstein series of weight 6. -/
abbrev E₆ : ModularForm 𝒮ℒ 6 := E (by norm_num : 3 ≤ 6)

end ModularForm
```
