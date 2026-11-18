/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Source and verification record: https://github.com/grwtsk/math/issues/1832.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficSingletonPrefixRigidity

set_option autoImplicit false
noncomputable section

/-!
# Unique minimum rooted presentation of a singleton prefix language

A finite rooted graph may have nondeterministic labeled edges. Exactness
means that its rooted finite-path language is precisely the prefixes of
one specified infinite label trace. A compatible infinite rooted walk is
derived below from the finite-prefix witnesses by finite-state compactness;
it is not an extra hypothesis.

Splicing the source prefix path, any proposed graph edge, and an arbitrary
finite segment of the infinite walk forces the edge's label and the entire
right-infinite suffix at its endpoint. In the sharp first-return capacity
case, the first j states on the walk are pairwise distinct and exhaust the
graph. Every edge is therefore forced, including the wrap-around edge.

This establishes rooted, label-preserving graph isomorphism with the actual
chain-then-one-cycle graph. It makes NO claim about recurrence of the
configuration of a machine that emits the labels, nor about all-factor
sofic languages or analytic zeta zeros.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficSingletonPrefixLassoUniqueness

open ExactSoficLanguageCover SoficSingletonPrefixCapacity SoficSingletonPrefixRigidity

universe u v w
variable {A : Type u} {V : Type v}

private theorem prefix_succ (x : ℕ → A) (n : ℕ) :
    tracePrefix x (n + 1) =
      x 0 :: tracePrefix (fun k => x (k + 1)) n := by
  simp [tracePrefix, List.ofFn_succ]

private theorem prefix_succ_at (x : ℕ → A) (i n : ℕ) :
    tracePrefix (fun k => x (i + k)) (n + 1) =
      x i :: tracePrefix (fun k => x (i + 1 + k)) n := by
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
    (prefix_succ (fun k => x (i + k)) n)

