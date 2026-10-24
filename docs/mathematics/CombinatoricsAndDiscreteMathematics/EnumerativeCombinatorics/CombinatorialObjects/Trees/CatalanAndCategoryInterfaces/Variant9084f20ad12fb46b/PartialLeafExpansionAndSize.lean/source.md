# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Trees.CatalanAndCategoryInterfaces.Variant9084f20ad12fb46b.PartialLeafExpansionAndSize

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfde85bb8287f3443c5357e852502b51c5f4ccf5` · SHA-256 `2d4a55c4e4425438a0f9fd54424f0f6f7a65588cbee108814e5028844c1d8120`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PartialLeafExpansionAndSize — exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855
Organized SHA-256: f609a51e3d530d813312fed12c1271ad87fdc6c1374c63ffbe6869b7dcdf9d5b
PMD: 510.7.010.030.070 trees (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Leaf-address words, the exact leaf-only HasAddress predicate, and partial single-leaf expansion with its two successful-expansion size theorems. HasAddress and expandAt? both reject the empty address at an internal node. Success is an explicit Option equality premise. No monodromy, torsion or address/expansion equivalence is inferred. Original namespace blocks are copied unchanged; the physical subject path does not rename declarations or add a logical wrapper. Only explicit same-source public companion imports are added where listed. Historical imported representations remain distinct and unreplayed.
-/

import Folder.Catalan.Tree
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.CatalanAndCategoryInterfaces.Variant9084f20ad12fb46b.DirectionWordsAndAddresses

/-!
# Folder.Catalan.ExpansionIndex

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.expansion_index
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

namespace CTree

def expandAt? : CTree → Address → Option CTree
  | leaf, [] => some (node leaf leaf)
  | leaf, _ :: _ => none
  | node l r, Direction.left :: rest =>
      match expandAt? l rest with
      | some l' => some (node l' r)
      | none => none
  | node l r, Direction.right :: rest =>
      match expandAt? r rest with
      | some r' => some (node l r')
      | none => none
  | node _ _, [] => none

theorem expandAt?_internal :
    ∀ {T : CTree} {a : Address} {U : CTree},
      T.expandAt? a = some U →
        U.internal = T.internal + 1 := by
  intro T
  induction T with
  | leaf =>
      intro a U h
      cases a with
      | nil =>
          simp [expandAt?] at h
          cases h
          simp [internal]
      | cons d rest =>
          cases d <;> simp [expandAt?] at h
  | node l r ihl ihr =>
      intro a U h
      cases a with
      | nil =>
          simp [expandAt?] at h
      | cons d rest =>
          cases d with
          | left =>
              cases hl : l.expandAt? rest with
              | none =>
                  simp [expandAt?, hl] at h
              | some l' =>
                  simp [expandAt?, hl] at h
                  cases h
                  have hl' := ihl hl
                  simp [internal, hl']
                  omega
          | right =>
              cases hr : r.expandAt? rest with
              | none =>
                  simp [expandAt?, hr] at h
              | some r' =>
                  simp [expandAt?, hr] at h
                  cases h
                  have hr' := ihr hr
                  simp [internal, hr']
                  omega

theorem expandAt?_leaves :
    ∀ {T : CTree} {a : Address} {U : CTree},
      T.expandAt? a = some U →
        U.leaves = T.leaves + 1 := by
  intro T a U h
  have hi := expandAt?_internal h
  calc
    U.leaves = U.internal + 1 := leaves_eq_internal_add_one U
    _ = (T.internal + 1) + 1 := by rw [hi]
    _ = T.leaves + 1 := by
      rw [leaves_eq_internal_add_one T]

end CTree
end Catalan
end Folder
```
