# Complete source: GRWTSK.Algebra.OrderedProduct.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09a8944cb41d74b8da9eb6d4787cfb902727c82d` · SHA-256 `6381b95e6963c275c6c1b7a872f4359b14c8ef6c67a004d3eadb586c629dbc52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.OrderedProduct
import Lean

open GRWTSK.Algebra Lean Elab Command

namespace GRWTSK.Algebra.Checks

-- The generic two-factor contract fixes the direction and index convention.
example {G : Type u} [Monoid G] (A : ℕ → G) (n : ℕ) :
    orderedProduct A n 2 = A (n + 1) * (A n * 1) := rfl

-- Consumers retain exactly the declared assumptions.
theorem product_add_consumer {G : Type u} [Monoid G]
    (A : ℕ → G) (n m k : ℕ) :
    orderedProduct A n (m + k) =
      orderedProduct A (n + k) m * orderedProduct A n k :=
  orderedProduct_add A n m k

theorem sign_inverse_consumer {G : Type u} [Group G]
    (A : ℕ → G) (T : G) (hcomm : ∀ i j, Commute (A i) (A j))
    (hflip : ∀ i, T * A i * T⁻¹ = (A i)⁻¹) (n k : ℕ) :
    T * orderedProduct A n k * T⁻¹ = (orderedProduct A n k)⁻¹ :=
  orderedProduct_sign_inverse A T hcomm hflip n k

-- Materialize the compiler's deferred equation family explicitly.
#check orderedProduct.eq_1
#check orderedProduct.eq_2
#check orderedProduct.eq_def
#check gaugeTransfer.eq_1

end GRWTSK.Algebra.Checks

elab "#audit_ordered_product" : command => liftTermElabM do
  let _ ← Meta.getEqnsFor? `GRWTSK.Algebra.orderedProduct
  let _ ← Meta.getUnfoldEqnFor? `GRWTSK.Algebra.orderedProduct
  let _ ← Meta.getEqnsFor? `GRWTSK.Algebra.gaugeTransfer
  let env ← getEnv
  let roots := #[`GRWTSK.Algebra.orderedProduct, `GRWTSK.Algebra.orderedProduct_zero,
    `GRWTSK.Algebra.orderedProduct_succ, `GRWTSK.Algebra.orderedProduct_add,
    `GRWTSK.Algebra.gaugeTransfer, `GRWTSK.Algebra.orderedProduct_gaugeTransfer,
    `GRWTSK.Algebra.orderedProduct_conjugation, `GRWTSK.Algebra.commute_orderedProduct,
    `GRWTSK.Algebra.orderedProduct_inverse_commuting, `GRWTSK.Algebra.orderedProduct_sign_inverse]
  let generated := #[`GRWTSK.Algebra.orderedProduct._f,
    `GRWTSK.Algebra.orderedProduct._sunfold, `GRWTSK.Algebra.orderedProduct._unsafe_rec,
    `GRWTSK.Algebra.orderedProduct.match_1, `GRWTSK.Algebra.orderedProduct.eq_1,
    `GRWTSK.Algebra.orderedProduct.eq_2, `GRWTSK.Algebra.orderedProduct.eq_def,
    `GRWTSK.Algebra.gaugeTransfer.eq_1]
  for n in roots ++ generated do
    let some info := env.find? n | throwError "missing declaration: {n}"
    if roots.contains n && info.isUnsafe then throwError "unsafe interface: {n}"
    match info with
    | .axiomInfo _ => throwError "undeclared axiom: {n}"
    | _ => pure ()
    let axioms ← collectAxioms n
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {n}"
    logInfo m!"ORDERED_PRODUCT_DECL::{n}::{axioms.toList}"
  for (consumer, target) in
      #[( `GRWTSK.Algebra.Checks.product_add_consumer, `GRWTSK.Algebra.orderedProduct_add),
        ( `GRWTSK.Algebra.Checks.sign_inverse_consumer, `GRWTSK.Algebra.orderedProduct_sign_inverse)] do
    let some info := env.find? consumer | throwError "missing consumer: {consumer}"
    let some proof := info.value? true | throwError "missing proof term: {consumer}"
    unless proof.getUsedConstants.contains target do
      throwError "consumer lacks canonical proof dependency: {consumer}"
    let axioms ← collectAxioms consumer
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved consumer axiom {ax}"
    logInfo m!"ORDERED_PRODUCT_CONSUMER::{consumer}::{target}"
  logInfo "ORDERED_PRODUCT_ROOTS::10"
  logInfo "ORDERED_PRODUCT_GENERATED::8"

#audit_ordered_product
```
