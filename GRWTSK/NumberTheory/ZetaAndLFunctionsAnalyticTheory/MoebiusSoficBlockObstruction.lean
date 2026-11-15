/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensPrimitive
import Mathlib.Data.Fintype.Pigeonhole
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Tactic

/-!
# The signed Möbius block language has no exact finite graph presentation

The source is `ArithmeticFunction.moebius` at consecutive original integers.
The physical bit codec in `PhysicalMoebiusBitGramReturn` reads these same
coefficients (`observedCoeff_encoded`, after the integer-to-real cast).
`MoebiusSoficDefectLanguage` certifies chart shifts of a whole stream. The
edges below represent a different operation: each advances one index and
emits one label. Prefix coverage and block soundness for these edges cannot
both hold on a fixed finite state space.

Take states immediately before more prime positions than there are states.
Two agree, so one can repeat the intervening loop. Its first signed
coefficient is `-1`. For loop length `d`, among `(d+1)^2` repetitions, at
least one such coefficient lands on a multiple of `(d+1)^2` at every
putative source placement. The actual coefficient there is zero. The
source support constraint is the prime-square admissibility familiar from
Sarnak, *Three Lectures on the Mobius Function*, Lecture 1, and from
El Abdalaoui, Lemańczyk and de la Rue, *A dynamical point of view on the
set of B-free integers*, §2.2. The finite witness here uses the explicit
identity `1 + (d+2)*d = (d+1)^2` and the literal signed prime values.

For a graph word placed on an original index window, the ordinary
ordered pickup distinguishes terms incident to a false nonzero label
from the remaining signed defect. The pumped path forces two strictly
positive observed terms in the first sector after both responses are
born. The obstruction concerns exact block presentation by one fixed graph.

For a weighted path inventory, the observed-minus-source difference is
the positive ordered error mass minus its compensating negative mass.
Each selected surplus pair gives an explicit lower bound on the needed
compensation when both causal births precede an interior integration time.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficBlockObstruction

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

/-- Every positive step admits an explicit squareful position within the
first `(d+1)^2` terms of any progression of that step. -/
theorem exists_moebius_zero_in_progression (start d : ℕ) (hd : 0 < d) :
    ∃ k < (d + 1)^2, ArithmeticFunction.moebius (start + k * d) = 0 := by
  let modulus := (d + 1)^2
  let k := (start * (d + 2)) % modulus
  have hmodulus : 0 < modulus := by dsimp [modulus]; positivity
  refine ⟨k, Nat.mod_lt _ hmodulus, ?_⟩
  have hcongr := ((Nat.mod_modEq (start * (d + 2)) modulus).mul_right d).add_left start
  have hdvd : modulus ∣ start + start * (d + 2) * d :=
    ⟨start, by dsimp [modulus]; ring⟩
  have hdiv : modulus ∣ start + k * d :=
    Nat.modEq_zero_iff_dvd.mp (hcongr.trans (Nat.modEq_zero_iff_dvd.mpr hdvd))
  apply ArithmeticFunction.moebius_eq_zero_of_not_squarefree
  intro hs
  have hunit := Nat.isUnit_iff.mp (hs (d + 1) (by simpa only [modulus, pow_two] using hdiv))
  omega

