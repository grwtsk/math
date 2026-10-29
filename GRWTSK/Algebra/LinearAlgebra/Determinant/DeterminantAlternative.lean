import DAF.PerfectComplex.Core
import DAF.PerfectComplex.Comparison
import DAF.Determinant.Core
import DAF.Determinant.Transport
import DAF.Determinant.ScalarExtension

/-!
# Perfect-complex determinant transport

This declaration-free umbrella exposes determinant-line transport only for a
selected perfect-complex model and certified chain-level quasi-isomorphisms.
A state equivalence does not automatically induce a chain equivalence, and
determinant transport therefore cannot be manufactured from a state map.

A determinant-line statement is also not a same-degree group isomorphism.
Scalar extension changes both the coefficient context and the target
determinant theory; comparison with an integral line requires separately
supplied compatibility data.
-/
