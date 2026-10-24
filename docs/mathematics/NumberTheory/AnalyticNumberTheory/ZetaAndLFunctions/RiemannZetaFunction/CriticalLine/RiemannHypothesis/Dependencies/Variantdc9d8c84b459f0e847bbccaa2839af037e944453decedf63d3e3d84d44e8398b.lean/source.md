# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Dependencies.Variantdc9d8c84b459f0e847bbccaa2839af037e944453decedf63d3e3d84d44e8398b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6206f71912623356169ab77a6749dac4f67fcd8` · SHA-256 `dc9d8c84b459f0e847bbccaa2839af037e944453decedf63d3e3d84d44e8398b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceJointMangoldtBaseline
import JointMangoldtBaselineScopeFixtures
import Lean.Util.FoldConsts

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[
    ``FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.jointMangoldtTestProfile_integrable_and_integral_zero,
    ``FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.jointMangoldtTestProfile_zero_of_log_cutoff_le,
    ``FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.jointMangoldtTestProfile_window_eq_neg_lower_tail,
    ``FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.strictColumnInterior_eq_neg_lower_tail_and_joint_work,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_test_integrable,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_whole_line_moment_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_upper_endpoint_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_entire_upper_tail_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_finite_baseline_retains_lower_tail,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_compensations_retained_once,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.empty_strict_inventory_test_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.lower_Iic_endpoint_included,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.upper_Ioi_endpoint_excluded,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.zero_total_does_not_force_zero_half,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.endpoint_zero_alone_not_tail_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.unit_k_not_strict_product_growth,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.lower_tail_and_error_boundary_have_distinct_copies,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.upper_bound_does_not_bound_absolute]
  for name in names do
    let some info := env.find? name | throwError "missing declaration {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    logInfo m!"{(Json.mkObj [("declaration", toJson name.toString), ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)), ("proof_or_definition_constants", toJson (body.map Name.toString))]).compress}"
```
