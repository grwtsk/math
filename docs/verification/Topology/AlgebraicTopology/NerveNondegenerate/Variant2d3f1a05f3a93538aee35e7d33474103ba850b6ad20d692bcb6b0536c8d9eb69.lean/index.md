# Verification target: GRWTSK.Topology.AlgebraicTopology.NerveNondegenerate.Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecaa80b3f4cc15a8adf2a655ce9e82d5e82f01a6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecaa80b3f4cc15a8adf2a655ce9e82d5e82f01a6`.

Source path: `GRWTSK/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_range_nerve_σ_iff](../../../../../mathematics/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/declarations/mem-range-nerve-iff--c5d64eab8433a487642a4553.md) | 33 | `result-track:c5d64eab8433a487642a4553a286623602188978d07d31645f6fb994bc5352b8` |
| 2 | `lemma` | [mem_nerve_degenerate_of_eq](../../../../../mathematics/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/declarations/mem-nerve-degenerate-of-eq--2fdd931282cfde1ab6b329a3.md) | 52 | `result-track:2fdd931282cfde1ab6b329a39be77755cdaa9e364b5d9b6f14e22ef180f77216` |
| 3 | `lemma` | [mem_nerve_nonDegenerate_iff_strictMono](../../../../../mathematics/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/declarations/mem-nerve-nondegenerate-iff-strictmono--d71f939c9ae30e4f4efac8b0.md) | 58 | `result-track:d71f939c9ae30e4f4efac8b08d97bc9255e0653cfadbb910ff854f6e229ee0c6` |
| 4 | `lemma` | [mem_nerve_nonDegenerate_iff_injective](../../../../../mathematics/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/declarations/mem-nerve-nondegenerate-iff-injective--a0027d66e556d16d7187efb1.md) | 70 | `result-track:a0027d66e556d16d7187efb1cca526d81c94b1293a50ad32442293af66086d2e` |
| 5 | `lemma` | [nerve_ofSimplex_le_ofSimplex_iff](../../../../../mathematics/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/declarations/nerve-ofsimplex-le-ofsimplex-iff--ded1128d8f614275563168a6.md) | 78 | `result-track:ded1128d8f614275563168a65b64fd30300105adc47ad431ccffc15079e06cc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
