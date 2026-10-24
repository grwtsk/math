# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SpecificAsymptotics.Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70a7ae1c0176c04043e5ee4fb17c1e324afd01b8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70a7ae1c0176c04043e5ee4fb17c1e324afd01b8`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Asymptotics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.IsBoundedUnder.isLittleO_sub_self_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/filter-isboundedunder-islittleo-sub-self-inv--ec06d69dbec0b7f17c46df63.md) | 35 | `result-track:ec06d69dbec0b7f17c46df6303e8748ea1b7f273f32ec842ade9d290e95e0154` |
| 2 | `theorem` | [pow_div_pow_eventuallyEq_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/pow-div-pow-eventuallyeq-attop--b276c6a630f8bca145a0c931.md) | 49 | `result-track:b276c6a630f8bca145a0c931bccabeab1babf0edfabb1f2ad1a3931d0a305a37` |
| 3 | `theorem` | [pow_div_pow_eventuallyEq_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/pow-div-pow-eventuallyeq-atbot--e5c4ebe54c3561ebadb5b918.md) | 56 | `result-track:e5c4ebe54c3561ebadb5b918a4e52fadefd299339290cd1f1928e461cffb2c2b` |
| 4 | `theorem` | [tendsto_zpow_atTop_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/tendsto-zpow-attop-attop--1082739687ccedd75644d1e0.md) | 63 | `result-track:1082739687ccedd75644d1e012e870799dcbb4623a63ad2e2c388a4b33be9956` |
| 5 | `theorem` | [tendsto_pow_div_pow_atTop_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/tendsto-pow-div-pow-attop-attop--b9b9330c65f543397c3093d2.md) | 70 | `result-track:b9b9330c65f543397c3093d205c3b672aec0e7c01a39c131e497ae688380ba10` |
| 6 | `theorem` | [tendsto_pow_div_pow_atTop_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/tendsto-pow-div-pow-attop-zero--cd90f1193bbf9d4f9b48a636.md) | 77 | `result-track:cd90f1193bbf9d4f9b48a636169801e4db3f0870cdac14908f1dcf120ddd3dbb` |
| 7 | `theorem` | [Asymptotics.isLittleO_pow_pow_atTop_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/asymptotics-islittleo-pow-pow-attop-of-lt--bdca226554995924258e5dd2.md) | 90 | `result-track:bdca226554995924258e5dd21dca2021736a086c5a617a0e226047e8635c8c7e` |
| 8 | `theorem` | [Asymptotics.IsBigO.trans_tendsto_norm_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/asymptotics-isbigo-trans-tendsto-norm-attop--166bbbec31303802fbf7a22c.md) | 96 | `result-track:166bbbec31303802fbf7a22c0a3d17d89c12e0b3143402eca5721f6802432844` |
| 9 | `theorem` | [Asymptotics.IsLittleO.sum_range](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/asymptotics-islittleo-sum-range--184a680e4ad44ccb0a959743.md) | 114 | `result-track:184a680e4ad44ccb0a959743e1fb55136bf2b031141ccdcc428be647802ee91d` |
| 10 | `theorem` | [Asymptotics.isLittleO_sum_range_of_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/asymptotics-islittleo-sum-range-of-tendsto-zero--05f096d7782aefac1f606a43.md) | 147 | `result-track:05f096d7782aefac1f606a430d096a659aa2dc5cad60d7e7e802082abbc6c37b` |
| 11 | `theorem` | [Filter.Tendsto.cesaro_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/filter-tendsto-cesaro-smul--2dd4a622706f4637ef57b7a4.md) | 156 | `result-track:2dd4a622706f4637ef57b7a420acfbd110c7340663ad165d0a6c55a94e4154fa` |
| 12 | `theorem` | [Filter.Tendsto.cesaro](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant106d7bb93bed7b60ba71ecaff44ac61d11ddfd015c596485a39f3465fbf412f7.lean/declarations/filter-tendsto-cesaro--4dedcb130096c2d049a3ada4.md) | 172 | `result-track:4dedcb130096c2d049a3ada489a712e15b9696b07b758c04722c3d3fb3ea53fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
