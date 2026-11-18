/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors.
-/
import Init

set_option autoImplicit false

/-!
# Adaptive integer coding tables

The model uses fixed byte labels, one escape bin, and a reset after a fixed
number of successfully processed bytes. Without a reset, the update increments
the selected bin, then rescales all counts at the threshold with floor division
and a lower bound of one. These rules determine the table from the decoded prefix.

The arithmetic decoder supplies the ordered bin indices. The model recovers the
bytes from those indices and the separate literal stream, leaving its unread
suffix intact. A streaming arithmetic coder still needs to establish index
recovery and its own interval, bit cursor, and termination invariants.
-/

namespace GRWTSK.ComputerScience.AdaptiveIntegerCoding

structure Config where
  direct : Nat
  threshold : Nat
  resetEvery : Nat
  directBound : direct < 256
  countRoom : direct + 1 < threshold
  thresholdBound : threshold ≤ 65535
  positivePeriod : 0 < resetEvery
  periodBound : resetEvery ≤ 65535

structure State where
  phase : Nat
  weights : List Nat

/-- The last bin is the escape bin. Every bin starts with count one. -/
def initial (cfg : Config) : State :=
  ⟨0, List.replicate (cfg.direct + 1) 1⟩

private def cumulativeFrom : List Nat → Nat → List Nat
  | [], acc => [acc]
  | n :: ns, acc => acc :: cumulativeFrom ns (acc + n)

/-- Consecutive entries bound a bin, and the last entry is the total count. -/
def table (s : State) : List Nat :=
  cumulativeFrom s.weights 0

def binOf (cfg : Config) (byte : Fin 256) : Nat :=
  min byte.val cfg.direct

def emitSymbol (cfg : Config) (byte : Fin 256) : Nat × Option (Fin 256) :=
  (binOf cfg byte, if byte.val < cfg.direct then none else some byte)

private def incrementAt : Nat → List Nat → List Nat
  | _, [] => []
  | 0, n :: ns => (n + 1) :: ns
  | i + 1, n :: ns => n :: incrementAt i ns

/-- Floor-halving with a minimum count of one. -/
def rescaleCount (n : Nat) : Nat := max 1 (n / 2)

/-- Update once after emitting or successfully recovering a whole byte. -/
def update (cfg : Config) (s : State) (byte : Fin 256) : State :=
  let nextPhase := s.phase + 1
  if nextPhase = cfg.resetEvery then
    initial cfg
  else
    let bumped := incrementAt (binOf cfg byte) s.weights
    let weights :=
      if cfg.threshold ≤ bumped.sum then bumped.map rescaleCount else bumped
    ⟨nextPhase, weights⟩

/-- The post-increment table passed to floor-halving at a rescale event. -/
def rescaleInput (cfg : Config) (s : State) (byte : Fin 256) : Option (List Nat) :=
  if s.phase + 1 = cfg.resetEvery then none
  else
    let bumped := incrementAt (binOf cfg byte) s.weights
    if cfg.threshold ≤ bumped.sum then some bumped else none

/-- Every escaped byte updates the same bin, regardless of its literal value. -/
theorem update_eq_of_same_bin (cfg : Config) (s : State) (a b : Fin 256)
    (hbin : binOf cfg a = binOf cfg b) : update cfg s a = update cfg s b := by
  simp [update, hbin]

/-- The state invariant before processing a byte. -/
structure ValidState (cfg : Config) (s : State) : Prop where
  phase_lt : s.phase < cfg.resetEvery
  count_length : s.weights.length = cfg.direct + 1
  count_pos : ∀ n ∈ s.weights, 0 < n
  total_lt : s.weights.sum < cfg.threshold

theorem initial_valid (cfg : Config) : ValidState cfg (initial cfg) := by
  refine ⟨cfg.positivePeriod, by simp [initial], ?_, ?_⟩
  · simp [initial]
  · simpa [initial] using cfg.countRoom

/-- Even a pending increment of the total or phase fits in 16 bits. -/
theorem ValidState.increment_bounds {cfg : Config} {s : State} (hs : ValidState cfg s) :
    s.weights.sum + 1 ≤ 65535 ∧ s.phase + 1 ≤ 65535 :=
  ⟨Nat.le_trans hs.total_lt cfg.thresholdBound, Nat.le_trans hs.phase_lt cfg.periodBound⟩

