/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction and original Möbius source: grwtsk contributors.
Source formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusRationalSlopeCausalDilation
import Mathlib.Data.Nat.Squarefree
import Mathlib.Tactic

/-!
# Common-dilation fibers of the ORIGINAL Möbius Gram have constant sign

The original signed source is literally
  moebiusReal(g*a) * moebiusReal(g*b)
    * pickupResponseGram T (g*a) (g*b).
The prior RationalSlopeCausalDilation source gave the actual
1/g times K_(T-log g) formula only when g is coprime to a and b.

The missing cases are EXACTLY zero: a non-coprime g and a forces
g*a squareful, so the original Möbius coefficient vanishes; likewise
for g and b. The full identity thus holds with a literal 0-1 coprime
mask, without any discarded nonzero original source terms.

For nonnegative physical T the original causal Gram is nonnegative.
Consequently EVERY masked common-dilation fiber has constant sign
mu(a)*mu(b), and its absolute value is the positive fiber mass
multiplied by |mu(a)*mu(b)|. No within-fiber Möbius cancellation is
available. Genuine signed cancellation, if present, must occur
BETWEEN different primitive slopes.

No new arithmetic supplier, zero-free theorem or RH/GRH assertion.
Pinned Lean/Mathlib replay and complete axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.RationalSlopeSignRigidity

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.RationalSlopeCausalDilation
open GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift

/-- The original integer factor k*a is squareful whenever the
genuine coprimality guard fails. This is a ZERO source coefficient,
not a cancellation estimate or a replacement arithmetic model. -/
theorem original_moebius_zero_of_nonCoprime
    (k a : ℕ) (hbad : ¬ Nat.Coprime k a) :
    moebiusReal (k * a) = 0 := by
  have hnot : ¬ Squarefree (k * a) := by
    intro hsq
    exact hbad (Nat.coprime_of_squarefree_mul hsq)
  unfold moebiusReal
  exact_mod_cast
    ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnot

/-- Literal ORIGINAL nonnegative common-dilation mass, including
the true birth-gated physical-time Gram at source labels k*a,k*b. -/
def sourceSlopeMass (T : ℝ) (k a b : ℕ) : ℝ :=
  if Nat.Coprime k a ∧ Nat.Coprime k b then
    (moebiusReal k) ^ 2 *
      pickupResponseGram T (k * a) (k * b)
  else 0

/-- The positive mass is nonnegative by the genuine original Gram,
not by a surrogate positive inner product or a random-sign model. -/
theorem sourceSlopeMass_nonneg
    (T : ℝ) (hT : 0 ≤ T) (k a b : ℕ)
    (hk : 1 ≤ k) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    0 ≤ sourceSlopeMass T k a b := by
  by_cases hcop : Nat.Coprime k a ∧ Nat.Coprime k b
  · have hka : 1 ≤ k * a := by
      have hp := Nat.mul_pos (by omega : 0 < k) (by omega : 0 < a)
      omega
    have hkb : 1 ≤ k * b := by
      have hp := Nat.mul_pos (by omega : 0 < k) (by omega : 0 < b)
      omega
    have hgram : 0 ≤ pickupResponseGram T (k * a) (k * b) :=
      responseGram_nonneg hka hkb hT
    simp only [sourceSlopeMass, if_pos hcop]
    exact mul_nonneg (sq_nonneg _) hgram
  · simp [sourceSlopeMass, hcop]

/-- The previously proved signed coprime dilation formula extends to
ALL original integers: the non-coprime branch is exactly mu-zero. -/
theorem dilatedSignedPair_eq_slopeSign_mul_mass
    (T : ℝ) (k a b : ℕ) :
    dilatedSignedPair T k a b =
      (moebiusReal a * moebiusReal b) * sourceSlopeMass T k a b := by
  by_cases hka : Nat.Coprime k a
  · by_cases hkb : Nat.Coprime k b
    · have hsource := dilatedMobiusPair_of_coprime k a b hka hkb
      unfold dilatedSignedPair
      rw [hsource]
      simp only [sourceSlopeMass, hka, hkb, and_self, and_true, if_pos]
      ring
    · have hz := original_moebius_zero_of_nonCoprime k b hkb
      simp [dilatedSignedPair, sourceSlopeMass, hka, hkb, hz]
  · have hz := original_moebius_zero_of_nonCoprime k a hka
    simp [dilatedSignedPair, sourceSlopeMass, hka, hz]

