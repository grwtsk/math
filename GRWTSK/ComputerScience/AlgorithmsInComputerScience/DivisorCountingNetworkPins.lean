import GRWTSK.ComputerScience.AlgorithmsInComputerScience.DivisorCountingNetworks

/-!
# Fixing the exposed bits of a Boolean multiplication network

Authors: grwtsk contributors

A pin fixes the value of an existing wire. Pushing the pin tests into its
incident vertices leaves the original graph and ordered ports intact. See
`DivisorCountingNetworks.md` for the multiplication supplier and rate.
-/

namespace GRWTSK.IntegerFactorization.Counting.Network

/-- Test the pinned positions of a tuple of bits, rejecting an arity mismatch. -/
def pinsMatch (pin : E → Option Bool) : List (E × Bool) → List Bool → Bool
  | [], [] => true
  | p :: ps, b :: bs => decide (pin p.1 = none ∨ pin p.1 = some b) && pinsMatch pin ps bs
  | _, _ => false

theorem pinsMatch_map (pin : E → Option Bool) (ps : List (E × Bool)) (x : E → Bool) :
    pinsMatch pin ps (ps.map fun p => x p.1) = true ↔
      ∀ p ∈ ps, pin p.1 = none ∨ pin p.1 = some (x p.1) := by
  induction ps with
  | nil => simp [pinsMatch]
  | cons p ps ih => simp [pinsMatch, ih]

/-- Enforce the requested values at the existing ports without adding a wire. -/
def OrderedPorts.pin (G : OrderedPorts V E) (fixed : E → Option Bool) : OrderedPorts V E where
  ports := G.ports
  predicate v bits := G.predicate v bits && pinsMatch fixed (G.ports v) bits

theorem pin_accepts_iff (G : OrderedPorts V E) (h : G.WellFormed)
    (fixed : E → Option Bool) (x : E → Bool) :
    (G.pin fixed).accepts x ↔ G.accepts x ∧ ∀ e, fixed e = none ∨ fixed e = some (x e) := by
  change (∀ v, (G.predicate v ((G.ports v).map fun p => x p.1) &&
    pinsMatch fixed (G.ports v) ((G.ports v).map fun p => x p.1)) = true) ↔ _
  constructor
  · intro hx
    refine ⟨fun v => (Bool.and_eq_true_iff.mp (hx v)).1, fun e => ?_⟩
    obtain ⟨v, hv, _⟩ := h.2 (e,false)
    exact (pinsMatch_map fixed (G.ports v) x).mp (Bool.and_eq_true_iff.mp (hx v)).2 (e,false) hv
  · rintro ⟨hx, hf⟩ v
    exact Bool.and_eq_true_iff.mpr ⟨hx v, (pinsMatch_map fixed (G.ports v) x).mpr (fun p _ => hf p.1)⟩

theorem pin_wellFormed (G : OrderedPorts V E) (h : G.WellFormed) (fixed : E → Option Bool) :
    (G.pin fixed).WellFormed := h

/-- Each old vertex evaluates its original predicate and at most one pin test per
incident bit. The two size bounds still hold for exactly the same wire type. -/
theorem pin_ports (G : OrderedPorts V E) (fixed : E → Option Bool) (v : V) :
    (G.pin fixed).ports v = G.ports v := rfl

/-- Pinning a well-formed graph represents the subset of assignments having
the specified interface bits. The equivalence carries the entire assignment. -/
def OrderedPorts.pinEquiv (G : OrderedPorts V E) (h : G.WellFormed) (fixed : E → Option Bool) :
    {x : E → Bool // (G.pin fixed).accepts x} ≃
      {x : {a : E → Bool // G.accepts a} // ∀ e, fixed e = none ∨ fixed e = some (x.val e)} where
  toFun x :=
    let hpin := (pin_accepts_iff G h fixed x.val).mp x.property
    ⟨⟨x.val, hpin.1⟩, hpin.2⟩
  invFun x := ⟨x.val.val, (pin_accepts_iff G h fixed x.val.val).mpr ⟨x.val.property, x.property⟩⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Every pair of input words of the declared width, before pinning any bits. -/
abbrev Multiplicands (width : ℕ) :=
  {pq : ℕ × ℕ // pq.1 < 2^width ∧ pq.2 < 2^width}

/-- The public arithmetic constraint restricted to the original two-word interface. -/
def pairsAfterPins (n width remaining highBits : ℕ) :
    {p : Multiplicands width //
      p.val.1*p.val.2 = n ∧ p.val.1 / 2^remaining = highBits} ≃
      FactorPairsAt n width remaining highBits where
  toFun p := ⟨p.val.val, p.val.property.1, p.val.property.2, p.property⟩
  invFun p := ⟨⟨p.val, p.property.1, p.property.2.1⟩, p.property.2.2⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- A single unpinned multiplication supplier and its interface semantics suffice
for the exact query. All pinning, equality subdivision, precision and the unit
correction are implemented in the reduction. -/
theorem readout_of_interface (G : OrderedPorts V E) (valid : G.WellFormed) [Fintype E]
    {n width : ℕ} (hn : 0 < n) (hw : n < 2^width) (remaining highBits : ℕ)
    (fixed : E → Option Bool)
    (source : {x : E → Bool // G.accepts x} ≃ Multiplicands width)
    (interface : ∀ x, (∀ e, fixed e = none ∨ fixed e = some (x.val e)) ↔
      (source x).val.1*(source x).val.2 = n ∧ (source x).val.1 / 2^remaining = highBits) :
    assignments (G.pin fixed).subdivide % 2^(Fintype.card E+1) -
      (if 1 / 2^remaining = highBits then 1 else 0) = prefixCount n remaining highBits := by
  apply readout_of_multiplication _ hn hw
  exact ((G.pinEquiv valid fixed).trans (source.subtypeEquiv interface)).trans
    (pairsAfterPins n width remaining highBits)

end GRWTSK.IntegerFactorization.Counting.Network
