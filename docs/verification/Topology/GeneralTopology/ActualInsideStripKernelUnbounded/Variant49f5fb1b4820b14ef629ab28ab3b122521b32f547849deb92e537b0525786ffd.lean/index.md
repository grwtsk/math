# Verification target: GRWTSK.Topology.GeneralTopology.ActualInsideStripKernelUnbounded.Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec26ac74c01337e6f44d3f426fb55520cf847ff2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec26ac74c01337e6f44d3f426fb55520cf847ff2`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean.json)

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
| 1 | `theorem` | [sequence_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/declarations/sequence-tendsto--93d6a43c716f289eeed58b44.md) | 26 | `result-track:93d6a43c716f289eeed58b44c55b25de2ef7bf61c411f15e32479da2a17c87c4` |
| 2 | `theorem` | [sequence_scale_pos](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/declarations/sequence-scale-pos--ddfc13ad5e8be2c6d78f083d.md) | 31 | `result-track:ddfc13ad5e8be2c6d78f083d49af27a87b33bf040e38bd5f72c4a513b9aed772` |
| 3 | `theorem` | [actualInsideStrip_sequence_scale_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/declarations/actualinsidestrip-sequence-scale-tendsto-zero--158416e475b24f65f77c249e.md) | 39 | `result-track:158416e475b24f65f77c249e3e8681688a117fbbeea1a6f7c651b3d5de023601` |
| 4 | `theorem` | [actualInsideStripKernel_eventually_below](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/declarations/actualinsidestripkernel-eventually-below--54d685ebaf2b92f253cb843e.md) | 54 | `result-track:54d685ebaf2b92f253cb843e572c37bcd34f6950e9b8362205554884a1addad1` |
| 5 | `theorem` | [actualInsideStripKernel_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/declarations/actualinsidestripkernel-tendsto-atbot--5816df907eb7f4a92524513a.md) | 77 | `result-track:5816df907eb7f4a92524513a38213b012a71219eef325b94fba86f446510e931` |
| 6 | `theorem` | [actualInsideStripKernel_below_beyond](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/declarations/actualinsidestripkernel-below-beyond--115d8e7e63f80ff1bcf53d97.md) | 85 | `result-track:115d8e7e63f80ff1bcf53d973f8ff03870ac7d69929e5c79e8ad0956d86fe041` |
| 7 | `theorem` | [actualInsideStripKernel_no_eventual_lower_bound](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/declarations/actualinsidestripkernel-no-eventual-lower-bound--68f690fb8870047d5ba3d6b1.md) | 95 | `result-track:68f690fb8870047d5ba3d6b12810b07dec2bf14cedd771714cdf0e3590158646` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
