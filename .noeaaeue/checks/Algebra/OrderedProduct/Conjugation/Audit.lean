import GRWTSK.Algebra.OrderedProductGauge
import Lean

open GRWTSK.Algebra GRWTSK.Algebra.OrderedProductGauge Lean Elab Command

namespace GRWTSK.Algebra.OrderedProductGauge.Checks

theorem generic_site_consumer {G : Type u} {V : Type v} [Group G]
    (A : ℕ → G) (p : ℕ → V) (H : V → G) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (siteGauge A p H) n k =
      H (p n) * orderedProduct A n k * (H (p n))⁻¹ :=
  site_loop_gauge A p H n k hp

theorem generic_chart_consumer {G : Type u} {V : Type v} [Group G]
    (p : ℕ → V) (H : V → G) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (chartEdges (H ∘ p)) n k = 1 := chart_loop_identity p H n k hp

example {G : Type u} [Monoid G] (n k : ℕ) :
    orderedProduct (fun _ => (1 : G)) n k = 1 := orderedProduct_identity n k

end GRWTSK.Algebra.OrderedProductGauge.Checks

elab "#audit_ordered_product_gauge" : command => liftTermElabM do
  let env ← getEnv
  let roots := #[`GRWTSK.Algebra.OrderedProductGauge.conjugation_preserves_order,
    `GRWTSK.Algebra.OrderedProductGauge.inversion_reverses_order,
    `GRWTSK.Algebra.OrderedProductGauge.forwardGauge,
    `GRWTSK.Algebra.OrderedProductGauge.orderedProduct_forwardGauge,
    `GRWTSK.Algebra.OrderedProductGauge.siteGauge,
    `GRWTSK.Algebra.OrderedProductGauge.site_loop_gauge,
    `GRWTSK.Algebra.OrderedProductGauge.orderedProduct_identity,
    `GRWTSK.Algebra.OrderedProductGauge.chartEdges,
    `GRWTSK.Algebra.OrderedProductGauge.orderedProduct_chartEdges,
    `GRWTSK.Algebra.OrderedProductGauge.chart_loop_identity]
  let companions := #[`GRWTSK.Algebra.OrderedProductGauge.forwardGauge.eq_1,
    `GRWTSK.Algebra.OrderedProductGauge.siteGauge.eq_1,
    `GRWTSK.Algebra.OrderedProductGauge.chartEdges.eq_1]
  for n in roots ++ companions do
    let some info := env.find? n | throwError "missing gauge declaration: {n}"
    if info.isUnsafe then throwError "unsafe gauge declaration"
    match info with
    | .axiomInfo _ => throwError "undeclared gauge axiom"
    | _ => pure ()
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved gauge axiom: {ax}"
    logInfo m!"ORDERED_GAUGE_DECL::{n}"
  for parent in #[`GRWTSK.Algebra.OrderedProductGauge.forwardGauge,
      `GRWTSK.Algebra.OrderedProductGauge.siteGauge,
      `GRWTSK.Algebra.OrderedProductGauge.chartEdges] do
    let some equations ← Meta.getEqnsFor? parent | throwError "missing gauge equations"
    unless equations.size == 1 do throwError "unexpected gauge equation family"
    for n in equations do
      unless companions.contains n do throwError "unmapped gauge equation"
      let some info := env.find? n | throwError "gauge equation not originally stored"
      let some proof := info.value? true | throwError "missing gauge equation proof"
      Meta.checkWithKernel proof
      unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do
        throwError "gauge equation type mismatch"
      logInfo m!"ORDERED_GAUGE_EQUATION::{n}"
  for (consumer,target) in
      #[(`GRWTSK.Algebra.OrderedProductGauge.orderedProduct_forwardGauge,
         `GRWTSK.Algebra.orderedProduct_gaugeTransfer),
        (`GRWTSK.Algebra.OrderedProductGauge.orderedProduct_forwardGauge,
         `GRWTSK.Algebra.gaugeTransfer),
        (`GRWTSK.Algebra.OrderedProductGauge.site_loop_gauge,
         `GRWTSK.Algebra.OrderedProductGauge.orderedProduct_forwardGauge),
        (`GRWTSK.Algebra.OrderedProductGauge.orderedProduct_chartEdges,
         `GRWTSK.Algebra.OrderedProductGauge.orderedProduct_forwardGauge),
        (`GRWTSK.Algebra.OrderedProductGauge.orderedProduct_chartEdges,
         `GRWTSK.Algebra.OrderedProductGauge.orderedProduct_identity),
        (`GRWTSK.Algebra.OrderedProductGauge.chart_loop_identity,
         `GRWTSK.Algebra.OrderedProductGauge.orderedProduct_chartEdges)] do
    let some info := env.find? consumer | throwError "missing original gauge consumer"
    let some proof := info.value? true | throwError "missing original gauge proof"
    unless proof.getUsedConstants.contains target do
      throwError "missing canonical gauge proof dependency: {consumer}, {target}"
    logInfo m!"ORDERED_GAUGE_ORIGINAL_REUSE::{consumer}::{target}"
  for (consumer,target) in
      #[(`GRWTSK.Algebra.OrderedProductGauge.Checks.generic_site_consumer,
         `GRWTSK.Algebra.OrderedProductGauge.site_loop_gauge),
        (`GRWTSK.Algebra.OrderedProductGauge.Checks.generic_chart_consumer,
         `GRWTSK.Algebra.OrderedProductGauge.chart_loop_identity)] do
    let some info := env.find? consumer | throwError "missing synthetic gauge consumer"
    let some proof := info.value? true | throwError "missing synthetic gauge proof"
    unless proof.getUsedConstants.contains target do throwError "missing synthetic canonical dependency"
    for ax in (← collectAxioms consumer) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved synthetic gauge consumer axiom"
    logInfo m!"ORDERED_GAUGE_SYNTHETIC_REUSE::{consumer}::{target}"

#audit_ordered_product_gauge
