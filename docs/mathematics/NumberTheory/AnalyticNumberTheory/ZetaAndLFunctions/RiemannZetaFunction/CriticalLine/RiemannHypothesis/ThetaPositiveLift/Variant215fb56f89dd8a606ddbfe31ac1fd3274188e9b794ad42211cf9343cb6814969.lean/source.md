# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77d018cb2601e79dc0358f1f745b3422d1c14b7c` · SHA-256 `215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiModeCriterionCounterexample
import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet

/-!
# Permutation symmetrization of the finite theta mode expansion

The raw column-wise mode sign criterion is false.  The next exact reorganization
must therefore retain cancellation.

This module first sums every finite mode choice over all permutations of the
columns.  Because the positive mode-weight product is permutation invariant,
the whole truncated signed determinant can be rewritten exactly as a sum of
these permutation-orbit contributions.

The rank-two hostile pair is then computed exactly.  Even after adding the
identity ordering and the swapped ordering of modes (0,1), the combined
polynomial contribution is strictly negative at t = 0.  Thus permutation
symmetrization alone is still too local: any successful all-rank positivity
argument must retain cancellation across different mode multisets or use a
different whole-determinant factorization.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
noncomputable section

/-- Positive scalar weight product attached to a finite column-wise mode
choice. -/
def thetaPhiFiniteModeChoiceWeight
    {k N : ℕ} (t : ℝ) (f : Fin k → Fin N) : ℝ :=
  ∏ j : Fin k, thetaPhiDerivativeModeWeight (f j).val t

/-- The finite-column version of the previously defined pure mode determinant. -/
def thetaPhiFiniteModeChoiceSignedDet
    {k N : ℕ} (t : ℝ) (f : Fin k → Fin N) : ℝ :=
  thetaPhiModeChoiceSignedDet k t (fun j => (f j).val)

/-- The positive scalar mode-weight product is invariant under permuting the
columns. -/
theorem thetaPhiFiniteModeChoiceWeight_perm
    {k N : ℕ} (t : ℝ) (f : Fin k → Fin N)
    (σ : Equiv.Perm (Fin k)) :
    thetaPhiFiniteModeChoiceWeight t (fun j => f (σ j)) =
      thetaPhiFiniteModeChoiceWeight t f := by
  unfold thetaPhiFiniteModeChoiceWeight
  simpa using
    σ.bijective.prod_comp
      (fun j : Fin k =>
        thetaPhiDerivativeModeWeight (f j).val t)

/-- The verified finite-mode expansion written with the local finite-choice
abbreviations. -/
theorem signedJetDet_truncation_eq_finite_mode_sum
    (k N : ℕ) (t : ℝ) :
    signedJetDet k
        (fun n => thetaPhiDerivativeTapeTruncation N n t) =
      ∑ f : Fin k → Fin N,
        thetaPhiFiniteModeChoiceWeight t f *
          thetaPhiFiniteModeChoiceSignedDet t f := by
  simpa [thetaPhiFiniteModeChoiceWeight,
    thetaPhiFiniteModeChoiceSignedDet] using
      signedJetDet_truncation_eq_mode_sum k N t

/-- Reindexing all finite mode choices by one column permutation leaves the
weighted total unchanged. -/
theorem finite_mode_weighted_sum_perm_invariant
    {k N : ℕ} (t : ℝ) (σ : Equiv.Perm (Fin k)) :
    (∑ f : Fin k → Fin N,
      thetaPhiFiniteModeChoiceWeight t f *
        thetaPhiFiniteModeChoiceSignedDet t
          (fun j => f (σ j))) =
      ∑ f : Fin k → Fin N,
        thetaPhiFiniteModeChoiceWeight t f *
          thetaPhiFiniteModeChoiceSignedDet t f := by
  apply Fintype.sum_equiv (precomposeEquiv σ)
  intro f
  change
    thetaPhiFiniteModeChoiceWeight t f *
        thetaPhiFiniteModeChoiceSignedDet t
          (fun j => f (σ j)) =
      thetaPhiFiniteModeChoiceWeight t (fun j => f (σ j)) *
        thetaPhiFiniteModeChoiceSignedDet t
          (fun j => f (σ j))
  rw [thetaPhiFiniteModeChoiceWeight_perm]

/-- The signed polynomial contribution of one finite mode choice after summing
over every column permutation. -/
def thetaPhiFiniteModeOrbitSignedSum
    {k N : ℕ} (t : ℝ) (f : Fin k → Fin N) : ℝ :=
  ∑ σ : Equiv.Perm (Fin k),
    thetaPhiFiniteModeChoiceSignedDet t
      (fun j => f (σ j))

