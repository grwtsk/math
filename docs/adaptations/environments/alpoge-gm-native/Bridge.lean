/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
ISOLATED SOURCE PROOF CANDIDATE: NOT_RUN.
Requires Alpoge's pinned v4.33.1 Mathlib tree, NOT grwtsk/math
v4.34.1. Does not import Main, FinalTheorems or RH.
-/
import Development.AutomorphicArithmetic.PrimitiveCosets.CoreGm
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.Window

/-!
# Native typed Alpoge core_gm and HasWindows observation returns

This is a deliberately *isolated* adapter to the original types:
  EAtH Λ H.toHostRaw TT x eps C
  CoreAtH H.toHostRaw TT eD eL K cHH eK eps x
  Level.Gm x
  Formalism.HC.HasWindows
All source quantifiers and original analytical premises are preserved.
An observed arithmetic quantity is merely a bounded readout of Gm,
not a replacement for those premises.

This file MUST be compiled in the separately pinned upstream
environment. It neither imports nor proves the final RH theorem.
-/

set_option autoImplicit false
noncomputable section
open UpperTheory.Comparison₂ Formalism Formalism.HC Formalism.D5
open Formalism.RankGapBounds.WeightedMeanData
open Formalism.LFunctionChainParameters.WeightedSlopeBounds
open Formalism.LFunctionChainParameters.characterSumData
open Formalism.LFunctionChainParameters.ThickSetMeanBounds
open Formalism.LFunctionChainParameters.LErr
open Formalism.LFunctionChainParameters.LChain
open Formalism.LFunctionChainParameters.LHost

namespace GRWTSK.NumberTheory.AlpogeNativeGmTransport

/-- Source-faithful conditional local Gm upper bound with exact EAtH,
CoreAtH, Level, Frame, HostAx and TT inputs. The extra margin is the
ONLY new arithmetic-observation hypothesis. -/
theorem observed_gm_upper_of_native_suppliers
    (Λ : Level) (eD eL K cHH eK C eps : ℝ) (heps : 0 < eps) :
    ∃ x1 : ℝ, ∀ x ≥ x1, ∀ (φ : Frame) (H : HostAx φ) (TT : Finset φ.A),
      ∀ (observed thetaPrime err : ℝ),
      EAtH Λ H.toHostRaw TT x eps C →
      CoreAtH H.toHostRaw TT eD eL K cHH eK eps x →
      |observed - Λ.Gm x| ≤ err →
      err ≤ x ^ thetaPrime -
        x ^ ((1 : ℝ) / 2 + (eD + eL + 7) * eps) →
      observed ≤ x ^ thetaPrime := by
  obtain ⟨x1, hx1⟩ :=
    UpperTheory.Comparison₂.core_gm Λ eD eL K cHH eK C eps heps
  refine ⟨x1, ?_⟩
  intro x hx φ H TT observed thetaPrime err hE hCore hObs hMargin
  have hSource := hx1 x hx φ H TT hE hCore
  have hUpper := (abs_le.mp hObs).2
  linarith

/-- Exact original HasWindows statement, not a locally weakened copy.
Every upper bound is a genuine comparison against the original Level.Gm. -/
theorem observed_gm_windows_of_native_windows
    (Λ : Level) (observed err : ℝ → ℝ)
    (theta thetaPrime la x0 : ℝ)
    (hWin : HasWindows {x : ℝ | Λ.Gm x ≤ x ^ theta} la)
    (hErr : ∀ x ≥ x0, |observed x - Λ.Gm x| ≤ err x)
    (hMargin : ∀ x ≥ x0, err x ≤ x ^ thetaPrime - x ^ theta) :
    HasWindows {x : ℝ | observed x ≤ x ^ thetaPrime} la := by
  apply HasWindows.mono (x0 := x0) hWin
  intro x hx hSource
  change observed x ≤ x ^ thetaPrime
  have hUp := (abs_le.mp (hErr x hx)).2
  have hM := hMargin x hx
  have hS : Λ.Gm x ≤ x ^ theta := hSource
  linarith

end GRWTSK.NumberTheory.AlpogeNativeGmTransport