/-- The pumped path has two distinct negative marks at each placement,
at least one at an index where the actual Möbius coefficient is zero.
The two marks are positions in the same ordered graph word. -/
theorem exists_path_with_false_nonzero_pair {State Label : Type*} [Fintype State]
    (edge : State → Label → State → Prop) (decode : Label → ℤ)
    (burnIn : ℕ)
    (cover : ∀ length : ℕ, ∃ (state : ℕ → State) (label : ℕ → Label),
      ∀ i < length, edge (state i) (label i) (state (i + 1)) ∧
        decode (label i) = ArithmeticFunction.moebius (burnIn + 1 + i)) :
    ∃ (length : ℕ) (state : ℕ → State) (label : ℕ → Label),
      (∀ i < length, edge (state i) (label i) (state (i + 1))) ∧
      ∀ start : ℕ, ∃ i j : ℕ, i < length ∧ j < length ∧ i ≠ j ∧
        decode (label i) = -1 ∧ decode (label j) = -1 ∧
        ArithmeticFunction.moebius (start + i) = 0 := by
  classical
  let primePosition (i : ℕ) := Nat.nth Nat.Prime (burnIn + i) - (burnIn + 1)
  have hprime (i : ℕ) : (burnIn + 1 + primePosition i).Prime := by
    have hle := Nat.add_two_le_nth_prime (burnIn + i)
    rw [show burnIn + 1 + primePosition i = Nat.nth Nat.Prime (burnIn + i) by
      dsimp [primePosition]
      omega]
    exact Nat.prime_nth_prime _
  have hmono : StrictMono primePosition := by
    intro i j hij
    have hlt : Nat.nth Nat.Prime (burnIn + i) < Nat.nth Nat.Prime (burnIn + j) :=
      Nat.nth_strictMono Nat.infinite_setOfPred_prime (Nat.add_lt_add_left hij burnIn)
    have hle := Nat.add_two_le_nth_prime (burnIn + i)
    dsimp [primePosition]
    omega
  let count := Fintype.card State
  obtain ⟨state, label, hpath⟩ := cover (primePosition count + 1)
  have hrepeat : ∃ i j : Fin (count + 1), i < j ∧
      state (primePosition i) = state (primePosition j) := by
    obtain ⟨i, j, hne, heq⟩ := Fintype.exists_ne_map_eq_of_card_lt
      (fun i : Fin (count + 1) => state (primePosition i)) (by simp [count])
    rcases lt_or_gt_of_ne hne with hlt | hgt
    · exact ⟨i, j, hlt, heq⟩
    · exact ⟨j, i, hgt, heq.symm⟩
  obtain ⟨i, j, hij, hreturn⟩ := hrepeat
  let left := primePosition i
  let right := primePosition j
  let d := right - left
  have hlt : left < right := hmono hij
  have hd : 0 < d := Nat.sub_pos_of_lt hlt
  have hadd : left + d = right := Nat.add_sub_of_le hlt.le
  have hright : right ≤ primePosition count := hmono.monotone (Nat.le_of_lt_succ j.isLt)
  have hfirst : decode (label left) = -1 :=
    (hpath left (by omega)).2.trans (ArithmeticFunction.moebius_apply_prime (hprime i))
  refine ⟨(d + 1)^2 * d, fun k => state (left + k % d),
    fun k => label (left + k % d), ?_, ?_⟩
  · intro k _
    have hrem := Nat.mod_lt k hd
    have hstep := (hpath (left + k % d) (by omega)).1
    have hnext : (k + 1) % d = (k % d + 1) % d := (Nat.mod_add_mod k d 1).symm
    change edge (state (left + k % d)) (label (left + k % d))
      (state (left + (k + 1) % d))
    rw [hnext]
    by_cases hins : k % d + 1 < d
    · simpa only [Nat.mod_eq_of_lt hins, Nat.add_assoc] using hstep
    · have hwrap : k % d + 1 = d := by omega
      rw [hwrap, Nat.mod_self, Nat.add_zero, hreturn]
      rwa [Nat.add_assoc, hwrap, hadd] at hstep
  · intro start
    obtain ⟨k, hk, hzero⟩ := exists_moebius_zero_in_progression start d hd
    have hcopies : 1 < (d + 1)^2 := by nlinarith
    have hother : ∃ q < (d + 1)^2, k ≠ q := by
      by_cases h : k = 0
      · exact ⟨1, hcopies, by omega⟩
      · exact ⟨0, by omega, h⟩
    obtain ⟨q, hq, hkq⟩ := hother
    refine ⟨k * d, q * d, Nat.mul_lt_mul_of_pos_right hk hd,
      Nat.mul_lt_mul_of_pos_right hq hd,
      fun heq => hkq (Nat.eq_of_mul_eq_mul_right hd heq), ?_, ?_, hzero⟩
    · simpa using hfirst
    · simpa using hfirst

