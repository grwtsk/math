/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.GaussianRationalArithmetic
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor

set_option autoImplicit false

/-!
# Rational validation of positive-base negative powers

For ANY integer base k>=1 and Gaussian rational parameter with Re(s)>=0,
the log center and its radius are computed from the inherited ratio-log series.
The exponential truncation and a proposed center's exact L1 rounding charge are
then checked separately. No logarithm, exponential or zeta evaluator is called
by the Boolean guard. Guard failure means this proposal is unverified.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPowerEvaluation
open Complex Finset
open GRWTSK.Analysis.Complex.SymmetricPair.Rational

/-- The j=0 summand is zero, following the pinned upstream total-field convention. -/
def logTaylorQ (n : ℕ) (q : ℚ) : ℚ :=
  ∑ j ∈ Finset.range n, (-1 : ℚ)^(j+1)*q^j/(j : ℚ)
def ratio (k : ℕ) : ℚ := ((k : ℚ)-1)/((k : ℚ)+1)
def logCenter (k m : ℕ) : ℚ :=
  logTaylorQ (m+1) (ratio k)-logTaylorQ (m+1) (-ratio k)
def logRadius (k m : ℕ) : ℚ :=
  2*((ratio k)^(m+1)*(1-ratio k)⁻¹/((m : ℚ)+1))

def argument (k m : ℕ) (s : Gaussian) : Gaussian :=
  Gaussian.qscale (-logCenter k m) s
def argumentBound (k m : ℕ) (s : Gaussian) : ℚ := s.l1*|logCenter k m|
def truncationRadius (k m n : ℕ) (s : Gaussian) : ℚ :=
  2*(argumentBound k m s)^n/(n.factorial : ℚ)
def rawCenter (k m n : ℕ) (s : Gaussian) : Gaussian :=
  Gaussian.expTaylor n (argument k m s)
def analyticRadius (k m n : ℕ) (s : Gaussian) : ℚ :=
  2*s.l1*logRadius k m+truncationRadius k m n s

structure Proposal where
  logDegree : ℕ
  expTerms : ℕ
  center : Gaussian
  radius : ℚ
  deriving DecidableEq, Repr

namespace Proposal

def cost (p : Proposal) (k : ℕ) (s : Gaussian) : ℚ :=
  analyticRadius k p.logDegree p.expTerms s+
    (Gaussian.qsub (rawCenter k p.logDegree p.expTerms s) p.center).l1

def Guard (p : Proposal) (k : ℕ) (s : Gaussian) : Prop :=
  1 ≤ k ∧ 0 ≤ s.re ∧ 0 ≤ p.radius ∧
  s.l1*logRadius k p.logDegree ≤ 1 ∧
  argumentBound k p.logDegree s/((p.expTerms : ℚ)+1) ≤ 1/2 ∧
  p.cost k s ≤ p.radius

def check (p : Proposal) (k : ℕ) (s : Gaussian) : Bool := decide (p.Guard k s)
lemma check_iff (p : Proposal) (k : ℕ) (s : Gaussian) :
    p.check k s=true ↔ p.Guard k s := by simp [check]

end Proposal

/-- A finite-arithmetic proposal without rounding; it may still fail the guards. -/
def rawProposal (k m n : ℕ) (s : Gaussian) : Proposal :=
  ⟨m,n,rawCenter k m n s,analyticRadius k m n s⟩

lemma logTaylorQ_cast (n : ℕ) (q : ℚ) :
    Complex.logTaylor n (q : ℂ) = (logTaylorQ n q : ℂ) := by
  simp only [Complex.logTaylor,logTaylorQ]
  push_cast <;> rfl

lemma logCenter_cast (k m : ℕ) :
    (logCenter k m : ℝ) = ratioLogCenter (ratio k : ℝ) m := by
  unfold logCenter ratioLogCenter
  have hq : (((ratio k : ℚ) : ℝ) : ℂ) = (ratio k : ℂ) := by norm_cast
  rw [hq,show -(ratio k : ℂ)=((-ratio k : ℚ) : ℂ) by push_cast; rfl,
    logTaylorQ_cast,logTaylorQ_cast]
  simp

