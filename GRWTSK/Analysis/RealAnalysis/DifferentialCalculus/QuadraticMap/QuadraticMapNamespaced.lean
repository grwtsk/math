-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasLineDerivAt.Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasLineDerivAt.Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd","mathematical_subject":"Analysis.Calculus","original_sha256":"4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/LineDeriv/QuadraticMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.LineDeriv.Basic
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.LinearAlgebra.QuadraticForm.Basic

/-!
# Quadratic forms are line (Gateaux) differentiable

In this file we prove that a quadratic form is line differentiable,
with the line derivative given by the polar bilinear form.
Note that this statement does not need topology on the domain.
In particular, it applies to discontinuous quadratic forms on infinite dimensional spaces.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasLineDerivAt.Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd

variable {𝕜 E F : Type*} [NontriviallyNormedField 𝕜] [AddCommGroup E] [Module 𝕜 E]
  [NormedAddCommGroup F] [NormedSpace 𝕜 F]

namespace QuadraticMap

theorem hasLineDerivAt (f : QuadraticMap 𝕜 E F) (a b : E) :
    HasLineDerivAt 𝕜 f (polar f a b) a b := by
  simpa [HasLineDerivAt, QuadraticMap.map_add, f.map_smul] using
    ((hasDerivAt_const (0 : 𝕜) (f a)).add <|
      ((hasDerivAt_id 0).mul (hasDerivAt_id 0)).smul (hasDerivAt_const 0 (f b))).add
      ((hasDerivAt_id 0).smul (hasDerivAt_const 0 (polar f a b)))

theorem lineDifferentiableAt (f : QuadraticMap 𝕜 E F) (a b : E) : LineDifferentiableAt 𝕜 f a b :=
  (f.hasLineDerivAt a b).lineDifferentiableAt

@[simp]
protected theorem lineDeriv (f : QuadraticMap 𝕜 E F) : lineDeriv 𝕜 f = polar f := by
  ext a b
  exact (f.hasLineDerivAt a b).lineDeriv

end QuadraticMap
