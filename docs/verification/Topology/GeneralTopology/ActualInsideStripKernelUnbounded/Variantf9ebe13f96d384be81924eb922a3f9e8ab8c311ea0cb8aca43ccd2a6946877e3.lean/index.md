# Verification target: GRWTSK.Topology.GeneralTopology.ActualInsideStripKernelUnbounded.Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8f8a34a66e79ef0957a053118217b6ab2280c10",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8f8a34a66e79ef0957a053118217b6ab2280c10`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualInsideStripKernelNegativeSequence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sequence_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean/declarations/sequence-tendsto--49b38c91a9dfc0190c23055d.md) | 26 | `result-track:49b38c91a9dfc0190c23055de15cb8d97bd45431425d8182e3fbf146dee850be` |
| 2 | `theorem` | [sequence_scale_pos](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean/declarations/sequence-scale-pos--9dec217d501876243433900c.md) | 31 | `result-track:9dec217d501876243433900ccf0e68772238373cc0f1883b90ee9196ad9f0038` |
| 3 | `theorem` | [actualInsideStrip_sequence_scale_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean/declarations/actualinsidestrip-sequence-scale-tendsto-zero--c2869a2395d8f45b4f446b2b.md) | 39 | `result-track:c2869a2395d8f45b4f446b2b338e547b58d5d36ae0df9b6f902b694ec26b1eb8` |
| 4 | `theorem` | [actualInsideStripKernel_eventually_below](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean/declarations/actualinsidestripkernel-eventually-below--a27ae9d11762824efa0ef171.md) | 54 | `result-track:a27ae9d11762824efa0ef171d0da2fd15b2bdff45cd485650c4d1de3c324b4ce` |
| 5 | `theorem` | [actualInsideStripKernel_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean/declarations/actualinsidestripkernel-tendsto-atbot--a104e2fb17b7c436c75d2f08.md) | 75 | `result-track:a104e2fb17b7c436c75d2f08ab014e04e16722787ff3622ced4cfd0d55ab56c8` |
| 6 | `theorem` | [actualInsideStripKernel_below_beyond](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean/declarations/actualinsidestripkernel-below-beyond--c0cbc8cfb8e6502a170c424b.md) | 83 | `result-track:c0cbc8cfb8e6502a170c424b3a0bd6a846ae33cf6c68c4a2ef92e826eeba61f1` |
| 7 | `theorem` | [actualInsideStripKernel_no_eventual_lower_bound](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf9ebe13f96d384be81924eb922a3f9e8ab8c311ea0cb8aca43ccd2a6946877e3.lean/declarations/actualinsidestripkernel-no-eventual-lower-bound--c36dbf53725e1d43e09648cd.md) | 93 | `result-track:c36dbf53725e1d43e09648cd2b5b4ea1c6f0fc901e859395026e976ecddc9e3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
