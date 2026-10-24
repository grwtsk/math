import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage
import Lean
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage Lean Elab Command
namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks
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
end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks
elab "#audit_finite_coverage" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.endpoints_do_not_cover_interval,
      `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.finite_range_does_not_imply_ray,
      `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.finite_range_does_not_imply_ray._simp_1_1,
      `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.forall_on_of_finite_cover,
      `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.forall_on_of_finite_cover_and_tail] do
    let some info := env.find? n | throwError "missing finite coverage declaration"
    if info.isUnsafe then throwError "unsafe finite coverage declaration"
    let some proof := info.value? true | throwError "missing finite coverage proof"
    Meta.checkWithKernel proof
    unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "finite coverage proof type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved finite coverage axiom"
    logInfo m!"FINITE_COVERAGE_DECL::{n}"
  let n := `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks.coverage_consumer
  let some info := env.find? n | throwError "missing synthetic wrapper"
  let some proof := info.value? true | throwError "missing synthetic wrapper proof"
  Meta.checkWithKernel proof
  unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "wrapper proof type mismatch"
  unless proof.getUsedConstants.contains `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.forall_on_of_finite_cover do throwError "wrapper missing canonical dependency"
  for ax in (← collectAxioms n) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved wrapper axiom"
  logInfo "FINITE_COVERAGE_SYNTHETIC_REUSE::coverage_consumer"
  let n := `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks.tail_consumer
  let some info := env.find? n | throwError "missing synthetic wrapper"
  let some proof := info.value? true | throwError "missing synthetic wrapper proof"
  Meta.checkWithKernel proof
  unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "wrapper proof type mismatch"
  unless proof.getUsedConstants.contains `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.forall_on_of_finite_cover_and_tail do throwError "wrapper missing canonical dependency"
  for ax in (← collectAxioms n) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved wrapper axiom"
  logInfo "FINITE_COVERAGE_SYNTHETIC_REUSE::tail_consumer"
  let n := `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks.ray_counterexample_consumer
  let some info := env.find? n | throwError "missing synthetic wrapper"
  let some proof := info.value? true | throwError "missing synthetic wrapper proof"
  Meta.checkWithKernel proof
  unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "wrapper proof type mismatch"
  unless proof.getUsedConstants.contains `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.finite_range_does_not_imply_ray do throwError "wrapper missing canonical dependency"
  for ax in (← collectAxioms n) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved wrapper axiom"
  logInfo "FINITE_COVERAGE_SYNTHETIC_REUSE::ray_counterexample_consumer"
  let n := `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks.endpoint_counterexample_consumer
  let some info := env.find? n | throwError "missing synthetic wrapper"
  let some proof := info.value? true | throwError "missing synthetic wrapper proof"
  Meta.checkWithKernel proof
  unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "wrapper proof type mismatch"
  unless proof.getUsedConstants.contains `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.endpoints_do_not_cover_interval do throwError "wrapper missing canonical dependency"
  for ax in (← collectAxioms n) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unapproved wrapper axiom"
  logInfo "FINITE_COVERAGE_SYNTHETIC_REUSE::endpoint_counterexample_consumer"
#audit_finite_coverage
