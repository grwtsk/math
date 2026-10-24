# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Dependencies.Variantee72de0f25f3eb7717beb375208f0de013799b78fb21bbf930b0a2369beadf4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bf73f46cd2492b5b2135b2d8a3cd587780f7b1b` · SHA-256 `ee72de0f25f3eb7717beb375208f0de013799b78fb21bbf930b0a2369beadf4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
