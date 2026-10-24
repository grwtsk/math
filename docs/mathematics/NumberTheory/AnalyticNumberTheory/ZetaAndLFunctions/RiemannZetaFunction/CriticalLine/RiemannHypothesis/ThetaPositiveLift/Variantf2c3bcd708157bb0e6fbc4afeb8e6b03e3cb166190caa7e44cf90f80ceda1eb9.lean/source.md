# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantf2c3bcd708157bb0e6fbc4afeb8e6b03e3cb166190caa7e44cf90f80ceda1eb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `087d1391f05a620941dbb9525e75c5d84e560d59` · SHA-256 `f2c3bcd708157bb0e6fbc4afeb8e6b03e3cb166190caa7e44cf90f80ceda1eb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourClosure
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianThree
import FormalResearch.RiemannHypothesis.ThetaPhiLogConcavity

/-!
# Generic signed-jet criterion for the theta source

Status: `ThetaPhiRankFiveCertificate` refutes the all-rank criterion for the
unchanged full source. The finite-rank theorems through rank four below remain
valid. Ordinary derivative jets and repeated-tail minors are distinct objects.

The verified source signs through rank four have one uniform Hankel form.  This
module records that form independently of the fixed seven-entry implementation
and defines the exact all-rank source criterion tested by later work.

No infinite theta derivative tape is manufactured here.  The actual maintained
seven-entry source jet is embedded only as a finite prefix and is proved signed
regular through rank four. The all-rank predicate is refuted by the separate
rank-five certificate.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- Oriented Hankel determinant of rank `k` carried by a scalar jet. -/
def signedJetDet (k : ℕ) (jet : ℕ → ℝ) : ℝ :=
  (-1 : ℝ) ^ (k * (k - 1) / 2) *
    Matrix.det (Matrix.of fun i j : Fin k => jet (i.val + j.val))

/-- Signed Hankel regularity through a finite rank. -/
def SignedJetRegularThrough (N : ℕ) (jet : ℕ → ℝ) : Prop :=
  ∀ k : ℕ, k ≤ N → 0 ≤ signedJetDet k jet

/-- Signed Hankel regularity at every finite rank. -/
def SignedJetRegular (jet : ℕ → ℝ) : Prop :=
  ∀ k : ℕ, 0 ≤ signedJetDet k jet

/-- An all-rank source jet must begin at the literal theta source and each
successive entry must be the ordinary derivative of the previous entry. -/
structure ThetaPhiSourceJet where
  /-- The candidate derivative tape, indexed by ordinary derivative order. -/
  value : ℕ → ℝ → ℝ
  /-- Order zero is the literal theta source. -/
  zero_eq : value 0 = thetaPhi
  /-- Every successor is the ordinary derivative of its predecessor. -/
  succ_hasDerivAt : ∀ n t, HasDerivAt (value n) (value (n + 1) t) t

/-- Exact all-rank analytic criterion left after the verified finite ranks:
construct the literal derivative jet and prove every oriented Hankel
determinant nonnegative on the nonnegative source half-line. -/
def ThetaPhiAllRankSignedJetCriterion : Prop :=
  ∃ J : ThetaPhiSourceJet,
    ∀ t : ℝ, 0 ≤ t →
      SignedJetRegular (fun n => J.value n t)

/-- All-rank signed regularity immediately supplies every finite truncation. -/
theorem SignedJetRegular.through {jet : ℕ → ℝ}
    (h : SignedJetRegular jet) (N : ℕ) :
    SignedJetRegularThrough N jet := by
  intro k _
  exact h k

/-- A stronger finite signed-jet certificate restricts to every lower rank. -/
theorem SignedJetRegularThrough.mono
    {M N : ℕ} {jet : ℕ → ℝ}
    (h : SignedJetRegularThrough N jet) (hMN : M ≤ N) :
    SignedJetRegularThrough M jet := by
  intro k hk
  exact h k (hk.trans hMN)

/-- Rank zero is the positive empty determinant. -/
theorem signedJetDet_zero (jet : ℕ → ℝ) :
    signedJetDet 0 jet = 1 := by
  simp [signedJetDet]

/-- Rank one is exactly the leading jet coordinate. -/
theorem signedJetDet_one (jet : ℕ → ℝ) :
    signedJetDet 1 jet = jet 0 := by
  simp [signedJetDet]

/-- The rank-two oriented signed determinant is the usual strict
log-concavity numerator with its sign reversed. -/
theorem signedJetDet_two (jet : ℕ → ℝ) :
    signedJetDet 2 jet =
      jet 1 ^ 2 - jet 0 * jet 2 := by
  unfold signedJetDet
  norm_num
  rw [Matrix.det_fin_two]
  simp
  ring

