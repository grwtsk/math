-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LFunctionInverseEqStar.Variant0b690a08de9f4d681e510ef463afb2efe6badb8fed77d4c42b906cf2b81b668c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b690a08de9f4d681e510ef463afb2efe6badb8fed77d4c42b906cf2b81b668c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LFunctionInverseEqStar.Variant0b690a08de9f4d681e510ef463afb2efe6badb8fed77d4c42b906cf2b81b668c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0b690a08de9f4d681e510ef463afb2efe6badb8fed77d4c42b906cf2b81b668c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/DirichletGRH/LFunctionConjugation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.MathlibLFunctionAdapters
import Mathlib.Tactic

/-!
# Conjugation and root-number adapters for Dirichlet L-functions

Mathlib's primitive functional equation has an inverse-character channel.
This file proves the conjugation adapter needed to return that channel to
the original character.  It also derives nonvanishing of the primitive root
number directly from mathlib's functional equation and Euler-product
nonvanishing region.

No zero-free critical half-plane or GRH assertion is made here.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LFunctionInverseEqStar.Variant0b690a08de9f4d681e510ef463afb2efe6badb8fed77d4c42b906cf2b81b668c

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open Set Filter Topology Complex

/-- Analytic continuation of coefficient-level conjugation.  The point
`s = 1` is excluded because a principal character may have its pole there;
the whole open critical strip is covered. -/
@[surface_adapter, surface_published]
theorem LFunction_inverse_eq_star
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    {s : ℂ} (hs : s ≠ 1) :
    DirichletCharacter.LFunction chi⁻¹ s =
      star (DirichletCharacter.LFunction chi (star s)) := by
  let U : Set ℂ := ({1}ᶜ : Set ℂ)
  let g : ℂ → ℂ :=
    fun z ↦ star (DirichletCharacter.LFunction chi (star z))
  have hUopen : IsOpen U := isOpen_compl_singleton
  have hUpre : IsPreconnected U := by
    exact (isConnected_compl_singleton_of_one_lt_rank
      (rank_real_complex ▸ Nat.one_lt_ofNat) (1 : ℂ)).isPreconnected
  have hleft : AnalyticOnNhd ℂ
      (DirichletCharacter.LFunction chi⁻¹) U := by
    apply DifferentiableOn.analyticOnNhd _ hUopen
    intro z hz
    exact (DirichletCharacter.differentiableAt_LFunction chi⁻¹ z
      (.inl hz)).differentiableWithinAt
  have hright : AnalyticOnNhd ℂ g U := by
    apply DifferentiableOn.analyticOnNhd _ hUopen
    intro z hz
    have hzstar : star z ≠ (1 : ℂ) := by
      intro h
      apply hz
      have := congrArg (starRingEnd ℂ) h
      simpa using this
    have hdiff :=
      (DirichletCharacter.differentiableAt_LFunction chi (star z)
        (.inl hzstar)).star_conj
    simpa [g, Function.comp_def] using hdiff.differentiableWithinAt
  have htwo : (2 : ℂ) ∈ U := by simp [U]
  have hevent : DirichletCharacter.LFunction chi⁻¹ =ᶠ[nhds (2 : ℂ)] g := by
    have hopen : IsOpen {z : ℂ | 1 < z.re} :=
      isOpen_lt continuous_const continuous_re
    have hmem : (2 : ℂ) ∈ {z : ℂ | 1 < z.re} := by norm_num
    filter_upwards [hopen.mem_nhds hmem] with z hz
    rw [DirichletCharacter.LFunction_eq_LSeries chi⁻¹ hz]
    change LSeries (chi⁻¹ ·) z =
      star (DirichletCharacter.LFunction chi (star z))
    have hzstar : 1 < (star z).re := by simpa using hz
    rw [DirichletCharacter.LFunction_eq_LSeries chi hzstar]
    exact LSeries_inverse_eq_star chi z
  have hall := hleft.eqOn_of_preconnected_of_eventuallyEq
    hright hUpre htwo hevent
  exact hall hs

/-- Mathlib's root number of a primitive Dirichlet character is nonzero.
This follows without a separate Gauss-sum norm theorem: a zero root number
would make the functional equation force the completed function to vanish
at `2`, contradicting Euler-product nonvanishing there. -/
@[surface_adapter, surface_published]
theorem primitive_rootNumber_ne_zero
    {q : ℕ} [NeZero q] {chi : DirichletCharacter ℂ q}
    (hchi : DirichletCharacter.IsPrimitive chi) :
    DirichletCharacter.rootNumber chi ≠ 0 := by
  intro hroot
  have hFE := canonicalCompletedLFunction_one_sub hchi (-1 : ℂ)
  have hCompletedZero :
      canonicalCompletedLFunction chi (2 : ℂ) = 0 := by
    norm_num [hroot] at hFE
    exact hFE
  have hLZero : DirichletCharacter.LFunction chi (2 : ℂ) = 0 :=
    (canonicalCompletedLFunction_zero_iff_LFunction_zero chi
      (by norm_num : (0 : ℝ) < (2 : ℂ).re)).mp hCompletedZero
  exact (DirichletCharacter.LFunction_ne_zero_of_one_le_re chi
    (.inr (by norm_num : (2 : ℂ) ≠ 1)) (by norm_num)) hLZero

end

end Surface.Core.DirichletGRH
