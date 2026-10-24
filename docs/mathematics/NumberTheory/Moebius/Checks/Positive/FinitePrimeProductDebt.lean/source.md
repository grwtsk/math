# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.FinitePrimeProductDebt

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `142e0ed51965051bb5b4ed7d1a19e94dd0d3f067` · SHA-256 `33398316be0ddd1fa472376d4c3fcfe025234904cebbb33a48476520f27dc4ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FinitePrimeProductDebt
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.PrimeProductDebt

example (N : ℕ) (s : ℂ) :
    rawPrimeProduct N s =
      GRWTSK.RiemannHypothesis.CCC.pickupDirichletPrefix N s + unbornDebt N s :=
  rawPrimeProduct_eq_pickupPrefix_add_debt N s

example (N : ℕ) (hN : 2 ≤ N) :
    unbornDebt N 0 =
      -(GRWTSK.RiemannHypothesis.CCC.pickupMertensPrefix N : ℂ) :=
  unbornDebt_zero N hN

example {T : ℝ} (hT : 0 ≤ T) {z s : ℂ}
    (hs : s = z + 1 / 2) (hz : z ≠ 0) (hs0 : s ≠ 0) :
    GRWTSK.RiemannHypothesis.CCC.noteWindowLaplace
        GRWTSK.RiemannHypothesis.CCC.wholePickup z T =
      (rawPrimeProduct ⌊Real.exp T⌋₊ s -
        cutoffCorrection ⌊Real.exp T⌋₊ T z s) / (z * s) :=
  wholePickup_cutoff_laplace_prime_product hT hs hz hs0

elab "#audit_finite_prime_product_debt" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.FinitePrimeProductDebt
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty finite prime-product debt source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"FINITE_PRIME_PRODUCT_DEBT_COUNT::{declarations.length}"

#audit_finite_prime_product_debt
```
