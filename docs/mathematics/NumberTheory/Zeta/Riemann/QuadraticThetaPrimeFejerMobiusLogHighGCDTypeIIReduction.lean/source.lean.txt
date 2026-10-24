/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Injective reduced-tuple majorization for high-g Type II

Every exact term maps injectively to a reduced tuple (g,a,d',b,e').  The target
box retains only d' | a and e' | b with a,b <= floor(4X/g); all other
restrictions are dropped only after absolute values.  Hence no hidden shift or
divisor multiplicity is omitted.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
HIGH_GCD_REDUCED_TUPLE_INJECTION_SOURCE_PROVED.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.FiniteDivisorCounting

/-- Ambient reduced tuple type `(g,(a,d'),(b,e'))`. -/
abbrev MobiusLogHighGCDReducedDivisorTupleIndex :=
  Σ g : ℕ, (Σ a : ℕ, ℕ) × (Σ b : ℕ, ℕ)

/-- The finite majorizing box after dividing by the high common gcd and safely
dropping squarefree, coprime, ordering, and interval restrictions. -/
def mobiusLogHighGCDReducedDivisorTupleSet
    (X Y : ℕ) :
    Finset MobiusLogHighGCDReducedDivisorTupleIndex :=
  (Finset.Ioo Y (4 * X + 1)).sigma fun g =>
    positiveDivisorIncidenceSet (4 * X / g) ×ˢ
      positiveDivisorIncidenceSet (4 * X / g)

/-- Reduction map from an exact term to `(g,a,d',b,e')`. -/
def mobiusLogHighGCDReduceTerm :
    MobiusLogHighGCDTypeIITermIndex →
      MobiusLogHighGCDReducedDivisorTupleIndex
  | ⟨h, ⟨n, ⟨g, uv⟩⟩⟩ =>
      ⟨g,
        (⟨n / g,
            centeredMobiusLogDivisorModulus uv.1 / g⟩,
         ⟨(n + h) / g,
            centeredMobiusLogDivisorModulus uv.2 / g⟩)⟩