/-- The only analytic change under common dilation is the genuine
causal shift and reciprocal g, retaining the original source signs. -/
theorem sourceSlopeMass_eq_causal_shifted
    (T : ℝ) (k a b : ℕ)
    (hk : 1 ≤ k) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    sourceSlopeMass T k a b =
      if Nat.Coprime k a ∧ Nat.Coprime k b then
        (moebiusReal k) ^ 2 * (k : ℝ)⁻¹ *
          pickupResponseGram (T - Real.log (k : ℝ)) a b
      else 0 := by
  by_cases hc : Nat.Coprime k a ∧ Nat.Coprime k b
  · simp only [sourceSlopeMass, if_pos hc]
    rw [pickupResponseGram_mul_timeShift k a b hk ha hb T]
    ring
  · simp [sourceSlopeMass, hc]

/-- Entire FINITE common-dilation packet, with original signed μ. -/
def finiteSlopePacket (S : Finset ℕ) (T : ℝ) (a b : ℕ) : ℝ :=
  ∑ k ∈ S, dilatedSignedPair T k a b

/-- The same actual original packet, but with its unique slope sign
factored OUT and the remaining physical time terms nonnegative. -/
def finiteSlopeMass (S : Finset ℕ) (T : ℝ) (a b : ℕ) : ℝ :=
  ∑ k ∈ S, sourceSlopeMass T k a b

theorem finiteSlopePacket_eq_sign_mul_mass
    (S : Finset ℕ) (T : ℝ) (a b : ℕ) :
    finiteSlopePacket S T a b =
      (moebiusReal a * moebiusReal b) *
        finiteSlopeMass S T a b := by
  unfold finiteSlopePacket finiteSlopeMass
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  exact dilatedSignedPair_eq_slopeSign_mul_mass T k a b

theorem finiteSlopeMass_nonneg
    (S : Finset ℕ) (T : ℝ) (hT : 0 ≤ T)
    (a b : ℕ) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hS : ∀ k ∈ S, 1 ≤ k) :
    0 ≤ finiteSlopeMass S T a b := by
  unfold finiteSlopeMass
  apply Finset.sum_nonneg
  intro k hk
  exact sourceSlopeMass_nonneg T hT k a b (hS k hk) ha hb

/-- A reduced slope with opposite Möbius signs contributes NO
positive common-dilation mass, for any true finite source mask. -/
theorem finiteSlopePacket_nonpos_of_negative_sign
    (S : Finset ℕ) (T : ℝ) (hT : 0 ≤ T)
    (a b : ℕ) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hS : ∀ k ∈ S, 1 ≤ k)
    (hsign : moebiusReal a * moebiusReal b ≤ 0) :
    finiteSlopePacket S T a b ≤ 0 := by
  rw [finiteSlopePacket_eq_sign_mul_mass]
  exact mul_nonpos_of_nonpos_of_nonneg hsign
    (finiteSlopeMass_nonneg S T hT a b ha hb hS)

/-- Conversely same-sign slopes contribute only nonnegative terms.
No positivity is inferred for the COMPLETE mixed original source. -/
theorem finiteSlopePacket_nonneg_of_positive_sign
    (S : Finset ℕ) (T : ℝ) (hT : 0 ≤ T)
    (a b : ℕ) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hS : ∀ k ∈ S, 1 ≤ k)
    (hsign : 0 ≤ moebiusReal a * moebiusReal b) :
    0 ≤ finiteSlopePacket S T a b := by
  rw [finiteSlopePacket_eq_sign_mul_mass]
  exact mul_nonneg hsign (finiteSlopeMass_nonneg S T hT a b ha hb hS)

/-- Exact finite sign-rigidity identity: no intra-slope cancellation
of the true signed Mobius source under its nonnegative causal Gram. -/
theorem finiteSlopePacket_abs_eq_absSign_mul_mass
    (S : Finset ℕ) (T : ℝ) (hT : 0 ≤ T)
    (a b : ℕ) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hS : ∀ k ∈ S, 1 ≤ k) :
    |finiteSlopePacket S T a b| =
      |moebiusReal a * moebiusReal b| *
        finiteSlopeMass S T a b := by
  rw [finiteSlopePacket_eq_sign_mul_mass, abs_mul,
    abs_of_nonneg (finiteSlopeMass_nonneg S T hT a b ha hb hS)]

end GRWTSK.NumberTheory.Moebius.RationalSlopeSignRigidity
