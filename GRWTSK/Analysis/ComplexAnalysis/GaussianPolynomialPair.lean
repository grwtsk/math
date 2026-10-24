/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.GaussianRationalArithmetic

set_option autoImplicit false

/-!
# Exact polynomial pair evaluation and rational disk arithmetic

Coefficients use increasing powers. The coupled Horner step uses q=d^2 and
never divides by d. Its odd component at d=0 is a polynomial continuation,
NOT the total-field value of SymmetricPair.odd. That identification requires
d != 0. Disk bounds are continuum inequalities, not grid observations.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ComplexAnalysis.GaussianPolynomialPair
open _root_.Complex Set Finset
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational

abbrev Poly := List Gaussian

noncomputable def eval : Poly → ℂ → ℂ
  | [], _ => 0
  | a::p, z => a.value+z*eval p z

def add : Poly → Poly → Poly
  | [], q => q
  | p, [] => p
  | a::p, b::q => Gaussian.qadd a b::add p q

def scale (a : Gaussian) : Poly → Poly
  | [] => []
  | b::p => Gaussian.qmul a b::scale a p

def mul : Poly → Poly → Poly
  | [], _ => []
  | _, [] => []
  | a::p, b::q => add (scale a (b::q)) (Gaussian.ofRat 0::mul p (b::q))

def shift : Poly → Gaussian → Poly
  | [], _ => []
  | a::p, c => add [a] (mul [c,Gaussian.ofRat 1] (shift p c))

def monomial (a : Gaussian) : ℕ → Poly
  | 0 => [a]
  | n+1 => Gaussian.ofRat 0::monomial a n

def taylor (a : ℚ) : ℕ → Poly
  | 0 => []
  | n+1 => add (taylor a n) (monomial (Gaussian.ofRat (a^n/(n.factorial : ℚ))) n)

lemma eval_add (p q : Poly) (z : ℂ) : eval (add p q) z=eval p z+eval q z := by
  induction p generalizing q with
  | nil => simp [add,eval]
  | cons a p ih => cases q with
    | nil => simp [add,eval]
    | cons b q => simp only [add,eval,Gaussian.value_qadd,ih]; ring

lemma eval_scale (a : Gaussian) (p : Poly) (z : ℂ) :
    eval (scale a p) z=a.value*eval p z := by
  induction p with
  | nil => simp [scale,eval]
  | cons b p ih => simp only [scale,eval,Gaussian.value_qmul,ih]; ring

lemma eval_mul (p q : Poly) (z : ℂ) : eval (mul p q) z=eval p z*eval q z := by
  induction p with
  | nil => simp [mul,eval]
  | cons a p ih => cases q with
    | nil => simp [mul,eval]
    | cons b q =>
      simp only [mul,eval_add,eval_scale,eval,Gaussian.value_ofRat,Rat.cast_zero,ih]
      ring

lemma eval_shift (p : Poly) (c : Gaussian) (z : ℂ) :
    eval (shift p c) z=eval p (z+c.value) := by
  induction p with
  | nil => rfl
  | cons a p ih =>
    simp only [shift,eval_add,eval_mul,eval,Gaussian.value_ofRat,Rat.cast_one,ih]
    ring

lemma eval_monomial (a : Gaussian) (n : ℕ) (z : ℂ) :
    eval (monomial a n) z=a.value*z^n := by
  induction n with
  | zero => simp [monomial,eval]
  | succ n ih =>
    simp only [monomial,eval,Gaussian.value_ofRat,Rat.cast_zero,ih,pow_succ]
    ring

lemma eval_taylor (a : ℚ) (n : ℕ) (z : ℂ) :
    eval (taylor a n) z=∑ j ∈ Finset.range n, ((a : ℂ)*z)^j/(j.factorial : ℂ) := by
  induction n with
  | zero => simp [taylor,eval]
  | succ n ih =>
    rw [taylor,eval_add,eval_monomial,ih,Finset.sum_range_succ,Gaussian.value_ofRat]
    push_cast
    rw [mul_pow]
    ring

