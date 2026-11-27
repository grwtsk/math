import GRWTSK.ComputerScience.AlgorithmsInComputerScience.IntegerFactoringCounting
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Pi
import Mathlib.SetTheory.Cardinal.Finite

/-!
# Exact Boolean network comparisons for divisor-prefix counting

Authors: grwtsk contributors

A network lists the incident ports at each vertex in evaluation order. Each
occurrence identifies its edge and endpoint. Subdivision gives every old edge a
new equality vertex and two independently labelled half edges. Parsimony is
needed to turn assignments into divisor counts. See `DivisorCountingNetworks.md`.
-/

namespace GRWTSK.IntegerFactorization.Counting.Network

/-- The side selects one of the two endpoints of an edge. -/
structure OrderedPorts (V E : Type*) where
  ports : V → List (E × Bool)
  predicate : V → List Bool → Bool

def OrderedPorts.withPortValues (G : OrderedPorts V E) (x : E × Bool → Bool) : Prop :=
  ∀ v, G.predicate v ((G.ports v).map x) = true

def OrderedPorts.accepts (G : OrderedPorts V E) (x : E → Bool) : Prop :=
  G.withPortValues (fun p => x p.1)

/-- The left side consists of the original vertices. On the right each old edge
is a two-port equality vertex. Both tests read exactly the same half-edge labels. -/
def OrderedPorts.subdivisionAccepts (G : OrderedPorts V E) (y : E × Bool → Bool) : Prop :=
  G.withPortValues y ∧ ∀ e, y (e,false) = y (e,true)

/-- The two old endpoints are the two new wires. Every such wire joins an old
vertex (false endpoint) to the inserted equality vertex (true endpoint). -/
def OrderedPorts.subdivide (G : OrderedPorts V E) : OrderedPorts (V ⊕ E) (E × Bool) where
  ports
    | .inl v => (G.ports v).map fun p => (p,false)
    | .inr e => [((e,false),true), ((e,true),true)]
  predicate
    | .inl v => G.predicate v
    | .inr _ => fun xs => match xs with
      | [a,b] => a == b
      | _ => false

theorem subdivide_accepts_iff (G : OrderedPorts V E) (y : E × Bool → Bool) :
    G.subdivide.accepts y ↔ G.subdivisionAccepts y := by
  constructor
  · intro h
    refine ⟨fun v => ?_, fun e => ?_⟩
    · simpa [OrderedPorts.subdivide, Function.comp_def] using h (.inl v)
    · simpa [OrderedPorts.subdivide] using h (.inr e)
  · rintro ⟨old, inserted⟩ (v | e)
    · simpa [OrderedPorts.subdivide, Function.comp_def] using old v
    · simpa [OrderedPorts.subdivide] using inserted e

/-- In the original incidence list every half-edge occurs at one vertex and
appears exactly once there. This condition includes parallel edges and loops. -/
def OrderedPorts.WellFormed (G : OrderedPorts V E) : Prop :=
  (∀ v, (G.ports v).Nodup) ∧ ∀ p, ∃! v, p ∈ G.ports v

theorem subdivide_wellFormed (G : OrderedPorts V E) (h : G.WellFormed) :
    G.subdivide.WellFormed := by
  constructor
  · rintro (v | e)
    · exact (h.1 v).map (fun _ _ eq => congrArg Prod.fst eq)
    · simp [OrderedPorts.subdivide]
  · rintro ⟨⟨e,b⟩,side⟩
    cases side with
    | false =>
      obtain ⟨v, hv, unique⟩ := h.2 (e,b)
      refine ⟨.inl v, ?_, ?_⟩
      · simpa [OrderedPorts.subdivide] using hv
      · rintro (w | f) hw
        · apply congrArg Sum.inl
          exact unique w (by simpa [OrderedPorts.subdivide] using hw)
        · simp [OrderedPorts.subdivide] at hw
    | true =>
      refine ⟨.inr e, ?_, ?_⟩
      · cases b <;> simp [OrderedPorts.subdivide]
      · rintro (w | f) hw
        · simp [OrderedPorts.subdivide] at hw
        · cases b <;> simp [OrderedPorts.subdivide] at hw <;> subst f <;> rfl

