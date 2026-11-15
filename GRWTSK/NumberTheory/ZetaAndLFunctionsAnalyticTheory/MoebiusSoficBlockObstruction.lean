/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover
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

The obstruction concerns exact block presentation. Finite cutoff
presentations, graph overcovers with source defects, and the exact
chart-shift readout remain separate constructions.
-/

set_option autoImplicit false

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
    refine ⟨k * d, Nat.mul_lt_mul_of_pos_right hk hd, ?_⟩
    simp [hfirst, hzero]

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

end GRWTSK.NumberTheory.Moebius.MoebiusSoficBlockObstruction