private theorem incrementAt_spec (ns : List Nat) (i : Nat) (hi : i < ns.length)
    (hp : ∀ n ∈ ns, 0 < n) :
    (incrementAt i ns).length = ns.length ∧
      (∀ n ∈ incrementAt i ns, 0 < n) ∧
      (incrementAt i ns).sum = ns.sum + 1 := by
  induction ns generalizing i with
  | nil => simp at hi
  | cons n ns ih =>
    have ht : ∀ k ∈ ns, 0 < k := fun k hk => hp k (List.mem_cons_of_mem n hk)
    cases i with
    | zero =>
      simpa [incrementAt, Nat.add_right_comm] using ht
    | succ i =>
      have h := ih i (by simpa using hi) ht
      have hn := hp n (List.mem_cons_self)
      simpa [incrementAt, h.1, h.2.2, hn, Nat.add_assoc] using h.2.1

private theorem incrementByte_spec (cfg : Config) (s : State) (byte : Fin 256)
    (hs : ValidState cfg s) :
    let bumped := incrementAt (binOf cfg byte) s.weights
    bumped.length = cfg.direct + 1 ∧ (∀ n ∈ bumped, 0 < n) ∧
      bumped.sum = s.weights.sum + 1 := by
  have hbin : binOf cfg byte < s.weights.length := by
    rw [hs.count_length]
    exact Nat.lt_succ_of_le (Nat.min_le_right _ _)
  obtain ⟨hlen, hpos, hsum⟩ := incrementAt_spec s.weights (binOf cfg byte) hbin hs.count_pos
  exact ⟨hlen.trans hs.count_length, hpos, hsum⟩

private theorem rescale_sum (ns : List Nat) (hp : ∀ n ∈ ns, 0 < n) :
    (ns.map rescaleCount).sum ≤ ns.sum ∧
      (ns.length < ns.sum → (ns.map rescaleCount).sum < ns.sum) := by
  induction ns with
  | nil => simp
  | cons n ns ih =>
    have hn := hp n (List.mem_cons_self)
    obtain ⟨hle, hlt⟩ := ih (fun k hk => hp k (List.mem_cons_of_mem n hk))
    have hc : rescaleCount n ≤ n := by unfold rescaleCount; omega
    refine ⟨by simpa using Nat.add_le_add hc hle, ?_⟩
    intro hlen
    by_cases h : 1 < n
    · have hc' : rescaleCount n < n := by unfold rescaleCount; omega
      simpa using Nat.add_lt_add_of_lt_of_le hc' hle
    · have htail : ns.length < ns.sum := by simp at hlen; omega
      simpa using Nat.add_lt_add_of_le_of_lt hc (hlt htail)

private theorem twice_rescale_sum_le (ns : List Nat) (hp : ∀ n ∈ ns, 0 < n) :
    2 * (ns.map rescaleCount).sum ≤ ns.sum + ns.length := by
  induction ns with
  | nil => simp
  | cons n ns ih =>
    have ht := ih (fun k hk => hp k (List.mem_cons_of_mem n hk))
    have hn : 2 * rescaleCount n ≤ n + 1 := by
      have := hp n List.mem_cons_self
      unfold rescaleCount
      omega
    simp only [List.map_cons, List.sum_cons, List.length_cons]
    omega

/-- Rescaling a positive table with at most 256 bins keeps each normalized
probability at least 43/128 of its value immediately before rescaling. The
inequality is written by cross-multiplication of the old and new totals. -/
theorem rescale_probability_bound (ns : List Nat) (hsize : ns.length ≤ 256)
    (hpos : ∀ n ∈ ns, 0 < n) (n : Nat) (hn : n ∈ ns) :
    43 * n * (ns.map rescaleCount).sum ≤ 128 * rescaleCount n * ns.sum := by
  by_cases hthree : n = 3
  · subst n
    obtain ⟨ls, rs, rfl⟩ := List.mem_iff_append.mp hn
    have hls : ∀ n ∈ ls, 0 < n := fun n hn => hpos n (List.mem_append_left _ hn)
    have hrs : ∀ n ∈ rs, 0 < n :=
      fun n hn => hpos n (List.mem_append_right _ (List.mem_cons_of_mem _ hn))
    have hl := (rescale_sum ls hls).1
    have hr := (rescale_sum rs hrs).1
    have hl2 := twice_rescale_sum_le ls hls
    have hr2 := twice_rescale_sum_le rs hrs
    simp only [List.map_append, List.map_cons, List.sum_append, List.sum_cons,
      List.length_append, List.length_cons] at hsize ⊢
    have hscale : rescaleCount 3 = 1 := rfl
    simp only [hscale]
    omega
  · have hlocal : 43 * n ≤ 128 * rescaleCount n := by
      have := hpos n hn
      unfold rescaleCount
      omega
    exact Nat.le_trans (Nat.mul_le_mul_left _ (rescale_sum ns hpos).1)
      (Nat.mul_le_mul_right _ hlocal)

