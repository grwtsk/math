/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
ISOLATED SOURCE_PROOF_CANDIDATE: original Alpoge Lean v4.33.1 /
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Elaboration / trusted kernel / axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeGmNormalization
import GRWTSK.NumberTheory.AlpogeNativeGmLogDerivativeCertificate
import Development.AutomorphicArithmetic.PrimitiveCosets.CoreGm
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.Landau
import Mathlib.Tactic

/-!
# Eventually quantified integer Gm source bound with genuine native hosts

No replacement Prop parameters: EAtH and CoreAtH use their original
Frame, HostAx, HostRaw and TT types. The actual core_gm theorem proves
Gm(x) <= x^alpha only WHEN these original analytic inputs are supplied
at that x. This file preserves the exact logical dependency.

The slack inequality x^alpha + 1/(4x) <= x^theta holds eventually
under alpha<theta and theta>0; the elementary growth proof is recorded
in the adjacent mathematics. A separately supplied hMargin represents
that exact inequality until the growth lemma is elaborated in Lean.

NO final RH theorem, FinalTheorems, everyCharacter or synthetic
spectral substitute is imported. The zero-free return uses the
INTERMEDIATE independent Landau.zero_free_of_Chebyshev_growth, with
its full original eventual-real Gm hypothesis retained.
-/

set_option autoImplicit false
noncomputable section

open Formalism Formalism.HC
open UpperTheory.Comparison₂

namespace GRWTSK.NumberTheory.AlpogeNativeGmEventualInteger

/-- The actual exponent in Alpoge's intermediate core_gm theorem. -/
def coreExponent (eD eL eps : ℝ) : ℝ :=
  (1 : ℝ) / 2 + (eD + eL + 7) * eps

/-- Exact source-typed integer margin: the FULL EAtH and CoreAtH
hypotheses are required at EACH integer. -/
theorem core_gm_at_integer_with_source_margin
    (Λ : Level) (eD eL K cHH eK C eps : ℝ) (heps : 0 < eps) :
    ∃ x1 : ℝ, ∀ n : ℕ, x1 ≤ (n : ℝ) →
      ∀ (φ : Frame) (H : HostAx φ) (TT : Finset φ.A)
        (theta : ℝ),
      EAtH Λ H.toHostRaw TT (n : ℝ) eps C →
      CoreAtH H.toHostRaw TT eD eL K cHH eK eps (n : ℝ) →
      (n : ℝ) ^ coreExponent eD eL eps +
          1 / (4 * (n : ℝ)) ≤ (n : ℝ) ^ theta →
      Λ.Gm (n : ℝ) ≤ (n : ℝ) ^ theta -
        1 / (4 * (n : ℝ)) := by
  obtain ⟨x1, hx1⟩ :=
    UpperTheory.Comparison₂.core_gm Λ eD eL K cHH eK C eps heps
  refine ⟨x1, ?_⟩
  intro n hn φ H TT theta hE hCore hMargin
  have hUpper :
      Λ.Gm (n : ℝ) ≤ (n : ℝ) ^ coreExponent eD eL eps := by
    simpa only [coreExponent] using
      (hx1 (n : ℝ) hn φ H TT hE hCore)
  linarith

/-- The exact eventually quantified integer inequality, conditioned
on the ACTUAL original host witnesses at all sufficiently large
integer inputs and the separately proved exponent slack.
No arbitrary EAtH/CoreAtH surrogate is accepted. -/
theorem eventual_integer_gm_of_native_host_witnesses
    (Λ : Level) (eD eL K cHH eK C eps theta : ℝ)
    (heps : 0 < eps)
    (hHosts : ∃ y0 : ℝ, ∀ n : ℕ, y0 ≤ (n : ℝ) →
      ∃ (φ : Frame) (H : HostAx φ) (TT : Finset φ.A),
        EAtH Λ H.toHostRaw TT (n : ℝ) eps C ∧
        CoreAtH H.toHostRaw TT eD eL K cHH eK eps (n : ℝ))
    (hMargin : ∃ y1 : ℝ, ∀ n : ℕ, y1 ≤ (n : ℝ) →
      (n : ℝ) ^ coreExponent eD eL eps +
        1 / (4 * (n : ℝ)) ≤ (n : ℝ) ^ theta) :
    ∃ y2 : ℝ, ∀ n : ℕ, y2 ≤ (n : ℝ) →
      Λ.Gm (n : ℝ) ≤ (n : ℝ) ^ theta -
        1 / (4 * (n : ℝ)) := by
  obtain ⟨x1, hx1⟩ :=
    core_gm_at_integer_with_source_margin Λ eD eL K cHH eK C eps heps
  obtain ⟨y0, hy0⟩ := hHosts
  obtain ⟨y1, hy1⟩ := hMargin
  refine ⟨max x1 (max y0 y1), ?_⟩
  intro n hn
  have hx1 : x1 ≤ (n : ℝ) := (le_max_left _ _).trans hn
  have hy0' : y0 ≤ (n : ℝ) :=
    (le_max_left _ _).trans ((le_max_right _ _).trans hn)
  have hy1' : y1 ≤ (n : ℝ) :=
    (le_max_right _ _).trans ((le_max_right _ _).trans hn)
  obtain ⟨φ, H, TT, hE, hCore⟩ := hy0 n hy0'
  exact hx1 n hx1 φ H TT theta hE hCore (hy1 n hy1')

/-- The original intermediate Landau theorem already returns its
TRUE zero-free Level type from an all-real eventual Gm estimate.
The missing integer-to-real interpolation is a separately specified
curvature supplier, not inferred from an arbitrary finite sample. -/
theorem original_zero_free_of_eventual_real_gm
    (Λ : Level) (theta y0 : ℝ)
    (hθ0 : 0 < theta) (hθ1 : theta < 1)
    (hGrowth : ∀ x ≥ y0, Λ.Gm x ≤ x ^ theta) :
    Λ.ZeroFreeAbove theta := by
  exact (Landau.zero_free_of_Chebyshev_growth Λ)
    theta hθ0 hθ1 y0 hGrowth

end GRWTSK.NumberTheory.AlpogeNativeGmEventualInteger