/-- If a finite graph covers all actual signed prefixes, it admits a path
whose decoded word disagrees with every contiguous source block. `state i`
is the state before label `i`. Only the first `length` labels enter the
word. The decoder permits a finite raw alphabet such as physical bit pairs. -/
theorem exists_path_not_source_block {State Label : Type*} [Fintype State]
    (edge : State → Label → State → Prop) (decode : Label → ℤ)
    (burnIn : ℕ)
    (cover : ∀ length : ℕ, ∃ (state : ℕ → State) (label : ℕ → Label),
      ∀ i < length, edge (state i) (label i) (state (i + 1)) ∧
        decode (label i) = ArithmeticFunction.moebius (burnIn + 1 + i)) :
    ∃ (length : ℕ) (state : ℕ → State) (label : ℕ → Label),
      (∀ i < length, edge (state i) (label i) (state (i + 1))) ∧
      ∀ start : ℕ, ∃ i < length,
        decode (label i) ≠ ArithmeticFunction.moebius (start + i) := by
  obtain ⟨length, state, label, hpath, hpair⟩ :=
    exists_path_with_false_nonzero_pair edge decode burnIn cover
  refine ⟨length, state, label, hpath, fun start => ?_⟩
  obtain ⟨i, _, hi, _, _, hneg, _, hzero⟩ := hpair start
  exact ⟨i, hi, by simp [hneg, hzero]⟩

/-- Same indexed path convention as `exists_path_not_source_block`, expressed
using the repository's inductive word path. -/
private theorem indexed_states_of_wordPath {State Label : Type*}
    {G : LabeledGraph State Label} {s t : State} {word : List Label}
    (path : WordPath G s word t) :
    ∃ state : ℕ → State, state 0 = s ∧ ∀ i (hi : i < word.length),
      G.edge (state i) (word.get ⟨i, hi⟩) (state (i + 1)) := by
  induction path with
  | nil s =>
      exact ⟨fun _ => s, rfl, fun _ hi => (Nat.not_lt_zero _ hi).elim⟩
  | cons a rest hedge _ ih =>
      obtain ⟨tailState, hstart, htail⟩ := ih
      refine ⟨fun | 0 => _ | i + 1 => tailState i, rfl, ?_⟩
      intro i hi
      cases i with
      | zero => simpa [hstart] using hedge
      | succ i => exact htail i (by simpa using hi)

