# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2dbDirichletComplet.Variantaadff856dbe051985548d8dc854762bc91273380f4a7f3ccb234358fe2554d98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e381d356363bdcb5c240c702f0427047d8ce1f0b` · SHA-256 `c262b7ba7629cda9885abe2dd2eb292c002e01a8f4c508ef43f4e0ffc71a6fc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CompletedSource.Variantbbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.CompletedSource.Variantbbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2db","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/bb/bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2db--dirichlet-completed-source-draft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib.NumberTheory.MulChar.Lemmas
import Mathlib.Tactic

/-!
# Draft: exact conductor-balanced primitive Dirichlet source

AI-assisted draft by OpenAI Codex. This ignored draft has not been elaborated.
It reuses Mathlib's DirichletCharacter and analytic source. No character metadata
structure, root-number-one assumption, positivity axiom, or GRH claim is added.

Mathlib's completedLFunction includes the archimedean gamma factor but omits
the factor N^(s/2). The definition below includes that factor. Its level N is
the actual conductor when the primitive-character hypothesis is supplied.
The modulus-one source is completedRiemannZeta, whose poles have not been
silently promoted into an entire Xi source.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CompletedSource.Variantbbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2db

namespace FormalResearch.DirichletL

open Complex DirichletCharacter

noncomputable section

variable {N : ℕ} [NeZero N]

/-- Level-balanced completed source; the level is the conductor for primitive χ. -/
def completedSource (χ : DirichletCharacter ℂ N) (s : ℂ) : ℂ :=
  (N : ℂ) ^ (s / 2) * DirichletCharacter.completedLFunction χ s

/-- Exact central coordinate; the character is retained. -/
def centralSource (χ : DirichletCharacter ℂ N) (u : ℂ) : ℂ :=
  completedSource χ (1 / 2 + u)

theorem primitive_conductor_eq (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) : χ.conductor = N := hχ

theorem primitive_inverse (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) : χ⁻¹.IsPrimitive := by
  simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hχ

theorem conjugate_character_eq_inverse (χ : DirichletCharacter ℂ N) :
    star χ = χ⁻¹ := MulChar.star_eq_inv χ

theorem inverse_even_iff (χ : DirichletCharacter ℂ N) :
    χ⁻¹.Even ↔ χ.Even := by
  simp only [DirichletCharacter.Even, MulChar.inv_apply_eq_inv', inv_eq_one]

theorem gammaFactor_inverse (χ : DirichletCharacter ℂ N) (s : ℂ) :
    DirichletCharacter.gammaFactor χ⁻¹ s = DirichletCharacter.gammaFactor χ s := by
  simp only [DirichletCharacter.gammaFactor, inverse_even_iff]

/-- The nonvanishing normalization factor does not change the zero set. -/
theorem completedSource_eq_zero_iff (χ : DirichletCharacter ℂ N) (s : ℂ) :
    completedSource χ s = 0 ↔ DirichletCharacter.completedLFunction χ s = 0 := by
  have hN : (N : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  have hp : (N : ℂ) ^ (s / 2) ≠ 0 := Complex.cpow_ne_zero_iff.mpr (Or.inl hN)
  simp only [completedSource, mul_eq_zero, hp, false_or]

/-- The conductor factor absorbs the power in Mathlib's primitive functional equation. -/
theorem primitive_completedSource_one_sub (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (s : ℂ) :
    completedSource χ (1 - s) =
      DirichletCharacter.rootNumber χ * completedSource χ⁻¹ s := by
  have hN : (N : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  simp only [completedSource]
  rw [hχ.completedLFunction_one_sub]
  calc
    (N : ℂ) ^ ((1 - s) / 2) *
        ((N : ℂ) ^ (s - 1 / 2) * DirichletCharacter.rootNumber χ *
          DirichletCharacter.completedLFunction χ⁻¹ s) =
        ((N : ℂ) ^ ((1 - s) / 2) * (N : ℂ) ^ (s - 1 / 2)) *
          (DirichletCharacter.rootNumber χ *
            DirichletCharacter.completedLFunction χ⁻¹ s) := by ring
    _ = (N : ℂ) ^ (((1 - s) / 2) + (s - 1 / 2)) *
          (DirichletCharacter.rootNumber χ *
            DirichletCharacter.completedLFunction χ⁻¹ s) := by
      rw [← Complex.cpow_add _ _ hN]
    _ = (N : ℂ) ^ (s / 2) *
          (DirichletCharacter.rootNumber χ *
            DirichletCharacter.completedLFunction χ⁻¹ s) := by
      congr 1
      congr 1
      ring
    _ = DirichletCharacter.rootNumber χ *
          ((N : ℂ) ^ (s / 2) * DirichletCharacter.completedLFunction χ⁻¹ s) := by ring

/-- Central reflection retains both the root number and the conjugate character. -/
theorem primitive_centralSource_neg (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (u : ℂ) :
    centralSource χ (-u) =
      DirichletCharacter.rootNumber χ * centralSource χ⁻¹ u := by
  have hs : (1 / 2 : ℂ) + -u = 1 - (1 / 2 + u) := by ring
  simpa only [centralSource, hs] using
    primitive_completedSource_one_sub χ hχ (1 / 2 + u)

theorem primitive_centralSource_conjugate (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (u : ℂ) :
    centralSource χ (-u) =
      DirichletCharacter.rootNumber χ * centralSource (star χ) u := by
  rw [conjugate_character_eq_inverse]
  exact primitive_centralSource_neg χ hχ u

/-- A self-dual source still retains its declared root number in central reflection. -/
theorem primitive_selfDual_centralSource_neg (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (hself : star χ = χ) (u : ℂ) :
    centralSource χ (-u) =
      DirichletCharacter.rootNumber χ * centralSource χ u := by
  simpa only [hself] using primitive_centralSource_conjugate χ hχ u

/-- Division by the exact parity-dependent gamma factor recovers the balanced L-source.
The exceptional modulus-one origin is retained as an explicit hypothesis. -/
theorem completedSource_div_gammaFactor (χ : DirichletCharacter ℂ N) (s : ℂ)
    (hs : s ≠ 0 ∨ N ≠ 1) :
    completedSource χ s / DirichletCharacter.gammaFactor χ s =
      (N : ℂ) ^ (s / 2) * DirichletCharacter.LFunction χ s := by
  rw [completedSource, mul_div_assoc,
    ← DirichletCharacter.LFunction_eq_completed_div_gammaFactor χ s hs]

/-- Exact trivial primitive source; this is the meromorphic completed zeta source. -/
theorem completedSource_modOne (χ : DirichletCharacter ℂ 1) (s : ℂ) :
    completedSource χ s = completedRiemannZeta s := by
  simp only [completedSource, Nat.cast_one, Complex.one_cpow,
    DirichletCharacter.completedLFunction_modOne_eq, one_mul]

/-- A principal character can be primitive only at conductor one. -/
theorem primitive_trivial_level_eq_one (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (htriv : χ = 1) : N = 1 := by
  have hc : χ.conductor = N := hχ
  rw [htriv, DirichletCharacter.conductor_one] at hc
  exact hc.symm

end

end FormalResearch.DirichletL
```
