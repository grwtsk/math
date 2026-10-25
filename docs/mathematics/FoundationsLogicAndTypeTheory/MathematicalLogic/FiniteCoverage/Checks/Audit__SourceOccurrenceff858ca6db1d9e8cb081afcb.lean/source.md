# Complete source: GRWTSK.Logic.FiniteCoverage.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67a6cd069b3fb1f60f8bbf38844f266708814bc4` · SHA-256 `176cc349d3f516c97ab2f1a718bed2539e9e173dcce6213ab8b3ce02ee7d7c04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteCoverage
import Lean
open GRWTSK.Logic.FiniteCoverage Lean Elab Command
namespace GRWTSK.Logic.FiniteCoverage.Checks
theorem coverage_consumer {α ι : Type*} (domain : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hcover : ∀ x ∈ domain, ∃ i ∈ indices, x ∈ cells i)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) : ∀ x ∈ domain, P x :=
  forall_on_of_finite_cover domain cells indices P hcover hlocal
theorem tail_consumer {α ι : Type*} (domain tail : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hcover : ∀ x ∈ domain, (∃ i ∈ indices, x ∈ cells i) ∨ x ∈ tail)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) (htail : ∀ x ∈ tail, P x) : ∀ x ∈ domain, P x :=
  forall_on_of_finite_cover_and_tail domain tail cells indices P hcover hlocal htail
theorem ray_counterexample_consumer (a b : ℝ) (hab : a ≤ b) :
  ∃ P : ℝ → Prop, (∀ x ∈ Set.Icc a b, P x) ∧ ¬ (∀ x ∈ Set.Ici a, P x) :=
  finite_range_does_not_imply_ray a b hab
theorem endpoint_counterexample_consumer :
  ∃ P : ℝ → Prop, P 0 ∧ P 1 ∧ ¬ (∀ x ∈ Set.Icc (0 : ℝ) 1, P x) := endpoints_do_not_cover_interval
end GRWTSK.Logic.FiniteCoverage.Checks
elab "#audit_finite_coverage" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.Logic.FiniteCoverage.endpoints_do_not_cover_interval,
      `GRWTSK.Logic.FiniteCoverage.finite_range_does_not_imply_ray,
      `GRWTSK.Logic.FiniteCoverage.finite_range_does_not_imply_ray._simp_1_1,
      `GRWTSK.Logic.FiniteCoverage.forall_on_of_finite_cover,
      `GRWTSK.Logic.FiniteCoverage.forall_on_of_finite_cover_and_tail] do
    let some info := env.find? n | throwError "missing finite coverage declaration"
    if info.isUnsafe then throwError "unsafe finite coverage declaration"
    let some proof := info.value? true | throwError "missing finite coverage proof"
    Meta.checkWithKernel proof
    unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "finite coverage proof type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved finite coverage axiom"
    logInfo m!"FINITE_COVERAGE_DECL::{n}"
  let n := `GRWTSK.Logic.FiniteCoverage.Checks.coverage_consumer
  let some info := env.find? n | throwError "missing synthetic wrapper"
  let some proof := info.value? true | throwError "missing synthetic wrapper proof"
  Meta.checkWithKernel proof
  unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "wrapper proof type mismatch"
  unless proof.getUsedConstants.contains `GRWTSK.Logic.FiniteCoverage.forall_on_of_finite_cover do throwError "wrapper missing canonical dependency"
  for ax in (← collectAxioms n) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved wrapper axiom"
  logInfo "FINITE_COVERAGE_SYNTHETIC_REUSE::coverage_consumer"
  let n := `GRWTSK.Logic.FiniteCoverage.Checks.tail_consumer
  let some info := env.find? n | throwError "missing synthetic wrapper"
  let some proof := info.value? true | throwError "missing synthetic wrapper proof"
  Meta.checkWithKernel proof
  unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "wrapper proof type mismatch"
  unless proof.getUsedConstants.contains `GRWTSK.Logic.FiniteCoverage.forall_on_of_finite_cover_and_tail do throwError "wrapper missing canonical dependency"
  for ax in (← collectAxioms n) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved wrapper axiom"
  logInfo "FINITE_COVERAGE_SYNTHETIC_REUSE::tail_consumer"
  let n := `GRWTSK.Logic.FiniteCoverage.Checks.ray_counterexample_consumer
  let some info := env.find? n | throwError "missing synthetic wrapper"
  let some proof := info.value? true | throwError "missing synthetic wrapper proof"
  Meta.checkWithKernel proof
  unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "wrapper proof type mismatch"
  unless proof.getUsedConstants.contains `GRWTSK.Logic.FiniteCoverage.finite_range_does_not_imply_ray do throwError "wrapper missing canonical dependency"
  for ax in (← collectAxioms n) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved wrapper axiom"
  logInfo "FINITE_COVERAGE_SYNTHETIC_REUSE::ray_counterexample_consumer"
  let n := `GRWTSK.Logic.FiniteCoverage.Checks.endpoint_counterexample_consumer
  let some info := env.find? n | throwError "missing synthetic wrapper"
  let some proof := info.value? true | throwError "missing synthetic wrapper proof"
  Meta.checkWithKernel proof
  unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "wrapper proof type mismatch"
  unless proof.getUsedConstants.contains `GRWTSK.Logic.FiniteCoverage.endpoints_do_not_cover_interval do throwError "wrapper missing canonical dependency"
  for ax in (← collectAxioms n) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved wrapper axiom"
  logInfo "FINITE_COVERAGE_SYNTHETIC_REUSE::endpoint_counterexample_consumer"
#audit_finite_coverage
```
