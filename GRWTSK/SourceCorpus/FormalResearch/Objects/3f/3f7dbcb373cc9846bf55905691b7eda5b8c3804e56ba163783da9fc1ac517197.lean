import FormalResearch.RiemannHypothesis.ThetaPhiBaseTouchardIdentification

/-!
# Parity normal form for the theta signed-moment factorization

Status: `ThetaPhiRankFiveCertificate.not_thetaPhiSignedMomentParityCriterion`
refutes the all-rank parity premise below. The algebraic implication to source
signed jets remains valid; it is no longer an open positivity target.

The generalized Touchard identification and signed-Poisson bridge identify the
finite theta base tape with an infinite signed moment sequence on the arithmetic
support `4*l+5`.

This module isolates the exact sign of every finite Cauchy--Binet summand.
After the positive Christoffel multiplier and Vandermonde square are separated,
the only remaining sign is

`(-1)^(sum_i l_i)`.

It also upgrades the verified signed-moment representation to a `HasSum`,
proves convergence of finite signed-moment truncations to the actual finite-mode
base tape, and transports the parity sums to the finite theta signed-jet
determinant.

No parity-sum positivity is assumed or proved.  The final proposition in this
module is a finite explicit sufficient criterion for the still-open all-rank
source signed-jet theorem.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Filter
open scoped BigOperators Topology
noncomputable section

/-- Positive magnitude of one signed Christoffel weight. -/
def thetaPhiBaseChristoffelMagnitude
    (N : ℕ) (t : ℝ) (l : ℕ) : ℝ :=
  thetaPhiBaseMomentMagnitude N t l *
    (thetaPhiSignedMomentNode l + 1)

/-- Every Christoffel magnitude is nonnegative. -/
theorem thetaPhiBaseChristoffelMagnitude_nonnegative
    (N : ℕ) (t : ℝ) (l : ℕ) :
    0 ≤ thetaPhiBaseChristoffelMagnitude N t l := by
  unfold thetaPhiBaseChristoffelMagnitude
  exact mul_nonneg
    (thetaPhiBaseMomentMagnitude_nonnegative N t l)
    (thetaPhiSignedMomentNode_add_one_pos l).le

/-- The signed Christoffel weight has exactly the parity sign of its support
index and a nonnegative magnitude. -/
theorem thetaPhiBaseSignedMomentWeight_mul_node_add_one
    (N : ℕ) (t : ℝ) (l : ℕ) :
    thetaPhiBaseSignedMomentWeight N t l *
        (thetaPhiSignedMomentNode l + 1) =
      (-1 : ℝ) ^ l *
        thetaPhiBaseChristoffelMagnitude N t l := by
  unfold thetaPhiBaseSignedMomentWeight
    thetaPhiBaseChristoffelMagnitude
  ring

/-- Nonnegative magnitude of one finite signed-moment Cauchy--Binet selection. -/
def thetaPhiSignedMomentSelectionMagnitude
    {k L : ℕ} (N : ℕ) (t : ℝ)
    (f : Fin k → Fin L) : ℝ :=
  (∏ i : Fin k,
      thetaPhiBaseChristoffelMagnitude N t (f i).val) *
    (thetaPhiSignedMomentVandermondeDet f) ^ 2

/-- The selection magnitude is nonnegative independently of every parity sign. -/
theorem thetaPhiSignedMomentSelectionMagnitude_nonnegative
    {k L : ℕ} (N : ℕ) (t : ℝ)
    (f : Fin k → Fin L) :
    0 ≤ thetaPhiSignedMomentSelectionMagnitude N t f := by
  unfold thetaPhiSignedMomentSelectionMagnitude
  exact mul_nonneg
    (Finset.prod_nonneg
      (fun i _ =>
        thetaPhiBaseChristoffelMagnitude_nonnegative
          N t (f i).val))
    (sq_nonneg _)

/-- Literal summand in the specialized finite signed-moment
Cauchy--Binet formula. -/
def thetaPhiSignedMomentSelectionTerm
    {k L : ℕ} (N : ℕ) (t : ℝ)
    (f : Fin k → Fin L) : ℝ :=
  (∏ i : Fin k,
      thetaPhiBaseSignedMomentWeight N t (f i).val *
        (thetaPhiSignedMomentNode (f i).val + 1)) *
    (thetaPhiSignedMomentVandermondeDet f) ^ 2