/-- One count of three and 255 counts of one attains the bound at the count of three. -/
theorem rescale_probability_bound_sharp :
    let ns := 3 :: List.replicate 255 1
    43 * 3 * (ns.map rescaleCount).sum = 128 * rescaleCount 3 * ns.sum := by
  simp only [List.map_cons, List.map_replicate, List.sum_cons, List.sum_replicate_nat]
  rfl

/-- In a valid state, a byte triggers rescaling exactly when its pending
increment reaches the threshold and the phase does not call for a reset. -/
theorem rescaleInput_isSome_iff (cfg : Config) (s : State) (byte : Fin 256)
    (hs : ValidState cfg s) :
    (rescaleInput cfg s byte).isSome = true ↔
      s.phase + 1 ≠ cfg.resetEvery ∧ s.weights.sum + 1 = cfg.threshold := by
  have hsum := (incrementByte_spec cfg s byte hs).2.2
  have hle : s.weights.sum + 1 ≤ cfg.threshold := hs.total_lt
  by_cases hr : s.phase + 1 = cfg.resetEvery
  · simp [rescaleInput, hr]
  · have hthreshold : cfg.threshold ≤ s.weights.sum + 1 ↔
        s.weights.sum + 1 = cfg.threshold :=
      ⟨Nat.le_antisymm hle, fun h => h ▸ Nat.le_refl _⟩
    by_cases h : s.weights.sum + 1 = cfg.threshold <;>
      simp [rescaleInput, hr, hsum, hthreshold, h]

/-- A recorded rescale exposes the actual before-table, and the actual
successor weights are exactly its floor-halved counts. -/
theorem rescaleInput_spec (cfg : Config) (s : State) (byte : Fin 256)
    (hs : ValidState cfg s) (counts : List Nat)
    (hevent : rescaleInput cfg s byte = some counts) :
    counts.length = cfg.direct + 1 ∧ (∀ n ∈ counts, 0 < n) ∧
      counts.sum = cfg.threshold ∧ (update cfg s byte).weights = counts.map rescaleCount := by
  have hor := (rescaleInput_isSome_iff cfg s byte hs).mp (by simp [hevent])
  obtain ⟨hlen, hpos, hsum⟩ := incrementByte_spec cfg s byte hs
  have htotal : (incrementAt (binOf cfg byte) s.weights).sum = cfg.threshold :=
    hsum.trans hor.2
  have hscale : cfg.threshold ≤ (incrementAt (binOf cfg byte) s.weights).sum := by
    exact htotal ▸ Nat.le_refl _
  have hcounts : incrementAt (binOf cfg byte) s.weights = counts := by
    simpa only [rescaleInput, ite_eq_right hor.1, ite_eq_left hscale, Option.some.injEq] using hevent
  subst counts
  exact ⟨hlen, hpos, htotal, by simp [update, hor.1, hscale]⟩

theorem update_valid (cfg : Config) (s : State) (byte : Fin 256)
    (hs : ValidState cfg s) : ValidState cfg (update cfg s byte) := by
  by_cases hr : s.phase + 1 = cfg.resetEvery
  · simpa [update, hr] using initial_valid cfg
  · have hphase : s.phase + 1 < cfg.resetEvery := by have := hs.phase_lt; omega
    let bumped := incrementAt (binOf cfg byte) s.weights
    have ⟨hlen, hpos, hsum⟩ := incrementByte_spec cfg s byte hs
    change bumped.length = cfg.direct + 1 at hlen
    change ∀ n ∈ bumped, 0 < n at hpos
    change bumped.sum = s.weights.sum + 1 at hsum
    have hbound : bumped.sum ≤ cfg.threshold := by have := hs.total_lt; omega
    simp only [update, ite_eq_right hr]
    change ValidState cfg ⟨s.phase + 1,
      if cfg.threshold ≤ bumped.sum then bumped.map rescaleCount else bumped⟩
    by_cases hc : cfg.threshold ≤ bumped.sum
    · rw [ite_eq_left hc]
      have hlarge : bumped.length < bumped.sum := by
        rw [hlen]
        exact Nat.lt_of_lt_of_le cfg.countRoom hc
      have hrescaled : (bumped.map rescaleCount).sum < cfg.threshold :=
        Nat.lt_of_lt_of_le ((rescale_sum bumped hpos).2 hlarge) hbound
      refine ⟨hphase, by simp [hlen], ?_, hrescaled⟩
      intro n hn
      rcases List.mem_map.mp hn with ⟨m, _, rfl⟩
      unfold rescaleCount
      omega
    · rw [ite_eq_right hc]
      exact ⟨hphase, hlen, hpos, Nat.lt_of_not_ge hc⟩

