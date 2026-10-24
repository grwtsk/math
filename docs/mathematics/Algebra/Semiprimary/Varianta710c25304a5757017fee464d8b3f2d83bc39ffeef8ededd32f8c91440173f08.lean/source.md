# Complete source: GRWTSK.Algebra.Semiprimary.Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `004ab793a749c765efed87564c30aafb4610883d` · SHA-256 `b7758e57d6c1c3369c78dcba9b7ed925b343d558bf8de907fec99ffb4c935270`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsSimpleModuleJacobsonEqBot.Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsSimpleModuleJacobsonEqBot.Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Jacobson/Semiprimary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.RingTheory.Jacobson.Radical
import Mathlib.RingTheory.Nilpotent.Defs
import Mathlib.RingTheory.SimpleModule.Basic

/-!
# Semiprimary rings

## Main definition

* `IsSemiprimaryRing R`: a ring `R` is semiprimary if
  `Ring.jacobson R` is nilpotent and `R ⧸ Ring.jacobson R` is semisimple.
-/


namespace GRWTSK.Algebra.IsSimpleModuleJacobsonEqBot.Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38

variable (R R₂ M M₂ : Type*) [Ring R] [Ring R₂]
variable [AddCommGroup M] [Module R M] [AddCommGroup M₂] [Module R₂ M₂]
variable {τ₁₂ : R →+* R₂} [RingHomSurjective τ₁₂]
variable {F : Type*} [FunLike F M M₂] [SemilinearMapClass F τ₁₂ M M₂] (f : F)

theorem IsSimpleModule.jacobson_eq_bot [IsSimpleModule R M] : Module.jacobson R M = ⊥ :=
  le_bot_iff.mp <| sInf_le isCoatom_bot

theorem IsSemisimpleModule.jacobson_eq_bot [IsSemisimpleModule R M] :
    Module.jacobson R M = ⊥ :=
  have ⟨s, e, simple⟩ := isSemisimpleModule_iff_exists_linearEquiv_dfinsupp.mp ‹_›
  let f : M →ₗ[R] ∀ m : s, m.1 := (LinearMap.pi DFinsupp.lapply).comp e.toLinearMap
  Module.jacobson_eq_bot_of_injective f (DFinsupp.injective_pi_lapply (R := R).comp e.injective)
    (Module.jacobson_pi_eq_bot _ _ fun i ↦ IsSimpleModule.jacobson_eq_bot R _)

theorem IsSemisimpleRing.jacobson_eq_bot [IsSemisimpleRing R] : Ring.jacobson R = ⊥ :=
  IsSemisimpleModule.jacobson_eq_bot R R

theorem IsSemisimpleModule.jacobson_le_ker [IsSemisimpleModule R₂ M₂] :
    Module.jacobson R M ≤ LinearMap.ker f :=
  (Module.le_comap_jacobson f).trans <| by simp_rw [jacobson_eq_bot, LinearMap.ker, le_rfl]

/-- The Jacobson radical of a ring annihilates every semisimple module. -/
theorem IsSemisimpleModule.jacobson_le_annihilator [IsSemisimpleModule R M] :
    Ring.jacobson R ≤ Module.annihilator R M :=
  fun r hr ↦ Module.mem_annihilator.mpr fun m ↦ by
    have := Module.le_comap_jacobson (LinearMap.toSpanSingleton R M m) hr
    rwa [jacobson_eq_bot] at this

instance (priority := low) (R) [CommRing R] [IsSemisimpleRing R] : IsReduced R where
  eq_zero _ := fun ⟨n, eq⟩ ↦ (IsSemisimpleRing.jacobson_eq_bot R).le <| Ideal.mem_sInf.mpr
    fun I hI ↦ (Ideal.isMaximal_def.mpr hI).isPrime.mem_of_pow_mem n (eq ▸ I.zero_mem)

/-- A ring is semiprimary if its Jacobson radical is nilpotent and its quotient by the
Jacobson radical is semisimple. -/
@[mk_iff] class IsSemiprimaryRing : Prop where
  isSemisimpleRing : IsSemisimpleRing (R ⧸ Ring.jacobson R)
  isNilpotent : IsNilpotent (Ring.jacobson R)

attribute [instance] IsSemiprimaryRing.isSemisimpleRing
```
