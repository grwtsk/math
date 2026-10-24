# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalFiniteEvaluation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1cb00b3f68aee81fbfdeb1821f6d1115d1ede9f` · SHA-256 `f3148eb7bacb38b5c88d6bab8088b27237f64c3375d94cc8ec60a7223d54c4b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPowerEvaluation
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPairCheck

set_option autoImplicit false

/-!
# Complete rational evaluation of the existing sextic finite model

The list length is bound to the declared cutoff; every index 1..N is checked
against its OWN base and the SAME parameter. The Nth entry is reused for the
endpoint with its extra coefficient/error charge. No term or Bernoulli correction
is omitted. This file evaluates the finite model, not the infinite tail.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalFiniteEvaluation
open Complex Finset
open GRWTSK.Analysis.Complex.SymmetricPair.Rational
open CenteredMellin CenteredMellin.SexticPrimitive RationalPowerEvaluation
namespace D
export CenteredMellin.SexticPrimitive.DerivativeSixteen
  (product product_four product_six)
end D

def gproduct (n : ℕ) (s : Gaussian) : Gaussian :=
  match n with
  | 0 => Gaussian.ofRat 1
  | j+1 => Gaussian.qmul (gproduct j s) (Gaussian.qadd s (Gaussian.ofRat ((j : ℚ)-1)))

lemma gproduct_value (n : ℕ) (s : Gaussian) : (gproduct n s).value=D.product n s.value := by
  induction n with
  | zero => simp [gproduct,DerivativeSixteen.product]
  | succ n ih =>
    simp [gproduct,Gaussian.value_qmul,Gaussian.value_qadd,Gaussian.value_ofRat,ih,
      DerivativeSixteen.product,DerivativeSixteen.factor] <;> push_cast <;> ring

def weight (N : ℕ) (s : Gaussian) : Gaussian :=
  Gaussian.qadd
    (Gaussian.qsub
      (Gaussian.qadd
        (Gaussian.qsub (Gaussian.ofRat N) (Gaussian.qscale (1/2) (Gaussian.qsub s (Gaussian.ofRat 1))))
        (Gaussian.qscale (1/(12*(N : ℚ))) (Gaussian.qmul s (Gaussian.qsub s (Gaussian.ofRat 1)))))
      (Gaussian.qscale (1/(720*(N : ℚ)^3)) (gproduct 4 s)))
    (Gaussian.qscale (1/(30240*(N : ℚ)^5)) (gproduct 6 s))

noncomputable def weightC (N : ℕ) (s : ℂ) : ℂ :=
  N-(s-1)/2+s*(s-1)/(12*(N : ℂ))-
    CubicPrimitive.multiplier s/(720*(N : ℂ)^3)+
    QuarticPrimitive.multiplier s*(s+4)/(30240*(N : ℂ)^5)

lemma weight_value (N : ℕ) (s : Gaussian) : (weight N s).value=weightC N s.value := by
  simp only [weight,Gaussian.value_qadd,Gaussian.value_qsub,Gaussian.value_qscale,
    Gaussian.value_qmul,Gaussian.value_ofRat,gproduct_value,D.product_four,D.product_six,weightC]
  push_cast <;> ring

/-- Exact regrouping at an arbitrary POSITIVE cutoff, not a new finite model. -/
theorem finiteModel_regroup {N : ℕ} (hN : 1 ≤ N) (s : ℂ) :
    finiteModel N s=(s-1)*finiteDirichletPowerSum N s+weightC N s*(N : ℂ)^(-s) := by
  have hnNat : N ≠ 0 := (lt_of_lt_of_le Nat.zero_lt_one hN).ne'
  have hn : (N : ℂ) ≠ 0 := by exact_mod_cast hnNat
  have hshift (j : ℕ) : (N : ℂ)^(-(s+(j : ℂ)))=(N : ℂ)^(-s)/(N : ℂ)^j := by
    rw [show -(s+(j : ℂ))=-s-(j : ℂ) by ring,
      Complex.cpow_sub _ _ hn,Complex.cpow_natCast]
  have hend : (N : ℂ)^(1-s)=(N : ℂ)*(N : ℂ)^(-s) := by
    rw [sub_eq_add_neg,Complex.cpow_add _ _ hn,Complex.cpow_one]
  unfold finiteModel QuarticPrimitive.finiteModel CubicPrimitive.finiteModel
    CenteredMellin.finiteModel finitePowerPoleModel
  rw [hend,hshift 1,hshift 3,hshift 5]
  unfold weightC
  field_simp [hn] <;> ring

structure Data where
  powers : List RationalPowerEvaluation.Proposal
  deriving DecidableEq, Repr

namespace Data

def item (A : Data) (k : ℕ) : RationalPowerEvaluation.Proposal :=
  A.powers[k-1]?.getD ⟨0,0,⟨0,0⟩,0⟩

def Guard (A : Data) (N : ℕ) (s : Gaussian) : Prop :=
  1 ≤ N ∧ A.powers.length=N ∧
    ∀ k ∈ Finset.Icc 1 N, (A.item k).check k s=true

def check (A : Data) (N : ℕ) (s : Gaussian) : Bool := decide (A.Guard N s)
lemma check_iff (A : Data) (N : ℕ) (s : Gaussian) :
    A.check N s=true ↔ A.Guard N s := by simp [check]

def center (A : Data) (N : ℕ) (s : Gaussian) : Gaussian :=
  Gaussian.qadd
    (Gaussian.qmul (Gaussian.qsub s (Gaussian.ofRat 1))
      (Gaussian.qsum (Finset.Icc 1 N) (fun k => (A.item k).center)))
    (Gaussian.qmul (weight N s) (A.item N).center)

def radius (A : Data) (N : ℕ) (s : Gaussian) : ℚ :=
  (Gaussian.qsub s (Gaussian.ofRat 1)).l1*(∑ k ∈ Finset.Icc 1 N, (A.item k).radius)+
    (weight N s).l1*(A.item N).radius

lemma radius_nonneg {A : Data} {N : ℕ} {s : Gaussian} (hc : A.check N s=true) :
    0 ≤ A.radius N s := by
  obtain ⟨hN,hlen,hpowers⟩ := (A.check_iff N s).mp hc
  have hp (k : ℕ) (hk : k ∈ Finset.Icc 1 N) : 0 ≤ (A.item k).radius :=
    (((A.item k).check_iff k s).mp (hpowers k hk)).2.2.1
  exact add_nonneg
    (mul_nonneg (Gaussian.l1_nonneg _) (Finset.sum_nonneg hp))
    (mul_nonneg (Gaussian.l1_nonneg _) (hp N (Finset.mem_Icc.mpr ⟨hN,le_rfl⟩)))

/-- All Gaussian centers and evaluation radii are supplied by the checked list. -/
theorem encloses {A : Data} {N : ℕ} {s : Gaussian} (hc : A.check N s=true) :
    ‖finiteModel N s.value-(A.center N s).value‖ ≤ (A.radius N s : ℝ) := by
  obtain ⟨hN,hlen,hpowers⟩ := (A.check_iff N s).mp hc
  have hp (k : ℕ) (hk : k ∈ Finset.Icc 1 N) :=
    RationalPowerEvaluation.Proposal.encloses (hpowers k hk)
  have hNN : N ∈ Finset.Icc 1 N := Finset.mem_Icc.mpr ⟨hN,le_rfl⟩
  have hsum : ‖finiteDirichletPowerSum N s.value-
      ∑ k ∈ Finset.Icc 1 N, (A.item k).center.value‖ ≤
      ((∑ k ∈ Finset.Icc 1 N, (A.item k).radius : ℚ) : ℝ) := by
    unfold finiteDirichletPowerSum
    rw [← Finset.sum_sub_distrib]
    have h := (norm_sum_le _ _).trans (Finset.sum_le_sum hp)
    simpa only [Rat.cast_sum] using h
  have hm := Gaussian.norm_value_le_l1 (Gaussian.qsub s (Gaussian.ofRat 1))
  simp only [Gaussian.value_qsub,Gaussian.value_ofRat,Rat.cast_one] at hm
  have hw := Gaussian.norm_value_le_l1 (weight N s)
  rw [weight_value] at hw
  have heq : finiteModel N s.value-(A.center N s).value =
      (s.value-1)*(finiteDirichletPowerSum N s.value-
        ∑ k ∈ Finset.Icc 1 N, (A.item k).center.value)+
      weightC N s.value*((N : ℂ)^(-s.value)-(A.item N).center.value) := by
    rw [finiteModel_regroup hN]
    simp only [center,Gaussian.value_qadd,Gaussian.value_qmul,Gaussian.value_qsub,
      Gaussian.value_ofRat,Gaussian.value_qsum,weight_value,Rat.cast_one]
    ring
  rw [heq]
  apply (norm_add_le _ _).trans
  rw [norm_mul,norm_mul]
  have hs0 : (0 : ℝ) ≤ ((Gaussian.qsub s (Gaussian.ofRat 1)).l1 : ℝ) :=
    by exact_mod_cast Gaussian.l1_nonneg (Gaussian.qsub s (Gaussian.ofRat 1))
  have hw0 : (0 : ℝ) ≤ ((weight N s).l1 : ℝ) := by exact_mod_cast Gaussian.l1_nonneg (weight N s)
  have h := add_le_add (mul_le_mul hm hsum (norm_nonneg _) hs0)
    (mul_le_mul hw (hp N hNN) (norm_nonneg _) hw0)
  simpa only [radius,Rat.cast_add,Rat.cast_mul] using h

end Data

/-- Bounded data generation. It does not assert its guard or acceptance succeeds. -/
def rawData (N m n : ℕ) (s : Gaussian) : Data :=
  ⟨List.ofFn (fun i : Fin N => RationalPowerEvaluation.rawProposal (i.val+1) m n s)⟩

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalFiniteEvaluation
```