/-- Exact parity normal form of one Cauchy--Binet summand. -/
theorem thetaPhiSignedMomentSelectionTerm_eq_parity
    {k L : ℕ} (N : ℕ) (t : ℝ)
    (f : Fin k → Fin L) :
    thetaPhiSignedMomentSelectionTerm N t f =
      (-1 : ℝ) ^ (∑ i : Fin k, (f i).val) *
        thetaPhiSignedMomentSelectionMagnitude N t f := by
  unfold thetaPhiSignedMomentSelectionTerm
    thetaPhiSignedMomentSelectionMagnitude
  simp_rw [thetaPhiBaseSignedMomentWeight_mul_node_add_one]
  rw [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum]
  ring

/-- The absolute value of a selection term is exactly its nonnegative
magnitude. -/
theorem abs_thetaPhiSignedMomentSelectionTerm
    {k L : ℕ} (N : ℕ) (t : ℝ)
    (f : Fin k → Fin L) :
    |thetaPhiSignedMomentSelectionTerm N t f| =
      thetaPhiSignedMomentSelectionMagnitude N t f := by
  rw [thetaPhiSignedMomentSelectionTerm_eq_parity]
  have hm :=
    thetaPhiSignedMomentSelectionMagnitude_nonnegative N t f
  rw [abs_mul, abs_pow, abs_neg, abs_one, one_pow,
    abs_of_nonneg hm, one_mul]

/-- Finite parity sum whose terms retain all remaining signed cancellation. -/
def thetaPhiSignedMomentParitySum
    (k L N : ℕ) (t : ℝ) : ℝ :=
  ∑ f : Fin k → Fin L,
    (-1 : ℝ) ^ (∑ i : Fin k, (f i).val) *
      thetaPhiSignedMomentSelectionMagnitude N t f

/-- The finite signed-moment determinant is exactly the parity sum. -/
theorem factorial_mul_det_thetaPhi_signedMomentTruncation_eq_paritySum
    (k L N : ℕ) (t : ℝ) :
    (k.factorial : ℝ) *
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation L N n t)) =
      thetaPhiSignedMomentParitySum k L N t := by
  rw [factorial_mul_det_thetaPhi_signedMomentTruncation]
  unfold thetaPhiSignedMomentParitySum
  apply Finset.sum_congr rfl
  intro f _
  exact thetaPhiSignedMomentSelectionTerm_eq_parity N t f

