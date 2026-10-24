# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Subdivision.Variantce3cebe7250766b4c625743b9a4ca29e0c0703f2b68ffff4793b010ff233d529

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3b53383fa26428246a16eb66ab1fc2c86fc1c14` · SHA-256 `925e2fe9a2b72aaa4ddab6ffecf7ccf6fa69f281007cb7afae1434b60a73856c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ControlRow.Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ControlRow.Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Bezier/Subdivision.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","late_preamble_command","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.Bezier.Rational

/-!
# BZ-1: Bernstein form and exact real de Casteljau subdivision

This module proves that arbitrary-degree de Casteljau evaluation in a
real module equals the closed Bernstein sum.  It then gives finite control-net
wrappers and exact left/right subdivision, including homogeneous weighted
rational controls represented minimally as `(numerator, weight)` pairs.

The conventional rational value is obtained only after homogeneous
evaluation, by multiplying the numerator by the inverse weight.  This
operation is totalized by the field structure; applications that need a
geometric affine point should separately prove that the evaluated weight is
nonzero.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ControlRow.Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30

section

namespace Surface.Core.Bezier.Subdivision

noncomputable section

open scoped BigOperators

variable {M : Type*} [AddCommGroup M] [Module ℝ M]

abbrev ControlRow (M : Type*) := ℕ → M

/-- One real affine de Casteljau reduction step. -/
def step (t : ℝ) (p : ControlRow M) : ControlRow M :=
  fun i => (1 - t) • p i + t • p (i + 1)

/-- Recursive degree-`n` de Casteljau evaluation. -/
def eval : (n : ℕ) → ControlRow M → ℝ → M
  | 0, p, _ => p 0
  | n + 1, p, t => eval n (step t p) t

/-- Scalar Bernstein weight, without restricting the parameter to `[0,1]`. -/
def bernsteinWeight (n i : ℕ) (t : ℝ) : ℝ :=
  (n.choose i : ℝ) * t ^ i * (1 - t) ^ (n - i)

lemma bernsteinWeight_zero_succ (n : ℕ) (t : ℝ) :
    bernsteinWeight (n + 1) 0 t =
      (1 - t) * bernsteinWeight n 0 t := by
  simp [bernsteinWeight, pow_succ]
  ring

