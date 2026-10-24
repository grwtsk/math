# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InnerProduct.Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d654f29b46490915bad4786b80ead89603304bb9` · SHA-256 `f4ff2c8fb7c58e369243b38d7d4138c3e1078faad467cb489691b0774d7f47a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConformalAtIffPrime.Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ConformalAtIffPrime.Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c","mathematical_subject":"Analysis.Calculus","original_sha256":"1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/Conformal/InnerProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yourong Zang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yourong Zang
-/
import Mathlib.Analysis.Calculus.Conformal.NormedSpace
import Mathlib.Analysis.InnerProductSpace.ConformalLinearMap

/-!
# Conformal maps between inner product spaces

A function between inner product spaces which has a derivative at `x`
is conformal at `x` iff the derivative preserves inner products up to a scalar multiple.
-/



namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConformalAtIffPrime.Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c

noncomputable section

variable {E F : Type*}
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [InnerProductSpace ℝ E] [InnerProductSpace ℝ F]

open RealInnerProductSpace

/-- A real differentiable map `f` is conformal at point `x` if and only if its
    differential `fderiv ℝ f x` at that point scales every inner product by a positive scalar. -/
theorem conformalAt_iff' {f : E → F} {x : E} : ConformalAt f x ↔
    ∃ c : ℝ, 0 < c ∧ ∀ u v : E, ⟪fderiv ℝ f x u, fderiv ℝ f x v⟫ = c * ⟪u, v⟫ := by
  rw [conformalAt_iff_isConformalMap_fderiv, isConformalMap_iff]

/-- A real differentiable map `f` is conformal at point `x` if and only if its
    differential `f'` at that point scales every inner product by a positive scalar. -/
theorem conformalAt_iff {f : E → F} {x : E} {f' : E →L[ℝ] F} (h : HasFDerivAt f f' x) :
    ConformalAt f x ↔ ∃ c : ℝ, 0 < c ∧ ∀ u v : E, ⟪f' u, f' v⟫ = c * ⟪u, v⟫ := by
  simp only [conformalAt_iff', h.fderiv]

/-- The conformal factor of a conformal map at some point `x`. Some authors refer to this function
    as the characteristic function of the conformal map. -/
def conformalFactorAt {f : E → F} {x : E} (h : ConformalAt f x) : ℝ :=
  Classical.choose (conformalAt_iff'.mp h)

theorem conformalFactorAt_pos {f : E → F} {x : E} (h : ConformalAt f x) : 0 < conformalFactorAt h :=
  (Classical.choose_spec <| conformalAt_iff'.mp h).1

theorem conformalFactorAt_inner_eq_mul_inner' {f : E → F} {x : E} (h : ConformalAt f x) (u v : E) :
    ⟪(fderiv ℝ f x) u, (fderiv ℝ f x) v⟫ = (conformalFactorAt h : ℝ) * ⟪u, v⟫ :=
  (Classical.choose_spec <| conformalAt_iff'.mp h).2 u v

theorem conformalFactorAt_inner_eq_mul_inner {f : E → F} {x : E} {f' : E →L[ℝ] F}
    (h : HasFDerivAt f f' x) (H : ConformalAt f x) (u v : E) :
    ⟪f' u, f' v⟫ = (conformalFactorAt H : ℝ) * ⟪u, v⟫ :=
  H.differentiableAt.hasFDerivAt.unique h ▸ conformalFactorAt_inner_eq_mul_inner' H u v
```