theorem replay_valid (cfg : Config) (s : State) (xs : List (Fin 256))
    (hs : ValidState cfg s) : ValidState cfg (xs.foldl (update cfg) s) := by
  induction xs generalizing s with
  | nil => exact hs
  | cons byte xs ih => exact ih (update cfg s byte) (update_valid cfg s byte hs)

private theorem cumulativeFrom_spec (ns : List Nat) (acc : Nat)
    (hp : ∀ n ∈ ns, 0 < n) :
    (cumulativeFrom ns acc).length = ns.length + 1 ∧
      (cumulativeFrom ns acc).head? = some acc ∧
      (cumulativeFrom ns acc).getLast? = some (acc + ns.sum) ∧
      (cumulativeFrom ns acc).Pairwise (fun a b => a < b) := by
  induction ns generalizing acc with
  | nil => simp [cumulativeFrom]
  | cons n ns ih =>
    have h := ih (acc + n) (fun k hk => hp k (List.mem_cons_of_mem n hk))
    have hn := hp n (List.mem_cons_self)
    cases ht : cumulativeFrom ns (acc + n) with
    | nil => simp [ht] at h
    | cons a rest =>
      rw [ht] at h
      have ha : a = acc + n := by simpa using h.2.1
      simp only [cumulativeFrom, ht, List.length_cons, List.head?_cons,
        List.getLast?_cons_cons, List.sum_cons, true_and]
      refine ⟨by simpa using h.1, ?_, ?_⟩
      · rw [← Nat.add_assoc]
        exact h.2.2.1
      · refine List.pairwise_cons.mpr ⟨?_, h.2.2.2⟩
        intro b hb
        rcases List.mem_cons.mp hb with rfl | hb
        · omega
        · exact Nat.lt_trans (by omega : acc < a) (List.rel_of_pairwise_cons h.2.2.2 hb)

/-- Every reachable table has the correct number of strictly increasing endpoints. -/
theorem table_spec (cfg : Config) (s : State) (hs : ValidState cfg s) :
    (table s).length = cfg.direct + 2 ∧ (table s).head? = some 0 ∧
      (table s).getLast? = some s.weights.sum ∧
      (table s).Pairwise (fun a b => a < b) := by
  simpa [table, hs.count_length] using cumulativeFrom_spec s.weights 0 hs.count_pos

theorem table_of_binary_weights (s : State) (f0 f1 : Nat) (hw : s.weights = [f0, f1]) :
    table s = [0, f0, f0 + f1] := by
  simp [table, hw, cumulativeFrom]

/-- The one-direct-byte mode has a three-endpoint table with two positive weights. -/
theorem binary_table (cfg : Config) (s : State) (hs : ValidState cfg s)
    (hmode : cfg.direct = 1) : ∃ f0 f1 : Nat,
    s.weights = [f0, f1] ∧ table s = [0, f0, f0 + f1] ∧
      0 < f0 ∧ 0 < f1 ∧ f0 + f1 < cfg.threshold := by
  have hlen : s.weights.length = 2 := by simp [hs.count_length, hmode]
  obtain ⟨f0, f1, hw⟩ : ∃ f0 f1 : Nat, s.weights = [f0, f1] :=
    ⟨_, _, List.eq_getElem_of_length_eq_two s.weights hlen⟩
  refine ⟨f0, f1, hw, table_of_binary_weights s f0 f1 hw, ?_, ?_, ?_⟩
  · exact hs.count_pos f0 (by rw [hw]; simp)
  · exact hs.count_pos f1 (by rw [hw]; simp)
  · simpa [hw] using hs.total_lt