lemma bernsteinWeight_succ_succ (n i : ℕ) (hi : i ≤ n) (t : ℝ) :
    bernsteinWeight (n + 1) (i + 1) t =
      t * bernsteinWeight n i t +
        (1 - t) * bernsteinWeight n (i + 1) t := by
  by_cases hin : i = n
  · subst i
    simp [bernsteinWeight]
    ring
  · have hlt : i < n := lt_of_le_of_ne hi hin
    rw [bernsteinWeight, bernsteinWeight, bernsteinWeight,
      Nat.choose_succ_succ']
    push_cast
    have hsub : n - i = (n - (i + 1)) + 1 := by omega
    rw [hsub]
    rw [pow_succ t i, pow_succ (1 - t) (n - (i + 1))]
    ring

/-- Closed Bernstein sum for a degree-`n` row. -/
def bernsteinSum (n : ℕ) (p : ControlRow M) (t : ℝ) : M :=
  ∑ i : Fin (n + 1), bernsteinWeight n i t • p i

lemma shifted_bernsteinWeight_sum (n : ℕ) (p : ControlRow M) (t : ℝ) :
    (∑ i : Fin (n + 1),
        (1 - t) • bernsteinWeight n (i + 1) t • p i.succ) =
      ∑ i : Fin n,
        (1 - t) • bernsteinWeight n i.succ t • p i.succ := by
  rw [Fin.sum_univ_castSucc]
  simp [bernsteinWeight]

lemma bernsteinSum_succ_eq_step (n : ℕ) (p : ControlRow M) (t : ℝ) :
    bernsteinSum (n + 1) p t = bernsteinSum n (step t p) t := by
  unfold bernsteinSum step
  have hdistrib (i : Fin (n + 1)) :
      bernsteinWeight n i t •
          ((1 - t) • p i + t • p (i + 1)) =
        (1 - t) • bernsteinWeight n i t • p i +
          t • bernsteinWeight n i t • p (i + 1) := by
    module
  simp_rw [hdistrib]
  rw [Fin.sum_univ_succ]
  simp only [Fin.val_zero]
  rw [bernsteinWeight_zero_succ]
  have hweight (i : Fin (n + 1)) :
      bernsteinWeight (n + 1) i.succ t =
        t * bernsteinWeight n i t +
          (1 - t) * bernsteinWeight n (i + 1) t := by
    simpa using bernsteinWeight_succ_succ n i (Fin.is_le i) t
  simp_rw [hweight, add_smul, mul_smul]
  rw [Finset.sum_add_distrib, Finset.sum_add_distrib]
  rw [shifted_bernsteinWeight_sum]
  conv_rhs =>
    enter [1]
    rw [Fin.sum_univ_succ]
  simp only [Fin.val_zero, Fin.val_succ]
  abel

/-- Arbitrary-degree de Casteljau evaluation equals its closed scalar
Bernstein sum for every real parameter. -/
theorem eval_eq_bernsteinWeight_sum (n : ℕ) (p : ControlRow M) (t : ℝ) :
    eval n p t = bernsteinSum n p t := by
  induction n generalizing p with
  | zero => simp [eval, bernsteinSum, bernsteinWeight]
  | succ n ih =>
      rw [eval, ih, ← bernsteinSum_succ_eq_step]

lemma bernsteinWeight_eq_bernstein (n i : ℕ) (t : unitInterval) :
    bernsteinWeight n i (t : ℝ) = _root_.bernstein n i t := by
  simp [bernsteinWeight, _root_.bernstein_apply]

/-- Requested mathlib-facing form using `bernstein` on the unit interval. -/
theorem eval_eq_bernstein (n : ℕ) (p : ControlRow M) (t : unitInterval) :
    eval n p (t : ℝ) =
      ∑ i : Fin (n + 1), _root_.bernstein n i t • p i := by
  rw [eval_eq_bernsteinWeight_sum]
  unfold bernsteinSum
  apply Finset.sum_congr rfl
  intro i hi
  rw [bernsteinWeight_eq_bernstein]

/-! ## Exact subdivision on real module rows -/

def rowCombo (a : ℝ) (p q : ControlRow M) : ControlRow M :=
  fun i => (1 - a) • p i + a • q i

lemma step_rowCombo (t a : ℝ) (p q : ControlRow M) :
    step t (rowCombo a p q) = rowCombo a (step t p) (step t q) := by
  funext i
  simp only [step, rowCombo]
  module

lemma eval_rowCombo (n : ℕ) (t a : ℝ) (p q : ControlRow M) :
    eval n (rowCombo a p q) t =
      (1 - a) • eval n p t + a • eval n q t := by
  induction n generalizing p q with
  | zero => rfl
  | succ n ih =>
      rw [eval, step_rowCombo, ih]
      rfl

lemma step_eq_rowCombo_self_step (t u : ℝ) (p : ControlRow M) :
    step (t * u) p = rowCombo t p (step u p) := by
  funext i
  simp only [step, rowCombo]
  module

def splitLeft (p : ControlRow M) (u : ℝ) : ControlRow M :=
  fun i => eval i p u

lemma step_splitLeft (t u : ℝ) (p : ControlRow M) :
    step t (splitLeft p u) = splitLeft (step (t * u) p) u := by
  funext i
  simp only [step, splitLeft]
  rw [show eval (i + 1) p u = eval i (step u p) u by rfl]
  rw [← eval_rowCombo]
  rw [← step_eq_rowCombo_self_step]

theorem eval_split_left_mul (n : ℕ) (p : ControlRow M) (u t : ℝ) :
    eval n (splitLeft p u) t = eval n p (t * u) := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [eval, step_splitLeft, ih]
      rfl

theorem eval_split_left (n : ℕ) (p : ControlRow M) (u t : ℝ) :
    eval n (splitLeft p u) t = eval n p (u * t) := by
  simpa only [mul_comm] using eval_split_left_mul n p u t

lemma eval_congr_prefix (n : ℕ) (p q : ControlRow M) (t : ℝ)
    (h : ∀ i, i ≤ n → p i = q i) :
    eval n p t = eval n q t := by
  induction n generalizing p q with
  | zero => exact h 0 (by omega)
  | succ n ih =>
      rw [eval, eval]
      apply ih
      intro i hi
      simp only [step]
      rw [h i (by omega), h (i + 1) (by omega)]

def splitRight (n : ℕ) (p : ControlRow M) (u : ℝ) : ControlRow M :=
  fun i => eval (n - i) (fun j => p (i + j)) u

lemma step_splitRight_prefix (n i : ℕ) (hi : i ≤ n)
    (t u : ℝ) (p : ControlRow M) :
    step t (splitRight (n + 1) p u) i =
      splitRight n (step (u + (1 - u) * t) p) u i := by
  simp only [step, splitRight]
  have hsub1 : n + 1 - i = (n - i) + 1 := by omega
  have hsub2 : n + 1 - (i + 1) = n - i := by omega
  rw [hsub1, hsub2]
  rw [show eval ((n - i) + 1) (fun j => p (i + j)) u =
      eval (n - i) (step u (fun j => p (i + j))) u by rfl]
  rw [← eval_rowCombo]
  apply eval_congr_prefix
  intro j hj
  simp only [rowCombo, step]
  have hidx : i + 1 + j = i + j + 1 := by omega
  rw [hidx]
  module

theorem eval_split_right (n : ℕ) (p : ControlRow M) (u t : ℝ) :
    eval n (splitRight n p u) t =
      eval n p (u + (1 - u) * t) := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [eval]
      calc
        eval n (step t (splitRight (n + 1) p u)) t =
            eval n (splitRight n (step (u + (1 - u) * t) p) u) t := by
          apply eval_congr_prefix
          intro i hi
          exact step_splitRight_prefix n i hi t u p
        _ = eval n (step (u + (1 - u) * t) p)
              (u + (1 - u) * t) :=
          ih (step (u + (1 - u) * t) p)
        _ = eval (n + 1) p (u + (1 - u) * t) := rfl

/-! ## Finite and weighted homogeneous wrappers -/

abbrev FiniteControl (n : ℕ) (M : Type*) :=
  Fin (n + 1) → M

/-- Extend a finite degree-`n` row by zero.  Evaluation never observes the
extension beyond index `n`. -/
def extendFinite (n : ℕ) (p : FiniteControl n M) : ControlRow M :=
  fun i => if hi : i < n + 1 then p ⟨i, hi⟩ else 0

def finiteEval (n : ℕ) (p : FiniteControl n M) (t : ℝ) : M :=
  eval n (extendFinite n p) t

/-- Finite-control version of the exact Bernstein bridge. -/
theorem finiteEval_eq_bernstein
    (n : ℕ) (p : FiniteControl n M) (t : unitInterval) :
    finiteEval n p (t : ℝ) =
      ∑ i : Fin (n + 1), _root_.bernstein n i t • p i := by
  rw [finiteEval, eval_eq_bernstein]
  apply Finset.sum_congr rfl
  intro i hi
  simp [extendFinite, i.isLt]

def finiteSplitLeft (n : ℕ) (p : FiniteControl n M) (u : ℝ) :
    FiniteControl n M :=
  fun i => splitLeft (extendFinite n p) u i

def finiteSplitRight (n : ℕ) (p : FiniteControl n M) (u : ℝ) :
    FiniteControl n M :=
  fun i => splitRight n (extendFinite n p) u i

lemma eval_extendFinite_finiteSplitLeft
    (n : ℕ) (p : FiniteControl n M) (u t : ℝ) :
    eval n (extendFinite n (finiteSplitLeft n p u)) t =
      eval n (splitLeft (extendFinite n p) u) t := by
  apply eval_congr_prefix
  intro i hi
  simp [extendFinite, finiteSplitLeft, hi]

lemma eval_extendFinite_finiteSplitRight
    (n : ℕ) (p : FiniteControl n M) (u t : ℝ) :
    eval n (extendFinite n (finiteSplitRight n p u)) t =
      eval n (splitRight n (extendFinite n p) u) t := by
  apply eval_congr_prefix
  intro i hi
  simp [extendFinite, finiteSplitRight, hi]

theorem finiteEval_split_left
    (n : ℕ) (p : FiniteControl n M) (u t : ℝ) :
    finiteEval n (finiteSplitLeft n p u) t = finiteEval n p (u * t) := by
  unfold finiteEval
  rw [eval_extendFinite_finiteSplitLeft, eval_split_left]

theorem finiteEval_split_right
    (n : ℕ) (p : FiniteControl n M) (u t : ℝ) :
    finiteEval n (finiteSplitRight n p u) t =
      finiteEval n p (u + (1 - u) * t) := by
  unfold finiteEval
  rw [eval_extendFinite_finiteSplitRight, eval_split_right]

/-- Minimal homogeneous representation for a weighted rational point.  The
first component is the weighted numerator and the second is the weight. -/
abbrev WeightedHomogeneousPoint (M : Type*) :=
  M × ℝ

abbrev FiniteWeightedControl (n : ℕ) (M : Type*) :=
  FiniteControl n (WeightedHomogeneousPoint M)

def weightedSplitLeft (n : ℕ) (p : FiniteWeightedControl n M) (u : ℝ) :
    FiniteWeightedControl n M :=
  finiteSplitLeft n p u

def weightedSplitRight (n : ℕ) (p : FiniteWeightedControl n M) (u : ℝ) :
    FiniteWeightedControl n M :=
  finiteSplitRight n p u

/-- Totalized dehomogenization.  A geometric use should additionally require
`point.2 ≠ 0`. -/
def dehomogenize (point : WeightedHomogeneousPoint M) : M :=
  point.2⁻¹ • point.1

def rationalEval (n : ℕ) (p : FiniteWeightedControl n M) (t : ℝ) : M :=
  dehomogenize (finiteEval n p t)

theorem rationalEval_split_left
    (n : ℕ) (p : FiniteWeightedControl n M) (u t : ℝ) :
    rationalEval n (weightedSplitLeft n p u) t =
      rationalEval n p (u * t) := by
  unfold rationalEval weightedSplitLeft
  rw [finiteEval_split_left]

theorem rationalEval_split_right
    (n : ℕ) (p : FiniteWeightedControl n M) (u t : ℝ) :
    rationalEval n (weightedSplitRight n p u) t =
      rationalEval n p (u + (1 - u) * t) := by
  unfold rationalEval weightedSplitRight
  rw [finiteEval_split_right]

/-! ## Adapter to the canonical `RationalSegment` shape -/

open Surface.Core.Bezier

lemma eval_snd
    (n : ℕ) (p : ControlRow (M × ℝ)) (t : ℝ) :
    (eval n p t).2 = eval n (fun i => (p i).2) t := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [eval, eval, ih]
      rfl

lemma eval_pos_of_prefix_pos
    (n : ℕ) (p : ControlRow ℝ) (t : UnitInterval)
    (hp : ∀ i, i ≤ n → 0 < p i) :
    0 < eval n p t.1 := by
  induction n generalizing p with
  | zero => exact hp 0 (by omega)
  | succ n ih =>
      rw [eval]
      apply ih
      intro i hi
      simp only [step]
      by_cases ht : t.1 = 0
      · simp [ht, hp i (by omega)]
      · have htpos : 0 < t.1 := lt_of_le_of_ne t.2.1 (Ne.symm ht)
        exact add_pos_of_nonneg_of_pos
          (mul_nonneg (sub_nonneg.mpr t.2.2) (hp i (by omega)).le)
          (mul_pos htpos (hp (i + 1) (by omega)))

variable {degree : ℕ}

/-- Canonical rational controls lifted to exact homogeneous numerator/weight
pairs. -/
def homogeneousControl
    (C : RationalSegment M degree) : FiniteWeightedControl degree M :=
  fun i => (C.weight i • C.control i, C.weight i)

theorem weightedSplitLeft_weight_pos
    (C : RationalSegment M degree) (tau : UnitInterval)
    (i : Fin (degree + 1)) :
    0 < (weightedSplitLeft degree (homogeneousControl C) tau.1 i).2 := by
  unfold weightedSplitLeft finiteSplitLeft splitLeft
  rw [eval_snd]
  apply eval_pos_of_prefix_pos
  intro j hj
  have hjdegree : j ≤ degree := le_trans hj i.is_le
  have hjlt : j < degree + 1 := by omega
  simp [extendFinite, homogeneousControl, hjlt, C.weight_pos ⟨j, hjlt⟩]

theorem weightedSplitRight_weight_pos
    (C : RationalSegment M degree) (tau : UnitInterval)
    (i : Fin (degree + 1)) :
    0 < (weightedSplitRight degree (homogeneousControl C) tau.1 i).2 := by
  unfold weightedSplitRight finiteSplitRight splitRight
  rw [eval_snd]
  apply eval_pos_of_prefix_pos
  intro j hj
  have hij : i.1 + j ≤ degree := by omega
  have hijlt : i.1 + j < degree + 1 := by omega
  simp [extendFinite, homogeneousControl, hijlt,
    C.weight_pos ⟨i.1 + j, hijlt⟩]

/-- Turn a positive homogeneous row back into the canonical weighted-control
shape. -/
def segmentOfPositiveHomogeneous
    (H : FiniteWeightedControl degree M)
    (hpos : ∀ i, 0 < (H i).2) : RationalSegment M degree where
  control i := (H i).2⁻¹ • (H i).1
  weight i := (H i).2
  weight_pos i := hpos i

def splitLeftSegment
    (C : RationalSegment M degree) (tau : UnitInterval) :
    RationalSegment M degree :=
  segmentOfPositiveHomogeneous
    (weightedSplitLeft degree (homogeneousControl C) tau.1)
    (weightedSplitLeft_weight_pos C tau)

def splitRightSegment
    (C : RationalSegment M degree) (tau : UnitInterval) :
    RationalSegment M degree :=
  segmentOfPositiveHomogeneous
    (weightedSplitRight degree (homogeneousControl C) tau.1)
    (weightedSplitRight_weight_pos C tau)

/-- Actual canonical rational-segment split shape. -/
def splitAt
    (C : RationalSegment M degree) (tau : UnitInterval) :
    RationalSegment M degree × RationalSegment M degree :=
  (splitLeftSegment C tau, splitRightSegment C tau)

def leftParameter (tau t : UnitInterval) : UnitInterval :=
  ⟨tau.1 * t.1,
    mul_nonneg tau.2.1 t.2.1,
    by
      have h : 0 ≤ tau.1 * (1 - t.1) :=
        mul_nonneg tau.2.1 (sub_nonneg.mpr t.2.2)
      nlinarith [tau.2.2]⟩

def rightParameter (tau t : UnitInterval) : UnitInterval :=
  ⟨tau.1 + (1 - tau.1) * t.1,
    by
      have h : 0 ≤ (1 - tau.1) * t.1 :=
        mul_nonneg (sub_nonneg.mpr tau.2.2) t.2.1
      nlinarith [tau.2.1],
    by
      have h : 0 ≤ (1 - tau.1) * (1 - t.1) :=
        mul_nonneg (sub_nonneg.mpr tau.2.2)
          (sub_nonneg.mpr t.2.2)
      nlinarith⟩

@[simp] theorem leftParameter_val (tau t : UnitInterval) :
    (leftParameter tau t).1 = tau.1 * t.1 := rfl

@[simp] theorem rightParameter_val (tau t : UnitInterval) :
    (rightParameter tau t).1 = tau.1 + (1 - tau.1) * t.1 := rfl

theorem homogeneousControl_segmentOfPositiveHomogeneous
    (H : FiniteWeightedControl degree M)
    (hpos : ∀ i, 0 < (H i).2) :
    homogeneousControl (segmentOfPositiveHomogeneous H hpos) = H := by
  funext i
  apply Prod.ext
  · simp [homogeneousControl, segmentOfPositiveHomogeneous,
      smul_smul, (hpos i).ne']
  · rfl

theorem homogeneousControl_splitLeftSegment
    (C : RationalSegment M degree) (tau : UnitInterval) :
    homogeneousControl (splitLeftSegment C tau) =
      weightedSplitLeft degree (homogeneousControl C) tau.1 := by
  apply homogeneousControl_segmentOfPositiveHomogeneous

theorem homogeneousControl_splitRightSegment
    (C : RationalSegment M degree) (tau : UnitInterval) :
    homogeneousControl (splitRightSegment C tau) =
      weightedSplitRight degree (homogeneousControl C) tau.1 := by
  apply homogeneousControl_segmentOfPositiveHomogeneous

theorem finiteEval_homogeneousControl
    (C : RationalSegment M degree) (t : UnitInterval) :
    finiteEval degree (homogeneousControl C) t.1 =
      (C.numerator t.1, C.denominator t.1) := by
  rw [finiteEval_eq_bernstein]
  apply Prod.ext
  · change (AddMonoidHom.fst M ℝ)
        (∑ i : Fin (degree + 1),
          (_root_.bernstein degree i t) • homogeneousControl C i) = _
    rw [map_sum]
    unfold RationalSegment.numerator
    apply Finset.sum_congr rfl
    intro i hi
    rw [Surface.Core.Bezier.bernstein_coe]
    simp [homogeneousControl, mul_smul]
  · change (AddMonoidHom.snd M ℝ)
        (∑ i : Fin (degree + 1),
          (_root_.bernstein degree i t) • homogeneousControl C i) = _
    rw [map_sum]
    unfold RationalSegment.denominator
    apply Finset.sum_congr rfl
    intro i hi
    rw [Surface.Core.Bezier.bernstein_coe]
    simp [homogeneousControl]

theorem rationalEval_homogeneousControl
    (C : RationalSegment M degree) (t : UnitInterval) :
    rationalEval degree (homogeneousControl C) t.1 = C.eval t := by
  unfold rationalEval dehomogenize RationalSegment.eval
  rw [finiteEval_homogeneousControl]

/-- The canonical left split segment evaluates to the original rational
segment at the left reparameterization. -/
theorem splitLeftSegment_eval
    (C : RationalSegment M degree) (tau t : UnitInterval) :
    (splitLeftSegment C tau).eval t = C.eval (leftParameter tau t) := by
  calc
    (splitLeftSegment C tau).eval t =
        rationalEval degree
          (homogeneousControl (splitLeftSegment C tau)) t.1 :=
      (rationalEval_homogeneousControl (splitLeftSegment C tau) t).symm
    _ = rationalEval degree
          (weightedSplitLeft degree (homogeneousControl C) tau.1) t.1 := by
      rw [homogeneousControl_splitLeftSegment]
    _ = rationalEval degree (homogeneousControl C) (tau.1 * t.1) :=
      rationalEval_split_left degree (homogeneousControl C) tau.1 t.1
    _ = rationalEval degree (homogeneousControl C)
          (leftParameter tau t).1 := rfl
    _ = C.eval (leftParameter tau t) :=
      rationalEval_homogeneousControl C (leftParameter tau t)

/-- The canonical right split segment evaluates to the original rational
segment at the right reparameterization. -/
theorem splitRightSegment_eval
    (C : RationalSegment M degree) (tau t : UnitInterval) :
    (splitRightSegment C tau).eval t = C.eval (rightParameter tau t) := by
  calc
    (splitRightSegment C tau).eval t =
        rationalEval degree
          (homogeneousControl (splitRightSegment C tau)) t.1 :=
      (rationalEval_homogeneousControl (splitRightSegment C tau) t).symm
    _ = rationalEval degree
          (weightedSplitRight degree (homogeneousControl C) tau.1) t.1 := by
      rw [homogeneousControl_splitRightSegment]
    _ = rationalEval degree (homogeneousControl C)
          (tau.1 + (1 - tau.1) * t.1) :=
      rationalEval_split_right degree (homogeneousControl C) tau.1 t.1
    _ = rationalEval degree (homogeneousControl C)
          (rightParameter tau t).1 := rfl
    _ = C.eval (rightParameter tau t) :=
      rationalEval_homogeneousControl C (rightParameter tau t)

theorem splitAt_left_eval
    (C : RationalSegment M degree) (tau t : UnitInterval) :
    (splitAt C tau).1.eval t = C.eval (leftParameter tau t) := by
  exact splitLeftSegment_eval C tau t

theorem splitAt_right_eval
    (C : RationalSegment M degree) (tau t : UnitInterval) :
    (splitAt C tau).2.eval t = C.eval (rightParameter tau t) := by
  exact splitRightSegment_eval C tau t

end


end Surface.Core.Bezier.Subdivision

namespace Surface.Core.Bezier

namespace RationalSegment

variable {V : Type*} [AddCommGroup V] [Module ℝ V] {degree : ℕ}

/-- Reparameterize the unit interval onto the left side of a split. -/
@[surface_novel, expose]
public def leftParameter (tau t : UnitInterval) : UnitInterval :=
  ⟨tau.1 * t.1,
    mul_nonneg tau.2.1 t.2.1,
    by
      have h : 0 ≤ tau.1 * (1 - t.1) :=
        mul_nonneg tau.2.1 (sub_nonneg.mpr t.2.2)
      nlinarith [tau.2.2]⟩

/-- Reparameterize the unit interval onto the right side of a split. -/
@[surface_novel, expose]
public def rightParameter (tau t : UnitInterval) : UnitInterval :=
  ⟨tau.1 + (1 - tau.1) * t.1,
    by
      have h : 0 ≤ (1 - tau.1) * t.1 :=
        mul_nonneg (sub_nonneg.mpr tau.2.2) t.2.1
      nlinarith [tau.2.1],
    by
      have h : 0 ≤ (1 - tau.1) * (1 - t.1) :=
        mul_nonneg (sub_nonneg.mpr tau.2.2)
          (sub_nonneg.mpr t.2.2)
      nlinarith⟩

@[surface_novel, simp]
public theorem leftParameter_val (tau t : UnitInterval) :
    (leftParameter tau t).1 = tau.1 * t.1 :=
  rfl

@[surface_novel, simp]
public theorem rightParameter_val (tau t : UnitInterval) :
    (rightParameter tau t).1 = tau.1 + (1 - tau.1) * t.1 :=
  rfl

/-- Exact rational de Casteljau subdivision at a checked unit parameter. -/
@[surface_novel]
public noncomputable def splitAt
    (C : RationalSegment V degree) (tau : UnitInterval) :
    RationalSegment V degree × RationalSegment V degree :=
  Subdivision.splitAt C tau

/-- The left subdivision is exactly the original segment on the left subinterval. -/
@[surface_novel, surface_published]
public theorem eval_split_left
    (C : RationalSegment V degree) (tau t : UnitInterval) :
    (C.splitAt tau).1.eval t = C.eval (leftParameter tau t) :=
  Subdivision.splitAt_left_eval C tau t

/-- The right subdivision is exactly the original segment on the right subinterval. -/
@[surface_novel, surface_published]
public theorem eval_split_right
    (C : RationalSegment V degree) (tau t : UnitInterval) :
    (C.splitAt tau).2.eval t = C.eval (rightParameter tau t) :=
  Subdivision.splitAt_right_eval C tau t

end RationalSegment

end Surface.Core.Bezier

end
```
