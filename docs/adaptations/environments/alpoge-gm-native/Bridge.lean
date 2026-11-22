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


/-- The exact signed *finite arithmetic variation* of the original
native Level.Gm. The genuine L'/L(1,chi), centering term, conductors,
Level.Nt and weights are held fixed. This is not a new character or
a replacement for the original CoreGm source. -/
def sourcePrimeDelta (Λ : Level) (lambda : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
    (lambda n - ArithmeticFunction.vonMangoldt n) *
      (x / (n : ℝ) - 1) *
      (1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re)

/-- Original analytic native source plus its explicitly signed,
finite von Mangoldt observation error. The log-derivative and
conductor terms remain entirely on the native source side. -/
def observedNativeGm (Λ : Level) (lambda : ℕ → ℝ) (x : ℝ) : ℝ :=
  Λ.Gm x + sourcePrimeDelta Λ lambda x

/-- Every exact finite arithmetic observation returns exactly the
native source. The prime range and all character phases are literal. -/
theorem observed_native_gm_eq_of_exact (Λ : Level)
    (lambda : ℕ → ℝ) (x : ℝ)
    (hExact : ∀ n ∈ Finset.Icc 1 ⌊x⌋₊,
      lambda n = ArithmeticFunction.vonMangoldt n) :
    observedNativeGm Λ lambda x = Λ.Gm x := by
  have hzero : sourcePrimeDelta Λ lambda x = 0 := by
    unfold sourcePrimeDelta
    apply Finset.sum_eq_zero
    intro n hn
    simp only [hExact n hn, sub_self, zero_mul]
  simp [observedNativeGm, hzero]

/-- Finite signed arithmetic readout error for EXACT native
Level.Nt/Level.wt phases. No L-function bound or RH is supplied. -/
theorem observed_native_gm_error
    (Λ : Level) (lambda err : ℕ → ℝ) (x : ℝ)
    (hErr : ∀ n ∈ Finset.Icc 1 ⌊x⌋₊,
      |lambda n - ArithmeticFunction.vonMangoldt n| ≤ err n) :
    |observedNativeGm Λ lambda x - Λ.Gm x| ≤
      ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, err n *
        |x / (n : ℝ) - 1| *
        |1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re| := by
  change |sourcePrimeDelta Λ lambda x| ≤ _
  unfold sourcePrimeDelta
  calc
    |∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        (lambda n - ArithmeticFunction.vonMangoldt n) *
        (x / (n : ℝ) - 1) *
        (1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re)|
      ≤ ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
          |(lambda n - ArithmeticFunction.vonMangoldt n) *
          (x / (n : ℝ) - 1) *
          (1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re)| :=
            Finset.abs_sum_le_sum_abs _ _
    _ = ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
          |lambda n - ArithmeticFunction.vonMangoldt n| *
          |x / (n : ℝ) - 1| *
          |1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re| := by
            simp only [abs_mul]
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, err n *
          |x / (n : ℝ) - 1| *
          |1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re| := by
        apply Finset.sum_le_sum
        intro n hn
        exact mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_right (hErr n hn) (abs_nonneg _))
          (abs_nonneg _)

/-- The original typed EAtH and CoreAtH hypotheses plus an actual
finite weighted arithmetic-error certificate imply a one-sided
observed bound. No abstract placeholder Prop is accepted. -/
theorem observed_native_gm_upper_with_certified_arithmetic
    (Λ : Level) (lambda err : ℕ → ℝ)
    (eD eL K cHH eK C eps : ℝ) (heps : 0 < eps) :
    ∃ x1 : ℝ, ∀ x ≥ x1, ∀ (φ : Frame) (H : HostAx φ) (TT : Finset φ.A),
      ∀ thetaPrime : ℝ,
      EAtH Λ H.toHostRaw TT x eps C →
      CoreAtH H.toHostRaw TT eD eL K cHH eK eps x →
      (∀ n ∈ Finset.Icc 1 ⌊x⌋₊,
         |lambda n - ArithmeticFunction.vonMangoldt n| ≤ err n) →
      (∑ n ∈ Finset.Icc 1 ⌊x⌋₊, err n *
        |x / (n : ℝ) - 1| *
        |1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re|) ≤
        x ^ thetaPrime -
          x ^ ((1 : ℝ) / 2 + (eD + eL + 7) * eps) →
      observedNativeGm Λ lambda x ≤ x ^ thetaPrime := by
  obtain ⟨x1, hCore⟩ :=
    observed_gm_upper_of_native_suppliers Λ eD eL K cHH eK C eps heps
  refine ⟨x1, ?_⟩
  intro x hx φ H TT thetaPrime hE hC hErr hMargin
  apply hCore x hx φ H TT (observedNativeGm Λ lambda x) thetaPrime
    (∑ n ∈ Finset.Icc 1 ⌊x⌋₊, err n *
        |x / (n : ℝ) - 1| *
        |1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re|)
    hE hC
  · exact observed_native_gm_error Λ lambda err x hErr
  · exact hMargin

end GRWTSK.NumberTheory.AlpogeNativeGmTransport
