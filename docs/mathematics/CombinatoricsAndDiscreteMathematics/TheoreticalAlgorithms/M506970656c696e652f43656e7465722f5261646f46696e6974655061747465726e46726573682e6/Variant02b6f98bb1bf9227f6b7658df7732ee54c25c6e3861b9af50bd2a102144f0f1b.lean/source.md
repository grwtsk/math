# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e46726573682e6.Variant02b6f98bb1bf9227f6b7658df7732ee54c25c6e3861b9af50bd2a102144f0f1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `608d2963e7885bb588a63b2ce107905c33eea7f5` · SHA-256 `02b6f98bb1bf9227f6b7658df7732ee54c25c6e3861b9af50bd2a102144f0f1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e


/- source-tree-label: STL1|L|addr=010000010|role=proof_code_atom|slug=pipeline-center-radofinitepatternfresh|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternFresh.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e46726573682e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePatternFresh

open Think.Pipeline.Center.RadoExtension
open Think.Pipeline.Center.RadoFinitePattern

/-!
Fresh finite adjacency-pattern copying for the bit-coded Rado graph.

This strengthens `bitRado_copy_finite_pattern_over_list` by asking the copy
vertex to avoid both the source vertex and a finite forbidden list.  The result
is still only a finite witness theorem; it does not assert countable
universality, homogeneity, or any analytic heatflow property.
-/

theorem not_mem_cons_of_not_mem
    {x y : Nat} {xs : List Nat}
    (h : y ∉ x :: xs) :
    y ≠ x ∧ y ∉ xs := by
  constructor
  · intro hyx
    exact h (List.mem_cons.2 (Or.inl hyx))
  · intro hyxs
    exact h (List.mem_cons.2 (Or.inr hyxs))

theorem pattern_copy_nonadjacent_to_self_slot
    {x y : Nat} {xs : List Nat}
    (hcopy :
      ∀ v : Nat, v ∈ x :: xs ->
        (bitRadoEdge y v ↔ bitRadoEdge x v)) :
    ¬ bitRadoEdge y x := by
  have hiff := hcopy x (by simp)
  intro hyx
  exact bitRadoEdge_irreflexive x (hiff.1 hyx)

theorem bitRado_copy_finite_pattern_avoiding_self_and_list
    (x : Nat) (xs : List Nat) :
    ∃ y : Nat,
      y ≠ x ∧
        y ∉ xs ∧
          ¬ bitRadoEdge y x ∧
            ∀ v : Nat, v ∈ xs ->
              (bitRadoEdge y v ↔ bitRadoEdge x v) := by
  obtain ⟨y, hyfresh, hcopy⟩ :=
    bitRado_copy_finite_pattern_over_list x (x :: xs)
  have hy_parts := not_mem_cons_of_not_mem hyfresh
  refine ⟨y, hy_parts.1, hy_parts.2, ?_, ?_⟩
  · exact pattern_copy_nonadjacent_to_self_slot hcopy
  · intro v hv
    exact hcopy v (List.mem_cons.2 (Or.inr hv))

end Think.Pipeline.Center.RadoFinitePatternFresh
```