private theorem prefix_append (x : ℕ → A) (i n : ℕ) :
    tracePrefix x (i + n) =
      tracePrefix x i ++ tracePrefix (fun k => x (i + k)) n := by
  induction i generalizing x with
  | zero => simp [tracePrefix]
  | succ i ih =>
      rw [show i + 1 + n = (i + n) + 1 by omega,
        prefix_succ, prefix_succ, ih]
      simp [tracePrefix, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

/-- A longer finite trace-labeled path from the same state can be cut to
any shorter duration without guessing a new source state. -/
private theorem rooted_prefix_mono
    (G : LabeledGraph V A) (x : ℕ → A) (s : V)
    (offset n m : ℕ) (h : n ≤ m)
    (hp : ∃ t, WordPath G s
      (tracePrefix (fun k => x (offset + k)) m) t) :
    ∃ t, WordPath G s
      (tracePrefix (fun k => x (offset + k)) n) t := by
  obtain ⟨endState, path⟩ := hp
  have hsplit :
      tracePrefix (fun k => x (offset + k)) m =
        tracePrefix (fun k => x (offset + k)) n ++
        tracePrefix (fun k => x (offset + n + k)) (m - n) := by
    have hm : n + (m - n) = m := Nat.add_sub_of_le h
    calc
      tracePrefix (fun k => x (offset + k)) m =
          tracePrefix (fun k => x (offset + k)) (n + (m - n)) := by rw [hm]
      _ = _ := by
        simpa only [Nat.add_assoc] using
          (prefix_append (fun k => x (offset + k)) n (m - n))
  rw [hsplit] at path
  obtain ⟨middle, before, _⟩ :=
    wordPath_split_append G _ _ path
  exact ⟨middle, before⟩

/-- Descending nonempty finite families have one common state.
This uses only finiteness, not a determinism assumption. -/
private theorem finite_nested_state [Fintype V]
    (P : V → ℕ → Prop)
    (hdown : ∀ s n m, n ≤ m → P s m → P s n)
    (hcover : ∀ n, ∃ s, P s n) :
    ∃ s, ∀ n, P s n := by
  classical
  by_contra hnone
  push_neg at hnone
  let bad (s : V) : ℕ := Classical.choose (hnone s)
  have hbad (s : V) : ¬ P s (bad s) :=
    Classical.choose_spec (hnone s)
  let N : ℕ := Finset.univ.sup bad
  obtain ⟨s, hs⟩ := hcover N
  have hb : bad s ≤ N := Finset.le_sup (Finset.mem_univ s)
  exact hbad s (hdown s (bad s) N hb hs)

/-- Exactness of the full rooted *prefix language* supplies one
compatible infinite path from the prescribed root. -/
theorem rooted_walk_of_exactRoot [Fintype V]
    (G : LabeledGraph V A) (root : V) (x : ℕ → A)
    (hExact : ExactRoot G root x) :
    ∃ walk : ℕ → V,
      walk 0 = root ∧
      ∀ n, G.edge (walk n) (x n) (walk (n + 1)) := by
  classical
  let Good (k : ℕ) (s : V) : Prop :=
    ∀ n, ∃ t, WordPath G s
      (tracePrefix (fun r => x (k + r)) n) t
  have hzero : Good 0 root := by
    intro n
    change ∃ t, WordPath G root
      (tracePrefix (fun r => x (0 + r)) n) t
    simpa only [Nat.zero_add] using
      ((hExact (tracePrefix x n)).2 (by simp [tracePrefix]))
  have hnext (k : ℕ) (s : V) (hgood : Good k s) :
      ∃ t, G.edge s (x k) t ∧ Good (k + 1) t := by
    have hcover (n : ℕ) :
        ∃ t, G.edge s (x k) t ∧
          ∃ u, WordPath G t
            (tracePrefix (fun r => x (k + 1 + r)) n) u := by
      obtain ⟨finish, hp⟩ := hgood (n + 1)
      rw [prefix_succ_at] at hp
      cases hp with
      | cons a word hedge tail =>
          exact ⟨_, hedge, finish, tail⟩
    have hdown (t : V) (n m : ℕ) (hnm : n ≤ m)
        (h : G.edge s (x k) t ∧
          ∃ u, WordPath G t
            (tracePrefix (fun r => x (k + 1 + r)) m) u) :
        G.edge s (x k) t ∧
          ∃ u, WordPath G t
            (tracePrefix (fun r => x (k + 1 + r)) n) u :=
      ⟨h.1, rooted_prefix_mono G x t (k + 1) n m hnm h.2⟩
    obtain ⟨next, hall⟩ := finite_nested_state
      (P := fun t n =>
        G.edge s (x k) t ∧
          ∃ u, WordPath G t
            (tracePrefix (fun r => x (k + 1 + r)) n) u)
      hdown hcover
    exact ⟨next, (hall 0).1, fun n => (hall n).2⟩
  let advance (k : ℕ) (z : {s : V // Good k s}) :
      {s : V // Good (k + 1) s} :=
    ⟨Classical.choose (hnext k z.val z.property),
      (Classical.choose_spec (hnext k z.val z.property)).2⟩
  let statesAt : (k : ℕ) → {s : V // Good k s} :=
    Nat.rec ⟨root, hzero⟩ (fun k z => advance k z)
  refine ⟨fun k => (statesAt k).val, rfl, ?_⟩
  intro k
  have hedge :=
    (Classical.choose_spec
      (hnext k (statesAt k).val (statesAt k).property)).1
  change G.edge (statesAt k).val (x k)
    (advance k (statesAt k)).val
  exact hedge

/-- Finite segments of the compatible walk have literal source labels
and preserve every intermediate vertex. -/
private theorem walk_segment
    (G : LabeledGraph V A) (x : ℕ → A)
    (walk : ℕ → V)
    (hstep : ∀ n, G.edge (walk n) (x n) (walk (n + 1)))
    (start n : ℕ) :
    WordPath G (walk start)
      (tracePrefix (fun k => x (start + k)) n)
      (walk (start + n)) := by
  induction n generalizing start with
  | zero =>
      simpa [tracePrefix] using
        (WordPath.nil (walk start) : WordPath G (walk start) [] (walk start))
  | succ n ih =>
      have tail := ih (start + 1)
      have whole :=
        WordPath.cons (x start)
          (tracePrefix (fun k => x (start + 1 + k)) n)
          (hstep start) tail
      simpa [prefix_succ_at, Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using whole

/-- The missing bridge in the proposed blueprint. This is DERIVED from
ExactRoot, not postulated as a field. An arbitrary edge between two states
appearing on the infinite rooted walk must have the expected next label
and must land at a state with the correct entire right-infinite tail. -/
theorem step_forces_suffix_of_exactRoot
    (G : LabeledGraph V A) (root : V) (x : ℕ → A)
    (hExact : ExactRoot G root x)
    (walk : ℕ → V) (hroot : walk 0 = root)
    (hstep : ∀ n, G.edge (walk n) (x n) (walk (n + 1)))
    (i j : ℕ) (a : A) (hedge : G.edge (walk i) a (walk j)) :
    a = x i ∧ EqualTails x j (i + 1) := by
  have forced (n : ℕ) :
      a = x i ∧
        tracePrefix (fun k => x (j + k)) n =
          tracePrefix (fun k => x (i + 1 + k)) n := by
    have before : WordPath G root (tracePrefix x i) (walk i) := by
      simpa [hroot] using walk_segment G x walk hstep 0 i
    have after := walk_segment G x walk hstep j n
    have path : WordPath G root
        (tracePrefix x i ++
          (a :: tracePrefix (fun k => x (j + k)) n))
        (walk (j + n)) :=
      wordPath_append before (WordPath.cons a _ hedge after)
    have accepted := (hExact _).1 ⟨walk (j + n), path⟩
    have hlen :
        (tracePrefix x i ++
          (a :: tracePrefix (fun k => x (j + k)) n)).length =
          i + (n + 1) := by
      simp [tracePrefix, Nat.add_assoc]
    rw [hlen, prefix_append x i (n + 1), prefix_succ_at x i n] at accepted
    have hc := List.append_cancel_left accepted
    simpa only [List.cons.injEq] using hc
  refine ⟨(forced 0).1, ?_⟩
  intro k
  have ht := (forced (k + 1)).2
  have eq := congrArg (fun ys : List A => ys[k]?) ht
  simpa only [tracePrefix, List.getElem?_ofFn, Nat.lt_succ_self, dite_true,
    Option.some.injEq] using eq

/-- Two occurrences of the same graph vertex along an actual rooted
walk represent the same COMPLETE suffix, even if the graph is
nondeterministic. -/
private theorem same_walk_vertex_same_tail
    (G : LabeledGraph V A) (root : V) (x : ℕ → A)
    (hExact : ExactRoot G root x)
    (walk : ℕ → V) (hroot : walk 0 = root)
    (hstep : ∀ n, G.edge (walk n) (x n) (walk (n + 1)))
    {i j : ℕ} (hij : walk i = walk j) :
    EqualTails x i j := by
  have hedge : G.edge (walk i) (x j) (walk (j + 1)) := by
    rw [hij]
    exact hstep j
  obtain ⟨hhead, htail⟩ :=
    step_forces_suffix_of_exactRoot G root x hExact walk hroot hstep
      i (j + 1) (x j) hedge
  intro k
  cases k with
  | zero => simpa using hhead.symm
  | succ k =>
      simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
        using (htail k).symm

/-- The canonical lasso's successor advances once per letter and
wraps from its last state to the first state of the periodic tail. -/
def lassoNext (i j : ℕ) (hij : i < j) (s : Fin j) : Fin j :=
  if h : s.val + 1 < j then ⟨s.val + 1, h⟩ else ⟨i, hij⟩

def canonicalLasso (x : ℕ → A) (i j : ℕ) (hij : i < j) :
    LabeledGraph (Fin j) A where
  edge := fun s a t => a = x s.val ∧ t = lassoNext i j hij s

def canonicalLassoRoot {i j : ℕ} (hij : i < j) : Fin j :=
  ⟨0, lt_of_le_of_lt (Nat.zero_le i) hij⟩

/-- The canonical successor has precisely the required future suffix,
including its wrapping transition. -/
private theorem lassoNext_tail
    {x : ℕ → A} {i j : ℕ}
    (hfirst : FirstTailReturn x i j) (s : Fin j) :
    EqualTails x (lassoNext i j hfirst.1 s).val (s.val + 1) := by
  intro k
  by_cases h : s.val + 1 < j
  · simp [lassoNext, h]
  · have hend : s.val + 1 = j := by omega
    simpa [lassoNext, h, hend] using hfirst.2.1 k

/-- Equality of complete futures determines a unique canonical
state strictly before the first repeated-tail index j. -/
private theorem first_return_unique_state
    {x : ℕ → A} {i j : ℕ}
    (hfirst : FirstTailReturn x i j)
    (s t : Fin j) (heq : EqualTails x s.val t.val) :
    s = t := by
  apply Fin.ext
  rcases lt_trichotomy s.val t.val with hlt | heqidx | hgt
  · exact False.elim ((hfirst.2.2 _ _ hlt t.isLt) heq)
  · exact heqidx
  · exact False.elim ((hfirst.2.2 _ _ hgt s.isLt) (fun k => (heq k).symm))

/-- An isomorphism preserves the selected root and EVERY labeled edge,
not merely the emitted words or the number of vertices. -/
structure RootedLabeledGraphIso
    {W : Type w} (G : LabeledGraph V A) (rootG : V)
    (H : LabeledGraph W A) (rootH : W) where
  toEquiv : V ≃ W
  map_root : toEquiv rootG = rootH
  map_edge : ∀ s a t, G.edge s a t ↔
    H.edge (toEquiv s) a (toEquiv t)

/-- Every minimum-cardinality exact rooted presentation, including one
initially allowed to be nondeterministic, is isomorphic as a ROOTED,
EDGE-LABELED graph to the canonical chain followed by one cycle. -/
noncomputable def canonical_lasso_uniqueness [Fintype V]
    {x : ℕ → A} {i j : ℕ}
    (hfirst : FirstTailReturn x i j)
    (G : LabeledGraph V A) (root : V)
    (hExact : ExactRoot G root x)
    (hcard : Fintype.card V = j) :
    RootedLabeledGraphIso
      (canonicalLasso x i j hfirst.1)
      (canonicalLassoRoot hfirst.1) G root := by
  classical
  let walkWitness := rooted_walk_of_exactRoot G root x hExact
  let walk := Classical.choose walkWitness
  have hroot := (Classical.choose_spec walkWitness).1
  have hstep := (Classical.choose_spec walkWitness).2
  let φ : Fin j → V := fun s => walk s.val
  have hinj : Function.Injective φ := by
    intro s t hst
    have htail : EqualTails x s.val t.val :=
      same_walk_vertex_same_tail G root x hExact walk hroot hstep
        (show walk s.val = walk t.val from hst)
    exact first_return_unique_state hfirst s t htail
  have hbij : Function.Bijective φ :=
    (Fintype.bijective_iff_injective_and_card φ).2
      ⟨hinj, by simpa using hcard.symm⟩
  let e : Fin j ≃ V := Equiv.ofBijective φ hbij
  have hreturn : walk j = walk i := by
    obtain ⟨s, hs⟩ := hbij.2 (walk j)
    have ht : EqualTails x s.val j :=
      same_walk_vertex_same_tail G root x hExact walk hroot hstep
        (show walk s.val = walk j from hs)
    have hti : EqualTails x s.val i := by
      intro k
      exact (ht k).trans ((hfirst.2.1 k).symm)
    have hidx : s = (⟨i, hfirst.1⟩ : Fin j) :=
      first_return_unique_state hfirst s ⟨i, hfirst.1⟩ hti
    calc
      walk j = φ s := hs.symm
      _ = walk s.val := rfl
      _ = walk i := by rw [congrArg Fin.val hidx]
  have hnext (s : Fin j) :
      walk (lassoNext i j hfirst.1 s).val = walk (s.val + 1) := by
    by_cases h : s.val + 1 < j
    · simp [lassoNext, h]
    · have hend : s.val + 1 = j := by omega
      simpa [lassoNext, h, hend] using hreturn.symm
  refine { toEquiv := e, map_root := ?_, map_edge := ?_ }
  · change walk 0 = root
    exact hroot
  · intro s a t
    change (a = x s.val ∧ t = lassoNext i j hfirst.1 s) ↔
      G.edge (walk s.val) a (walk t.val)
    constructor
    · rintro ⟨rfl, rfl⟩
      simpa only [hnext s] using hstep s.val
    · intro hedge
      obtain ⟨ha, htail⟩ :=
        step_forces_suffix_of_exactRoot G root x hExact walk hroot hstep
          s.val t.val a hedge
      refine ⟨ha, ?_⟩
      apply first_return_unique_state hfirst t (lassoNext i j hfirst.1 s)
      intro k
      exact (htail k).trans (((lassoNext_tail hfirst s) k).symm)

/-- A positive period with distinct cuts before the first return. -/
structure LeastLassoParams (x : ℕ → A) (μ p : ℕ) : Prop where
  pos_p : 0 < p
  periodic : ∀ n, μ ≤ n → x (n + p) = x n
  distinct_cuts : ∀ a b, a < b → b < μ + p → ¬ EqualTails x a b

private theorem period_of_equal_tails
    {x : ℕ → A} {a b : ℕ} (hab : a ≤ b) (htail : EqualTails x a b) :
    ∀ n : ℕ, a ≤ n → x (n + (b - a)) = x n := by
  intro n hn
  have hindex : b + (n - a) = n + (b - a) := by omega
  simpa only [Nat.add_sub_of_le hn, hindex] using (htail (n - a)).symm

/-- The least onset and the least positive period there force distinct cuts
up to the first return at `μ + p`. -/
theorem LeastLassoParams.of_minimal_onset_period
    {x : ℕ → A} {μ p : ℕ}
    (hp : 0 < p)
    (hperiodic : ∀ n : ℕ, μ ≤ n → x (n + p) = x n)
    (hminOnset : ∀ m : ℕ,
      (∃ q : ℕ, 0 < q ∧ ∀ n : ℕ, m ≤ n → x (n + q) = x n) → μ ≤ m)
    (hminPeriod : ∀ q : ℕ, 0 < q →
      (∀ n : ℕ, μ ≤ n → x (n + q) = x n) → p ≤ q) :
    LeastLassoParams x μ p := by
  refine ⟨hp, hperiodic, ?_⟩
  intro a b hab hb htail
  let d := b - a
  have hd : 0 < d := Nat.sub_pos_of_lt hab
  have hadd : a + d = b := Nat.add_sub_of_le hab.le
  have hperiodAtA : ∀ n : ℕ, a ≤ n → x (n + d) = x n :=
    period_of_equal_tails hab.le htail
  have ha : μ ≤ a := hminOnset a ⟨d, hd, hperiodAtA⟩
  have hlt : d < p := by omega
  have hperiodAtMu : ∀ n : ℕ, μ ≤ n → x (n + d) = x n := by
    intro n hn
    calc
      x (n + d) = x ((n + d) + p) := (hperiodic (n + d) (by omega)).symm
      _ = x ((n + p) + d) := congrArg x (by omega)
      _ = x (n + p) := hperiodAtA (n + p) (by omega)
      _ = x n := hperiodic n hn
  exact (Nat.not_lt_of_ge (hminPeriod d hd hperiodAtMu)) hlt

/-- A full-tail return supplies witnesses for both minimizations. -/
theorem LeastLassoParams.exists_of_tailReturn
    {x : ℕ → A} (h : HasTailReturn x) :
    ∃ μ p : ℕ, LeastLassoParams x μ p := by
  classical
  have hex : ∃ m : ℕ, ∃ q : ℕ, 0 < q ∧ ∀ n : ℕ, m ≤ n → x (n + q) = x n := by
    obtain ⟨a, b, hab, htail⟩ := h
    exact ⟨a, b - a, Nat.sub_pos_of_lt hab, period_of_equal_tails hab.le htail⟩
  let μ := Nat.find hex
  have hμ : ∃ q : ℕ, 0 < q ∧ ∀ n : ℕ, μ ≤ n → x (n + q) = x n :=
    Nat.find_spec hex
  let p := Nat.find hμ
  have hp : 0 < p ∧ ∀ n : ℕ, μ ≤ n → x (n + p) = x n := Nat.find_spec hμ
  exact ⟨μ, p, LeastLassoParams.of_minimal_onset_period hp.1 hp.2
    (fun m hm => Nat.find_min' hex (m := m) hm)
    (fun q hq hper => Nat.find_min' hμ (m := q) ⟨hq, hper⟩)⟩

/-- The certified cuts make the return from `μ + p` to `μ` the first one. -/
theorem LeastLassoParams.firstTailReturn
    {x : ℕ → A} {μ p : ℕ}
    (h : LeastLassoParams x μ p) :
    FirstTailReturn x μ (μ + p) := by
  refine ⟨Nat.lt_add_of_pos_right h.pos_p, ?_, h.distinct_cuts⟩
  intro k
  have ht := h.periodic (μ + k) (by omega)
  have heq : μ + k + p = μ + p + k := by omega
  rw [heq] at ht
  exact ht.symm

/-- Convenient μ+p form of the uniqueness theorem, without
postulating any additional graph-language soundness fields. -/
noncomputable def canonical_lasso_uniqueness_of_least_params [Fintype V]
    {x : ℕ → A} {μ p : ℕ}
    (h : LeastLassoParams x μ p)
    (G : LabeledGraph V A) (root : V)
    (hExact : ExactRoot G root x)
    (hcard : Fintype.card V = μ + p) :
    RootedLabeledGraphIso
      (canonicalLasso x μ (μ + p) (h.firstTailReturn).1)
      (canonicalLassoRoot (h.firstTailReturn).1) G root :=
  canonical_lasso_uniqueness h.firstTailReturn G root hExact hcard

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficSingletonPrefixLassoUniqueness
