# Complete source: GRWTSK.Analysis.IntervalIntegral.Reflection.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98daa80e565c23f4f7e3b25263a983af2401748a` · SHA-256 `ce39011242fd7b98359baa1d6fed4ff2c122ac3eadb87c286dc21fe1bbe1f7fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.IntervalReflection
import Lean
open GRWTSK.Analysis.IntervalReflection MeasureTheory Lean Elab Command
namespace GRWTSK.Analysis.IntervalReflection.Checks
theorem endpoint_consumer (a b : ℝ) : Function.Involutive (intervalReflection a b) := interval_reflection_involutive a b
theorem signed_square_consumer (a b : ℝ) (f g : ℝ → ℝ)
    (hplus : IntervalIntegrable (fun t ↦ (f t + g t)^2) volume a b)
    (hminus : IntervalIntegrable (fun t ↦ (f t - g t)^2) volume a b) :
    (∫ t in a..b, f t * g t) = ((∫ t in a..b, (f t + g t)^2) - (∫ t in a..b, (f t - g t)^2))/4 :=
  integral_product_eq_signed_squares a b f g hplus hminus
end GRWTSK.Analysis.IntervalReflection.Checks
elab "#audit_interval_reflection" : command => liftTermElabM do
  let env ← getEnv
  let roots := #[`GRWTSK.Analysis.IntervalReflection.intervalReflection,
    `GRWTSK.Analysis.IntervalReflection.interval_reflection_involutive,
    `GRWTSK.Analysis.IntervalReflection.interval_reflection_mem_Icc_iff,
    `GRWTSK.Analysis.IntervalReflection.evenPart,
    `GRWTSK.Analysis.IntervalReflection.oddPart,
    `GRWTSK.Analysis.IntervalReflection.even_add_odd,
    `GRWTSK.Analysis.IntervalReflection.even_part_reflection,
    `GRWTSK.Analysis.IntervalReflection.odd_part_reflection,
    `GRWTSK.Analysis.IntervalReflection.integral_reflection,
    `GRWTSK.Analysis.IntervalReflection.integral_eq_zero_of_reflection_odd,
    `GRWTSK.Analysis.IntervalReflection.integral_even_mul_odd,
    `GRWTSK.Analysis.IntervalReflection.integral_odd_mul_even,
    `GRWTSK.Analysis.IntervalReflection.integral_product_eq_signed_squares,
    `GRWTSK.Analysis.IntervalReflection.integral_product_eq_even_add_odd]
  for n in roots do
    let some info := env.find? n | throwError "missing interval declaration"
    if info.isUnsafe then throwError "unsafe interval declaration"
    let some body := info.value? true | throwError "missing interval body"
    Meta.checkWithKernel body
    unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "interval body type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved interval axiom"
    logInfo m!"INTERVAL_DECL::{n}"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.interval_reflection_involutive | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.intervalReflection do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.interval_reflection_involutive"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.interval_reflection_mem_Icc_iff | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.intervalReflection do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.interval_reflection_mem_Icc_iff"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.even_add_odd | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.evenPart do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.intervalReflection do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.oddPart do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.even_add_odd"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.even_part_reflection | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.evenPart do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.intervalReflection do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.interval_reflection_involutive do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.even_part_reflection"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.odd_part_reflection | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.intervalReflection do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.interval_reflection_involutive do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.oddPart do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.odd_part_reflection"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.integral_reflection | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.intervalReflection do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.integral_reflection"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.integral_eq_zero_of_reflection_odd | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.integral_reflection do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.intervalReflection do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.integral_eq_zero_of_reflection_odd"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.integral_even_mul_odd | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.evenPart do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.even_part_reflection do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.integral_eq_zero_of_reflection_odd do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.intervalReflection do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.oddPart do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.odd_part_reflection do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.integral_even_mul_odd"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.integral_odd_mul_even | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.evenPart do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.integral_even_mul_odd do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.oddPart do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.integral_odd_mul_even"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.integral_product_eq_even_add_odd | throwError "missing original interval proof"
  let some proof := info.value? true | throwError "missing original interval body"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.evenPart do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.integral_even_mul_odd do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.integral_odd_mul_even do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.intervalReflection do throwError "missing original interval dependency"
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.oddPart do throwError "missing original interval dependency"
  logInfo "INTERVAL_ORIGINAL_REUSE::GRWTSK.Analysis.IntervalReflection.integral_product_eq_even_add_odd"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.Checks.endpoint_consumer | throwError "missing public wrapper"
  let some proof := info.value? true | throwError "missing public wrapper proof"
  Meta.checkWithKernel proof
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.interval_reflection_involutive do throwError "missing public canonical dependency"
  for ax in (← collectAxioms info.name) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved public wrapper axiom"
  logInfo "INTERVAL_SYNTHETIC_REUSE::endpoint_consumer"
  let some info := env.find? `GRWTSK.Analysis.IntervalReflection.Checks.signed_square_consumer | throwError "missing public wrapper"
  let some proof := info.value? true | throwError "missing public wrapper proof"
  Meta.checkWithKernel proof
  unless proof.getUsedConstants.contains `GRWTSK.Analysis.IntervalReflection.integral_product_eq_signed_squares do throwError "missing public canonical dependency"
  for ax in (← collectAxioms info.name) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved public wrapper axiom"
  logInfo "INTERVAL_SYNTHETIC_REUSE::signed_square_consumer"
#audit_interval_reflection
```
