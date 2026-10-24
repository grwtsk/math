# Verification target: GRWTSK.Topology.GeneralTopology.Interval.Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a09d1dd585ec5f0f6df3b3e72296507ac0a88bbb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a09d1dd585ec5f0f6df3b3e72296507ac0a88bbb`.

Source path: `GRWTSK/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ProjIcc` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IccInclusionLeft](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/iccinclusionleft--9e130619f4eaf4165b846802.md) | 24 | `declaration-track:9e130619f4eaf4165b8468024e3b03ee57095ec3b5454d11a041e947c27e6f21` |
| 2 | `def` | [IccInclusionRight](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/iccinclusionright--f49ca34957d8ed1f6f833453.md) | 28 | `declaration-track:f49ca34957d8ed1f6f83345397315e7e367e28ce50de7fd83a42616f03d5d934` |
| 3 | `def` | [projIccCM](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/projicccm--299af264ae84aceb834cd8d4.md) | 32 | `declaration-track:299af264ae84aceb834cd8d4afde2583053d720186404615df330ad66344222c` |
| 4 | `def` | [IccExtendCM](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/iccextendcm--61f0398d53b1852aed6c874d.md) | 37 | `declaration-track:61f0398d53b1852aed6c874d11e125aea6a5f7454e9cb2969ae28af35efe126d` |
| 5 | `theorem` | [IccExtendCM_of_mem](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/iccextendcm-of-mem--eac008faa5ba5c5815a08523.md) | 42 | `result-track:eac008faa5ba5c5815a08523ed99f934d331cbed3ffae93f29d4c597faa622c2` |
| 6 | `def` | [concat](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/concat--893f404dfa2d5894cf555bc0.md) | 49 | `declaration-track:893f404dfa2d5894cf555bc027587901c9cf7cdbd6a1d3969ebeecea29b42e04` |
| 7 | `theorem` | [concat_comp_IccInclusionLeft](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/concat-comp-iccinclusionleft--3eb7767a65c92decc729c04b.md) | 61 | `result-track:3eb7767a65c92decc729c04b364e168124433a7ac1e707ec327a6e70b5d404e6` |
| 8 | `theorem` | [concat_comp_IccInclusionRight](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/concat-comp-iccinclusionright--0eae618589966a35d17b691d.md) | 66 | `result-track:0eae618589966a35d17b691de763883ad1c18646fd6c7ceac0242438d938f963` |
| 9 | `theorem` | [concat_left](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/concat-left--3609562b9cbb47c4bc5716ca.md) | 75 | `result-track:3609562b9cbb47c4bc5716cab26e23546a34e8f374b9ec979c74c200654c436f` |
| 10 | `theorem` | [concat_right](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/concat-right--211e869e37c9db9f5f0fa175.md) | 81 | `result-track:211e869e37c9db9f5f0fa1757e1e88c0962fb697a75396d081d3d3730913fa6e` |
| 11 | `theorem` | [tendsto_concat](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/tendsto-concat--56c9fb49b088126e92bd1835.md) | 86 | `result-track:56c9fb49b088126e92bd18354742a42e11376737dfefbc19a512de4897a076f3` |
| 12 | `def` | [concatCM](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/concatcm--8e5fcda4283c78e37d9738c5.md) | 121 | `declaration-track:8e5fcda4283c78e37d9738c58a36b014b0a58567d8dbdd0350d7c7d8bf59e0e9` |
| 13 | `theorem` | [concatCM_left](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/concatcm-left--e7d3a27b1c956ac623e09255.md) | 134 | `result-track:e7d3a27b1c956ac623e09255b1c2339f3fc1138348017ac0ea92a520b0937047` |
| 14 | `theorem` | [concatCM_right](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/declarations/concatcm-right--9e64fe77dbd3618fd5fb85bb.md) | 140 | `result-track:9e64fe77dbd3618fd5fb85bb5f919633d329cdb48e1aae91e71dc626939754a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
