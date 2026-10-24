# Complete source: GRWTSK.Algebra.LinearAlgebra.Boolean.Variant69f0d3aaa2a61b04ec7b467089f31d2428e0bb380f417b9c29504237445d2089

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b6466cf4a51c1457ebe46dd83e2f60357fb9b15` · SHA-256 `69f0d3aaa2a61b04ec7b467089f31d2428e0bb380f417b9c29504237445d2089`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Algebra
import Boolean.Algebra.Bool
import Boolean.Algebra.Formula
import Boolean.Algebra.Laws
import Boolean.BDD
import Boolean.Formula
import Boolean.Formula.CNF
import Boolean.Formula.Enumeration
import Boolean.Formula.Eval
import Boolean.Formula.Laws
import Boolean.Formula.Semantics
import Boolean.Formula.Traversal
import Boolean.Tree
import Boolean.Tree.ANF
import Boolean.Tree.CNF
import Boolean.Tree.Compile
import Boolean.Tree.Completeness
import Boolean.Tree.Eval
import Boolean.Tree.Graph
import Boolean.Tree.List
import Boolean.Tree.MatrixEncoding
import Boolean.Tree.Normalize
import Boolean.Tree.OrderedFactor
import Boolean.Tree.Polish
import Boolean.Tree.Size
import Boolean.Tree.SOP
import Boolean.Tree.SOP.Minimize
import Boolean.Tree.Variadic
import Boolean.Matrix
import Boolean.Matrix.Count
import Boolean.Matrix.Cycle
import Boolean.Matrix.Encoding
import Boolean.Matrix.Ext
import Boolean.Matrix.Lattice
import Boolean.Matrix.Operations
import Boolean.Matrix.Relation
import Boolean.Matrix.Warshall
import Boolean.Runtime
import Boolean.Cube

/-!
# Boolean

Public import surface for the finite Boolean library.

This module exposes the stable finite infrastructure: algebra, formulas,
decision diagrams, expression trees, matrices, finite cubes, Boolean networks,
Walsh/Fourier shadows, and finite projection utilities.

Certificate-gated analytic, prismatic, torsion, and ZKP-facing boundary modules
are available through explicit imports such as `Boolean.Cube.CertificateBoundary`.
-/
```