/-- The verified Touchard identification upgrades the base signed-moment
representation to an actual `HasSum`. -/
theorem hasSum_thetaPhiBaseSignedMoment
    (N n : ℕ) (t : ℝ) :
    HasSum
      (fun l : ℕ =>
        thetaPhiBaseSignedMomentWeight N t l *
          thetaPhiSignedMomentNode l ^ n)
      (thetaPhiBaseTapeTruncation N n t) := by
  have hmode :
      ∀ m : Fin N,
        HasSum
          (fun l : ℕ =>
            (Real.pi * ((m.val : ℝ) + 1) ^ 2 *
              Real.exp (5 * t)) *
              (thetaPhiSignedMomentNode l ^ n *
                (-thetaModeY m.val t) ^ l /
                  (l.factorial : ℝ)))
          (thetaPhiBaseModeValue n m.val t) := by
    intro m
    exact hasSum_thetaPhiBaseMode_signedMoment
      thetaPhiBaseGeneralizedTouchardIdentification
      n m.val t
  have hsum :
      HasSum
        (fun l : ℕ =>
          ∑ m : Fin N,
            (Real.pi * ((m.val : ℝ) + 1) ^ 2 *
              Real.exp (5 * t)) *
              (thetaPhiSignedMomentNode l ^ n *
                (-thetaModeY m.val t) ^ l /
                  (l.factorial : ℝ)))
        (∑ m : Fin N,
          thetaPhiBaseModeValue n m.val t) := by
    exact hasSum_sum fun m _ => hmode m
  convert hsum using 1
  · funext l
    unfold thetaPhiBaseSignedMomentWeight
      thetaPhiBaseMomentMagnitude
    rw [Finset.mul_sum, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro m _
    rw [neg_pow]
    ring
  · rfl

/-- Finite signed-moment truncation is the ordinary range partial sum. -/
theorem thetaPhiBaseSignedMomentTruncation_eq_sum_range
    (L N n : ℕ) (t : ℝ) :
    thetaPhiBaseSignedMomentTruncation L N n t =
      ∑ l ∈ Finset.range L,
        thetaPhiBaseSignedMomentWeight N t l *
          thetaPhiSignedMomentNode l ^ n := by
  unfold thetaPhiBaseSignedMomentTruncation
  rw [Fin.sum_univ_eq_sum_range
    (fun l : ℕ =>
      thetaPhiBaseSignedMomentWeight N t l *
        thetaPhiSignedMomentNode l ^ n)]

/-- Finite signed-moment truncations converge coordinatewise to the verified
finite-mode base tape. -/
theorem thetaPhiBaseSignedMomentTruncation_tendsto
    (N n : ℕ) (t : ℝ) :
    Tendsto
      (fun L =>
        thetaPhiBaseSignedMomentTruncation L N n t)
      atTop
      (𝓝 (thetaPhiBaseTapeTruncation N n t)) := by
  have hseq :
      (fun L =>
        thetaPhiBaseSignedMomentTruncation L N n t) =
        (fun L =>
          ∑ l ∈ Finset.range L,
            thetaPhiBaseSignedMomentWeight N t l *
              thetaPhiSignedMomentNode l ^ n) := by
    funext L
    exact thetaPhiBaseSignedMomentTruncation_eq_sum_range
      L N n t
  rw [hseq]
  exact (hasSum_thetaPhiBaseSignedMoment N n t).tendsto_sum_nat

/-- The finite Christoffel-Hankel matrices converge entrywise to the
Christoffel-Hankel matrix of the verified base tape. -/
theorem thetaPhiSignedMomentChristoffel_tendsto
    (k N : ℕ) (t : ℝ) :
    Tendsto
      (fun L =>
        thetaPhiChristoffelHankel k
          (fun n =>
            thetaPhiBaseSignedMomentTruncation L N n t))
      atTop
      (𝓝
        (thetaPhiChristoffelHankel k
          (fun n => thetaPhiBaseTapeTruncation N n t))) := by
  apply tendsto_pi_nhds.mpr
  intro i
  apply tendsto_pi_nhds.mpr
  intro j
  change
    Tendsto
      (fun L =>
        thetaPhiBaseSignedMomentTruncation
            L N (i.val + j.val + 1) t +
          thetaPhiBaseSignedMomentTruncation
            L N (i.val + j.val) t)
      atTop
      (𝓝
        (thetaPhiBaseTapeTruncation
            N (i.val + j.val + 1) t +
          thetaPhiBaseTapeTruncation
            N (i.val + j.val) t))
  exact
    (thetaPhiBaseSignedMomentTruncation_tendsto
      N (i.val + j.val + 1) t).add
        (thetaPhiBaseSignedMomentTruncation_tendsto
          N (i.val + j.val) t)

/-- Determinants of the finite signed-moment Christoffel matrices converge to
the determinant of the verified base-tape Christoffel matrix. -/
theorem thetaPhiSignedMomentChristoffel_det_tendsto
    (k N : ℕ) (t : ℝ) :
    Tendsto
      (fun L =>
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation L N n t)))
      atTop
      (𝓝
        (Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseTapeTruncation N n t)))) := by
  have hcont :
      Continuous
        (fun M : Matrix (Fin k) (Fin k) ℝ =>
          Matrix.det M) :=
    continuous_id.matrix_det
  exact
    (hcont.tendsto
      (thetaPhiChristoffelHankel k
        (fun n => thetaPhiBaseTapeTruncation N n t))).comp
      (thetaPhiSignedMomentChristoffel_tendsto k N t)

/-- The explicit finite parity sums converge to factorial times the actual
finite-mode base Christoffel determinant. -/
theorem thetaPhiSignedMomentParitySum_tendsto
    (k N : ℕ) (t : ℝ) :
    Tendsto
      (fun L => thetaPhiSignedMomentParitySum k L N t)
      atTop
      (𝓝
        ((k.factorial : ℝ) *
          Matrix.det
            (thetaPhiChristoffelHankel k
              (fun n =>
                thetaPhiBaseTapeTruncation N n t)))) := by
  have hdet :=
    (thetaPhiSignedMomentChristoffel_det_tendsto k N t).const_mul
      (k.factorial : ℝ)
  have hseq :
      (fun L => thetaPhiSignedMomentParitySum k L N t) =
        (fun L =>
          (k.factorial : ℝ) *
            Matrix.det
              (thetaPhiChristoffelHankel k
                (fun n =>
                  thetaPhiBaseSignedMomentTruncation
                    L N n t))) := by
    funext L
    exact
      (factorial_mul_det_thetaPhi_signedMomentTruncation_eq_paritySum
        k L N t).symm
  rw [hseq]
  exact hdet