lemma logRadius_cast (k m : ℕ) :
    (logRadius k m : ℝ) = ratioLogRadius (ratio k : ℝ) m := by
  simp only [logRadius,ratioLogRadius]
  push_cast <;> rfl

/-- The exact inherited logarithm theorem is retargeted by a rational identity. -/
noncomputable def logRecord (k m : ℕ) (hk : 1 ≤ k) : RealLogEnclosure (k : ℝ) := by
  let e := logEnclosureOfRatio (k : ℝ) (by exact_mod_cast hk) m
  have hq : ((k : ℝ)-1)/((k : ℝ)+1) = (ratio k : ℝ) := by
    simp only [ratio]
    push_cast <;> rfl
  have hc : e.center=(logCenter k m : ℝ) := by
    change ratioLogCenter (((k : ℝ)-1)/((k : ℝ)+1)) m = _
    rw [hq,logCenter_cast]
  have hr : e.radius=(logRadius k m : ℝ) := by
    change ratioLogRadius (((k : ℝ)-1)/((k : ℝ)+1)) m = _
    rw [hq,logRadius_cast]
  exact ⟨(logCenter k m : ℝ),(logRadius k m : ℝ),
    hr ▸ e.radius_nonneg,by simpa only [hc,hr] using e.encloses⟩

lemma rawCenter_value (k m n : ℕ) (s : Gaussian) :
    (rawCenter k m n s).value =
      complexExpTaylor n (-s.value*((logCenter k m : ℝ) : ℂ)) := by
  rw [rawCenter,Gaussian.expTaylor_value,argument,Gaussian.value_qscale]
  have he : ((-logCenter k m : ℚ) : ℂ)*s.value =
      -s.value*((logCenter k m : ℝ) : ℂ) := by push_cast; ring
  rw [he]
  rfl

/-- Every analytic premise is supplied by the actual positive base and checked data. -/
theorem Proposal.encloses {p : Proposal} {k : ℕ} {s : Gaussian}
    (hc : p.check k s=true) :
    ‖(k : ℂ)^(-s.value)-p.center.value‖ ≤ (p.radius : ℝ) := by
  obtain ⟨hk,hs,hr,hsmall,hguard,hcost⟩ := (p.check_iff k s).mp hc
  let e := logRecord k p.logDegree hk
  have hsR : 0 ≤ s.value.re := by change (0 : ℝ) ≤ (s.re : ℝ); exact_mod_cast hs
  have hm : (s.l1 : ℝ)*e.radius ≤ 1 := by
    change (s.l1 : ℝ)*(logRadius k p.logDegree : ℝ) ≤ 1
    exact_mod_cast hsmall
  have hg : (argumentBound k p.logDegree s : ℝ)/((p.expTerms : ℝ)+1) ≤ 1/2 := by
    exact_mod_cast hguard
  have ha : (s.l1 : ℝ)*|e.center| ≤ (argumentBound k p.logDegree s : ℝ) := by
    change (s.l1 : ℝ)*|(logCenter k p.logDegree : ℝ)| ≤ _
    simp [argumentBound]
  let b := negativePowerEnclosureOfBounds (x := (k : ℝ)) (by exact_mod_cast hk) e
    s.value hsR p.expTerms (s.l1 : ℝ) (argumentBound k p.logDegree s : ℝ)
    (Gaussian.norm_value_le_l1 s) hm ha hg
  have hb := b.encloses
  change ‖((k : ℝ) : ℂ)^(-s.value)-
      complexExpTaylor p.expTerms (-s.value*(e.center : ℂ))‖ ≤
    2*((s.l1 : ℝ)*e.radius)+complexExpTaylorRadius p.expTerms
      (argumentBound k p.logDegree s : ℝ) at hb
  have hraw : ‖(k : ℂ)^(-s.value)-(rawCenter k p.logDegree p.expTerms s).value‖ ≤
      (analyticRadius k p.logDegree p.expTerms s : ℝ) := by
    rw [rawCenter_value]
    convert hb using 1 <;>
      simp [e,logRecord,analyticRadius,truncationRadius,complexExpTaylorRadius] <;>
      push_cast <;> ring
  have hround := Gaussian.recenter_bound (b := p.center) hraw
  exact hround.trans (by exact_mod_cast hcost)

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPowerEvaluation
