# Complete source: GRWTSK.NumberTheory.ZetaZeros.Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7216460a440a2398b75ad7edb9ebff33593db489` · SHA-256 `3a818dc9ed6e22ac3ea86df58459e52fe45c9b7c8901b284b954b931d4bcd774`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.RiemannZetaZeros.Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RiemannZetaZeros.Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/LSeries/ZetaZeros.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Huanyu Zheng. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Huanyu Zheng
-/
module

public import Mathlib.NumberTheory.LSeries.Nonvanishing
public import Mathlib.Analysis.Analytic.Order

/-!
# Discreteness of the zeros of the Riemann zeta function

We show that the zeros of the Riemann zeta function form a discrete subset of `ℂ`,
so that in particular any compact subset of `ℂ` contains only finitely many zeros.

## Main declarations

* `riemannZetaZeros`: The zeros of Riemann zeta function.

## Main results

* `isClosed_riemannZetaZeros`: `riemannZetaZeros` is closed.

* `isDiscrete_riemannZetaZeros`: `riemannZetaZeros` is discrete.

* `IsCompact.inter_riemannZetaZeros_finite`: for any compact set `S : Set ℂ`, the intersection
  `S ∩ riemannZetaZeros` is finite.
-/


namespace GRWTSK.NumberTheory.RiemannZetaZeros.Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071

@[expose] public section

/-- The zeros of Riemann's ζ-function. -/
-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
noncomputable def riemannZetaZeros : Set ℂ := riemannZeta ⁻¹' {0}

lemma mem_riemannZetaZeros {z : ℂ} :
    z ∈ riemannZetaZeros ↔ riemannZeta z = 0 := .rfl

/-- The complement of the zero set of `riemannZeta` is codiscrete within `{1}ᶜ`. -/
private lemma riemannZetaZeros_codiscreteWithin_compl_one :
    riemannZetaZerosᶜ ∈ Filter.codiscreteWithin {1}ᶜ := by
  refine analyticOn_riemannZeta.preimage_zero_mem_codiscreteWithin (x := 2) ?_ (by simp) ?_
  · exact riemannZeta_ne_zero_of_one_le_re Nat.one_le_ofNat
  · exact isConnected_compl_singleton_of_one_lt_rank (by simp) 1

/-- The complement of the zero set of `riemannZeta` is codiscrete. -/
private lemma compl_riemannZetaZeros_mem_codiscrete :
    riemannZetaZerosᶜ ∈ Filter.codiscrete ℂ := by
  have := riemannZetaZeros_codiscreteWithin_compl_one
  simp only [mem_codiscreteWithin, Set.mem_compl_iff, Set.mem_singleton_iff, sdiff_compl,
    Set.inf_eq_inter, Filter.disjoint_principal_right, mem_codiscrete, compl_compl] at this ⊢
  intro x
  rcases eq_or_ne x 1 with rfl | hx
  · exact riemannZeta_eventually_ne_zero_nhds_one.filter_mono nhdsWithin_le_nhds
  · exact Filter.mem_of_superset (this x hx)
      (by grind [riemannZeta_one_ne_zero, mem_riemannZetaZeros])

lemma isClosed_riemannZetaZeros : IsClosed riemannZetaZeros := by
  simpa using (mem_codiscrete'.mp compl_riemannZetaZeros_mem_codiscrete).1

lemma isDiscrete_riemannZetaZeros : IsDiscrete riemannZetaZeros := by
  simpa using (mem_codiscrete'.mp compl_riemannZetaZeros_mem_codiscrete).2

/-- Any compact subset of `ℂ` contains only finitely many zeros of the Riemann zeta function. -/
lemma IsCompact.inter_riemannZetaZeros_finite {S : Set ℂ} (hS : IsCompact S) :
    (S ∩ riemannZetaZeros).Finite := by
  apply (hS.inter_right isClosed_riemannZetaZeros).finite
  exact isDiscrete_riemannZetaZeros.mono Set.inter_subset_right

open Filter in
lemma tendsto_riemannZeta_cofinite_cocompact :
    Tendsto ((↑) : riemannZetaZeros → ℂ) cofinite (cocompact ℂ) :=
  isClosed_riemannZetaZeros.tendsto_coe_cofinite_of_isDiscrete isDiscrete_riemannZetaZeros

end
```