/-- Equal decoded prefixes produce the same valid state and the same next table. -/
theorem prefix_state_and_table_eq (cfg : Config) (xs ys : List (Fin 256)) (k : Nat)
    (samePrefix : xs.take k = ys.take k) :
    let e := (xs.take k).foldl (update cfg) (initial cfg)
    let d := (ys.take k).foldl (update cfg) (initial cfg)
    e = d ∧ table e = table d ∧ ValidState cfg e := by
  rw [samePrefix]
  exact ⟨rfl, rfl, replay_valid cfg _ _ (initial_valid cfg)⟩

inductive ReceiveError where
  | invalidIndex
  | truncatedLiteral
  | noncanonicalLiteral
  deriving DecidableEq

/-- Receive a bin selected using the table before the update. The escape bin
consumes one literal, which must be outside the direct range. -/
def consume
    (cfg : Config) (s : State) (bin : Nat) (literals : List (Fin 256)) :
    Except ReceiveError (Fin 256 × State × List (Fin 256)) :=
  if h : bin < cfg.direct then
    let byte : Fin 256 := ⟨bin, Nat.lt_trans h cfg.directBound⟩
    .ok (byte, update cfg s byte, literals)
  else if bin = cfg.direct then
    match literals with
    | [] => .error .truncatedLiteral
    | byte :: rest =>
      if byte.val < cfg.direct then .error .noncanonicalLiteral
      else .ok (byte, update cfg s byte, rest)
  else
    .error .invalidIndex

theorem consume_emitSymbol (cfg : Config) (s : State) (byte : Fin 256)
    (rest : List (Fin 256)) :
    consume cfg s (emitSymbol cfg byte).1 ((emitSymbol cfg byte).2.toList ++ rest) =
      .ok (byte, update cfg s byte, rest) := by
  by_cases hd : byte.val < cfg.direct
  · simp [emitSymbol, binOf, Nat.min_eq_left (Nat.le_of_lt hd), hd, consume]
  · simp [emitSymbol, binOf, Nat.min_eq_right (Nat.le_of_not_gt hd), hd, consume]

/-- Consume a finite list of already recovered indices. On success, return the bytes,
the final model state, and the unread literal suffix. -/
def consumeSymbols (cfg : Config) (s : State) (bins : List Nat)
    (literals : List (Fin 256)) : Except ReceiveError (List (Fin 256) × State × List (Fin 256)) :=
  match bins with
  | [] => .ok ([], s, literals)
  | bin :: tail => do
    let (byte, next, remaining) ← consume cfg s bin literals
    let (bytes, finalState, rest) ← consumeSymbols cfg next tail remaining
    return (byte :: bytes, finalState, rest)

/-- Lossless byte recovery at the bin/literal interface, with arbitrary trailing literals. -/
theorem consumeSymbols_emit (cfg : Config) (s : State) (xs rest : List (Fin 256)) :
    consumeSymbols cfg s (xs.map (fun byte => (emitSymbol cfg byte).1))
      (xs.flatMap (fun byte => (emitSymbol cfg byte).2.toList) ++ rest) =
      .ok (xs, xs.foldl (update cfg) s, rest) := by
  induction xs generalizing s with
  | nil => rfl
  | cons byte xs ih =>
    simp only [List.map_cons, List.flatMap_cons, List.append_assoc, consumeSymbols,
      consume_emitSymbol, List.foldl_cons]
    change (do
      let (bytes, finalState, remaining) ← consumeSymbols cfg (update cfg s byte)
        (xs.map (fun b => (emitSymbol cfg b).1))
        (xs.flatMap (fun b => (emitSymbol cfg b).2.toList) ++ rest)
      return (byte :: bytes, finalState, remaining)) = _
    rw [ih]
    rfl

/-- A non-reset update below the threshold increases total weight by one. -/
theorem update_total_of_no_reset_no_rescale (cfg : Config) (s : State) (byte : Fin 256)
    (hs : ValidState cfg s) (hreset : s.phase + 1 ≠ cfg.resetEvery)
    (hevent : rescaleInput cfg s byte = none) :
    (update cfg s byte).weights.sum = s.weights.sum + 1 := by
  have hsum := (incrementByte_spec cfg s byte hs).2.2
  have hlt : ¬ cfg.threshold ≤ (incrementAt (binOf cfg byte) s.weights).sum := by
    intro h
    simp [rescaleInput, hreset, h] at hevent
  simpa only [update, ite_eq_right hreset, ite_eq_right hlt] using hsum

end GRWTSK.ComputerScience.AdaptiveIntegerCoding
