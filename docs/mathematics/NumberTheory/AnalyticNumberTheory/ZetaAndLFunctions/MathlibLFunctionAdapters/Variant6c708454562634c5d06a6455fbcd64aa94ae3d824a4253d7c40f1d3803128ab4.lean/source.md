# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MathlibLFunctionAdapters.Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df91d7524159d3a3852e3f9fb1c787f8d4426abf` · SHA-256 `b0ffb1a3fa6493254c2db920053671b124e160ff911d91816f46115b4dfa2e02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CanonicalCompletedLFunction.Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.CanonicalCompletedLFunction.Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/DirichletGRH/MathlibLFunctionAdapters.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.Character
public import Mathlib.NumberTheory.LSeries.Nonvanishing
public import Mathlib.NumberTheory.MulChar.Lemmas
public import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.Tactic

/-!
# Thin adapters for mathlib's Dirichlet L-function API

This module fixes the normalization boundary used by the generic GRH work.
The completed function, gamma factor, root number, and primitive functional
equation below are mathlib's objects; Surface does not introduce competing
normalizations.

The pole-removed function is the one additional wrapper.  It selects
mathlib's entire `LFunctionTrivChar₁` in the principal channel and the
ordinary analytically continued `LFunction` otherwise.  No Mellin identity,
zero-free region, or GRH assertion is contained here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CanonicalCompletedLFunction.Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open Complex

/-- Surface's canonical completed Dirichlet L-function is a thin alias for
mathlib's normalization. -/
abbrev canonicalCompletedLFunction
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) : ℂ → ℂ :=
  DirichletCharacter.completedLFunction chi

/-- The primitive functional equation, exposed without changing mathlib's
normalization or suppressing its inverse-character channel. -/
@[surface_adapter, surface_published]
theorem canonicalCompletedLFunction_one_sub
    {q : ℕ} [NeZero q] {chi : DirichletCharacter ℂ q}
    (hchi : DirichletCharacter.IsPrimitive chi) (s : ℂ) :
    canonicalCompletedLFunction chi (1 - s) =
      q ^ (s - 1 / 2) * DirichletCharacter.rootNumber chi *
        canonicalCompletedLFunction chi⁻¹ s :=
  hchi.completedLFunction_one_sub s

/-- The mathlib gamma factor is nonzero whenever the real part is positive.
This covers the open critical strip and does not require primitivity. -/
@[surface_adapter, surface_published]
theorem gammaFactor_ne_zero_of_re_pos
    {q : ℕ} (chi : DirichletCharacter ℂ q) {s : ℂ}
    (hs : 0 < s.re) :
    DirichletCharacter.gammaFactor chi s ≠ 0 := by
  rcases chi.even_or_odd with hEven | hOdd
  · rw [hEven.gammaFactor_def]
    exact Gammaℝ_ne_zero_of_re_pos hs
  · rw [hOdd.gammaFactor_def]
    apply Gammaℝ_ne_zero_of_re_pos
    simpa using add_pos_of_pos_of_nonneg hs (by norm_num : (0 : ℝ) ≤ 1)

/-- On `re s > 0`, zeros of mathlib's completed function are exactly zeros
of its ordinary L-function. -/
@[surface_adapter, surface_published]
theorem canonicalCompletedLFunction_zero_iff_LFunction_zero
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) {s : ℂ}
    (hs : 0 < s.re) :
    canonicalCompletedLFunction chi s = 0 ↔
      DirichletCharacter.LFunction chi s = 0 := by
  have hs0 : s ≠ 0 := by
    intro h
    subst s
    norm_num at hs
  have hGamma := gammaFactor_ne_zero_of_re_pos chi hs
  rw [DirichletCharacter.LFunction_eq_completed_div_gammaFactor
    chi s (Or.inl hs0)]
  simp [hGamma]

/-- The pole-removed L-function uses mathlib's entire trivial-character
regularization and otherwise leaves the analytically continued L-function
unchanged. -/
@[expose]
def poleRemovedLFunction
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) : ℂ → ℂ :=
  by
    classical
    exact if chi = 1 then
      DirichletCharacter.LFunctionTrivChar₁ q
    else
      DirichletCharacter.LFunction chi