/-- Exact cancellation-preserving permutation symmetrization of the finite mode
expansion.  No individual orbit sign is assumed. -/
theorem factorial_mul_signedJetDet_truncation_eq_orbit_sum
    (k N : ℕ) (t : ℝ) :
    (k.factorial : ℝ) *
        signedJetDet k
          (fun n => thetaPhiDerivativeTapeTruncation N n t) =
      ∑ f : Fin k → Fin N,
        thetaPhiFiniteModeChoiceWeight t f *
          thetaPhiFiniteModeOrbitSignedSum t f := by
  rw [signedJetDet_truncation_eq_finite_mode_sum]
  calc
    (k.factorial : ℝ) *
          (∑ f : Fin k → Fin N,
            thetaPhiFiniteModeChoiceWeight t f *
              thetaPhiFiniteModeChoiceSignedDet t f) =
        ∑ σ : Equiv.Perm (Fin k),
          ∑ f : Fin k → Fin N,
            thetaPhiFiniteModeChoiceWeight t f *
              thetaPhiFiniteModeChoiceSignedDet t f := by
      simp [Fintype.card_perm]
    _ =
        ∑ σ : Equiv.Perm (Fin k),
          ∑ f : Fin k → Fin N,
            thetaPhiFiniteModeChoiceWeight t f *
              thetaPhiFiniteModeChoiceSignedDet t
                (fun j => f (σ j)) := by
      apply Fintype.sum_congr
      intro σ
      exact (finite_mode_weighted_sum_perm_invariant t σ).symm
    _ =
        ∑ f : Fin k → Fin N,
          ∑ σ : Equiv.Perm (Fin k),
            thetaPhiFiniteModeChoiceWeight t f *
              thetaPhiFiniteModeChoiceSignedDet t
                (fun j => f (σ j)) := by
      rw [Finset.sum_comm]
    _ =
        ∑ f : Fin k → Fin N,
          thetaPhiFiniteModeChoiceWeight t f *
            thetaPhiFiniteModeOrbitSignedSum t f := by
      apply Fintype.sum_congr
      intro f
      unfold thetaPhiFiniteModeOrbitSignedSum
      rw [Finset.mul_sum]

/-- The two possible column orderings of two selected natural modes, written
without any positivity assumption. -/
def thetaPhiModePairSignedSum
    (t : ℝ) (a b : ℕ) : ℝ :=
  thetaPhiModeChoiceSignedDet 2 t
      ![a, b] +
    thetaPhiModeChoiceSignedDet 2 t
      ![b, a]

/-- Exact identity/swap pair for modes (0,1) at the source origin. -/
theorem thetaPhiModePairSignedSum_zero_01 :
    thetaPhiModePairSignedSum 0 0 1 =
      -16 * Real.pi *
        (144 * Real.pi ^ 3 - 350 * Real.pi ^ 2 +
          339 * Real.pi - 75) := by
  unfold thetaPhiModePairSignedSum thetaPhiModeChoiceSignedDet
  norm_num [Matrix.det_fin_two,
    thetaPhiDerivativePolynomial_zero_eval]
  ring

/-- The cubic factor in the permutation-paired rank-two hostile case is
strictly positive. -/
theorem thetaPhiModePair_zero_01_cubic_pos :
    0 <
      144 * Real.pi ^ 3 - 350 * Real.pi ^ 2 +
        339 * Real.pi - 75 := by
  have hx : 0 < Real.pi - 3 := sub_pos.mpr Real.pi_gt_three
  have hid :
      144 * Real.pi ^ 3 - 350 * Real.pi ^ 2 +
          339 * Real.pi - 75 =
        144 * (Real.pi - 3) ^ 3 +
          946 * (Real.pi - 3) ^ 2 +
            2127 * (Real.pi - 3) + 1680 := by
    ring
  rw [hid]
  positivity

/-- Even the complete identity/swap pair for modes (0,1) is negative at
t = 0.  Permutation symmetrization therefore does not make every local mode
multiset contribution nonnegative. -/
theorem thetaPhiModePairSignedSum_zero_01_neg :
    thetaPhiModePairSignedSum 0 0 1 < 0 := by
  rw [thetaPhiModePairSignedSum_zero_01]
  have hq := thetaPhiModePair_zero_01_cubic_pos
  have hp :
      0 < 16 * Real.pi *
        (144 * Real.pi ^ 3 - 350 * Real.pi ^ 2 +
          339 * Real.pi - 75) := by
    positivity
  linarith

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
