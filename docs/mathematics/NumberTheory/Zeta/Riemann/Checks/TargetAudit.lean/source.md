# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.TargetAudit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bacf70f97d1afcb4a95970875d8faa4ad3f60c32` · SHA-256 `cccfd2c00678a24a77cb90f240b84b4e2585f926e2b75d757aeab209a6006f7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if (`GRWTSK.RiemannHypothesis).isPrefixOf owner then
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
```