/-- Polynomial continuation of both channels; q is bound to d^2 by its consumer. -/
noncomputable def pair : Poly → ℂ → ℂ → ℂ × ℂ
  | [], _, _ => (0,0)
  | a::p, v, q =>
    let b := pair p v q
    (a.value+v*b.1+q*b.2,b.1+v*b.2)

lemma pair_reconstruct (p : Poly) (v d : ℂ) :
    eval p (v+d)=(pair p v (d^2)).1+d*(pair p v (d^2)).2 ∧
    eval p (v-d)=(pair p v (d^2)).1-d*(pair p v (d^2)).2 := by
  induction p with
  | nil => simp [eval,pair]
  | cons a p ih =>
    constructor <;> simp only [eval,pair,ih.1,ih.2] <;> ring

lemma pair_even (p : Poly) (v d : ℂ) :
    even (eval p) v d=(pair p v (d^2)).1 := by
  obtain ⟨hp,hm⟩ := pair_reconstruct p v d
  unfold even
  rw [hp,hm]
  ring

lemma pair_odd (p : Poly) (v : ℂ) {d : ℂ} (hd : d ≠ 0) :
    odd (eval p) v d=(pair p v (d^2)).2 := by
  obtain ⟨hp,hm⟩ := pair_reconstruct p v d
  unfold odd
  rw [hp,hm]
  field_simp [hd] <;> ring

structure Disk where
  center : Gaussian
  radius : ℚ
  deriving DecidableEq, Repr

namespace Disk

def Valid (A : Disk) (z : ℂ) : Prop := ‖z-A.center.value‖ ≤ (A.radius : ℝ)
def point (a : Gaussian) : Disk := ⟨a,0⟩
def add (A B : Disk) : Disk := ⟨Gaussian.qadd A.center B.center,A.radius+B.radius⟩
def mul (A B : Disk) : Disk :=
  ⟨Gaussian.qmul A.center B.center,
    A.center.l1*B.radius+B.center.l1*A.radius+A.radius*B.radius⟩
def lower (A : Disk) : ℚ := max 0 (max |A.center.re| |A.center.im|-A.radius)

lemma radius_nonneg {A : Disk} {z : ℂ} (h : A.Valid z) : 0 ≤ A.radius := by
  have h0 := (norm_nonneg (z-A.center.value)).trans h
  exact_mod_cast h0

lemma point_valid (a : Gaussian) : (point a).Valid a.value := by simp [Valid,point]

lemma add_valid {A B : Disk} {z w : ℂ} (hz : A.Valid z) (hw : B.Valid w) :
    (A.add B).Valid (z+w) := by
  change ‖z+w-(Gaussian.qadd A.center B.center).value‖ ≤ ((A.radius+B.radius : ℚ) : ℝ)
  rw [Gaussian.value_qadd,Rat.cast_add]
  have he : z+w-(A.center.value+B.center.value)=(z-A.center.value)+(w-B.center.value) := by ring
  rw [he]
  exact (norm_add_le _ _).trans (add_le_add hz hw)

lemma mul_valid {A B : Disk} {z w : ℂ} (hz : A.Valid z) (hw : B.Valid w) :
    (A.mul B).Valid (z*w) := by
  have ha : (0 : ℝ) ≤ (A.radius : ℝ) := by exact_mod_cast radius_nonneg hz
  have hb : (0 : ℝ) ≤ (B.radius : ℝ) := by exact_mod_cast radius_nonneg hw
  have hca := Gaussian.norm_value_le_l1 A.center
  have hcb := Gaussian.norm_value_le_l1 B.center
  have hca0 : (0 : ℝ) ≤ (A.center.l1 : ℝ) := by exact_mod_cast Gaussian.l1_nonneg A.center
  have hcb0 : (0 : ℝ) ≤ (B.center.l1 : ℝ) := by exact_mod_cast Gaussian.l1_nonneg B.center
  change ‖z*w-(Gaussian.qmul A.center B.center).value‖ ≤ _
  rw [Gaussian.value_qmul]
  have he : z*w-A.center.value*B.center.value =
      A.center.value*(w-B.center.value)+(z-A.center.value)*B.center.value+
        (z-A.center.value)*(w-B.center.value) := by ring
  rw [he]
  calc
    _ ≤ ‖A.center.value‖*‖w-B.center.value‖+
        ‖z-A.center.value‖*‖B.center.value‖+
        ‖z-A.center.value‖*‖w-B.center.value‖ := by bound
    _ ≤ _ := by
      change _ ≤ ((A.center.l1*B.radius+B.center.l1*A.radius+A.radius*B.radius : ℚ) : ℝ)
      push_cast
      have h1 := mul_le_mul hca hw (norm_nonneg _) hca0
      have h2 := mul_le_mul hcb hz (norm_nonneg _) hcb0
      have h3 := mul_le_mul hz hw (norm_nonneg _) ha
      nlinarith

