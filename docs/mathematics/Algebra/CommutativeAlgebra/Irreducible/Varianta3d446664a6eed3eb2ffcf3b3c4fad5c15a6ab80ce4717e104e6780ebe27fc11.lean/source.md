# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Irreducible.Varianta3d446664a6eed3eb2ffcf3b3c4fad5c15a6ab80ce4717e104e6780ebe27fc11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd9b0f5c0e60f7106637d1fabf8a10afd69b9c0b` · SHA-256 `a3d446664a6eed3eb2ffcf3b3c4fad5c15a6ab80ce4717e104e6780ebe27fc11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
module

public import Mathlib.Algebra.Polynomial.Eval.Coeff
public import Mathlib.Algebra.Polynomial.Eval.Degree
public import Mathlib.Algebra.Prime.Defs

/-!
# Mapping irreducible polynomials

## Main results

* `Monic.irreducible_of_irreducible_map`: we can prove a monic polynomial is irreducible
  by mapping it to another integral domain and checking for irreducibility there.
-/

public section

noncomputable section

open Polynomial

namespace Polynomial

universe u v w y

variable {R : Type u} {S : Type v} {a b : R}

section
variable [CommRing R] [IsDomain R] [CommRing S] [IsDomain S] (φ : R →+* S)

/-- A polynomial over an integral domain `R` is irreducible if it is monic and
irreducible after mapping into an integral domain `S`.

A special case of this lemma is that a polynomial over `ℤ` is irreducible if
it is monic and irreducible over `ℤ/pℤ` for some prime `p`.
-/
lemma Monic.irreducible_of_irreducible_map (f : R[X]) (h_mon : Monic f)
    (h_irr : Irreducible (f.map φ)) : Irreducible f := by
  refine ⟨h_irr.not_isUnit ∘ IsUnit.map (mapRingHom φ), fun a b h => ?_⟩
  dsimp [Monic] at h_mon
  have q := (leadingCoeff_mul a b).symm
  rw [← h, h_mon] at q
  refine (h_irr.isUnit_or_isUnit <|
    (congr_arg (Polynomial.map φ) h).trans (Polynomial.map_mul φ)).imp ?_ ?_ <;>
      apply isUnit_of_isUnit_leadingCoeff_of_isUnit_map <;>
    apply IsUnit.of_mul_eq_one
  · exact q
  · rw [mul_comm]
    exact q

end
end Polynomial
```
