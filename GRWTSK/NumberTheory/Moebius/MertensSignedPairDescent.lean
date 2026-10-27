/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.FiniteSums.SignedSelection
import GRWTSK.NumberTheory.Moebius.ResponseWaveformComparison
import Mathlib.Data.Nat.Prime.Basic

/-!
# Arithmetic signed-pair descent for the actual causal pickup

The source is the existing complete ordered off-diagonal pickup Gram sum.
Prime-multiple pairs have an actual negative coefficient by Mobius
multiplicativity. The elementary causal response functions are nonnegative;
this is NOT an inference from Hermitian symmetry or positive semidefiniteness,
and does not apply to the different compact-source correlation or cascades.

Selection is a finite set of ordered source pairs, not a multiset of prime
witnesses. It retains every unselected pair, the closed source cutoff, both
orders, and the coprimality guard. Certified selections give unconditional
finite upper-bound improvements. Their subexponential size remains a separate
arithmetic estimate; the existing analytic RH return is reused.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.FiniteSums.SignedSelection
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion

/-- The original closed integer inventory, including its unit label. -/
def sourcePairs (T : ℝ) : Finset (ℕ × ℕ) :=
  (Finset.Icc 1 ⌊Real.exp T⌋₊).product (Finset.Icc 1 ⌊Real.exp T⌋₊)

/-- Complete atoms, with the original diagonal deletion and both Mobius signs. -/
def signedAtom (T : ℝ) (m n : ℕ) : ℝ :=
  if m ≠ n then moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0

theorem sum_signedAtom_eq_cross (T : ℝ) :
    (∑ z ∈ sourcePairs T, signedAtom T z.1 z.2) = pickupCross T := by
  simp only [sourcePairs, Finset.sum_product, signedAtom, pickupCross]

