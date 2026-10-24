# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Partitions.Variantc1d1c0dc7c394e081270372de432786bbd1afd27305e599aacf7027d71363a92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8c7eb227bbf2636fcc4f9862d1ae24784064aa0` · SHA-256 `c1d1c0dc7c394e081270372de432786bbd1afd27305e599aacf7027d71363a92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.Decoupling.Basic

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace Partitions

/--
Finite scale partition surface for `[0, 1]`.

The exact analytic partition theorem from arXiv:1812.04760 is not proved here;
the fields record the obligations that a later proof must discharge.
-/
structure ScalePartition where
  delta : ℝ
  intervals : Finset (Set ℝ)
  coversUnitInterval : Prop
  intervalLengthEq : Prop
  pairwiseDisjoint : Prop
  exactPaperPartitionMatched : Bool

def partitionResidue : String :=
  "exact_delta_sqrt_partition_theorem_open_residue"

def hasExactPaperPartition (P : ScalePartition) : Bool :=
  P.exactPaperPartitionMatched

theorem exact_partition_false_blocks_paper_match
    (P : ScalePartition)
    (h : P.exactPaperPartitionMatched = false) :
    hasExactPaperPartition P = false := h

end Partitions
end Think.Analysis.Decoupling
```
