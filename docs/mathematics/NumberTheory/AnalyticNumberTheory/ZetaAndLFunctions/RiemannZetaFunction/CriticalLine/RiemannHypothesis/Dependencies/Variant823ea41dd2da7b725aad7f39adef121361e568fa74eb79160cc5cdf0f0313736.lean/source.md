# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Dependencies.Variant823ea41dd2da7b725aad7f39adef121361e568fa74eb79160cc5cdf0f0313736

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `897605cb44245a0c4db398b90afb0eeeaa012245` · SHA-256 `823ea41dd2da7b725aad7f39adef121361e568fa74eb79160cc5cdf0f0313736`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceOperatorObservable
import Lean.Util.FoldConsts

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.quadratic,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.pullback,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.quadratic_pullback,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.pullback_comp,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.signedDefect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.quadratic_signedDefect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.signedDefect_comp,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.quadratic_add,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.passive_coordinates,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.SourceIndex,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.changedSourceReadout,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.sourceDefectReadout,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.source_readout_eq_operator,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.changedSourceReadout_eq_operator_add_defect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.changedSourceReadout_eq_twice_residual_add_defect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.twice_residual_eq_changedSourceReadout_sub_defect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.sourceDefectReadout_comp,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.changedSourceReadout_eq_of_defect_zero,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.passive_source_readout,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.passive_source_readout_eq_twice_residual]
  for name in names do
    let some info := env.find? name | throwError "missing declaration {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    let record := Json.mkObj [("declaration", toJson name.toString),
      ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)),
      ("proof_or_definition_constants", toJson (body.map Name.toString))]
    logInfo m!"{record.compress}"
```