/-- Entrywise sign comes from the actual causal formula, not Gram positivity. -/
theorem response_nonneg {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    0 ≤ pickupResponse n u := by
  unfold pickupResponse
  split_ifs with h
  · have he : Real.exp (-u / 2) ≤ (Real.sqrt (n : ℝ))⁻¹ := by
      rw [← pickup_exp_negative_log_half hn]
      apply Real.exp_le_exp.mpr
      linarith
    exact mul_nonneg (by norm_num) (sub_nonneg.mpr he)
  · exact le_rfl

/-- Genuine integrability is recorded independently of total-integral conventions. -/
theorem response_product_intervalIntegrable {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n)
    (T : ℝ) : IntervalIntegrable
      (fun u => pickupResponse m u * pickupResponse n u) volume 0 T :=
  ((pickupResponse_continuous hm).mul (pickupResponse_continuous hn)).intervalIntegrable _ _

theorem responseGram_nonneg {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n)
    {T : ℝ} (hT : 0 ≤ T) : 0 ≤ pickupResponseGram T m n := by
  rw [pickupResponseGram, intervalIntegral.integral_of_le hT]
  exact integral_nonneg (fun u => mul_nonneg (response_nonneg hm u) (response_nonneg hn u))

/-- Symmetry is an exact integral identity; it supplies no sign on its own. -/
theorem responseGram_symm (T : ℝ) (m n : ℕ) :
    pickupResponseGram T m n = pickupResponseGram T n m := by
  unfold pickupResponseGram
  apply intervalIntegral.integral_congr
  intro u _
  exact mul_comm _ _

/-- Coprimality is necessary; repeated-prime multiples are not treated as sign flips. -/
theorem moebius_prime_mul {p m : ℕ} (hp : p.Prime) (hpm : ¬p ∣ m) :
    moebiusReal (p * m) = -moebiusReal m := by
  have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
    (hp.coprime_iff_not_dvd.mpr hpm)
  rw [ArithmeticFunction.moebius_apply_prime hp, neg_one_mul] at h
  unfold moebiusReal
  exact_mod_cast h

theorem signedAtom_prime_multiple {p m : ℕ} (hp : p.Prime) (hm : 1 ≤ m)
    (hpm : ¬p ∣ m) (T : ℝ) :
    signedAtom T m (p * m) = -(moebiusReal m ^ 2) * pickupResponseGram T m (p * m) := by
  have hlt : m < p * m := by nlinarith [hp.two_le]
  rw [signedAtom, if_pos (ne_of_lt hlt), moebius_prime_mul hp hpm]
  ring

theorem signedAtom_prime_multiple_reverse {p m : ℕ} (hp : p.Prime) (hm : 1 ≤ m)
    (hpm : ¬p ∣ m) (T : ℝ) :
    signedAtom T (p * m) m = -(moebiusReal m ^ 2) * pickupResponseGram T (p * m) m := by
  have hlt : m < p * m := by nlinarith [hp.two_le]
  rw [signedAtom, if_pos (ne_of_gt hlt), moebius_prime_mul hp hpm]
  ring

/-- Both original orders contribute a negative square coefficient, not a
positive Hermitian allowance. -/
theorem ordered_prime_pair_eq {p m : ℕ} (hp : p.Prime) (hm : 1 ≤ m)
    (hpm : ¬p ∣ m) (T : ℝ) :
    signedAtom T m (p * m) + signedAtom T (p * m) m =
      -2 * moebiusReal m ^ 2 * pickupResponseGram T m (p * m) := by
  rw [signedAtom_prime_multiple hp hm hpm,
    signedAtom_prime_multiple_reverse hp hm hpm, responseGram_symm T (p * m) m]
  ring

/-- Either ordered orientation is selected; every pair is counted only once. -/
def PrimePair (P : Finset ℕ) (z : ℕ × ℕ) : Prop :=
  ∃ p ∈ P, (z.2 = p * z.1 ∧ ¬p ∣ z.1) ∨ (z.1 = p * z.2 ∧ ¬p ∣ z.2)

noncomputable def matchedPairs (T : ℝ) (P : Finset ℕ) : Finset (ℕ × ℕ) := by
  classical
  exact (sourcePairs T).filter (PrimePair P)

def primePairCredit (T : ℝ) (P : Finset ℕ) : ℝ :=
  ∑ z ∈ matchedPairs T P, |signedAtom T z.1 z.2|

/-- The whole complement remains signed. -/
def unpairedCross (T : ℝ) (P : Finset ℕ) : ℝ :=
  ∑ z ∈ sourcePairs T \ matchedPairs T P, signedAtom T z.1 z.2

def absoluteCross (T : ℝ) : ℝ :=
  ∑ z ∈ sourcePairs T, |signedAtom T z.1 z.2|

/-- An explicit upper certificate, not a newly chosen error term. -/
def signedUpper (T : ℝ) (P : Finset ℕ) : ℝ :=
  absoluteCross T - 2 * primePairCredit T P

theorem matchedPairs_subset (T : ℝ) (P : Finset ℕ) : matchedPairs T P ⊆ sourcePairs T := by
  classical
  exact Finset.filter_subset _ _

theorem matched_atom_nonpos {T : ℝ} (hT : 0 ≤ T) (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) {z : ℕ × ℕ} (hz : z ∈ matchedPairs T P) :
    signedAtom T z.1 z.2 ≤ 0 := by
  classical
  obtain ⟨hzS, hpairs⟩ := Finset.mem_filter.mp hz
  obtain ⟨hmS, hnS⟩ := Finset.mem_product.mp hzS
  have hm := (Finset.mem_Icc.mp hmS).1
  have hn := (Finset.mem_Icc.mp hnS).1
  obtain ⟨p, hp, (⟨heq, hcop⟩ | ⟨heq, hcop⟩)⟩ := hpairs
  · rw [heq, signedAtom_prime_multiple (hP p hp) hm hcop]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (sq_nonneg _))
      (responseGram_nonneg hm (by simpa [heq] using hn) hT)
  · rw [heq, signedAtom_prime_multiple_reverse (hP p hp) hn hcop]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (sq_nonneg _))
      (responseGram_nonneg (by simpa [heq] using hm) hn hT)

theorem primePairCredit_nonneg (T : ℝ) (P : Finset ℕ) : 0 ≤ primePairCredit T P :=
  Finset.sum_nonneg (fun _ _ => abs_nonneg _)

/-- Exact, all-nonnegative-real-time reduction of the existing arithmetic source. -/
theorem cross_eq_unpaired_sub_credit {T : ℝ} (hT : 0 ≤ T) (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) :
    pickupCross T = unpairedCross T P - primePairCredit T P := by
  rw [← sum_signedAtom_eq_cross]
  exact sum_eq_complement_sub_credit (sourcePairs T) (matchedPairs T P)
    (fun z => signedAtom T z.1 z.2) (matchedPairs_subset T P)
    (fun z hz => matched_atom_nonpos hT P hP hz)

