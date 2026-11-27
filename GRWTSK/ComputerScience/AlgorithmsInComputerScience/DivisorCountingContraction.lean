import GRWTSK.ComputerScience.AlgorithmsInComputerScience.DivisorCountingNetworkPins
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Fintype.Sum
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset

/-!
# Exact scalar contraction of the pinned bipartite multiplication network

Authors: grwtsk contributors

The scalar below is the ordered Boolean sum of products in OpenAI Appendix D.1.
See `DivisorCountingNetworks.md` for the computational and resource premises.
-/

namespace GRWTSK.IntegerFactorization.Counting.Network

open scoped BigOperators

/-- Boolean vertex entries have weights zero and one in the coefficient ring. -/
def gateEntry (R : Type*) [Zero R] [One R] (G : OrderedPorts V E)
    (x : E → Bool) (v : V) : R :=
  if G.predicate v ((G.ports v).map fun p => x p.1) then 1 else 0

noncomputable def scalar (R : Type*) [CommSemiring R] [Fintype V] [Fintype E]
    (G : OrderedPorts V E) : R := by
  classical
  exact ∑ x : E → Bool, ∏ v : V, gateEntry R G x v

theorem scalar_eq_assignments (R : Type*) [CommSemiring R] [Fintype V] [Fintype E]
    (G : OrderedPorts V E) : scalar R G = (assignments G : R) := by
  classical
  have indicator (x : E → Bool) :
      ∏ v : V, gateEntry R G x v = if G.accepts x then 1 else 0 := by
    by_cases hx : G.accepts x
    · rw [ite_eq_left hx]
      exact Finset.prod_eq_one (fun v _ => ite_eq_left (hx v))
    · rw [ite_eq_right hx]
      change ¬ ∀ v, G.predicate v ((G.ports v).map fun p => x p.1) = true at hx
      obtain ⟨v, hv⟩ := not_forall.mp hx
      exact Finset.prod_eq_zero (Finset.mem_univ v) (ite_eq_right hv)
  unfold scalar
  simp_rw [indicator]
  rw [← Finset.sum_filter]
  simp [assignments, Nat.card_eq_fintype_card, Fintype.card_subtype]

/-- D.1 separately bounds vertices, including isolated scalar predicates.
Every original vertex stays and each original wire adds exactly one vertex. -/
theorem subdivision_vertices (V E : Type*) [Fintype V] [Fintype E] :
    Fintype.card (V ⊕ E) = Fintype.card V + Fintype.card E := Fintype.card_sum

/-- Read the actual contracted scalar through a unital coefficient homomorphism.
For D.1 at truncation order one, use evaluation of the constant coefficient
modulo the specified power of two. -/
theorem scalar_prefixCount (R : Type*) [CommSemiring R] (G : OrderedPorts V E)
    (valid : G.WellFormed) [Fintype V] [Fintype E]
    {n width : ℕ} (hn : 0 < n) (hw : n < 2^width) (remaining highBits : ℕ)
    (fixed : E → Option Bool)
    (source : {x : E → Bool // G.accepts x} ≃ Multiplicands width)
    (interface : ∀ x, (∀ e, fixed e = none ∨ fixed e = some (x.val e)) ↔
      (source x).val.1*(source x).val.2 = n ∧ (source x).val.1 / 2^remaining = highBits)
    (read : R →+* ZMod (2^(Fintype.card E+1))) :
    (read (scalar R (G.pin fixed).subdivide)).val -
      (if 1 / 2^remaining = highBits then 1 else 0) = prefixCount n remaining highBits := by
  rw [scalar_eq_assignments, map_natCast, ZMod.val_natCast]
  exact readout_of_interface G valid hn hw remaining highBits fixed source interface

end GRWTSK.IntegerFactorization.Counting.Network
