# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pi.Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `240e09e3dfb2de4dffeb0e37110746e95d6ebdfa` · SHA-256 `9c25099f6db416ba2568edd4a084058786c12b4866cffa4e9104323eb46f0b8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasFDerivAtUpdate.Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasFDerivAtUpdate.Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d","mathematical_subject":"Analysis.Calculus","original_sha256":"a584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/FDeriv/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Heather Macbeth
-/
import Mathlib.Analysis.Calculus.FDeriv.Add

/-!
# Derivatives on pi-types.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasFDerivAtUpdate.Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d

variable {𝕜 ι : Type*} [DecidableEq ι] [Fintype ι] [NontriviallyNormedField 𝕜]
variable {E : ι → Type*} [∀ i, NormedAddCommGroup (E i)] [∀ i, NormedSpace 𝕜 (E i)]

@[fun_prop]
theorem hasFDerivAt_update (x : ∀ i, E i) {i : ι} (y : E i) :
    HasFDerivAt (Function.update x i) (.pi (Pi.single i (.id 𝕜 (E i)))) y := by
  set l := (ContinuousLinearMap.pi (Pi.single i (.id 𝕜 (E i))))
  have update_eq : Function.update x i = (fun _ ↦ x) + l ∘ (· - x i) := by
    ext t j
    dsimp [l, Pi.single, Function.update]
    split_ifs with hji
    · subst hji
      simp
    · simp
  rw [update_eq]
  convert (hasFDerivAt_const _ _).add (l.hasFDerivAt.comp y (hasFDerivAt_sub_const (x i)))
  rw [zero_add, ContinuousLinearMap.comp_id]

@[fun_prop]
theorem hasFDerivAt_single {i : ι} (y : E i) :
    HasFDerivAt (Pi.single i) (.pi (Pi.single i (.id 𝕜 (E i)))) y :=
  hasFDerivAt_update 0 y

theorem fderiv_update (x : ∀ i, E i) {i : ι} (y : E i) :
    fderiv 𝕜 (Function.update x i) y = .pi (Pi.single i (.id 𝕜 (E i))) :=
  (hasFDerivAt_update x y).fderiv

theorem fderiv_single {i : ι} (y : E i) :
    fderiv 𝕜 (Pi.single i) y = .pi (Pi.single i (.id 𝕜 (E i))) :=
  fderiv_update 0 y
```
