/-
  spectral-rh/Spectral/Schrodinger/Spectrum.lean
  ---------------------------------------------
  Qualitative spectral facts for the half-line Schrödinger operator `L`
  defined in `Spectral.Schrodinger.Operator`.
-/

import spectral_rh.Spectral.Schrodinger.Operator
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Topology.Algebra.Module

open Real Set Filter
open scoped BigOperators

namespace SchrodingerSpectrum

variable {P : Schrodinger.Potential}

local notation "L" => Schrodinger.L P
local notation "E" => Schrodinger.L²(ℝ≥0)

/-!  ## 1.  Basic qualitative facts                                            -/

/-- The spectrum of `L` is bounded below by the same constant that
    lower-bounds the quadratic form. -/
lemma spectrum_lowerBound :
    ∃ C : ℝ, spectrum ℝ L ⊆ Set.Ici C := by
  rcases Schrodinger.L_boundedBelow P with ⟨C, h⟩
  -- `spectrum_subset_of_lowerBound` is in `Mathlib.Analysis.Spectrum`.
  exact ⟨C, spectrum_subset_of_lowerBound L h⟩

/-- Because `L` is self-adjoint (over `ℝ` → extends to `ℂ`), its complex
    spectrum is real. -/
lemma spectrum_subset_real :
    spectrum ℂ (L : E →L[ℂ] E) ⊆ (Set.image (fun r : ℝ ↦ (r : ℂ))
                                             (spectrum ℝ L)) :=
  spectrum_subset_real_of_selfAdjoint (Schrodinger.L_isSelfAdjoint P)

/-- Compact resolvent ⇒ spectrum equals point spectrum (pure point). -/
lemma spectrum_eq_eigenvalues :
    spectrum ℝ L = {λ | IsEigenvalue L λ} := by
  simpa using
    spectrum_eq_pointSpectrum_of_compactResolvent_selfAdjoint
      (Schrodinger.L_compactResolvent P)
      (Schrodinger.L_isSelfAdjoint P)

/-!  ## 2.  Enumeration (optional utilities)                                  -/

/--
`hasEigenvalues` from the compact-resolvent library gives a multiset
`eigenvalues : Multiset ℝ` that lists the spectrum with multiplicities
and tends to `+∞`.  ￼You can obtain it via:
