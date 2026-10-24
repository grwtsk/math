# Complete source: GRWTSK.AlgebraicGeometry.Hodge.RationalSubspaceDescent

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10ffbd317e467321e17e429416b14d0b2edd1744` · SHA-256 `2dadc8c0be6b9cc197da6826667a8fee37fac7bd17101af73d097ed8bcaaf160`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent

/-!
# Rational Hodge-subspace descent wrapper

This file gives the Hodge-facing semantic wrapper around the generic tensor
scalar-descent theorem. It assumes only that a selected complex-linear
subspace is stable under all algebraic scalar conjugates of one algebraic
tensor. It does not assert that the subspace consists of Hodge classes or that
the descended rational witness is algebraic.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.RationalSubspaceDescent

open GRWTSK.LinearAlgebra.TensorProduct
open GaloisScalarDescent
open RationalScalarDescent

/-- A source-bound algebraic tensor together with a selected complex-linear
subspace containing all of its algebraic scalar conjugates. -/
structure AllConjugatesSubspaceWitness
    (V : Type*) [AddCommGroup V] [Module ℚ V] where
  P : Submodule ℂ (ℂ ⊗[ℚ] V)
  t : AlgebraicNumbers ⊗[ℚ] V
  allConjugates :
    ∀ σ : AlgebraicNumbers ≃ₐ[ℚ] AlgebraicNumbers,
      coefficientInclusion (scalarConjugate σ t) ∈ P

/-- The selected algebraic tensor lies in the scalar extension of the
rational part of the complex subspace. -/
theorem AllConjugatesSubspaceWitness.descends
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (W : AllConjugatesSubspaceWitness V) :
    W.t ∈ (rationalPart W.P).baseChange AlgebraicNumbers :=
  traceDescent W.P W.t W.allConjugates

/-- Explicit rational witness stage used by the typed Hodge bridge.

The conclusion remains subspace membership. Algebraicity requires a later
cycle-class or correspondence theorem. -/
structure RationalSubspaceWitness
    (V : Type*) [AddCommGroup V] [Module ℚ V] where
  P : Submodule ℂ (ℂ ⊗[ℚ] V)
  t : AlgebraicNumbers ⊗[ℚ] V
  descended : t ∈ (rationalPart P).baseChange AlgebraicNumbers

/-- Package scalar descent as the rational witness stage. -/
def AllConjugatesSubspaceWitness.toRationalWitness
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (W : AllConjugatesSubspaceWitness V) :
    RationalSubspaceWitness V where
  P := W.P
  t := W.t
  descended := W.descends

end GRWTSK.AlgebraicGeometry.Hodge.RationalSubspaceDescent
```
