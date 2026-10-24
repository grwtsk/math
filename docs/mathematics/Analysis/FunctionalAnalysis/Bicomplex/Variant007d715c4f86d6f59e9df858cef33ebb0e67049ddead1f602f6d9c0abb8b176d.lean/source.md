# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Bicomplex.Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a775e99325a914fd6458938d9c58ae6515093ca0` · SHA-256 `007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Hilbert.DifferentialComplex
import Mathlib.Tactic.NoncommRing

/-!
# Finite signed terrain--cell bicomplex

The two stored matrices are the terrain differential and the cubical
differential *after* the usual `(-1)^p` totalization sign has been applied.
Thus their compatibility law is anticommutation.  This is the flattened,
finite-dimensional form of an unsigned bicomplex law `d_K d_Q = d_Q d_K`.
-/

noncomputable section

namespace DAF.Hilbert

universe u

/-- An exact finite bicomplex after signed totalization. -/
structure FiniteBicomplex
    (Index : Type u) [Fintype Index] [DecidableEq Index] where
  terrainDifferential : FiniteOperator Index Index
  cubeDifferential : FiniteOperator Index Index
  terrain_square_zero : terrainDifferential * terrainDifferential = 0
  cube_square_zero : cubeDifferential * cubeDifferential = 0
  signed_compatibility :
    terrainDifferential * cubeDifferential +
      cubeDifferential * terrainDifferential = 0

namespace FiniteBicomplex

variable {Index : Type u} [Fintype Index] [DecidableEq Index]

/-- The signed total differential `d_K + (-1)^p d_Q`. -/
def totalDifferential (complex : FiniteBicomplex Index) :
    FiniteOperator Index Index :=
  complex.terrainDifferential + complex.cubeDifferential

/-- Exact finite totalization: the total differential squares to zero. -/
theorem totalDifferential_sq_zero (complex : FiniteBicomplex Index) :
    complex.totalDifferential * complex.totalDifferential = 0 := by
  calc
    complex.totalDifferential * complex.totalDifferential =
        complex.terrainDifferential * complex.terrainDifferential +
          (complex.terrainDifferential * complex.cubeDifferential +
            complex.cubeDifferential * complex.terrainDifferential) +
          complex.cubeDifferential * complex.cubeDifferential := by
            simp only [totalDifferential]
            noncomm_ring
    _ = 0 := by
      rw [complex.terrain_square_zero, complex.signed_compatibility,
        complex.cube_square_zero]
      simp

/-- Forgetting the bidegree split yields the canonical finite differential
complex consumed by the Hodge--Dirac construction. -/
def toDifferentialComplex (complex : FiniteBicomplex Index) :
    FiniteDifferentialComplex Index where
  differential := complex.totalDifferential
  differential_square_zero := complex.totalDifferential_sq_zero

end FiniteBicomplex

end DAF.Hilbert
```
