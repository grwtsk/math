# Verification target: GRWTSK.Topology.GeneralTopology.ActualInsideStripKernelUnbounded.Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab9b106867290aac8aae5a977d23b12b69c91743",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab9b106867290aac8aae5a977d23b12b69c91743`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean.json)

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
| 1 | `theorem` | [sequence_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/declarations/sequence-tendsto--c2287e5ac318b872de7a6568.md) | 18 | `result-track:c2287e5ac318b872de7a6568d1d12593364ed0edb3a4bbbb3c947a240ce99a70` |
| 2 | `theorem` | [sequence_scale_pos](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/declarations/sequence-scale-pos--3432fd0e4053a9ad8878beb0.md) | 23 | `result-track:3432fd0e4053a9ad8878beb009f7689f85e5061c7b14516cff37d5d119f57c55` |
| 3 | `theorem` | [actualInsideStrip_sequence_scale_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/declarations/actualinsidestrip-sequence-scale-tendsto-zero--9f3871708c2396a4e695cc3f.md) | 31 | `result-track:9f3871708c2396a4e695cc3f66778c3e5397a90418f5420dbf2d4d98b195023c` |
| 4 | `theorem` | [actualInsideStripKernel_eventually_below](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/declarations/actualinsidestripkernel-eventually-below--7c3fa4a127721ebb3bb021de.md) | 46 | `result-track:7c3fa4a127721ebb3bb021de10f05ceb2c8d8437bd6aad57b8c03b13a48e339b` |
| 5 | `theorem` | [actualInsideStripKernel_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/declarations/actualinsidestripkernel-tendsto-atbot--058e682327bdc34e01d4cfa2.md) | 67 | `result-track:058e682327bdc34e01d4cfa201229ba1b05707aa9e5bd18e60d401888bd4e321` |
| 6 | `theorem` | [actualInsideStripKernel_below_beyond](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/declarations/actualinsidestripkernel-below-beyond--d4ae1c4860a0bd18578f83fd.md) | 75 | `result-track:d4ae1c4860a0bd18578f83fd25a24e2fb36f092ece746e6fcd5d6538317e1573` |
| 7 | `theorem` | [actualInsideStripKernel_no_eventual_lower_bound](../../../../../mathematics/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/declarations/actualinsidestripkernel-no-eventual-lower-bound--0e3d4ced4468a0f6d1e32a7f.md) | 85 | `result-track:0e3d4ced4468a0f6d1e32a7fa9ef7df0c1cd45135059657be679b720ea366262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
