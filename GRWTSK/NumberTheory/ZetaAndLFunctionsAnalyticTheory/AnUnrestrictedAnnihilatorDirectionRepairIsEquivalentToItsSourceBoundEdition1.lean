import FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction
import FormalResearch.RiemannHypothesis.Conversation.MatrixLeakage

/-!
# An unrestricted annihilator-direction repair is equivalent to its source bound

Batch 03 EQ03-01 retains the literal two-coordinate quadratic and the zero-slack
cross condition. Positive source slack admits an arbitrarily large nonnegative
repair on the other direction. Evaluation on the source recovers the bound.
At family level, adding one to the polynomial coefficient supplies strict slack,
so unrestricted repair existence is exactly eventual polynomial source control.
The consumer retains the actual closed prime moment. The native basis change,
quantitative penalty bounds and an actual arithmetic upper bound remain separate.

Human independent-input requirement: grwtsk contributors. Local exact Schur and
source-family equivalence: OpenAI Codex. Existing source definitions stay qualified.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FreePenaltyEquivalence
open PolynomialMertensReduction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect
noncomputable section

/-- The repair quadratic in this module, with the following exact parameterization.

def repairQuadratic (a c d b x y : ℝ) : ℝ := a * x ^ 2 + 2 * c * x * y + (d + b) * y ^ 2
-/
def repairQuadratic (a c d b x y : ℝ) : ℝ := a * x ^ 2 + 2 * c * x * y + (d + b) * y ^ 2
/-- The repair positive in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def repairPositive (a c d b : ℝ) : Prop := ∀ x y, 0 ≤ repairQuadratic a c d b x y
-/
def repairPositive (a c d b : ℝ) : Prop := ∀ x y, 0 ≤ repairQuadratic a c d b x y

theorem positive_slack_schur {a c d b : ℝ} (ha : 0 < a) (hb : c ^ 2 / a - d ≤ b) :
    repairPositive a c d b := by
  intro x y
  have htail : 0 ≤ d + b - c ^ 2 / a := by linarith
  have hs : 0 ≤ a * (x + c / a * y) ^ 2 := mul_nonneg ha.le (sq_nonneg _)
  have ht := mul_nonneg htail (sq_nonneg y)
  have he : repairQuadratic a c d b x y =
      a * (x + c / a * y) ^ 2 + (d + b - c ^ 2 / a) * y ^ 2 := by
    unfold repairQuadratic
    field_simp
    ring
  rw [he]
  exact add_nonneg hs ht

theorem positive_slack_has_nonnegative_repair {a : ℝ} (ha : 0 < a) (c d : ℝ) :
    ∃ b : ℝ, 0 ≤ b ∧ repairPositive a c d b :=
  ⟨max 0 (c ^ 2 / a - d), le_max_left _ _, positive_slack_schur ha (le_max_right _ _)⟩

theorem repair_requires_source_nonnegative {a c d b : ℝ} (hp : repairPositive a c d b) :
    0 ≤ a := by
  simpa [repairQuadratic] using hp 1 0

theorem zero_slack_requires_zero_cross {c d b : ℝ} (hp : repairPositive 0 c d b) : c = 0 := by
  by_contra hc
  have h := hp (-(d + b + 1) / (2 * c)) 1
  have he : repairQuadratic 0 c d b (-(d + b + 1) / (2 * c)) 1 = -1 := by
    unfold repairQuadratic
    field_simp
    ring
  rw [he] at h
  norm_num at h

theorem unrestricted_repair_iff {a c d : ℝ} :
    (∃ b : ℝ, 0 ≤ b ∧ repairPositive a c d b) ↔
      0 ≤ a ∧ (a = 0 → c = 0) := by
  constructor
  · rintro ⟨b, _, hp⟩
    exact ⟨repair_requires_source_nonnegative hp, fun ha ↦
      zero_slack_requires_zero_cross (ha ▸ hp)⟩
  · rintro ⟨ha, hcross⟩
    rcases ha.eq_or_lt with ha0 | ha1
    · have hc := hcross ha0.symm
      refine ⟨max 0 (-d), le_max_left _ _, ?_⟩
      intro x y
      simp only [repairQuadratic, ← ha0, hc, zero_mul, mul_zero, zero_add]
      exact mul_nonneg (show 0 ≤ d + max 0 (-d) by
        linarith [le_max_right (0 : ℝ) (-d)]) (sq_nonneg y)
    · exact positive_slack_has_nonnegative_repair ha1 c d

/-- The eventually free penalty in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def EventuallyFreePenalty (f Z c d : ℝ → ℝ) : Prop := ∃ m : ℕ, ∃ D R : ℝ, 0 ≤ D ∧ 1 ≤ R ∧ ∀ A
: ℝ, R ≤ A → ∃ b : ℝ, 0 ≤ b ∧ repairPositive (Z A * (D * A ^ m - f A)) (c A) (d A) b
-/
def EventuallyFreePenalty (f Z c d : ℝ → ℝ) : Prop :=
  ∃ m : ℕ, ∃ D R : ℝ, 0 ≤ D ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    ∃ b : ℝ, 0 ≤ b ∧ repairPositive (Z A * (D * A ^ m - f A)) (c A) (d A) b

theorem unrestricted_family_iff_source_upper (f Z c d : ℝ → ℝ)
    (hZ : ∀ A, 1 ≤ A → 0 < Z A) :
    EventuallyFreePenalty f Z c d ↔ EventuallyPolynomialUpper f := by
  constructor
  · rintro ⟨m, D, R, hD, hR, hrepair⟩
    refine ⟨m, D, R, hD, hR, ?_⟩
    intro A hA
    obtain ⟨b, _, hp⟩ := hrepair A hA
    have hs := repair_requires_source_nonnegative hp
    have h := (mul_nonneg_iff_of_pos_left (hZ A (hR.trans hA))).mp hs
    linarith
  · rintro ⟨m, D, R, hD, hR, hbound⟩
    refine ⟨m, D + 1, R, by linarith, hR, ?_⟩
    intro A hA
    have hA0 : 0 < A := lt_of_lt_of_le (by norm_num) (hR.trans hA)
    have hpower := pow_pos hA0 m
    have hslack : 0 < (D + 1) * A ^ m - f A := by
      have := hbound A hA
      nlinarith
    exact positive_slack_has_nonnegative_repair (mul_pos (hZ A (hR.trans hA)) hslack) _ _

/-- The free certificate still requires the exact actual closed prime upper bound. -/
theorem actual_prime_free_certificate_iff (Z c d : ℝ → ℝ)
    (hZ : ∀ A, 1 ≤ A → 0 < Z A) :
    EventuallyFreePenalty closedPrimeMoment Z c d ↔ EventuallyPolynomialUpper closedPrimeMoment :=
  unrestricted_family_iff_source_upper closedPrimeMoment Z c d hZ

/-- The next consumer retains the actual signed Mertens integral obligation. -/
theorem actual_free_certificate_iff_signed_mertens (Z c d : ℝ → ℝ)
    (hZ : ∀ A, 1 ≤ A → 0 < Z A) :
    EventuallyFreePenalty closedPrimeMoment Z c d ↔
      EventuallyPolynomialUpper actualMertensIntegral :=
  (actual_prime_free_certificate_iff Z c d hZ).trans source_polynomial_upper_iff_mertens

end
end GRWTSK.RiemannHypothesis.Conversation.FreePenaltyEquivalence
