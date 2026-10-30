import Mathlib
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.SoficDivisorTransforms

/-!
# Trivial-zero anchors and certified adaptive truncation

Copyright (c) 2026 grwtsk contributors. MIT.
The anchors -2*k are actual trivial-zero locations, but this finite module
does not prove their analytic zeta-zero status. The full explicit formula
and all zero-tail bounds remain external analytic supplier obligations.
The adaptive selector searches a finite, explicitly ordered list of
candidate cutoffs; it never asserts a suitable cutoff exists without proof.
SOURCE_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN / AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveTrivialZeroAnchor

/-- Exact real-axis location of the k-th trivial zero, k >= 1. -/
def trivialAnchor (k : ℕ) : ℝ := -(2 * (k + 1) : ℕ)

/-- Finite explicitly addressable trivial-zero anchor family. -/
def anchorList (count : ℕ) : List ℝ :=
  (List.range count).map trivialAnchor

theorem anchorList_length (count : ℕ) :
    (anchorList count).length = count := by
  simp [anchorList]

/-- A supplied nonnegative certified budget at each admissible height.
This record is deliberately distinct from a proof of a tail bound. -/
structure Budget (Cutoff : Type*) where
  bound : Cutoff → ℝ
  nonneg : ∀ T, 0 ≤ bound T

/-- Search the user-supplied finite sequence for its first certified cutoff. -/
def chooseCutoff {Cutoff : Type*} [DecidableEq Cutoff]
    (candidates : List Cutoff) (B : Budget Cutoff) (epsilon : ℝ)
    [DecidablePred (fun T => B.bound T ≤ epsilon)] : Option Cutoff :=
  candidates.find? (fun T => B.bound T ≤ epsilon)

/-- If selection succeeds, the chosen cutoff really meets the supplied
budget; this does not validate the budget as an analytic tail estimate. -/
theorem chooseCutoff_bound {Cutoff : Type*} [DecidableEq Cutoff]
    (candidates : List Cutoff) (B : Budget Cutoff) (epsilon : ℝ)
    [DecidablePred (fun T => B.bound T ≤ epsilon)] {T : Cutoff}
    (h : chooseCutoff candidates B epsilon = some T) :
    B.bound T ≤ epsilon := by
  unfold chooseCutoff at h
  exact (List.find?_some h).2

/-- Exact finite-series tail majorant, supplied explicitly rather than
silently replacing the infinite trivial-zero series. For x > 1,
the geometric ratio r=x^-2 lies in (0,1). The conventional analytic
bound for the remainder after m terms is r^(m+1) / (2*(m+1)*(1-r)).
This definition does not assert its analytic validation. -/
def trivialTailBudget (r : ℝ) (m : ℕ) : ℝ :=
  r ^ (m + 1) / (2 * (m + 1) * (1 - r))

end GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveTrivialZeroAnchor
