/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.NumberTheory.Moebius.AnchoredAuthenticCenteredDefectComparison
import GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
import GRWTSK.NumberTheory.Farey.CenteredResidueReturn
import Mathlib.Tactic

/-!
# Shared-center sieve recovery without a barycenter

The source is the existing parity/half-shift centered pair, with center 2*m+h.
Its full fiber is not replaced by one weighted average. Residue AND winding,
parity AND half-shift reconstruct the original pair at every modulus.

A finite prime-square sieve removes only provably zero Mobius coefficients.
It preserves actual centered amplitudes, their mean/variance, the existing
von Mangoldt divisor transform, and the complete ordered pickup cross sum.
No prime-density premise, new asymptotic bound, or zero-height decoder is used.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CenteredSieveRecovery

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- These four fields retain the center's discarded winding and both pair labels. -/
structure CenterCode where
  parity : ℕ
  halfShift : ℕ
  residue : ℕ
  winding : ℕ
  deriving DecidableEq, Repr

def encode (q : ℕ) (x : CenteredAdditiveMobiusPair) : CenterCode :=
  ⟨x.r, x.h, x.center % q, x.center / q⟩

def decode (q : ℕ) (z : CenterCode) : CenteredAdditiveMobiusPair :=
  ⟨(z.residue + q * z.winding - z.halfShift) / 2, z.halfShift, z.parity⟩

/-- A left inverse on actual source codes; arbitrary tuples need not be valid codes. -/
theorem decode_encode (q : ℕ) (x : CenteredAdditiveMobiusPair) :
    decode q (encode q x) = x := by
  rcases x with ⟨m, h, r⟩
  dsimp only [encode, decode, CenteredAdditiveMobiusPair.center]
  rw [Nat.mod_add_div]
  have hm : (2 * m + h - h) / 2 = m := by omega
  rw [hm]

theorem encode_injective (q : ℕ) : Function.Injective (encode q) := by
  intro x y h
  simpa only [decode_encode] using congrArg (decode q) h

theorem residue_lt (q : ℕ) (hq : 0 < q) (x : CenteredAdditiveMobiusPair) :
    (encode q x).residue < q := Nat.mod_lt _ hq

/-- Change modulus by returning to the source, not by reducing an already lost residue. -/
def rechart (q d : ℕ) (z : CenterCode) : CenterCode := encode d (decode q z)

theorem rechart_encode (q d : ℕ) (x : CenteredAdditiveMobiusPair) :
    rechart q d (encode q x) = encode d x := by
  simp only [rechart, decode_encode]

theorem rechart_comp (q d e : ℕ) (z : CenterCode) :
    rechart d e (rechart q d z) = rechart q e z := by
  simp only [rechart, decode_encode]

theorem rechart_return (q d : ℕ) (x : CenteredAdditiveMobiusPair) :
    rechart d q (rechart q d (encode q x)) = encode q x := by
  rw [rechart_encode, rechart_encode]

/-- Full source observables, not only a Euclidean norm, survive this change of chart. -/
theorem readout_recovery {V : Type*} (L : CenteredAdditiveMobiusPair → V)
    (q : ℕ) (x : CenteredAdditiveMobiusPair) : L (decode q (encode q x)) = L x := by
  rw [decode_encode]

def liftedAnchorCoefficient (q a : ℕ) : ℝ :=
  (decode q (encode q (anchoredMobiusPair a))).coefficient

theorem liftedAnchorCoefficient_eq (q a : ℕ) :
    liftedAnchorCoefficient q a = (anchoredMobiusPair a).coefficient := by
  rw [liftedAnchorCoefficient, decode_encode]

/-- Direct use of the existing anchored coefficient proof, with its parity sign. -/
theorem lifted_anchor_recovers_moebius (q : ℕ) {a : ℕ} (ha : 0 < a) :
    anchoredPairSign a * liftedAnchorCoefficient q a =
      (ArithmeticFunction.moebius a : ℝ) := by
  rw [liftedAnchorCoefficient_eq]
  exact anchoredPair_signedCoefficient_eq_moebius ha

/-- Immediate application to the EXISTING von Mangoldt consumer, for every modulus. -/
theorem lifted_anchor_recovers_vonMangoldt (q : ℕ) {X n : ℕ}
    (hn : n ∈ centeredGreenWindow X) :
    anchoredFiniteGreenDivisorTransform X n (liftedAnchorCoefficient q) =
      ArithmeticFunction.vonMangoldt n := by
  have he : liftedAnchorCoefficient q = fun a => (anchoredMobiusPair a).coefficient :=
    funext (liftedAnchorCoefficient_eq q)
  rw [he]
  exact anchoredFiniteGreenDivisorTransform_actual hn

/-- The other shifts at the same authentic center are NOT forgotten on lifting. -/
theorem lifted_authentic_center (q : ℕ) {b a : ℕ}
    (ha : 0 < a) (hab : a ≤ b) (H : Finset ℕ) :
    parityCenteredIntegerCoordinateAmplitude b (anchoredMobiusPair a).r H
        (anchoredMobiusPair a).center =
      (if (anchoredMobiusPair a).h ∈ H then liftedAnchorCoefficient q a else 0) +
        anchoredAuthenticOtherShiftDefect b a H := by
  rw [liftedAnchorCoefficient_eq]
  exact authentic_center_amplitude_eq_anchor_add_other_shift ha hab H

/-! ## Extend the concurrently published centered gcd-stratum return

The existing residue chart recovers the full residue, including nonunits.
Retaining its winding extends that return to integer centers WITHOUT a
center < modulus premise. The new chart center may vary independently.
-/

structure StratumCenterCode (q : ℕ) [NeZero q] (origin : ZMod q) where
  parity : ℕ
  halfShift : ℕ
  residueState : GRWTSK.NumberTheory.Farey.CenteredResidueReturn.CodeState q origin
  winding : ℕ

def encodeStratum (q : ℕ) [NeZero q] (origin : ZMod q)
    (x : CenteredAdditiveMobiusPair) : StratumCenterCode q origin :=
  ⟨x.r, x.h,
    GRWTSK.NumberTheory.Farey.CenteredResidueReturn.chartEquiv q origin
      (x.center : ZMod q), x.center / q⟩

def stratumToCode (q : ℕ) [NeZero q] (origin : ZMod q)
    (z : StratumCenterCode q origin) : CenterCode :=
  ⟨z.parity, z.halfShift,
    ((GRWTSK.NumberTheory.Farey.CenteredResidueReturn.chartEquiv q origin).symm
      z.residueState).val, z.winding⟩

/-- Actual application of the existing gcd-stratum equivalence; no nonunit is discarded. -/
theorem stratumToCode_encode (q : ℕ) [NeZero q] (origin : ZMod q)
    (x : CenteredAdditiveMobiusPair) :
    stratumToCode q origin (encodeStratum q origin x) = encode q x := by
  simp only [stratumToCode, encodeStratum, Equiv.symm_apply_apply, ZMod.val_natCast, encode]

def decodeStratum (q : ℕ) [NeZero q] (origin : ZMod q)
    (z : StratumCenterCode q origin) : CenteredAdditiveMobiusPair :=
  decode q (stratumToCode q origin z)

/-- Winding pays the no-wrap requirement, not a stronger prime-density assumption. -/
theorem decodeStratum_encode (q : ℕ) [NeZero q] (origin : ZMod q)
    (x : CenteredAdditiveMobiusPair) :
    decodeStratum q origin (encodeStratum q origin x) = x := by
  rw [decodeStratum, stratumToCode_encode, decode_encode]

def changeStratum (q d : ℕ) [NeZero q] [NeZero d]
    (origin : ZMod q) (target : ZMod d) (z : StratumCenterCode q origin) :
    StratumCenterCode d target := encodeStratum d target (decodeStratum q origin z)

/-- Both modulus AND center can change, with the original source retained exactly. -/
theorem changeStratum_encode (q d : ℕ) [NeZero q] [NeZero d]
    (origin : ZMod q) (target : ZMod d) (x : CenteredAdditiveMobiusPair) :
    changeStratum q d origin target (encodeStratum q origin x) =
      encodeStratum d target x := by
  rw [changeStratum, decodeStratum_encode]

/-- Concrete return to the already-proved von Mangoldt coefficient, for arbitrary center. -/
theorem stratum_anchor_recovers_vonMangoldt (q : ℕ) [NeZero q] (origin : ZMod q)
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X) :
    anchoredFiniteGreenDivisorTransform X n
      (fun a => (decodeStratum q origin
        (encodeStratum q origin (anchoredMobiusPair a))).coefficient) =
      ArithmeticFunction.vonMangoldt n := by
  simp only [decodeStratum_encode]
  exact anchoredFiniteGreenDivisorTransform_actual hn

/-- Square divisibility, not an unweighted or density-normalized midpoint. -/
def Survives (P : Finset ℕ) (n : ℕ) : Prop := ∀ p ∈ P, ¬ p * p ∣ n

theorem survives_mono {P Q : Finset ℕ} (hPQ : P ⊆ Q) {n : ℕ}
    (h : Survives Q n) : Survives P n := fun p hp => h p (hPQ hp)

/-- A rejected actual Mobius coefficient is exactly zero, including n=0. -/
theorem moebius_zero_of_rejected (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    {n : ℕ} (hn : ¬ Survives P n) : ArithmeticFunction.moebius n = 0 := by
  apply ArithmeticFunction.moebius_eq_zero_of_not_squarefree
  intro hs
  apply hn
  intro p hp hdiv
  exact (hP p hp).ne_one (Nat.isUnit_iff.mp (hs p hdiv))

def sieveCoefficient (P : Finset ℕ) (n : ℕ) : ℤ := by
  classical
  exact if Survives P n then ArithmeticFunction.moebius n else 0

theorem sieveCoefficient_eq (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) (n : ℕ) :
    sieveCoefficient P n = ArithmeticFunction.moebius n := by
  classical
  by_cases h : Survives P n
  · simp [sieveCoefficient, h]
  · simp [sieveCoefficient, h, moebius_zero_of_rejected P hP h]

theorem moebiusReal_zero_of_rejected (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    {n : ℕ} (hn : ¬ Survives P n) : moebiusReal n = 0 := by
  simp [moebiusReal, moebius_zero_of_rejected P hP hn]

/-- The support changes with the sieve, at each actual common center. -/
def survivingShifts (b r c : ℕ) (H P : Finset ℕ) : Finset ℕ := by
  classical
  exact (zeroWindingCenteredShiftSet b r c H).filter
    (fun h => Survives P (c - h + r) ∧ Survives P (c + h + r))

def sievedCenteredAmplitude (b r c : ℕ) (H P : Finset ℕ) : ℝ :=
  ∑ h ∈ survivingShifts b r c H P,
    moebiusReal (c - h + r) * moebiusReal (c + h + r)

/-- More prime tests refine support; the dropped terms are handled by the next theorem. -/
theorem survivingShifts_antitone (b r c : ℕ) (H : Finset ℕ)
    {P Q : Finset ℕ} (hPQ : P ⊆ Q) :
    survivingShifts b r c H Q ⊆ survivingShifts b r c H P := by
  classical
  intro h hh
  obtain ⟨hh, hl, hr⟩ := Finset.mem_filter.mp hh
  exact Finset.mem_filter.mpr ⟨hh, survives_mono hPQ hl, survives_mono hPQ hr⟩

/-- Zero-coefficient deletion preserves the FULL signed equal-center fiber, not one anchor. -/
theorem sievedCenteredAmplitude_eq (b r c : ℕ) (H P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) :
    sievedCenteredAmplitude b r c H P =
      parityCenteredIntegerCoordinateAmplitude b r H c := by
  classical
  rw [authentic_integer_center_amplitude_eq_centered_sum]
  change (∑ h ∈ (zeroWindingCenteredShiftSet b r c H).filter
      (fun h => Survives P (c - h + r) ∧ Survives P (c + h + r)),
      moebiusReal (c - h + r) * moebiusReal (c + h + r)) =
    ∑ h ∈ zeroWindingCenteredShiftSet b r c H,
      moebiusReal (c - h + r) * moebiusReal (c + h + r)
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro h _
  by_cases hl : Survives P (c - h + r)
  · by_cases hr : Survives P (c + h + r)
    · simp [hl, hr]
    · simp [hl, hr, moebiusReal_zero_of_rejected P hP hr]
  · simp [hl, moebiusReal_zero_of_rejected P hP hl]

theorem sieved_center_mass (b r : ℕ) (H P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) :
    (∑ c ∈ Finset.range (b + 1), sievedCenteredAmplitude b r c H P) =
      parityHalfIndexCenteredPairMass b r H := by
  calc
    _ = ∑ c ∈ Finset.range (b + 1),
        parityCenteredIntegerCoordinateAmplitude b r H c :=
      Finset.sum_congr rfl (fun c _ => sievedCenteredAmplitude_eq b r c H P hP)
    _ = _ := sum_parityCenteredIntegerCoordinateAmplitude_eq_pairMass b r H

theorem sieved_center_variance (b r : ℕ) (H P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) :
    (∑ c ∈ Finset.range (b + 1),
      (sievedCenteredAmplitude b r c H P -
        parityCenteredIntegerCoordinateMean b r H) ^ 2) =
      parityCenteredIntegerCoordinateVariance b r H := by
  unfold parityCenteredIntegerCoordinateVariance
  apply Finset.sum_congr rfl
  intro c _
  rw [sievedCenteredAmplitude_eq b r c H P hP]

/-- The actual negative variance term survives every finite prime-square sieve. -/
theorem signed_wrap_with_sieved_centers (b d r : ℕ) [NeZero d]
    (H P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) :
    parityHalfIndexSignedQuarticWrap b d r H =
      parityHalfIndexCenteredNonzeroFrequencyEnergy b d r H +
        parityCenteredWindingMeanInflation b d r H -
        4 * ∑ c ∈ Finset.range (b + 1),
          (sievedCenteredAmplitude b r c H P -
            parityCenteredIntegerCoordinateMean b r H) ^ 2 := by
  rw [sieved_center_variance b r H P hP]
  exact parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_meanInflation_sub_variance
    b d r H

/-- Same ordered cross observable as the existing RH consumer, with zero sieve output explicit. -/
def sievedCross (P : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if m ≠ n then
        (sieveCoefficient P m : ℝ) * (sieveCoefficient P n : ℝ) *
          pickupResponseGram T m n
      else 0

theorem sievedCross_eq (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) (T : ℝ) :
    sievedCross P T = pickupCross T := by
  unfold sievedCross pickupCross moebiusReal
  simp_rw [sieveCoefficient_eq P hP]

/-- The preceding genuine sign-credit improvement is preserved with unchanged constants. -/
theorem sievedCross_le_signedUpper (P Q : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hQ : ∀ p ∈ Q, p.Prime)
    {T : ℝ} (hT : 0 ≤ T) :
    sievedCross P T ≤ MertensSignedPairDescent.signedUpper T Q := by
  rw [sievedCross_eq P hP]
  exact MertensSignedPairDescent.cross_le_signedUpper hT Q hQ


/-- A time-varying finite sieve feeds the EXISTING outer-time good-scale RH
consumer with zero transport loss. Its signed growth budget is still an input. -/
theorem changing_sieve_good_scales_implies_RH
    (P : ℝ → Finset ℕ) {G : Set ℝ}
    (hP : ∀ T : ℝ, T ∈ G → 0 ≤ T → ∀ p ∈ P T, p.Prime)
    (hcover : GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential.AffineFrequent G)
    (hbudget : GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential.SubexponentialOn
      (fun T => sievedCross (P T) T) G) : _root_.RiemannHypothesis := by
  apply GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion.riemannHypothesis_of_cross_good_scales
    hcover
  apply GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential.subexponentialOn_mono hbudget
  intro T hG hT
  exact (sievedCross_eq (P T) (hP T hG hT) T).symm.le

end GRWTSK.NumberTheory.Moebius.CenteredSieveRecovery
