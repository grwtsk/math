# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CountedCyclicWordFromBalancedSupport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e876c60acbae068b23c1fb409bcb5f358aba6e94` · SHA-256 `1070ce9d58aae119ce302abdb40c3adbd57164a4a5c36e2697683ad07baa29b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. -/
import GRWTSK.Combinatorics.DirectedEulerActiveSupport
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CountedCyclicEulerFromClosedWalk

/-!
# Exact counted cyclic words from balanced connected edge-instance support

The supply is exactly all original CountedBinaryEdge instances. Degree balance
counts their actual prefix/suffix incidences. Weak connectivity is explicitly
restricted to vertices incident to at least one instance and uses the actual
undirected edge adjacency. These graph hypotheses construct an exhaustive
closed edge-simple walk, then the original cyclic certificate and exact word
counts. No desired-existence field, width/period restriction, or arithmetic
cancellation premise is introduced.
-/

set_option autoImplicit false

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open GRWTSK.Combinatorics.DirectedEulerSplicing

/-- The full finite supply of original counted edge IDs; labels are not
quotiented, so all parallel indices remain distinct. -/
noncomputable def countedBinaryEdgeInstanceSupply (m : ℕ) (c : BinaryEdgeWord m → ℕ) :
    Finset (CountedBinaryEdge m c) := by
  classical
  let : Fintype (CountedBinaryEdge m c) := by
    unfold CountedBinaryEdge
    infer_instance
  exact Finset.univ

@[simp] theorem mem_countedBinaryEdgeInstanceSupply (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (e : CountedBinaryEdge m c) : e ∈ countedBinaryEdgeInstanceSupply m c := by
  classical
  let : Fintype (CountedBinaryEdge m c) := by
    unfold CountedBinaryEdge
    infer_instance
  unfold countedBinaryEdgeInstanceSupply
  exact Finset.mem_univ e

/-- The actual edge-instance supply has exactly the original total size. -/
theorem countedBinaryEdgeInstanceSupply_card (m : ℕ) (c : BinaryEdgeWord m → ℕ) :
    (countedBinaryEdgeInstanceSupply m c).card = countedBinaryEdgeTotal m c := by
  classical
  let : Fintype (CountedBinaryEdge m c) := by
    unfold CountedBinaryEdge
    infer_instance
  unfold countedBinaryEdgeInstanceSupply
  rw [Finset.card_univ]
  change Fintype.card ((w : BinaryEdgeWord m) × Fin (c w)) = ∑ w, c w
  simp only [Fintype.card_sigma, Fintype.card_fin]

section BalancedConnected

variable (m : ℕ) (c : BinaryEdgeWord m → ℕ)
variable (hN : 0 < countedBinaryEdgeTotal m c)
variable (hbalance : ∀ x : Fin m → Bool,
  ((countedBinaryEdgeInstanceSupply m c).val.map
    (fun e => binaryEdgePrefix m (countedEdgeLabel m c e))).count x =
  ((countedBinaryEdgeInstanceSupply m c).val.map
    (fun e => binaryEdgeSuffix m (countedEdgeLabel m c e))).count x)
variable (hconnected :
  ∀ x ∈ incidentEdgeSupport
      (tail := fun e => binaryEdgePrefix m (countedEdgeLabel m c e))
      (head := fun e => binaryEdgeSuffix m (countedEdgeLabel m c e))
      (countedBinaryEdgeInstanceSupply m c),
    ∀ y ∈ incidentEdgeSupport
      (tail := fun e => binaryEdgePrefix m (countedEdgeLabel m c e))
      (head := fun e => binaryEdgeSuffix m (countedEdgeLabel m c e))
      (countedBinaryEdgeInstanceSupply m c),
      Relation.ReflTransGen
        (undirectedEdgeAdjacency
          (tail := fun e => binaryEdgePrefix m (countedEdgeLabel m c e))
          (head := fun e => binaryEdgeSuffix m (countedEdgeLabel m c e))
          (countedBinaryEdgeInstanceSupply m c)) x y)

include hN hbalance hconnected

/-- Genuine existence of a cyclic binary word with the exact original
counts, from balance and weak connectivity of incident edge support. -/
theorem exists_cyclicBinaryWord_of_balanced_connected_counted_support :
    ∃ x : CyclicBinaryWord (countedBinaryEdgeTotal m c),
      ∀ w, cyclicBinaryBlockCount m (countedBinaryEdgeTotal m c) hN x w = c w := by
  have hsupply : (countedBinaryEdgeInstanceSupply m c).Nonempty := by
    apply Finset.card_pos.mp
    rw [countedBinaryEdgeInstanceSupply_card]
    exact hN
  obtain ⟨a, p, hnodup, _, hexhaustive⟩ :=
    Walk.exists_euler_closed_trail_of_nonempty_balanced_connected_support
      (tail := fun e => binaryEdgePrefix m (countedEdgeLabel m c e))
      (head := fun e => binaryEdgeSuffix m (countedEdgeLabel m c e))
      (countedBinaryEdgeInstanceSupply m c) hsupply hbalance hconnected
  exact exists_cyclicBinaryWord_of_closed_exhaustive_walk hN p hnodup
    (fun e => (hexhaustive e).mpr (mem_countedBinaryEdgeInstanceSupply m c e))

/-- The original finite realizability predicate follows from actual graph
Euler existence and the already checked original certificate/word bridge. -/
theorem cyclicCountRealizable_of_balanced_connected_counted_support :
    CyclicCountRealizable m c := by
  obtain ⟨x, hx⟩ := exists_cyclicBinaryWord_of_balanced_connected_counted_support
    m c hN hbalance hconnected
  exact ⟨hN, x, hx⟩

end BalancedConnected
end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```
