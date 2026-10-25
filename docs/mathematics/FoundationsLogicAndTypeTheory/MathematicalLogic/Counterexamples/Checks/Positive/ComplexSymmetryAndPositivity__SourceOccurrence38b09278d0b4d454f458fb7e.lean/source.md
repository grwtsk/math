# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counterexamples.Checks.Positive.ComplexSymmetryAndPositivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0da3dd7304b071d891dcf1f4b7daad931e4d4ab1` · SHA-256 `a93f8891af85ef45c4332506bf49a5e10823fae381b9ef25e26e6c6df12d3fdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions
import GRWTSK.Analysis.ComplexAnalysis.ReflectionCounterexamples
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.HermitianCounterexamples
import Lean
open Lean Elab Command GRWTSK.RiemannHypothesis
namespace GRWTSK.RiemannHypothesis.Checks
theorem use_trivial_zero_is_excluded : riemannZeta (-2) = 0 ∧ ¬ NontrivialZetaZero (-2) := GRWTSK.RiemannHypothesis.trivial_zero_is_excluded
theorem use_pole_is_excluded : ¬ NontrivialZetaZero 1 := GRWTSK.RiemannHypothesis.pole_is_excluded
theorem use_critical_reflection_is_not_gaussian_rotation : criticalReflection (criticalReflection 1) = 1 ∧ Complex.I * (Complex.I * 1) ≠ (1 : ℂ) := GRWTSK.RiemannHypothesis.critical_reflection_is_not_gaussian_rotation
theorem use_hermitian_does_not_imply_positive_semidefinite : (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).IsHermitian ∧ ¬ (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).PosSemidef := GRWTSK.RiemannHypothesis.hermitian_does_not_imply_positive_semidefinite
end GRWTSK.RiemannHypothesis.Checks
elab "#audit_rh_guards" : command => liftTermElabM do
  for owner in #[`GRWTSK.RiemannHypothesis.NontrivialZetaZero, `GRWTSK.RiemannHypothesis.rhDefect] do
    let _ ← Meta.getEqnsFor? owner
  let env ← getEnv
  for n in #[`GRWTSK.RiemannHypothesis.NontrivialZetaZero,
      `GRWTSK.RiemannHypothesis.NontrivialZetaZero._proof_1,
      `GRWTSK.RiemannHypothesis.NontrivialZetaZero.conjugate,
      `GRWTSK.RiemannHypothesis.NontrivialZetaZero.critical_reflection,
      `GRWTSK.RiemannHypothesis.NontrivialZetaZero.eq_1,
      `GRWTSK.RiemannHypothesis.NontrivialZetaZero.gamma_real_ne_zero,
      `GRWTSK.RiemannHypothesis.NontrivialZetaZero.mem_critical_strip,
      `GRWTSK.RiemannHypothesis.NontrivialZetaZero.ne_zero,
      `GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect,
      `GRWTSK.RiemannHypothesis.criticalReflection,
      `GRWTSK.RiemannHypothesis.criticalReflection.eq_1,
      `GRWTSK.RiemannHypothesis.critical_reflection_eq_composite,
      `GRWTSK.RiemannHypothesis.critical_reflection_involutive,
      `GRWTSK.RiemannHypothesis.critical_reflection_is_not_gaussian_rotation,
      `GRWTSK.RiemannHypothesis.hermitian_does_not_imply_positive_semidefinite,
      `GRWTSK.RiemannHypothesis.nontrivial_zero_conjugate_iff,
      `GRWTSK.RiemannHypothesis.nontrivial_zero_conjugate_iff._simp_1,
      `GRWTSK.RiemannHypothesis.nontrivial_zero_critical_reflection_iff,
      `GRWTSK.RiemannHypothesis.nontrivial_zero_critical_reflection_iff._simp_1,
      `GRWTSK.RiemannHypothesis.nontrivial_zero_reflect_iff,
      `GRWTSK.RiemannHypothesis.nontrivial_zero_reflect_iff._simp_1,
      `GRWTSK.RiemannHypothesis.pole_is_excluded,
      `GRWTSK.RiemannHypothesis.rhDefect,
      `GRWTSK.RiemannHypothesis.rhDefect.eq_1,
      `GRWTSK.RiemannHypothesis.trivial_zero_is_excluded,
      `GRWTSK.RiemannHypothesis.zeroConjugate,
      `GRWTSK.RiemannHypothesis.zeroConjugate.eq_1,
      `GRWTSK.RiemannHypothesis.zeroReflect,
      `GRWTSK.RiemannHypothesis.zeroReflect.eq_1,
      `GRWTSK.RiemannHypothesis.zero_conjugate_involutive,
      `GRWTSK.RiemannHypothesis.zero_conjugate_reflect_commute,
      `GRWTSK.RiemannHypothesis.zero_reflect_involutive] do
    let some info := env.find? n | throwError "missing guard or dependency"
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial declaration"
    let some proof := info.value? true | throwError "missing declaration body"
    Meta.checkWithKernel proof
    unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do throwError "declaration body/type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unexpected axiom"
    logInfo m!"RH_GUARD_CONTRACT::{n}"
  let some info := env.find? `GRWTSK.RiemannHypothesis.trivial_zero_is_excluded | throwError "missing original guard role"
  let some proof := info.value? true | throwError "missing guard proof"
  unless proof.getUsedConstants.contains `GRWTSK.RiemannHypothesis.NontrivialZetaZero do throwError "missing canonical guard dependency"
  logInfo "RH_GUARD_ORIGINAL_USE::trivial_zero_is_excluded"
  let some info := env.find? `GRWTSK.RiemannHypothesis.pole_is_excluded | throwError "missing original guard role"
  let some proof := info.value? true | throwError "missing guard proof"
  unless proof.getUsedConstants.contains `GRWTSK.RiemannHypothesis.NontrivialZetaZero do throwError "missing canonical guard dependency"
  logInfo "RH_GUARD_ORIGINAL_USE::pole_is_excluded"
  let some info := env.find? `GRWTSK.RiemannHypothesis.critical_reflection_is_not_gaussian_rotation | throwError "missing original guard role"
  let some proof := info.value? true | throwError "missing guard proof"
  unless proof.getUsedConstants.contains `GRWTSK.RiemannHypothesis.critical_reflection_involutive do throwError "missing canonical guard dependency"
  logInfo "RH_GUARD_ORIGINAL_USE::critical_reflection_is_not_gaussian_rotation"
  let some info := env.find? `GRWTSK.RiemannHypothesis.Checks.use_trivial_zero_is_excluded | throwError "missing wrapper"
  let some proof := info.value? true | throwError "missing wrapper proof"
  Meta.checkWithKernel proof
  unless proof.getUsedConstants.contains `GRWTSK.RiemannHypothesis.trivial_zero_is_excluded do throwError "wrapper lacks canonical dependency"
  logInfo "RH_GUARD_SYNTHETIC_USE::trivial_zero_is_excluded"
  let some info := env.find? `GRWTSK.RiemannHypothesis.Checks.use_pole_is_excluded | throwError "missing wrapper"
  let some proof := info.value? true | throwError "missing wrapper proof"
  Meta.checkWithKernel proof
  unless proof.getUsedConstants.contains `GRWTSK.RiemannHypothesis.pole_is_excluded do throwError "wrapper lacks canonical dependency"
  logInfo "RH_GUARD_SYNTHETIC_USE::pole_is_excluded"
  let some info := env.find? `GRWTSK.RiemannHypothesis.Checks.use_critical_reflection_is_not_gaussian_rotation | throwError "missing wrapper"
  let some proof := info.value? true | throwError "missing wrapper proof"
  Meta.checkWithKernel proof
  unless proof.getUsedConstants.contains `GRWTSK.RiemannHypothesis.critical_reflection_is_not_gaussian_rotation do throwError "wrapper lacks canonical dependency"
  logInfo "RH_GUARD_SYNTHETIC_USE::critical_reflection_is_not_gaussian_rotation"
  let some info := env.find? `GRWTSK.RiemannHypothesis.Checks.use_hermitian_does_not_imply_positive_semidefinite | throwError "missing wrapper"
  let some proof := info.value? true | throwError "missing wrapper proof"
  Meta.checkWithKernel proof
  unless proof.getUsedConstants.contains `GRWTSK.RiemannHypothesis.hermitian_does_not_imply_positive_semidefinite do throwError "wrapper lacks canonical dependency"
  logInfo "RH_GUARD_SYNTHETIC_USE::hermitian_does_not_imply_positive_semidefinite"
#audit_rh_guards
```
