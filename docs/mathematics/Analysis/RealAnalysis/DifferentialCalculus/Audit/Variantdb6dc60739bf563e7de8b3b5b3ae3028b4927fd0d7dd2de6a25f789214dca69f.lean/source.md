# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Audit.Variantdb6dc60739bf563e7de8b3b5b3ae3028b4927fd0d7dd2de6a25f789214dca69f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf65e155630a78cd8f8fbfd2dd11cee10aa0845a` · SHA-256 `db6dc60739bf563e7de8b3b5b3ae3028b4927fd0d7dd2de6a25f789214dca69f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Prototype

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature

#check pairedSquareReadout
#print axioms pairedSquareReadout
#check squarePrefix_pairedTail_work
#print axioms squarePrefix_pairedTail_work
#check squareTail_pairedTail_work
#print axioms squareTail_pairedTail_work
#check squareTailPairedWork_eq_neg_integral_pairedTail_deriv
#print axioms squareTailPairedWork_eq_neg_integral_pairedTail_deriv
#check squareTailPairedWork_eq_neg_readout
#print axioms squareTailPairedWork_eq_neg_readout
#check squareRemovedPairedWork_eq_first_square_quadrature
#print axioms squareRemovedPairedWork_eq_first_square_quadrature
```