/-- A bijection of satisfying assignments, preserving the order and every bit
seen by each original predicate. Counting uses this bijection with no cancellation. -/
def OrderedPorts.subdivisionEquiv (G : OrderedPorts V E) :
    {x : E → Bool // G.accepts x} ≃ {y : E × Bool → Bool // G.subdivisionAccepts y} where
  toFun x := ⟨fun p => x.val p.1, x.property, fun _ => rfl⟩
  invFun y := ⟨fun e => y.val (e,false), by
    change G.withPortValues (fun p => y.val (p.1,false))
    convert y.property.1 using 1
    funext ⟨e,b⟩
    cases b with
    | false => rfl
    | true => exact y.property.2 e⟩
  left_inv x := rfl
  right_inv y := by
    apply Subtype.ext
    funext ⟨e,b⟩
    cases b with
    | false => rfl
    | true => exact y.property.2 e

/-- The observable is the natural count of all satisfying assignments. -/
noncomputable def assignments (G : OrderedPorts V E) : ℕ :=
  Nat.card {x : E → Bool // G.accepts x}

theorem subdivision_exact (G : OrderedPorts V E) :
    Nat.card {y : E × Bool → Bool // G.subdivisionAccepts y} = assignments G :=
  (Nat.card_congr G.subdivisionEquiv).symm

theorem subdivision_edges (E : Type*) [Fintype E] :
    Fintype.card (E × Bool) = 2 * Fintype.card E := by simp [Nat.mul_comm]

/-- The original vertex keeps all its ordered ports, and each new equality has
exactly two. Specifying the heterogeneous vertex degree this way also handles
isolated vertices without adding fictitious ports. -/
def subdivisionDegree (G : OrderedPorts V E) : V ⊕ E → ℕ
  | .inl v => (G.ports v).length
  | .inr _ => 2

theorem subdivision_degree_le (G : OrderedPorts V E) (D : ℕ)
    (h : ∀ v, (G.ports v).length ≤ D) :
    ∀ v, subdivisionDegree G v ≤ max D 2
  | .inl v => (h v).trans (le_max_left _ _)
  | .inr _ => le_max_right _ _

theorem assignments_le (G : OrderedPorts V E) [Fintype E] :
    assignments G ≤ 2 ^ Fintype.card E := by
  classical
  unfold assignments
  rw [Nat.card_eq_fintype_card]
  simpa using Fintype.card_le_of_injective (f := Subtype.val (p := G.accepts)) Subtype.val_injective

theorem graph_subdivision_exact (G : OrderedPorts V E) :
    assignments G.subdivide = assignments G := by
  unfold assignments
  calc Nat.card {y // G.subdivide.accepts y} =
        Nat.card {y // G.subdivisionAccepts y} :=
          Nat.card_congr (Equiv.subtypeEquivRight (subdivide_accepts_iff G))
       _ = _ := subdivision_exact G

/-- Precision is charged against the original number of edges. An exact count
of all possible assignments (all predicates true) still fits in this modulus. -/
theorem residue_recovers_count (G : OrderedPorts V E) [Fintype E] :
    (Nat.card {y : E × Bool → Bool // G.subdivisionAccepts y}) %
        2^(Fintype.card E+1) = assignments G := by
  rw [subdivision_exact]
  apply Nat.mod_eq_of_lt
  exact lt_of_le_of_lt (assignments_le G) (by
    rw [pow_succ]
    have := Nat.two_pow_pos (Fintype.card E)
    omega)

/-- The fixed-product/fixed-prefix network includes the divisor 1 when its
padded word has the requested prefix. A multiplication supplier provides a
bijection with its satisfying assignments; the caller need not enumerate them. -/
abbrev DivisorsAt (n remaining highBits : ℕ) :=
  {d : ℕ // d ∈ n.divisors.filter (fun z => z / 2^remaining = highBits)}

theorem remove_unit {n : ℕ} (hn : 0 < n) (remaining highBits : ℕ) :
    Nat.card (DivisorsAt n remaining highBits) =
      prefixCount n remaining highBits + (if 1 / 2^remaining = highBits then 1 else 0) := by
  classical
  let all := n.divisors.filter (fun d => d / 2^remaining = highBits)
  have cut : all.erase 1 = n.divisors.filter (fun d => 2 ≤ d ∧ d / 2^remaining = highBits) := by
    ext d
    simp only [Finset.mem_erase, Finset.mem_filter, all]
    constructor
    · rintro ⟨hne, hd, hb⟩
      have hdp := Nat.pos_of_mem_divisors hd
      exact ⟨hd, by omega, hb⟩
    · rintro ⟨hd, h2, hb⟩
      exact ⟨by omega, hd, hb⟩
  have unit : 1 ∈ all ↔ 1 / 2^remaining = highBits := by simp [all, Nat.mem_divisors, hn.ne']
  change Nat.card {d : ℕ // d ∈ all} = _
  rw [Nat.card_eq_fintype_card, Fintype.card_coe]
  unfold prefixCount
  rw [← cut]
  by_cases h : 1 / 2^remaining = highBits
  · rw [ite_eq_left h, Finset.card_erase_of_mem (unit.mpr h)]
    have := Finset.card_pos.mpr ⟨1, unit.mpr h⟩
    omega
  · rw [ite_eq_right h, Finset.erase_eq_of_notMem (fun hm => h (unit.mp hm)), Nat.add_zero]

/-- Fixed-width multiplication interface after fixing the double-width product
and the high bits of the first argument. Width bounds charge both factors. -/
abbrev FactorPairsAt (n width remaining highBits : ℕ) :=
  {pq : ℕ × ℕ // pq.1 < 2^width ∧ pq.2 < 2^width ∧
      pq.1*pq.2 = n ∧ pq.1 / 2^remaining = highBits}

/-- Choosing the unique exact cofactor is an actual bijection, including the
divisors one and the input itself. -/
def factorPairsEquiv {n width : ℕ} (hn : 0 < n) (hw : n < 2^width)
    (remaining highBits : ℕ) :
    FactorPairsAt n width remaining highBits ≃ DivisorsAt n remaining highBits where
  toFun pq := ⟨pq.val.1, Finset.mem_filter.mpr
    ⟨Nat.mem_divisors.mpr ⟨⟨pq.val.2, pq.property.2.2.1.symm⟩, hn.ne'⟩, pq.property.2.2.2⟩⟩
  invFun d := ⟨(d.val, n / d.val), by
    obtain ⟨hd, hb⟩ := Finset.mem_filter.mp d.property
    exact ⟨(Nat.le_of_dvd hn (Nat.mem_divisors.mp hd).1).trans_lt hw,
      (Nat.div_le_self _ _).trans_lt hw, Nat.mul_div_cancel' (Nat.mem_divisors.mp hd).1, hb⟩⟩
  left_inv pq := by
    apply Subtype.ext
    change (pq.val.1, n / pq.val.1) = pq.val
    apply Prod.ext
    · rfl
    have hp : 0 < pq.val.1 := by
      by_contra! hz
      have := pq.property.2.2.1
      simp [Nat.eq_zero_of_le_zero hz] at this
      omega
    change n / pq.val.1 = pq.val.2
    exact (congrArg (· / pq.val.1) pq.property.2.2.1.symm).trans (Nat.mul_div_right _ hp)
  right_inv _ := rfl

/-- A parsimonious encoding of the restricted multiplication relation is enough
to read out the exact divisor-prefix count, including the prime-input case. -/
theorem prefixCount_of_parsimony (G : OrderedPorts V E) [Fintype E]
    {n : ℕ} (hn : 0 < n) (remaining highBits : ℕ)
    (uniqueExtensions : {x : E → Bool // G.accepts x} ≃ DivisorsAt n remaining highBits) :
    ((Nat.card {y : E × Bool → Bool // G.subdivisionAccepts y}) % 2^(Fintype.card E+1)) -
      (if 1 / 2^remaining = highBits then 1 else 0) = prefixCount n remaining highBits := by
  rw [residue_recovers_count, assignments, Nat.card_congr uniqueExtensions, remove_unit hn]
  omega

/-- Complete return from the explicitly subdivided graph to the shared count.
The remaining provider premise is precisely unique extension from a valid pair
on the pinned product/prefix interface to all auxiliary wire assignments. -/
theorem readout_of_multiplication (G : OrderedPorts V E) [Fintype E]
    {n width : ℕ} (hn : 0 < n) (hw : n < 2^width) (remaining highBits : ℕ)
    (parsimonious : {x : E → Bool // G.accepts x} ≃ FactorPairsAt n width remaining highBits) :
    assignments G.subdivide % 2^(Fintype.card E+1) -
      (if 1 / 2^remaining = highBits then 1 else 0) = prefixCount n remaining highBits := by
  rw [graph_subdivision_exact, ← subdivision_exact]
  exact prefixCount_of_parsimony G hn _ _ (parsimonious.trans (factorPairsEquiv hn hw _ _))

end GRWTSK.IntegerFactorization.Counting.Network
