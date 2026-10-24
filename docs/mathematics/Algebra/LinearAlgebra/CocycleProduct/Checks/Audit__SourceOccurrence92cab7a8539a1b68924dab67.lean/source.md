# Complete source: GRWTSK.Algebra.LinearAlgebra.CocycleProduct.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89147e475920d5c43dd248776b8408e0b50f3c66` · SHA-256 `1c2e7f46bfea8e23db033825043cf202ee35505d269eb2661dcfdd19ba1a1033`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CocycleProduct
import Lean
open Lean Elab Command GRWTSK.LinearAlgebra.CocycleProduct
universe u v
namespace GRWTSK.LinearAlgebra.CocycleProduct.Checks
theorem representation {S : Type u} {G : Type v} [Monoid G] (T : S → S) (A : S → G) (n : ℕ) (x : S) : cocycleProduct T A n x = GRWTSK.Algebra.orderedProduct (fun k => A (T^[k] x)) 0 n := cocycleProduct_eq_orderedProduct T A n x
theorem addition {S : Type u} {G : Type v} [Monoid G] (T : S → S) (A : S → G) (m n : ℕ) (x : S) : cocycleProduct T A (m+n) x = cocycleProduct T A m (T^[n] x) * cocycleProduct T A n x := cocycleProduct_add T A m n x
theorem gauge {S : Type u} {G : Type v} [Group G] (T : S → S) (A B : S → G) (n : ℕ) (x : S) : cocycleProduct T (cocycleGaugeTransfer T A B) n x = (B (T^[n] x))⁻¹ * cocycleProduct T A n x * B x := cocycleProduct_gauge T A B n x
end GRWTSK.LinearAlgebra.CocycleProduct.Checks
elab "#audit_cocycle_product" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct._f,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct._sunfold,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct.match_1,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_zero,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_succ,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_eq_orderedProduct,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_add,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleGaugeTransfer,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_gauge,
    `GRWTSK.LinearAlgebra.CocycleProduct.cocycleGaugeTransfer.eq_1] do
    let some info := env.find? n | throwError "missing complete safe contract"
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial contract"
    let some body := info.value? true | throwError "missing body"
    Meta.checkWithKernel body
    Meta.checkWithKernel <| mkApp (mkLambda Name.anonymous BinderInfo.default info.type (mkBVar 0)) body
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unexpected axiom"
    logInfo m!"COCYCLE_CONTRACT::{n}"
  let some info := env.find? `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_zero | throwError "missing original theorem"
  let some body := info.value? true | throwError "missing original proof"
  unless (info.type.getUsedConstants ++ body.getUsedConstants).contains `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct do throwError "original declaration lacks canonical dependency"
  logInfo "COCYCLE_ORIGINAL::cocycleProduct_zero"
  let some info := env.find? `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_succ | throwError "missing original theorem"
  let some body := info.value? true | throwError "missing original proof"
  unless (info.type.getUsedConstants ++ body.getUsedConstants).contains `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct do throwError "original declaration lacks canonical dependency"
  logInfo "COCYCLE_ORIGINAL::cocycleProduct_succ"
  let some info := env.find? `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_eq_orderedProduct | throwError "missing original theorem"
  let some body := info.value? true | throwError "missing original proof"
  unless (info.type.getUsedConstants ++ body.getUsedConstants).contains `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct do throwError "original declaration lacks canonical dependency"
  logInfo "COCYCLE_ORIGINAL::cocycleProduct_eq_orderedProduct"
  let some info := env.find? `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_add | throwError "missing original theorem"
  let some body := info.value? true | throwError "missing original proof"
  unless (info.type.getUsedConstants ++ body.getUsedConstants).contains `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct do throwError "original declaration lacks canonical dependency"
  logInfo "COCYCLE_ORIGINAL::cocycleProduct_add"
  let some info := env.find? `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_gauge | throwError "missing original theorem"
  let some body := info.value? true | throwError "missing original proof"
  unless (info.type.getUsedConstants ++ body.getUsedConstants).contains `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct do throwError "original declaration lacks canonical dependency"
  logInfo "COCYCLE_ORIGINAL::cocycleProduct_gauge"
  let some info := env.find? `GRWTSK.LinearAlgebra.CocycleProduct.Checks.representation | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  Meta.checkWithKernel <| mkApp (mkLambda Name.anonymous BinderInfo.default info.type (mkBVar 0)) body
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_eq_orderedProduct do throwError "missing canonical fixture dependency"
  logInfo "COCYCLE_SYNTHETIC::representation"
  let some info := env.find? `GRWTSK.LinearAlgebra.CocycleProduct.Checks.addition | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  Meta.checkWithKernel <| mkApp (mkLambda Name.anonymous BinderInfo.default info.type (mkBVar 0)) body
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_add do throwError "missing canonical fixture dependency"
  logInfo "COCYCLE_SYNTHETIC::addition"
  let some info := env.find? `GRWTSK.LinearAlgebra.CocycleProduct.Checks.gauge | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  Meta.checkWithKernel <| mkApp (mkLambda Name.anonymous BinderInfo.default info.type (mkBVar 0)) body
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_gauge do throwError "missing canonical fixture dependency"
  logInfo "COCYCLE_SYNTHETIC::gauge"
#audit_cocycle_product
```
