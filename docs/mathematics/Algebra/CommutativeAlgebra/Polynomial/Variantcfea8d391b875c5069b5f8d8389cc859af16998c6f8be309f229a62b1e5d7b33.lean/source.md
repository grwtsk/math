# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variantcfea8d391b875c5069b5f8d8389cc859af16998c6f8be309f229a62b1e5d7b33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab4a4f81932ad66186d8c53f4585edf3dd27390` · SHA-256 `cfea8d391b875c5069b5f8d8389cc859af16998c6f8be309f229a62b1e5d7b33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.MvPolynomial.Equiv

/-!
# Some lemmas relating polynomials and multivariable polynomials.
-/

namespace MvPolynomial

variable {R S σ : Type*}

theorem polynomial_eval_eval₂ [CommSemiring R] [CommSemiring S]
    {x : S} (f : R →+* Polynomial S) (g : σ → Polynomial S) (p : MvPolynomial σ R) :
    Polynomial.eval x (eval₂ f g p) =
      eval₂ ((Polynomial.evalRingHom x).comp f) (fun s => Polynomial.eval x (g s)) p := by
  apply induction_on p
  · simp
  · intro p q hp hq
    simp [hp, hq]
  · intro p n hp
    simp [hp]

theorem eval_polynomial_eval_finSuccEquiv {n : ℕ} {x : Fin n → R}
    [CommSemiring R] (f : MvPolynomial (Fin (n + 1)) R) (q : MvPolynomial (Fin n) R) :
    (eval x) (Polynomial.eval q (finSuccEquiv R n f)) = eval (Fin.cases (eval x q) x) f := by
  simp only [finSuccEquiv_apply, coe_eval₂Hom, polynomial_eval_eval₂, eval_eval₂]
  conv in RingHom.comp _ _ =>
    refine @RingHom.ext _ _ _ _ _ (RingHom.id _) fun r => ?_
    simp
  simp only [eval₂_id]
  congr
  funext i
  refine Fin.cases (by simp) (by simp) i

end MvPolynomial
```
