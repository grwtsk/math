/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelResponseCoordinates
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelRowAbel

/-!
# Complete handoff from input approximation to the actual signed packet

A candidate input g supplies the profile A(g). Its signed response error is
EXACTLY the combined arithmetic row applied to mu-g. The row-aware L2 and
ordinary-prefix suppliers below therefore act on the original packet, not a
surrogate operator. The full head is either retained exactly or included in a
joint signed error. Choosing g=mu is tautological, not an arithmetic estimate.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelInputApproximation
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelResponseCoordinates
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelRowAbel

/-- The existing operator applied to a candidate input, at all cofactor coordinates. -/
def inputProfile (width : ℕ → ℕ) (j : ℕ) (g : ℕ → ℝ) (v : ℕ) : ℝ :=
  cofactorResponse width j v g

theorem signed_error_eq_input_difference (width : ℕ → ℕ) (j : ℕ) (g : ℕ → ℝ) :
    signedResponseError width j (inputProfile width j g) =
      signedResponse width j (fun a => moebiusReal a - g a) := by
  rw [signedResponseError_eq_triple_residual, triple_bulk_eq_signedResponse]
  change signedResponse width j moebiusReal - signedResponse width j g =
    signedResponse width j (fun a => moebiusReal a - g a)
  exact (signedResponse_sub width j moebiusReal g).symm

/-- The complete error retains cancellation between the head and input-response difference. -/
theorem joint_error_eq_input_difference (width : ℕ → ℕ) (j : ℕ)
    (H : ℝ) (g : ℕ → ℝ) :
    jointError width j H (inputProfile width j g) = headPacket width j - H -
      (1 / 6 : ℝ) * signedResponse width j (fun a => moebiusReal a - g a) := by
  unfold jointError
  rw [signed_error_eq_input_difference]

/-- A coefficient-aware input-energy estimate pays the actual packet error. -/
theorem full_packet_input_l2_comparison (j : ℕ) (g : ℕ → ℝ)
    {ε : ℝ} (hε : 0 ≤ ε)
    (hinput :
      (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), |signedRow sqrtWidth j a|) *
      (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
        |signedRow sqrtWidth j a| * (moebiusReal a - g a) ^ 2) ≤ ε ^ 2) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      modelPacket (headPacket sqrtWidth j) (inputProfile sqrtWidth j g)| ≤ 2 + ε / 6 := by
  apply abs_full_packet_sub_profile_le_of_signed
  rw [signed_error_eq_input_difference]
  have hs := (signedResponse_sq_le_row_weighted_energy sqrtWidth j
    (fun a => moebiusReal a - g a)).trans hinput
  exact (sq_le_sq₀ (abs_nonneg _) hε).mp (by simpa only [sq_abs] using hs)

/-- Prefix-dependent input errors are charged against the exact combined row drops. -/
theorem full_packet_input_prefix_comparison (j : ℕ) (g : ℕ → ℝ) (E : ℕ → ℝ)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      |finitePrefixSum (fun a => moebiusReal (a + 1) - g (a + 1)) (t + 1)| ≤ E t) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      modelPacket (headPacket sqrtWidth j) (inputProfile sqrtWidth j g)| ≤
        2 + (∑ t ∈ Finset.range (2 ^ (j + 1)), E t * |rowDrop sqrtWidth j t|) / 6 := by
  apply abs_full_packet_sub_profile_le_of_signed
  rw [signed_error_eq_input_difference]
  exact abs_signedResponse_le_prefix_budget sqrtWidth j (fun a => moebiusReal a - g a) E hE

/-- A feature map may lose the input yet retain the exact scalar needed by the packet. -/
theorem input_error_zero_of_recoverable_features {β : Type*}
    (feature : (ℕ → ℝ) → β) (decode : β → ℝ) (width : ℕ → ℕ) (j : ℕ)
    (hd : ∀ f, decode (feature f) = signedResponse width j f)
    (g : ℕ → ℝ) (hfg : feature moebiusReal = feature g) :
    signedResponseError width j (inputProfile width j g) = 0 := by
  rw [signed_error_eq_input_difference, signedResponse_sub, ← hd moebiusReal, ← hd g, hfg]
  exact sub_self _

/-- Exact feature recovery alone removes the triple modeling error, not the head estimate. -/
theorem full_packet_feature_comparison {β : Type*}
    (feature : (ℕ → ℝ) → β) (decode : β → ℝ) (j : ℕ)
    (hd : ∀ f, decode (feature f) = signedResponse sqrtWidth j f)
    (g : ℕ → ℝ) (hfg : feature moebiusReal = feature g) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      modelPacket (headPacket sqrtWidth j) (inputProfile sqrtWidth j g)| ≤ 2 := by
  have he := input_error_zero_of_recoverable_features feature decode sqrtWidth j hd g hfg
  have h := abs_full_packet_sub_profile_le_of_signed j (inputProfile sqrtWidth j g)
    (ε := 0) (by simp [he])
  simpa using h

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelInputApproximation
