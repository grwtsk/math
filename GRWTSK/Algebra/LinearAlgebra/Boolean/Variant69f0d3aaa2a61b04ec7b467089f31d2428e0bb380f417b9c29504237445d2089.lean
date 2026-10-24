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