/-- Orientation-scaled parity sum matching the finite theta signed-jet
normalization after passage to the signed-moment limit. -/
def thetaPhiSignedMomentOrientedParitySum
    (k L N : ℕ) (t : ℝ) : ℝ :=
  (-1 : ℝ) ^ (k * (k - 1) / 2) *
    (-1 / 2 : ℝ) ^ k *
      thetaPhiSignedMomentParitySum k L N t

/-- The orientation-scaled parity sums converge to factorial times the finite
theta signed-jet determinant. -/
theorem thetaPhiSignedMomentOrientedParitySum_tendsto
    (k N : ℕ) (t : ℝ) :
    Tendsto
      (fun L =>
        thetaPhiSignedMomentOrientedParitySum k L N t)
      atTop
      (𝓝
        ((k.factorial : ℝ) *
          signedJetDet k
            (fun n =>
              thetaPhiDerivativeTapeTruncation N n t))) := by
  let c : ℝ :=
    (-1 : ℝ) ^ (k * (k - 1) / 2) *
      (-1 / 2 : ℝ) ^ k
  have h :=
    (thetaPhiSignedMomentParitySum_tendsto k N t).const_mul c
  have htarget :
      c *
          ((k.factorial : ℝ) *
            Matrix.det
              (thetaPhiChristoffelHankel k
                (fun n =>
                  thetaPhiBaseTapeTruncation N n t))) =
        (k.factorial : ℝ) *
          signedJetDet k
            (fun n =>
              thetaPhiDerivativeTapeTruncation N n t) := by
    rw [signedJetDet_truncation_eq_christoffel]
    dsimp [c]
    ring
  rw [htarget] at h
  simpa [thetaPhiSignedMomentOrientedParitySum, c] using h

/-- Exact finite cancellation criterion left by the signed-moment
factorization.  It asks only for eventual nonnegativity in the signed-moment
cutoff; it does not impose a sign on individual selections. -/
def ThetaPhiSignedMomentParityCriterion : Prop :=
  ∀ k N : ℕ, ∀ t : ℝ, 0 ≤ t →
    ∀ᶠ L in atTop,
      0 ≤ thetaPhiSignedMomentOrientedParitySum k L N t

/-- Eventual nonnegativity of the explicit parity sums gives nonnegativity of
every finite-mode theta signed-jet determinant. -/
theorem signedJetDet_truncation_nonnegative_of_signedMomentParity
    (hparity : ThetaPhiSignedMomentParityCriterion)
    {k N : ℕ} {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ signedJetDet k
      (fun n => thetaPhiDerivativeTapeTruncation N n t) := by
  have hfac : 0 < (k.factorial : ℝ) := by positivity
  have hprod :
      0 ≤ (k.factorial : ℝ) *
        signedJetDet k
          (fun n =>
            thetaPhiDerivativeTapeTruncation N n t) :=
    ge_of_tendsto
      (thetaPhiSignedMomentOrientedParitySum_tendsto
        k N t)
      (hparity k N t ht)
  exact (mul_nonneg_iff_of_pos_left hfac).mp hprod

/-- The explicit signed-moment parity criterion is sufficient for the actual
all-rank literal theta source signed-jet theorem. -/
theorem thetaPhiAllRankSignedJetCriterion_of_signedMomentParity
    (hparity : ThetaPhiSignedMomentParityCriterion) :
    ThetaPhiAllRankSignedJetCriterion := by
  refine ⟨thetaPhiInfiniteSourceJet, ?_⟩
  intro t ht k
  change 0 ≤
    signedJetDet k
      (fun n => thetaPhiDerivativeTapeValue n t)
  apply ge_of_tendsto
    (signedJetDet_truncation_tendsto k t)
  exact Filter.Eventually.of_forall
    (fun N =>
      signedJetDet_truncation_nonnegative_of_signedMomentParity
        hparity ht)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
