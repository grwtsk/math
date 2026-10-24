import GRWTSK.NumberTheory.Zeta.Riemann
import Lean

open Lean Elab Command

-- Exact terminal target and exact consumer domain, independent of proof progress.
example (s : ℂ) : GRWTSK.RiemannHypothesis.NontrivialZetaZero s ↔
    (riemannZeta s = 0 ∧ (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1) := Iff.rfl
example (s : ℂ) : GRWTSK.RiemannHypothesis.rhDefect s =
    Complex.normSq (s - (1 - star s)) := rfl
example : GRWTSK.RiemannHypothesis.Target.Statement = _root_.RiemannHypothesis := rfl
example : _root_.RiemannHypothesis ↔
    ∀ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero s →
      GRWTSK.RiemannHypothesis.rhDefect s = 0 :=
  GRWTSK.RiemannHypothesis.riemann_hypothesis_iff_defect_zero
example : riemannZeta (0 : ℂ) ≠ 0 := by rw [riemannZeta_zero]; norm_num
example : ¬ (∀ s, GRWTSK.RiemannHypothesis.rhDefect s = 0) :=
  GRWTSK.RiemannHypothesis.defect_nonnegative_does_not_force_universal_vanishing.2

elab "#audit_rh_target" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let selectedOwners : Array Name := #[
    `GRWTSK.NumberTheory.Zeta.Riemann,
    `GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis,
    `GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions,
    `GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect,
    `GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry,
    `GRWTSK.NumberTheory.Zeta.Riemann.DefectCriterion,
    `GRWTSK.Analysis.ComplexAnalysis.CriticalReflection,
    `GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions
  ]
  for owner in selectedOwners do
    unless moduleNames.contains owner do
      throwError "missing declared RH owner: {owner}"
  let guardOwner := `GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions
  unless selectedOwners.contains guardOwner do
    throwError "required zero-exclusion owner is not selected"
  for name in #[`GRWTSK.RiemannHypothesis.trivial_zero_is_excluded,
                `GRWTSK.RiemannHypothesis.pole_is_excluded] do
    let some _ := env.find? name | throwError "missing exact zero-exclusion guard: {name}"
    let some index := env.getModuleIdxFor? name | throwError "missing guard ownership: {name}"
    unless moduleNames[index]! == guardOwner do
      throwError "zero-exclusion guard owner mismatch: {name}"
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if selectedOwners.contains owner then
        data.constants.toList.map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty RH declaration family"
  for (n, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {n}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {n}"
    | _ => pure ()
    let axioms ← collectAxioms n
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {n}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | .opaqueInfo _ => "opaque"
      | .ctorInfo _ => "constructor"
      | .recInfo _ => "recursor"
      | .inductInfo _ => "inductive"
      | _ => "other"
    let owner := moduleNames[(env.getModuleIdxFor? n).get!]!
    let entry := Json.mkObj [
      ("module", toJson owner.toString),
      ("name", toJson n.toString),
      ("kind", toJson kind),
      ("type", toJson type.pretty),
      ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"RH_DECL::{entry.compress}"
  logInfo m!"RH_COUNT::{declarations.length}"

#audit_rh_target