@[surface_adapter, surface_published]
theorem poleRemovedLFunction_eq_LFunction_of_ne_one
    {q : ℕ} [NeZero q] {chi : DirichletCharacter ℂ q}
    (hchi : chi ≠ 1) :
    poleRemovedLFunction chi = DirichletCharacter.LFunction chi := by
  simp [poleRemovedLFunction, hchi]

@[surface_adapter, surface_published]
theorem poleRemovedLFunction_one
    {q : ℕ} [NeZero q] :
    poleRemovedLFunction (1 : DirichletCharacter ℂ q) =
      DirichletCharacter.LFunctionTrivChar₁ q := by
  simp [poleRemovedLFunction]

/-- The pole-removed function is entire in both the principal and
nonprincipal channels. -/
@[surface_adapter, surface_published]
theorem differentiable_poleRemovedLFunction
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) :
    Differentiable ℂ (poleRemovedLFunction chi) := by
  classical
  by_cases hchi : chi = 1
  · subst chi
    rw [poleRemovedLFunction_one]
    exact DirichletCharacter.differentiable_LFunctionTrivChar₁ q
  · rw [poleRemovedLFunction_eq_LFunction_of_ne_one hchi]
    exact DirichletCharacter.differentiable_LFunction hchi

/-- Away from `s = 1`, pole removal preserves the zero set. -/
@[surface_adapter, surface_published]
theorem poleRemovedLFunction_zero_iff_LFunction_zero
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) {s : ℂ}
    (hs : s ≠ 1) :
    poleRemovedLFunction chi s = 0 ↔
      DirichletCharacter.LFunction chi s = 0 := by
  classical
  by_cases hchi : chi = 1
  · subst chi
    rw [poleRemovedLFunction_one]
    simp only [DirichletCharacter.LFunctionTrivChar₁,
      Function.update_of_ne hs]
    rw [mul_eq_zero]
    exact or_iff_right (sub_ne_zero.mpr hs)
  · rw [poleRemovedLFunction_eq_LFunction_of_ne_one hchi]

/-- The Euler-product nonvanishing region also supplies a base point for the
pole-removed function. -/
@[surface_adapter, surface_published]
theorem poleRemovedLFunction_ne_zero_of_one_lt_re
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) {s : ℂ}
    (hs : 1 < s.re) :
    poleRemovedLFunction chi s ≠ 0 := by
  have hsOne : s ≠ 1 := by
    intro h
    subst s
    norm_num at hs
  intro hzero
  exact (DirichletCharacter.LFunction_ne_zero_of_one_le_re
    chi (.inr hsOne) hs.le)
      ((poleRemovedLFunction_zero_iff_LFunction_zero chi hsOne).mp hzero)

private theorem lSeriesTerm_inverse_eq_star
    {q : ℕ} (chi : DirichletCharacter ℂ q) (s : ℂ) (n : ℕ) :
    LSeries.term (chi⁻¹ ·) s n =
      star (LSeries.term (chi ·) (star s) n) := by
  by_cases hn : n = 0
  · subst n
    simp
  · rw [LSeries.term_of_ne_zero hn, LSeries.term_of_ne_zero hn]
    have hnpos : 0 < n := Nat.pos_of_ne_zero hn
    have harg : ((n : ℂ).arg) ≠ Real.pi := by
      rw [Complex.natCast_arg]
      exact Real.pi_ne_zero.symm
    have hpow : star ((n : ℂ) ^ star s) = (n : ℂ) ^ s := by
      simpa using (Complex.conj_cpow (n : ℂ) s harg).symm
    rw [inv_apply_eq_star, ← hpow]
    exact (map_div₀ (starRingEnd ℂ)
      (chi (n : ZMod q)) ((n : ℂ) ^ star s)).symm

/-- Conjugation commutes with the convergent Dirichlet series after the
character is inverted.  This identity is purely at the `LSeries` layer and
does not invoke analytic continuation. -/
@[surface_adapter, surface_published]
theorem LSeries_inverse_eq_star
    {q : ℕ} (chi : DirichletCharacter ℂ q) (s : ℂ) :
    LSeries (chi⁻¹ ·) s = star (LSeries (chi ·) (star s)) := by
  unfold LSeries
  rw [tsum_star]
  exact tsum_congr (lSeriesTerm_inverse_eq_star chi s)

end

end Surface.Core.DirichletGRH
```