/-- Rank three carries the repository's negative determinant orientation. -/
theorem signedJetDet_three (jet : ℕ → ℝ) :
    signedJetDet 3 jet =
      -Matrix.det !![
        jet 0, jet 1, jet 2;
        jet 1, jet 2, jet 3;
        jet 2, jet 3, jet 4] := by
  unfold signedJetDet
  norm_num
  congr 1
  ext i j
  fin_cases i <;> fin_cases j <;> rfl

/-- Rank four has positive orientation and uses exactly seven consecutive jet
coordinates. -/
theorem signedJetDet_four (jet : ℕ → ℝ) :
    signedJetDet 4 jet =
      Matrix.det !![
        jet 0, jet 1, jet 2, jet 3;
        jet 1, jet 2, jet 3, jet 4;
        jet 2, jet 3, jet 4, jet 5;
        jet 3, jet 4, jet 5, jet 6] := by
  norm_num [signedJetDet]
  congr 1
  ext i j
  fin_cases i <;> fin_cases j <;> rfl

/-- The maintained seven-entry source jet viewed as a natural-number prefix.
Values beyond order six are deliberately left as zero rather than being
presented as unproved higher theta derivatives. -/
def thetaPhiJetPrefix7 (t : ℝ) (n : ℕ) : ℝ :=
  if h : n < 7 then thetaPhiJet7 t ⟨n, h⟩ else 0

/-- Inside its proved range, the natural-number prefix is exactly the
maintained seven-entry source jet. -/
@[simp] theorem thetaPhiJetPrefix7_apply
    (t : ℝ) {n : ℕ} (hn : n < 7) :
    thetaPhiJetPrefix7 t n =
      thetaPhiJet7 t ⟨n, hn⟩ := by
  simp [thetaPhiJetPrefix7, hn]

/-- Rank one is the already-proved strict positivity of the actual source. -/
theorem thetaPhiJetPrefix7_signedJetDet_one_pos
    {t : ℝ} (ht : 0 ≤ t) :
    0 < signedJetDet 1 (thetaPhiJetPrefix7 t) := by
  rw [signedJetDet_one]
  simpa [thetaPhiJetPrefix7, thetaPhiJet7] using
    thetaPhi_positive t ht

/-- Rank two is exactly the strict source log-concavity Wronskian. -/
theorem thetaPhiJetPrefix7_signedJetDet_two_pos
    {t : ℝ} (ht : 0 ≤ t) :
    0 < signedJetDet 2 (thetaPhiJetPrefix7 t) := by
  have h := thetaPhi_strict_logConcavity_curvature ht
  rw [deriv_deriv_thetaPhi_eq_raw, deriv_thetaPhi_eq_raw] at h
  rw [signedJetDet_two]
  simp [thetaPhiJetPrefix7, thetaPhiJet7]
  nlinarith

/-- Rank three is the strict negative third source Wronskian with its
repository orientation applied. -/
theorem thetaPhiJetPrefix7_signedJetDet_three_pos
    {t : ℝ} (ht : 0 ≤ t) :
    0 < signedJetDet 3 (thetaPhiJetPrefix7 t) := by
  have h := thetaPhi_wronskian_three_neg ht
  rw [deriv_deriv_thetaPhi_eq_raw, deriv_thetaPhi_eq_raw] at h
  rw [signedJetDet_three]
  simpa [thetaPhiJetPrefix7, thetaPhiJet7] using neg_pos.mpr h

/-- Rank four is the newly verified literal source-Wronskian theorem. -/
theorem thetaPhiJetPrefix7_signedJetDet_four_pos
    {t : ℝ} (ht : 0 ≤ t) :
    0 < signedJetDet 4 (thetaPhiJetPrefix7 t) := by
  rw [signedJetDet_four]
  have h := thetaPhiWronskianFour_positive t ht
  rw [thetaPhiWronskianFour_eq_matrix] at h
  simpa [thetaPhiJetPrefix7] using h

/-- The literal theta source now has one uniform signed-jet certificate through
rank four.  This is the verified finite prefix of the all-rank criterion. -/
theorem thetaPhiJetPrefix7_signedRegularThrough_four
    {t : ℝ} (ht : 0 ≤ t) :
    SignedJetRegularThrough 4 (thetaPhiJetPrefix7 t) := by
  intro k hk
  interval_cases k
  · rw [signedJetDet_zero]
    norm_num
  · exact (thetaPhiJetPrefix7_signedJetDet_one_pos ht).le
  · exact (thetaPhiJetPrefix7_signedJetDet_two_pos ht).le
  · exact (thetaPhiJetPrefix7_signedJetDet_three_pos ht).le
  · exact (thetaPhiJetPrefix7_signedJetDet_four_pos ht).le

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
