import SourceJointCountertermLowerTail
import Lean.Util.FoldConsts

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[``FormalResearch.RiemannHypothesis.SourceJointCountertermAlignment.divisor_remainders_eq_joint_work_after_mean_cancellation,
    ``FormalResearch.RiemannHypothesis.SourceJointCountertermLowerTail.divisor_remainders_eq_lower_tail_joint_work_after_mean_cancellation,
    ``FormalResearch.RiemannHypothesis.SourceDivisorCounterterms.independentMainTerm_eq_baseline_add_divisors,
    ``FormalResearch.RiemannHypothesis.SourceDivisorCounterterms.jointSignedRemainder_eq_divisor_remainders,
    ``FormalResearch.RiemannHypothesis.SourceDivisorCounterterms.jointSignedRemainder_eq_covariance]
  for name in names do
    let some info := env.find? name | throwError "missing source dependency {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    logInfo m!"{(Json.mkObj [("declaration", toJson name.toString), ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)), ("proof_or_definition_constants", toJson (body.map Name.toString))]).compress}"
