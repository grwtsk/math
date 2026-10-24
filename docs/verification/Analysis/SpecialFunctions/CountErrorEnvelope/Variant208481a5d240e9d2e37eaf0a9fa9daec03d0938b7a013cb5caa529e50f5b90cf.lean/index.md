# Verification target: GRWTSK.Analysis.SpecialFunctions.CountErrorEnvelope.Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d2b395b7a75e3e6c9988b3360f08ab6b00cff1e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d2b395b7a75e3e6c9988b3360f08ab6b00cff1e`.

Source path: `GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_20261004.FiveModeZeroTailInputs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Monotone` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [loglog_tangent_upper](../../../../../mathematics/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/declarations/loglog-tangent-upper--f62bb8f88ee01ea8eace37e8.md) | 16 | `result-track:f62bb8f88ee01ea8eace37e8fb3a26cacfbed34acacabc84f24723c936efbe97` |
| 2 | `theorem` | [corrected_count_error_tangent_upper](../../../../../mathematics/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/declarations/corrected-count-error-tangent-upper--74e033abc051af5d32d2d393.md) | 31 | `result-track:74e033abc051af5d32d2d393dcaa18ff08c9e93540408d73d251b4a4d2fad2c5` |
| 3 | `theorem` | [corrected_count_upper_of_external](../../../../../mathematics/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/declarations/corrected-count-upper-of-external--b4c135c9b2221b02c48ac567.md) | 51 | `result-track:b4c135c9b2221b02c48ac567db2c17a4cca7d018b125e8f6386c9363cda2b348` |
| 4 | `theorem` | [corrected_count_endpoint_lower_of_external](../../../../../mathematics/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/declarations/corrected-count-endpoint-lower-of-external--049e6ae34f0cb5c841b55d0d.md) | 60 | `result-track:049e6ae34f0cb5c841b55d0d74161e49bf0d21c5f4fd889bd8dec3821a720b89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
