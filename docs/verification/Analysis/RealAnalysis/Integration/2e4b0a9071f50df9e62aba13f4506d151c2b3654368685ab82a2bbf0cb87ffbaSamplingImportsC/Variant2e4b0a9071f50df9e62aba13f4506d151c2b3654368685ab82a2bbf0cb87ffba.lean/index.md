# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC.Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c15a127c873f991653d137f6c13c88e6cc6f1e20",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c15a127c873f991653d137f6c13c88e6cc6f1e20`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/declarations/leftsamplesum--6c48d6a394ff64a5f1fbc8ec.md) | 29 | `declaration-track:6c48d6a394ff64a5f1fbc8ecb9b8a289742e89e19cbb78bbfbe618b921d08fdb` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/declarations/unit-sampling-error-identity--d7cca4a3b34adb6c5c5c65f5.md) | 33 | `result-track:d7cca4a3b34adb6c5c5c65f54ea09bb4ef1e241a4675e1f142660c906727b40e` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/declarations/abs-unit-sampling-error-le--29081b69c5dc8148121cfa13.md) | 72 | `result-track:29081b69c5dc8148121cfa13071d7c20b7277a10c0caf6c3aa2565f1aefc31e4` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/declarations/integral-eq-sum-unit-intervals--911f2214c9e0ea3ecb753e1e.md) | 101 | `result-track:911f2214c9e0ea3ecb753e1eac355d0517eb609f03a1e6745a3ed2c76cf6db67` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/declarations/abs-leftsamplesum-sub-integral-le--5e84352b86af62402ae26de5.md) | 131 | `result-track:5e84352b86af62402ae26de5ce749207f7266d8d6712dd4718de5cef7540184b` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/declarations/finitesamplingcheckpoint--b3b975fbd6d508b1a6acd47b.md) | 166 | `declaration-track:b3b975fbd6d508b1a6acd47ba08c1a7d6bddc2bb1e09b960a7e545dff514931f` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/declarations/finite-sampling-checkpoint--3eb35f23a531b19246c139af.md) | 174 | `result-track:3eb35f23a531b19246c139afd5ef11266f75a3b1cda705a588e04a206183d5a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
