/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerSplicing
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate

/-!
# Splicing counted binary edge-instance trails

This specializes directed trail insertion to the exact counted edge type of
`FiniteCyclicEdgeCertificate`. An edge is still the full pair `(w,j)`;
parallel instances with the same block label are not identified.

All widths are allowed, including `m = 0`. This local extension step imposes
no period or positivity premise and proves no Euler-existence theorem.
-/

set_option autoImplicit false

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerSplicing

/-- Directed walks in the exact graph of counted binary edge instances. -/
abbrev CountedBinaryEdgeWalk (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (a b : Fin m → Bool) :=
  Walk (fun e : CountedBinaryEdge m c => binaryEdgePrefix m (countedEdgeLabel m c e))
    (fun e : CountedBinaryEdge m c => binaryEdgeSuffix m (countedEdgeLabel m c e)) a b

/-- Inserting a nonempty unused closed trail gives a strictly longer closed
trail, with exact edge-instance conservation and additive counts of every
binary block label. The witness is the actual generic walk splice. -/
theorem countedBinaryEdgeWalk_exists_strict_extension
    (m : ℕ) (c : BinaryEdgeWord m → ℕ) (a b : Fin m → Bool)
    (p : CountedBinaryEdgeWalk m c a b) (loop : CountedBinaryEdgeWalk m c b b)
    (q : CountedBinaryEdgeWalk m c b a)
    (hold : (p.append q).edges.Nodup) (hloop : loop.edges.Nodup)
    (hdisjoint : List.Disjoint (p.append q).edges loop.edges)
    (hne : loop.edges ≠ []) :
    ∃ r : CountedBinaryEdgeWalk m c a a,
      r.edges.Nodup ∧
      (r.edges : Multiset (CountedBinaryEdge m c)) =
        ((p.append q).edges : Multiset (CountedBinaryEdge m c)) +
          (loop.edges : Multiset (CountedBinaryEdge m c)) ∧
      (p.append q).edges.length < r.edges.length ∧
      ∀ w : BinaryEdgeWord m,
        (r.edges.map (countedEdgeLabel m c)).count w =
          ((p.append q).edges.map (countedEdgeLabel m c)).count w +
            (loop.edges.map (countedEdgeLabel m c)).count w := by
  refine ⟨p.splice loop q, Walk.splice_nodup p loop q hold hloop hdisjoint,
    Walk.splice_edges_multiset p loop q, ?_, ?_⟩
  · rw [Walk.splice_length]
    have hpos : 0 < loop.edges.length := List.length_pos_iff_ne_nil.mpr hne
    omega
  · intro w
    exact Walk.splice_label_count (countedEdgeLabel m c) w p loop q

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