/-- The existing waveform overlap specializes without inventing residuals:
common core = signed complement, geometry remainder = 0, arithmetic remainder
= the negative matched credit. These are statements about scalar source atoms. -/
theorem selection_overlap {T : ℝ} (hT : 0 ≤ T) (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) :
    let S := sourcePairs T
    let B := matchedPairs T P
    let f := fun z : ℕ × ℕ => signedAtom T z.1 z.2
    GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.sharedCore (S \ B) S f =
        unpairedCross T P ∧
      GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.geometryRemainder (S \ B) S f = 0 ∧
      GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.arithmeticRemainder (S \ B) S f f =
        -primePairCredit T P := by
  dsimp only
  let f := fun z : ℕ × ℕ => signedAtom T z.1 z.2
  have hsub : sourcePairs T \ matchedPairs T P ⊆ sourcePairs T := Finset.sdiff_subset
  have hcore :
      GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.sharedCore
        (sourcePairs T \ matchedPairs T P) (sourcePairs T) f = unpairedCross T P := by
    unfold GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.sharedCore unpairedCross
    rw [Finset.inter_eq_left.mpr hsub]
  have hgeo :
      GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.geometryRemainder
        (sourcePairs T \ matchedPairs T P) (sourcePairs T) f = 0 := by
    unfold GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.geometryRemainder
    apply Finset.sum_eq_zero
    intro z hz
    exact False.elim ((Finset.mem_sdiff.mp hz).2 (hsub (Finset.mem_sdiff.mp hz).1))
  refine ⟨hcore, hgeo, ?_⟩
  have hr := GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.arithmetic_reconstruct
    (sourcePairs T \ matchedPairs T P) (sourcePairs T) f f
  rw [hcore] at hr
  have hs : (∑ z ∈ sourcePairs T, f z) = pickupCross T := sum_signedAtom_eq_cross T
  rw [hs, cross_eq_unpaired_sub_credit hT P hP] at hr
  linarith

/-- Actual prime-pair cancellation pays twice its mass in an absolute allowance. -/
theorem cross_le_signedUpper {T : ℝ} (hT : 0 ≤ T) (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) : pickupCross T ≤ signedUpper T P := by
  rw [← sum_signedAtom_eq_cross]
  exact sum_le_absolute_sub_twice_credit (sourcePairs T) (matchedPairs T P)
    (fun z => signedAtom T z.1 z.2) (matchedPairs_subset T P)
    (fun z hz => matched_atom_nonpos hT P hP hz)

/-- The remaining overpayment is exactly the unselected negative mass twice. -/
theorem signedUpper_slack {T : ℝ} (hT : 0 ≤ T) (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) :
    signedUpper T P - pickupCross T =
      ∑ z ∈ sourcePairs T \ matchedPairs T P,
        (|signedAtom T z.1 z.2| - signedAtom T z.1 z.2) := by
  rw [← sum_signedAtom_eq_cross]
  exact absolute_upper_slack (sourcePairs T) (matchedPairs T P)
    (fun z => signedAtom T z.1 z.2) (matchedPairs_subset T P)
    (fun z hz => matched_atom_nonpos hT P hP hz)

theorem matchedPairs_mono (T : ℝ) {P Q : Finset ℕ} (hPQ : P ⊆ Q) :
    matchedPairs T P ⊆ matchedPairs T Q := by
  classical
  intro z hz
  obtain ⟨hS, p, hp, hpair⟩ := Finset.mem_filter.mp hz
  exact Finset.mem_filter.mpr ⟨hS, p, hPQ hp, hpair⟩

/-- A genuine certificate descent, with overlaps removed by set difference. -/
theorem signedUpper_step (T : ℝ) {P Q : Finset ℕ} (hPQ : P ⊆ Q) :
    signedUpper T Q = signedUpper T P -
      2 * ∑ z ∈ matchedPairs T Q \ matchedPairs T P, |signedAtom T z.1 z.2| := by
  exact upper_step_eq_new_credit (sourcePairs T) (matchedPairs T P) (matchedPairs T Q)
    (fun z => signedAtom T z.1 z.2) (matchedPairs_mono T hPQ)

theorem signedUpper_antitone (T : ℝ) {P Q : Finset ℕ} (hPQ : P ⊆ Q) :
    signedUpper T Q ≤ signedUpper T P := by
  rw [signedUpper_step T hPQ]
  have hn : 0 ≤ ∑ z ∈ matchedPairs T Q \ matchedPairs T P, |signedAtom T z.1 z.2| :=
    Finset.sum_nonneg (fun _ _ => abs_nonneg _)
  linarith

/-- The same source gets a strictly smaller upper certificate precisely when
the newly selected credit is nonzero. This is not a spectral assertion. -/
theorem signedUpper_strict_step (T : ℝ) {P Q : Finset ℕ} (hPQ : P ⊆ Q)
    (hgain : 0 < ∑ z ∈ matchedPairs T Q \ matchedPairs T P, |signedAtom T z.1 z.2|) :
    signedUpper T Q < signedUpper T P := by
  rw [signedUpper_step T hPQ]
  linarith

