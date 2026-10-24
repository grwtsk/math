# Verification target: GRWTSK.Topology.GeneralTopology.ActualInsideStripKernelUnbounded.Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddce26331a9fce1ea2ff9476d053c65e69e5682d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddce26331a9fce1ea2ff9476d053c65e69e5682d`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualInsideStripKernelNegativeSequence` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sequence_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean/declarations/sequence-tendsto--a84b214c1e1b96bd55fe5799.md) | 18 | `result-track:a84b214c1e1b96bd55fe5799db837d4e6face7f132dedcf28c52dd1d715525f8` |
| 2 | `theorem` | [sequence_scale_pos](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean/declarations/sequence-scale-pos--1d2409c8d1b84f103191d0b1.md) | 23 | `result-track:1d2409c8d1b84f103191d0b1bb783a3881fb82063eb4afcc18165d2208a82810` |
| 3 | `theorem` | [actualInsideStrip_sequence_scale_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean/declarations/actualinsidestrip-sequence-scale-tendsto-zero--f196ab7a0cf7211fec72a921.md) | 31 | `result-track:f196ab7a0cf7211fec72a921b14e8758ae695dccc0fc5ca03f9d040a7a9dc20a` |
| 4 | `theorem` | [actualInsideStripKernel_eventually_below](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean/declarations/actualinsidestripkernel-eventually-below--5bdc8e54bba608e40ca510fa.md) | 46 | `result-track:5bdc8e54bba608e40ca510fac64aa8d30c8f0c838c263ee44d898d3141d92a36` |
| 5 | `theorem` | [actualInsideStripKernel_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean/declarations/actualinsidestripkernel-tendsto-atbot--590723223c60fee88d131a82.md) | 69 | `result-track:590723223c60fee88d131a821e161a820d4370786c9de77d6673db236c37184f` |
| 6 | `theorem` | [actualInsideStripKernel_below_beyond](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean/declarations/actualinsidestripkernel-below-beyond--8310590201e036b7e7f61b82.md) | 77 | `result-track:8310590201e036b7e7f61b82b7d7699ca927b5cc85f1baea2161086c44b2da12` |
| 7 | `theorem` | [actualInsideStripKernel_no_eventual_lower_bound](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant83b6a51c16012b9c54b8e7b613bba5abba026b9f94ebac245867f2ab184afa7b.lean/declarations/actualinsidestripkernel-no-eventual-lower-bound--9ed3e7d03cad37f4862e8381.md) | 87 | `result-track:9ed3e7d03cad37f4862e8381ca757abf6e5f66bcde47bc6c9ede6371299dfe30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
