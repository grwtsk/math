# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerTrail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `074bb6e13dd93d259a75bf14b7d665e5fb8ff3c3` · SHA-256 `ef4686fc851f9a8097580b1dae5e0174137e886bba021ed659095c375f3bb8cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite counted directed-trail proof drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Counted directed trails and the first unused-edge extension

Every edge is an instance (word, parallel index), not merely a
positive-count label. This module supplies a finite trail
representation and an exact one-edge extension, including the
strict decrease in the unused-edge count. It does not yet assert
that degree balance and weak support connectivity produce an
Euler cycle.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- The source vertex of a counted directed edge. -/
def countedEdgeSource (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (e : CountedBinaryEdge m c) : Fin m → Bool :=
  binaryEdgePrefix m (countedEdgeLabel m c e)

/-- The target vertex of a counted directed edge. -/
def countedEdgeTarget (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (e : CountedBinaryEdge m c) : Fin m → Bool :=
  binaryEdgeSuffix m (countedEdgeLabel m c e)

/-- A finite directed trail with distinct counted edge instances.
The vertex at position i is the source of edge i, and the final
vertex is the target of the last edge. -/
structure CountedDirectedTrail (m : ℕ)
    (c : BinaryEdgeWord m → ℕ) where
  edges : List (CountedBinaryEdge m c)
  nodup : edges.Nodup
  start : Fin m → Bool
  finish : Fin m → Bool
  compatible : ∀ (i : Fin edges.length),
    countedEdgeSource m c (edges[i]) =
      if h : i.val = 0 then start else
        countedEdgeTarget m c (edges[⟨i.val - 1, by omega⟩])
  terminal : ∀ (h : 0 < edges.length),
    countedEdgeTarget m c (edges[⟨edges.length - 1, by omega⟩]) = finish
  empty_endpoint : edges = [] → start = finish

/-- Unused edge instances are the exact complement of the trail's
edge list in the complete finite counted-edge universe. -/
def CountedDirectedTrail.unused {m : ℕ}
    {c : BinaryEdgeWord m → ℕ}
    (T : CountedDirectedTrail m c) :
    Finset (CountedBinaryEdge m c) :=
  Finset.univ \ T.edges.toFinset

/-- A fresh edge with source at the current terminal vertex. -/
def CountedDirectedTrail.CanAppend {m : ℕ}
    {c : BinaryEdgeWord m → ℕ}
    (T : CountedDirectedTrail m c)
    (e : CountedBinaryEdge m c) : Prop :=
  e ∈ T.unused ∧ countedEdgeSource m c e = T.finish

/-- Appending a fresh edge is a strict one-edge increase in
used instances, with a matching decrease in unused instances.
This proposition retains all parallel edge IDs. -/
theorem countedTrail_unused_card_strict_of_append
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    (T : CountedDirectedTrail m c)
    (e : CountedBinaryEdge m c)
    (he : e ∈ T.unused) :
    (Finset.univ \ (e :: T.edges).toFinset).card + 1 =
      T.unused.card := by
  classical
  have hnot : e ∉ T.edges.toFinset := by
    exact (Finset.mem_sdiff.mp (show e ∈
      (Finset.univ : Finset (CountedBinaryEdge m c)) \
        T.edges.toFinset from he)).2
  have hmem : e ∈ (Finset.univ : Finset (CountedBinaryEdge m c)) :=
    Finset.mem_univ e
  simp only [List.toFinset_cons, CountedDirectedTrail.unused]
  rw [Finset.sdiff_insert]
  exact Finset.card_erase_of_mem
    (Finset.mem_sdiff.mpr ⟨hmem, hnot⟩)

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```