/-- Every exact term maps into the reduced divisor box. -/
theorem mobiusLogHighGCDReduceTerm_mapsTo
    {X Y : ℕ}
    (hY : 1 ≤ Y) :
    Set.MapsTo mobiusLogHighGCDReduceTerm
      (mobiusLogAbsoluteHighGCDTypeIITermIndexSet X Y : Set _)
      (mobiusLogHighGCDReducedDivisorTupleSet X Y : Set _) := by
  intro x hx
  rcases x with ⟨h, ⟨n, ⟨g, uv⟩⟩⟩
  simp only [mobiusLogAbsoluteHighGCDTypeIITermIndexSet,
    Finset.mem_sigma] at hx
  rcases hx with ⟨hh, hn, hg, huv⟩
  have hhigh := mem_centeredMobiusLogHighGCDSet_iff.mp hg
  have hgshift :=
    (mem_centeredMobiusLogSquarefreeShiftDivisorSet_iff.mp
      hhigh.1).1
  have hhpos : 0 < h := by
    have hhI := Finset.mem_Icc.mp hh
    omega
  have hgpos : 0 < g :=
    Nat.pos_of_dvd_of_pos hgshift hhpos
  have hgUpper : g < 4 * X + 1 := by
    have hgle : g ≤ h := Nat.le_of_dvd hhpos hgshift
    have hhI := Finset.mem_Icc.mp hh
    omega
  have hclass :=
    mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv
  have hpair :=
    mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp hclass.1
  have huFull :=
    centeredMobiusLogSquarefreeDivisorIndexSet_subset n hpair.1
  have hvFull :=
    centeredMobiusLogSquarefreeDivisorIndexSet_subset (n + h) hpair.2
  have hDu : centeredMobiusLogDivisorModulus uv.1 ∣ n :=
    centeredMobiusLogDivisorModulus_dvd_of_mem huFull
  have hDv : centeredMobiusLogDivisorModulus uv.2 ∣ n + h :=
    centeredMobiusLogDivisorModulus_dvd_of_mem hvFull
  have hgDu : g ∣ centeredMobiusLogDivisorModulus uv.1 := by
    rw [← hclass.2]
    exact Nat.gcd_dvd_left _ _
  have hgDv : g ∣ centeredMobiusLogDivisorModulus uv.2 := by
    rw [← hclass.2]
    exact Nat.gcd_dvd_right _ _
  have hgn : g ∣ n := hgDu.trans hDu
  have hgnh : g ∣ n + h := hgDv.trans hDv
  have hnI := Finset.mem_Ioc.mp hn
  have hnpos : 0 < n := by omega
  have hnhpos : 0 < n + h := by omega
  have hnUpper : n ≤ 4 * X :=
    hnI.2.trans (Nat.sub_le _ _)
  have hnhUpper : n + h ≤ 4 * X := by omega
  have ha0 : 0 < n / g :=
    Nat.div_pos (Nat.le_of_dvd hnpos hgn) hgpos
  have hb0 : 0 < (n + h) / g :=
    Nat.div_pos (Nat.le_of_dvd hnhpos hgnh) hgpos
  have haUpper : n / g ≤ 4 * X / g :=
    Nat.div_le_div_right hnUpper
  have hbUpper : (n + h) / g ≤ 4 * X / g :=
    Nat.div_le_div_right hnhUpper
  have hdred :
      centeredMobiusLogDivisorModulus uv.1 / g ∣ n / g := by
    rw [Nat.dvd_div_iff_mul_dvd hgn]
    simpa [Nat.mul_div_cancel' hgDu] using hDu
  have hered :
      centeredMobiusLogDivisorModulus uv.2 / g ∣ (n + h) / g := by
    rw [Nat.dvd_div_iff_mul_dvd hgnh]
    simpa [Nat.mul_div_cancel' hgDv] using hDv
  simp only [mobiusLogHighGCDReduceTerm,
    mobiusLogHighGCDReducedDivisorTupleSet,
    positiveDivisorIncidenceSet,
    Finset.mem_sigma, Finset.mem_product]
  exact
    ⟨Finset.mem_Ioo.mpr ⟨hhigh.2, hgUpper⟩,
      ⟨⟨Finset.mem_Ioc.mpr ⟨ha0, haUpper⟩,
          Nat.mem_divisors.mpr ⟨hdred, ha0.ne'⟩⟩,
       ⟨Finset.mem_Ioc.mpr ⟨hb0, hbUpper⟩,
          Nat.mem_divisors.mpr ⟨hered, hb0.ne'⟩⟩⟩⟩

/-- The reduction map is injective on exact high-g terms; hence no multiplicity
is hidden by the relaxation. -/
theorem mobiusLogHighGCDReduceTerm_injOn
    {X Y : ℕ}
    (hY : 1 ≤ Y) :
    Set.InjOn mobiusLogHighGCDReduceTerm
      (mobiusLogAbsoluteHighGCDTypeIITermIndexSet X Y : Set _) := by
  intro x hx y hy hxy
  rcases x with ⟨h₁, ⟨n₁, ⟨g₁, uv₁⟩⟩⟩
  rcases y with ⟨h₂, ⟨n₂, ⟨g₂, uv₂⟩⟩⟩
  simp only [mobiusLogAbsoluteHighGCDTypeIITermIndexSet,
    Finset.mem_sigma] at hx hy
  rcases hx with ⟨hh₁, hn₁, hg₁, huv₁⟩
  rcases hy with ⟨hh₂, hn₂, hg₂, huv₂⟩
  rcases centeredMobiusLogHighGCDClass_pair_is_genuine
      hY hg₁ huv₁ with ⟨d₁, e₁, rfl⟩
  rcases centeredMobiusLogHighGCDClass_pair_is_genuine
      hY hg₂ huv₂ with ⟨d₂, e₂, rfl⟩
  have hgEq : g₁ = g₂ := congrArg Sigma.fst hxy
  subst g₂
  have hpayload :
      (⟨n₁ / g₁, d₁ / g₁⟩,
        ⟨(n₁ + h₁) / g₁, e₁ / g₁⟩) =
      (⟨n₂ / g₁, d₂ / g₁⟩,
        ⟨(n₂ + h₂) / g₁, e₂ / g₁⟩) := by
    have hh := (Sigma.mk.inj_iff.mp hxy).2
    simpa [mobiusLogHighGCDReduceTerm, heq_eq_eq,
      centeredMobiusLogDivisorModulus] using hh
  have hleft := congrArg Prod.fst hpayload
  have hright := congrArg Prod.snd hpayload
  have haEq : n₁ / g₁ = n₂ / g₁ :=
    (Sigma.mk.inj_iff.mp hleft).1
  have hdEq : d₁ / g₁ = d₂ / g₁ := by
    have hh := (Sigma.mk.inj_iff.mp hleft).2
    simpa [heq_eq_eq] using hh
  have hbEq : (n₁ + h₁) / g₁ = (n₂ + h₂) / g₁ :=
    (Sigma.mk.inj_iff.mp hright).1
  have heEq : e₁ / g₁ = e₂ / g₁ := by
    have hh := (Sigma.mk.inj_iff.mp hright).2
    simpa [heq_eq_eq] using hh
  have hclass₁ :=
    (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv₁).2
  have hclass₂ :=
    (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv₂).2
  have hg_d₁ : g₁ ∣ d₁ := by
    rw [← hclass₁]
    exact Nat.gcd_dvd_left d₁ e₁
  have hg_e₁ : g₁ ∣ e₁ := by
    rw [← hclass₁]
    exact Nat.gcd_dvd_right d₁ e₁
  have hg_d₂ : g₁ ∣ d₂ := by
    rw [← hclass₂]
    exact Nat.gcd_dvd_left d₂ e₂
  have hg_e₂ : g₁ ∣ e₂ := by
    rw [← hclass₂]
    exact Nat.gcd_dvd_right d₂ e₂
  have hpair₁ :=
    mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp
      (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv₁).1
  have hpair₂ :=
    mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp
      (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv₂).1
  have hd₁n : d₁ ∣ n₁ :=
    (Nat.mem_divisors.mp
      (some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp
        hpair₁.1).1).1
  have he₁n : e₁ ∣ n₁ + h₁ :=
    (Nat.mem_divisors.mp
      (some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp
        hpair₁.2).1).1
  have hd₂n : d₂ ∣ n₂ :=
    (Nat.mem_divisors.mp
      (some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp
        hpair₂.1).1).1
  have he₂n : e₂ ∣ n₂ + h₂ :=
    (Nat.mem_divisors.mp
      (some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp
        hpair₂.2).1).1
  have hg_n₁ : g₁ ∣ n₁ := hg_d₁.trans hd₁n
  have hg_n₂ : g₁ ∣ n₂ := hg_d₂.trans hd₂n
  have hg_nh₁ : g₁ ∣ n₁ + h₁ := hg_e₁.trans he₁n
  have hg_nh₂ : g₁ ∣ n₂ + h₂ := hg_e₂.trans he₂n
  have hnEq : n₁ = n₂ := by
    calc
      n₁ = g₁ * (n₁ / g₁) := (Nat.mul_div_cancel' hg_n₁).symm
      _ = g₁ * (n₂ / g₁) := by rw [haEq]
      _ = n₂ := Nat.mul_div_cancel' hg_n₂
  have hnhEq : n₁ + h₁ = n₂ + h₂ := by
    calc
      n₁ + h₁ = g₁ * ((n₁ + h₁) / g₁) :=
        (Nat.mul_div_cancel' hg_nh₁).symm
      _ = g₁ * ((n₂ + h₂) / g₁) := by rw [hbEq]
      _ = n₂ + h₂ := Nat.mul_div_cancel' hg_nh₂
  have hhEq : h₁ = h₂ := by omega
  have hdFullEq : d₁ = d₂ := by
    calc
      d₁ = g₁ * (d₁ / g₁) := (Nat.mul_div_cancel' hg_d₁).symm
      _ = g₁ * (d₂ / g₁) := by rw [hdEq]
      _ = d₂ := Nat.mul_div_cancel' hg_d₂
  have heFullEq : e₁ = e₂ := by
    calc
      e₁ = g₁ * (e₁ / g₁) := (Nat.mul_div_cancel' hg_e₁).symm
      _ = g₁ * (e₂ / g₁) := by rw [heEq]
      _ = e₂ := Nat.mul_div_cancel' hg_e₂
  subst n₂
  subst h₂
  subst d₂
  subst e₂
  rfl

/-- Exact term count is bounded by the relaxed reduced-divisor box. -/
theorem mobiusLogAbsoluteHighGCDTypeIITermIndexSet_card_le
    {X Y : ℕ}
    (hY : 1 ≤ Y) :
    (mobiusLogAbsoluteHighGCDTypeIITermIndexSet X Y).card ≤
      (mobiusLogHighGCDReducedDivisorTupleSet X Y).card :=
  Finset.card_le_card_of_injOn
    mobiusLogHighGCDReduceTerm
    (mobiusLogHighGCDReduceTerm_mapsTo hY)
    (mobiusLogHighGCDReduceTerm_injOn hY)

/-- The reduced tuple box cardinality is the square of the divisor-summatory
count in each common-gcd fiber. -/
theorem mobiusLogHighGCDReducedDivisorTupleSet_card
    (X Y : ℕ) :
    (mobiusLogHighGCDReducedDivisorTupleSet X Y).card =
      ∑ g ∈ Finset.Ioo Y (4 * X + 1),
        (positiveDivisorIncidenceSet (4 * X / g)).card ^ 2 := by
  simp [mobiusLogHighGCDReducedDivisorTupleSet,
    Finset.card_sigma, pow_two]


end GRWTSK.RiemannHypothesis