private theorem wordPath_of_indexed_states {State Label : Type*}
    (G : LabeledGraph State Label) (state : ℕ → State) (label : ℕ → Label)
    (length offset : ℕ)
    (path : ∀ i < length, G.edge (state (offset + i)) (label (offset + i))
      (state (offset + i + 1))) :
    WordPath G (state offset) (List.ofFn fun i : Fin length => label (offset + i))
      (state (offset + length)) := by
  induction length generalizing offset with
  | zero => simpa using WordPath.nil (G := G) (state offset)
  | succ length ih =>
      rw [List.ofFn_succ]
      have hfirst : G.edge (state offset) (label offset) (state (offset + 1)) := by
        simpa using path 0 (Nat.zero_lt_succ _)
      have htail := ih (offset + 1) (fun i hi => by
        simpa [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
          path (i + 1) (Nat.succ_lt_succ hi))
      simpa [Nat.succ_eq_add_one, Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
        WordPath.cons _ _ hfirst htail

/-- No tail of the original signed Möbius sequence has an exact presentation
of its full factor language in the repository's finite-graph interface. -/
theorem not_eventuallySoficTrace_moebius :
    ¬ EventuallySoficTrace (fun i => ArithmeticFunction.moebius (1 + i)) := by
  rintro ⟨burnIn, ⟨P⟩⟩
  let trace (i : ℕ) := ArithmeticFunction.moebius (burnIn + 1 + i)
  have hcover (length : ℕ) : ∃ state : ℕ → P.State, ∀ i < length,
      P.graph.edge (state i) (trace i) (state (i + 1)) := by
    let word := List.ofFn fun i : Fin length => trace i
    have hblock : HasFiniteBlock (tailTrace (fun i => ArithmeticFunction.moebius (1 + i))
        burnIn) word := by
      refine ⟨0, fun i => ?_⟩
      simp [word, trace, tailTrace, Nat.add_assoc, Nat.add_left_comm]
    obtain ⟨_, _, hpath⟩ := (P.exactLanguage word).mp hblock
    obtain ⟨state, _, hedge⟩ := indexed_states_of_wordPath hpath
    exact ⟨state, fun i hi => by simpa [word] using hedge i (by simpa [word] using hi)⟩
  obtain ⟨length, state, label, hpath, hmiss⟩ :=
    @exists_path_not_source_block P.State ℤ P.finiteState P.graph.edge id burnIn (fun length => by
      obtain ⟨state, hedge⟩ := hcover length
      exact ⟨state, trace, fun i hi => ⟨hedge i hi, rfl⟩⟩)
  let word := List.ofFn fun i : Fin length => label i
  have hp : GraphLanguage P.graph word :=
    ⟨state 0, state length, by
      simpa [word] using wordPath_of_indexed_states P.graph state label length 0
        (fun i hi => by simpa using hpath i hi)⟩
  obtain ⟨offset, hblock⟩ := (P.exactLanguage word).mpr hp
  obtain ⟨i, hi, hne⟩ := hmiss (burnIn + 1 + offset)
  apply hne
  simpa [word, tailTrace, Nat.add_assoc, Nat.add_left_comm] using
    (hblock ⟨i, by simpa [word] using hi⟩).symm

open GRWTSK.RiemannHypothesis.CCC

/-- Exactly the original rectangular cutoff of `pickupCross`. -/
def pickupIndex (T : ℝ) : Finset ℕ := Finset.Icc 1 ⌊Real.exp T⌋₊

/-- Both ordered orientations use the original causal response. -/
def pickupPairTerm (T : ℝ) (coeff : ℕ → ℝ) (m n : ℕ) : ℝ :=
  if m ≠ n then coeff m * coeff n * pickupResponseGram T m n else 0

def pickupPairSum (T : ℝ) (term : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ pickupIndex T, ∑ n ∈ pickupIndex T, term m n

def FalseNonzero (coeff : ℕ → ℝ) (n : ℕ) : Prop :=
  moebiusReal n = 0 ∧ coeff n ≠ 0

/-- Charge each ordered pair touching a false nonzero once, including
when both endpoints have false nonzero labels. -/
def surplusPairTerm (T : ℝ) (coeff : ℕ → ℝ) (m n : ℕ) : ℝ := by
  classical
  exact if FalseNonzero coeff m ∨ FalseNonzero coeff n then
    pickupPairTerm T coeff m n else 0

/-- Remaining signed error on pairs outside the surplus sector. -/
def remainingPairDefect (T : ℝ) (coeff : ℕ → ℝ) (m n : ℕ) : ℝ := by
  classical
  exact if FalseNonzero coeff m ∨ FalseNonzero coeff n then 0 else
    pickupPairTerm T moebiusReal m n - pickupPairTerm T coeff m n

/-- At a false nonzero endpoint, the literal source pair is zero. Thus the
full signed charge in this sector is the negative of the observed term. -/
theorem source_pair_eq_observed_sub_surplus_add_defect
    (T : ℝ) (coeff : ℕ → ℝ) (m n : ℕ) :
    pickupPairTerm T moebiusReal m n = pickupPairTerm T coeff m n -
      surplusPairTerm T coeff m n + remainingPairDefect T coeff m n := by
  classical
  by_cases h : FalseNonzero coeff m ∨ FalseNonzero coeff n
  · simp only [surplusPairTerm, remainingPairDefect, ite_eq_left h, sub_self, add_zero]
    rcases h with hm | hn
    · simp [pickupPairTerm, hm.1]
    · simp [pickupPairTerm, hn.1]
  · simp [surplusPairTerm, remainingPairDefect, h]

/-- Return to the actual complete signed pickup. The surplus retains its
sign, and the complement retains every other source-minus-observation term. -/
theorem pickupCross_eq_observed_sub_surplus_add_defect (T : ℝ) (coeff : ℕ → ℝ) :
    pickupCross T = pickupPairSum T (pickupPairTerm T coeff) -
      pickupPairSum T (surplusPairTerm T coeff) + pickupPairSum T (remainingPairDefect T coeff) := by
  change pickupPairSum T (pickupPairTerm T moebiusReal) = _
  unfold pickupPairSum
  simp only [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  exact source_pair_eq_observed_sub_surplus_add_defect T coeff m n

/-- Linear accounting on a finite path inventory. Paths with identical
decoded words still contribute separately with their original weights. -/
theorem weighted_pickup_path_return {Path : Type*} (T : ℝ) (paths : Finset Path)
    (weight : Path → ℝ) (coeff : Path → ℕ → ℝ) :
    (∑ p ∈ paths, weight p) * pickupCross T =
      (∑ p ∈ paths, weight p * pickupPairSum T (pickupPairTerm T (coeff p))) -
      (∑ p ∈ paths, weight p * pickupPairSum T (surplusPairTerm T (coeff p))) +
      (∑ p ∈ paths, weight p * pickupPairSum T (remainingPairDefect T (coeff p))) := by
  rw [Finset.sum_mul, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  rw [pickupCross_eq_observed_sub_surplus_add_defect T (coeff p), mul_add, mul_sub]

/-- A placed word changes only the coefficients in its own source window. -/
def placedCoeff (start length : ℕ) (decode : ℕ → ℤ) (n : ℕ) : ℝ :=
  if start ≤ n ∧ n < start + length then (decode (n - start) : ℝ) else moebiusReal n

private theorem response_eq_max (n : ℕ) (hn : 0 < n) (u : ℝ) :
    pickupResponse n u = 2 * max (Real.exp (-Real.log (n : ℝ) / 2) - Real.exp (-u / 2)) 0 := by
  have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
  have hroot : (Real.sqrt (n : ℝ))⁻¹ = Real.exp (-Real.log (n : ℝ) / 2) := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hnreal]
  rw [pickupResponse, hroot]
  by_cases h : Real.log (n : ℝ) ≤ u
  · have he := Real.exp_le_exp.mpr (show -u / 2 ≤ -Real.log (n : ℝ) / 2 by linarith)
    rw [ite_eq_left h, max_eq_left (sub_nonneg.mpr he)]
  · have he := Real.exp_le_exp.mpr (show -Real.log (n : ℝ) / 2 ≤ -u / 2 by linarith)
    rw [ite_eq_right h, max_eq_right (sub_nonpos.mpr he), mul_zero]

private theorem gram_pos_after_birth {T : ℝ} {m n : ℕ} (hm : 0 < m) (hn : 0 < n)
    (hmT : Real.log (m : ℝ) < T) (hnT : Real.log (n : ℝ) < T) :
    0 < pickupResponseGram T m n := by
  have hc (k : ℕ) (hk : 0 < k) : Continuous (pickupResponse k) := by
    rw [funext (response_eq_max k hk)]
    fun_prop
  have hp (k : ℕ) (hk : 0 < k) (h : Real.log (k : ℝ) < T) :
      0 < pickupResponse k T := by
    rw [response_eq_max k hk]
    have he := Real.exp_lt_exp.mpr (show -T / 2 < -Real.log (k : ℝ) / 2 by linarith)
    exact mul_pos (by norm_num) (lt_of_lt_of_le (sub_pos.mpr he) (le_max_left _ _))
  have hmreal : (1 : ℝ) ≤ m := by exact_mod_cast hm
  have hT := (Real.log_nonneg hmreal).trans_lt hmT
  apply intervalIntegral.integral_pos hT ((hc m hm).mul (hc n hn)).continuousOn
  · intro u _
    change 0 ≤ pickupResponse m u * pickupResponse n u
    rw [response_eq_max m hm, response_eq_max n hn]
    exact mul_nonneg (mul_nonneg (by norm_num) (le_max_right _ _))
      (mul_nonneg (by norm_num) (le_max_right _ _))
  · exact ⟨T, ⟨hT.le, le_rfl⟩, mul_pos (hp m hm hmT) (hp n hn hnT)⟩

/-- The closed path from the language obstruction forces actual surplus
terms in both ordered orientations. At positive placements the strict
birth hypotheses put both indices inside the original pickup cutoff. -/
theorem exists_path_with_positive_ordered_surplus {State Label : Type*} [Fintype State]
    (edge : State → Label → State → Prop) (decode : Label → ℤ) (burnIn : ℕ)
    (cover : ∀ length : ℕ, ∃ (state : ℕ → State) (label : ℕ → Label),
      ∀ i < length, edge (state i) (label i) (state (i + 1)) ∧
        decode (label i) = ArithmeticFunction.moebius (burnIn + 1 + i)) :
    ∃ (length : ℕ) (state : ℕ → State) (label : ℕ → Label),
      (∀ i < length, edge (state i) (label i) (state (i + 1))) ∧
      ∀ (start : ℕ) (T : ℝ), 0 < start →
        (∀ i < length, Real.log ((start + i : ℕ) : ℝ) < T) →
        let coeff := placedCoeff start length (fun i => decode (label i))
        ∃ m ∈ pickupIndex T, ∃ n ∈ pickupIndex T, m ≠ n ∧
          moebiusReal m = 0 ∧
          surplusPairTerm T coeff m n = pickupResponseGram T m n ∧
          surplusPairTerm T coeff n m = pickupResponseGram T n m ∧
          0 < pickupResponseGram T m n ∧ 0 < pickupResponseGram T n m := by
  classical
  obtain ⟨length, state, label, hpath, hpair⟩ :=
    exists_path_with_false_nonzero_pair edge decode burnIn cover
  refine ⟨length, state, label, hpath, ?_⟩
  intro start T hstart hborn
  obtain ⟨i, j, hi, hj, hne, hli, hlj, hzero⟩ := hpair start
  let coeff := placedCoeff start length (fun k => decode (label k))
  have hit (k : ℕ) (hk : k < length) : start + k ∈ pickupIndex T := by
    have hpos : (0 : ℝ) < (start + k : ℕ) := by exact_mod_cast (by omega : 0 < start + k)
    exact Finset.mem_Icc.mpr ⟨by omega,
      Nat.le_floor ((Real.log_lt_iff_lt_exp hpos).mp (hborn k hk)).le⟩
  have hread (k : ℕ) (hk : k < length) : coeff (start + k) = (decode (label k) : ℝ) := by
    simp [coeff, placedCoeff, hk]
  have hci : coeff (start + i) = -1 := by simp [hread i hi, hli]
  have hcj : coeff (start + j) = -1 := by simp [hread j hj, hlj]
  have hμ : moebiusReal (start + i) = 0 := by simp [moebiusReal, hzero]
  have hfalse : FalseNonzero coeff (start + i) := ⟨hμ, by simp [hci]⟩
  have hij : start + i ≠ start + j := by omega
  refine ⟨start + i, hit i hi, start + j, hit j hj, hij, hμ, ?_, ?_,
    gram_pos_after_birth (by omega) (by omega) (hborn i hi) (hborn j hj),
    gram_pos_after_birth (by omega) (by omega) (hborn j hj) (hborn i hi)⟩
  · change surplusPairTerm T coeff (start + i) (start + j) = _
    rw [surplusPairTerm, ite_eq_left (Or.inl hfalse), pickupPairTerm, ite_eq_left hij, hci, hcj]
    ring
  · change surplusPairTerm T coeff (start + j) (start + i) = _
    rw [surplusPairTerm, ite_eq_left (Or.inr hfalse), pickupPairTerm, ite_eq_left hij.symm, hci, hcj]
    ring

/-- The signed excess of the observation over the source on one ordered
pair, including the signed error on the complement of the surplus sector. -/
def pickupOverreadTerm (T : ℝ) (coeff : ℕ → ℝ) (m n : ℕ) : ℝ :=
  surplusPairTerm T coeff m n - remainingPairDefect T coeff m n

theorem pickupOverreadTerm_eq_gram_of_false_nonzero_pair (T : ℝ) (coeff : ℕ → ℝ)
    {m n : ℕ} (hne : m ≠ n) (hm : FalseNonzero coeff m ∨ FalseNonzero coeff n)
    (hcm : coeff m = -1) (hcn : coeff n = -1) :
    pickupOverreadTerm T coeff m n = pickupResponseGram T m n := by
  simp [pickupOverreadTerm, surplusPairTerm, remainingPairDefect, hm, pickupPairTerm, hne, hcm, hcn]

/-- With direction `1` this is the positive excess mass. With direction `-1`
it is the magnitude of the compensating negative mass. Each path and each
ordered occurrence in its cutoff contributes with its original weight. -/
def weightedPickupErrorMass {Path : Type*} (T direction : ℝ) (paths : Finset Path)
    (weight : Path → ℝ) (coeff : Path → ℕ → ℝ) : ℝ :=
  ∑ p ∈ paths, weight p * pickupPairSum T
    (fun m n => max (direction * pickupOverreadTerm T (coeff p) m n) 0)

def weightedPickupDeviation {Path : Type*} (T : ℝ) (paths : Finset Path)
    (weight : Path → ℝ) (coeff : Path → ℕ → ℝ) : ℝ :=
  (∑ p ∈ paths, weight p * pickupPairSum T (pickupPairTerm T (coeff p))) -
    (∑ p ∈ paths, weight p) * pickupCross T

theorem weightedPickupDeviation_eq_excess_sub_compensation {Path : Type*} (T : ℝ)
    (paths : Finset Path) (weight : Path → ℝ) (coeff : Path → ℕ → ℝ) :
    weightedPickupDeviation T paths weight coeff = weightedPickupErrorMass T 1 paths weight coeff -
      weightedPickupErrorMass T (-1) paths weight coeff := by
  calc
    weightedPickupDeviation T paths weight coeff =
        ∑ p ∈ paths, weight p * pickupPairSum T (pickupOverreadTerm T (coeff p)) := by
      unfold weightedPickupDeviation
      rw [weighted_pickup_path_return T paths weight coeff]
      simp only [pickupPairSum, pickupOverreadTerm, Finset.sum_sub_distrib, mul_sub]
      ring
    _ = weightedPickupErrorMass T 1 paths weight coeff -
        weightedPickupErrorMass T (-1) paths weight coeff := by
      unfold weightedPickupErrorMass
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro p _
      rw [← mul_sub]
      congr 1
      simp only [pickupPairSum, ← Finset.sum_sub_distrib, one_mul, neg_one_mul]
      apply Finset.sum_congr rfl
      intro m _
      apply Finset.sum_congr rfl
      intro n _
      let x := pickupOverreadTerm T (coeff p) m n
      change x = max x 0 - max (-x) 0
      by_cases hx : 0 ≤ x
      · rw [max_eq_left hx, max_eq_right (neg_nonpos.mpr hx), sub_zero]
      · rw [max_eq_right (le_of_not_ge hx), max_eq_left (by linarith : 0 ≤ -x)]
        ring

/-- Both inequalities are necessary and sufficient to neutralize the
weighted pickup deviation within the given tolerance. At tolerance zero
they require equality of the two ordered masses. -/
theorem weightedPickup_neutralization_iff {Path : Type*} (T ε : ℝ)
    (paths : Finset Path) (weight : Path → ℝ) (coeff : Path → ℕ → ℝ) :
    |weightedPickupDeviation T paths weight coeff| ≤ ε ↔
      weightedPickupErrorMass T 1 paths weight coeff ≤
        weightedPickupErrorMass T (-1) paths weight coeff + ε ∧
      weightedPickupErrorMass T (-1) paths weight coeff ≤
        weightedPickupErrorMass T 1 paths weight coeff + ε := by
  rw [weightedPickupDeviation_eq_excess_sub_compensation, abs_le]
  constructor <;> rintro ⟨h₁, h₂⟩ <;> constructor <;> linarith

/-- A common per-pair floor when both log births are at most `A`, and
the subinterval `[a,T]` is used for the lower bound. -/
def pickupBirthWindowFloor (A a T : ℝ) : ℝ :=
  (T - a) * (2 * (Real.exp (-A / 2) - Real.exp (-a / 2))) ^ 2

theorem pickupBirthWindowFloor_le_gram {A a T : ℝ} {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hmA : Real.log (m : ℝ) ≤ A) (hnA : Real.log (n : ℝ) ≤ A)
    (hAa : A ≤ a) (ha : 0 ≤ a) (haT : a ≤ T) :
    pickupBirthWindowFloor A a T ≤ pickupResponseGram T m n := by
  let r := 2 * (Real.exp (-A / 2) - Real.exp (-a / 2))
  have hr : 0 ≤ r := by
    exact mul_nonneg (by norm_num) (sub_nonneg.mpr (Real.exp_le_exp.mpr (by linarith)))
  have hc (k : ℕ) (hk : 0 < k) : Continuous (pickupResponse k) := by
    rw [funext (response_eq_max k hk)]
    fun_prop
  have hq (k : ℕ) (hk : 0 < k) (u : ℝ) : 0 ≤ pickupResponse k u := by
    rw [response_eq_max k hk]
    exact mul_nonneg (by norm_num) (le_max_right _ _)
  have hwindow (k : ℕ) (hk : 0 < k) (hkA : Real.log (k : ℝ) ≤ A) (u : ℝ) (hau : a ≤ u) :
      r ≤ pickupResponse k u := by
    rw [response_eq_max k hk]
    apply mul_le_mul_of_nonneg_left _ (by norm_num)
    apply le_trans _ (le_max_left _ _)
    exact sub_le_sub (Real.exp_le_exp.mpr (by linarith)) (Real.exp_le_exp.mpr (by linarith))
  have hprod : Continuous (fun u => pickupResponse m u * pickupResponse n u) :=
    (hc m hm).mul (hc n hn)
  calc
    pickupBirthWindowFloor A a T = ∫ _ in a..T, r ^ 2 := by
      simp [pickupBirthWindowFloor, r]
    _ ≤ ∫ u in a..T, pickupResponse m u * pickupResponse n u := by
      apply intervalIntegral.integral_mono_on haT (continuous_const.intervalIntegrable a T)
        (hprod.intervalIntegrable a T)
      intro u hu
      rw [pow_two]
      exact mul_le_mul (hwindow m hm hmA u hu.1) (hwindow n hn hnA u hu.1) hr (hq m hm u)
    _ ≤ pickupResponseGram T m n :=
      intervalIntegral.integral_mono_interval ha haT le_rfl
        (Filter.Eventually.of_forall fun u => mul_nonneg (hq m hm u) (hq n hn u))
        (hprod.intervalIntegrable 0 T)

/-- Every selected ordered surplus pair requires a definite amount of
negative compensation, up to the allowed pickup error. A pair and its
reverse can both be selected. Identical pairs on distinct paths are counted
using each path's weight. The path and pair inventories can vary with `T`. -/
theorem weightedPickup_compensation_floor {Path : Type*} {A a T ε : ℝ}
    (paths : Finset Path) (weight : Path → ℝ) (coeff : Path → ℕ → ℝ)
    (pairs : Path → Finset (ℕ × ℕ)) (hw : ∀ p ∈ paths, 0 ≤ weight p)
    (hAa : A ≤ a) (ha : 0 ≤ a) (haT : a ≤ T)
    (hpair : ∀ p ∈ paths, ∀ e ∈ pairs p, e ∈ (pickupIndex T).product (pickupIndex T) ∧
      e.1 ≠ e.2 ∧ Real.log (e.1 : ℝ) ≤ A ∧ Real.log (e.2 : ℝ) ≤ A ∧
      pickupResponseGram T e.1 e.2 ≤ pickupOverreadTerm T (coeff p) e.1 e.2)
    (hε : |weightedPickupDeviation T paths weight coeff| ≤ ε) :
    (∑ p ∈ paths, weight p * (pairs p).card) * pickupBirthWindowFloor A a T ≤
      weightedPickupErrorMass T (-1) paths weight coeff + ε := by
  apply le_trans _ ((weightedPickup_neutralization_iff T ε paths weight coeff).mp hε).1
  unfold weightedPickupErrorMass
  rw [Finset.sum_mul]
  apply Finset.sum_le_sum
  intro p hp
  rw [mul_assoc, pickupPairSum, ← Finset.sum_product']
  apply mul_le_mul_of_nonneg_left _ (hw p hp)
  have hsub : pairs p ⊆ (pickupIndex T).product (pickupIndex T) :=
    fun e he => (hpair p hp e he).1
  calc
    ((pairs p).card : ℝ) * pickupBirthWindowFloor A a T =
        ∑ _ ∈ pairs p, pickupBirthWindowFloor A a T := by simp
    _ ≤ ∑ e ∈ pairs p, max (1 * pickupOverreadTerm T (coeff p) e.1 e.2) 0 := by
      apply Finset.sum_le_sum
      intro e he
      obtain ⟨hs, _, hmA, hnA, hG⟩ := hpair p hp e he
      obtain ⟨hm, hn⟩ := Finset.mem_product.mp hs
      have hl := pickupBirthWindowFloor_le_gram (Finset.mem_Icc.mp hm).1
        (Finset.mem_Icc.mp hn).1 hmA hnA hAa ha haT
      simpa only [one_mul] using hl.trans (hG.trans (le_max_left _ _))
    _ ≤ ∑ e ∈ (pickupIndex T).product (pickupIndex T),
        max (1 * pickupOverreadTerm T (coeff p) e.1 e.2) 0 :=
      Finset.sum_le_sum_of_subset_of_nonneg hsub (fun _ _ _ => le_max_right _ _)

end GRWTSK.NumberTheory.Moebius.MoebiusSoficBlockObstruction