/-- The smallest concrete selection already has a proved source comparison. -/
theorem cross_le_two_prime_upper {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T ≤ signedUpper T {2} := by
  apply cross_le_signedUpper hT
  intro p hp
  have hp2 : p = 2 := Finset.mem_singleton.mp hp
  subst p
  exact Nat.prime_two

/-- Source-level regional transfer needs no new Hilbert model or reconstruction premise. -/
theorem cross_on_of_signedUpper (P : ℝ → Finset ℕ) {G : Set ℝ}
    (hP : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ P T, p.Prime)
    (hb : SubexponentialOn (fun T => signedUpper T (P T)) G) :
    SubexponentialOn pickupCross G := by
  apply subexponentialOn_mono hb
  intro T hG hT
  exact cross_le_signedUpper hT (P T) (hP T hG hT)

theorem signedUpper_good_scales_implies_RH (P : ℝ → Finset ℕ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hP : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ P T, p.Prime)
    (hb : SubexponentialOn (fun T => signedUpper T (P T)) G) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_cross_good_scales hcover (cross_on_of_signedUpper P hP hb)

/-- Keep the exact signed complement when an absolute upper envelope is too costly. -/
theorem signed_complement_good_scales_implies_RH (P : ℝ → Finset ℕ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hP : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ P T, p.Prime)
    (hb : SubexponentialOn (fun T => unpairedCross T (P T) - primePairCredit T (P T)) G) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_mono hb
  intro T hG hT
  exact (cross_eq_unpaired_sub_credit hT (P T) (hP T hG hT)).le

/-- Mix the new arithmetic selection with any previously established region
for the same source. Neither region needs affine coverage on its own. -/
theorem signedUpper_with_existing_region_implies_RH
    (P : ℝ → Finset ℕ) {G H : Set ℝ}
    (hcover : AffineFrequent (G ∪ H))
    (hP : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ P T, p.Prime)
    (hb : SubexponentialOn (fun T => signedUpper T (P T)) G)
    (hexisting : SubexponentialOn pickupCross H) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_cross_good_scales hcover
    (subexponentialOn_union (cross_on_of_signedUpper P hP hb) hexisting)

/-- Concrete theorem diffusion to the existing geometric waveform consumer.
The arithmetic region needs no packet. The old geometric region retains
its original height, source-return, mixed-defect and joint-budget hypotheses. -/
theorem signedUpper_or_waveform_packet_implies_RH {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (P : ℝ → Finset ℕ)
    (model : EulerP04RH.PacketClosure.PacketModel E)
    (D : EulerP04RH.ExactDecomposition) (height : ℝ → ℝ)
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → E) {G H : Set ℝ}
    (hcover : AffineFrequent (G ∪ H))
    (hP : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ P T, p.Prime)
    (hb : SubexponentialOn (fun T => signedUpper T (P T)) G)
    (hheight : ∀ T ∈ H, 0 ≤ T → 1 ≤ height T)
    (hreturn : ∀ T ∈ H, 0 ≤ T →
      EulerP04RH.signedSettlement D height T ≤
        ‖∑ i ∈ model.indices T, model.coefficients T i • model.vectors T i‖ ^ 2 + model.error T)
    (hgeometry : SubexponentialOn
      (GRWTSK.NumberTheory.Moebius.ResponseWaveformComparison.geometricJointUpper
        model D height S g) H) : _root_.RiemannHypothesis :=
  signedUpper_with_existing_region_implies_RH P hcover hP hb
    (GRWTSK.NumberTheory.Moebius.ResponseWaveformComparison.cross_subexponentialOn_of_geometric_budget
      model D height S g hheight hreturn hgeometry)

/-- Use different selections on different regions; combine only at the same source. -/
theorem signedUpper_finite_cover_implies_RH {ι : Type*} (methods : Finset ι)
    (P : ι → ℝ → Finset ℕ) (regions : ι → Set ℝ)
    (hcover : AffineFrequent {T | ∃ i ∈ methods, T ∈ regions i})
    (hP : ∀ i ∈ methods, ∀ T ∈ regions i, 0 ≤ T → ∀ p ∈ P i T, p.Prime)
    (hb : ∀ i ∈ methods, SubexponentialOn (fun T => signedUpper T (P i T)) (regions i)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_finite_cover methods regions
  intro i hi
  exact cross_on_of_signedUpper (P i) (hP i hi) (hb i hi)

end GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