lemma lower_nonneg (A : Disk) : 0 ≤ A.lower := le_max_left _ _

/-- Coordinate projection supplies a lower norm bound without square roots. -/
lemma lower_le {A : Disk} {z : ℂ} (hz : A.Valid z) : (A.lower : ℝ) ≤ ‖z‖ := by
  have hcoord : max |A.center.value.re| |A.center.value.im| ≤ ‖A.center.value‖ :=
    max_le (Complex.abs_re_le_norm _) (Complex.abs_im_le_norm _)
  have ht : ‖A.center.value‖ ≤ ‖z‖+(A.radius : ℝ) := by
    have he : A.center.value=z-(z-A.center.value) := by ring
    rw [he]
    exact (norm_sub_le _ _).trans (add_le_add_left hz _)
  rw [lower,Rat.cast_max,Rat.cast_zero,Rat.cast_sub,Rat.cast_max,Rat.cast_abs,Rat.cast_abs]
  apply max_le (norm_nonneg _)
  change max |A.center.value.re| |A.center.value.im|-(A.radius : ℝ) ≤ ‖z‖
  linarith

end Disk

/-- The q*odd cross term is retained in the even-channel recursion. -/
def enclose : Poly → Disk → Disk → Disk × Disk
  | [], _, _ => (Disk.point (Gaussian.ofRat 0),Disk.point (Gaussian.ofRat 0))
  | a::p, V, Q =>
    let b := enclose p V Q
    (((Disk.point a).add (V.mul b.1)).add (Q.mul b.2),b.1.add (V.mul b.2))

lemma enclose_valid (p : Poly) {V Q : Disk} {v q : ℂ}
    (hv : V.Valid v) (hq : Q.Valid q) :
    (enclose p V Q).1.Valid (pair p v q).1 ∧
    (enclose p V Q).2.Valid (pair p v q).2 := by
  induction p with
  | nil => simpa [enclose,pair,Gaussian.value_ofRat] using And.intro
      (Disk.point_valid (Gaussian.ofRat 0)) (Disk.point_valid (Gaussian.ofRat 0))
  | cons a p ih => exact ⟨((Disk.point_valid a).add_valid (hv.mul_valid ih.1)).add_valid
      (hq.mul_valid ih.2),ih.1.add_valid (hv.mul_valid ih.2)⟩

/-- An affine margin can vanish at q=0 and still be positive on 0<q<=Q.
This does not give a positive lower bound independent of q. -/
lemma affine_margin_pos {a b q Q : ℝ} (ha : 0 ≤ a) (hq : 0 < q)
    (hQ : q ≤ Q) (hend : 0 < a+Q*b) : 0 < a+q*b := by
  have hQ0 : 0 < Q := hq.trans_le hQ
  have hleft : 0 ≤ (Q-q)*a := mul_nonneg (sub_nonneg.mpr hQ) ha
  have hright : 0 < q*(a+Q*b) := mul_pos hq hend
  have hid : Q*(a+q*b)=(Q-q)*a+q*(a+Q*b) := by ring
  have hp : 0 < Q*(a+q*b) := by rw [hid]; linarith
  by_contra hn
  have hle : a+q*b ≤ 0 := le_of_not_gt hn
  have hbad := mul_nonpos_of_nonneg_of_nonpos hQ0.le hle
  exact (not_le_of_gt hp) hbad

end GRWTSK.Analysis.ComplexAnalysis.GaussianPolynomialPair
