# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GroupCompletion.Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fd5e5a5b647be5d3ad0455c6a8eb46ca3a5dc69",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fd5e5a5b647be5d3ad0455c6a8eb46ca3a5dc69`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.GroupCompletion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_iff_hasSum_compl](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean/declarations/hassum-iff-hassum-compl--bf95169222a8506c6ebc4f4e.md) | 19 | `result-track:bf95169222a8506c6ebc4f4e3881ebd576c663fcdab74f81623e64819c8d26ea` |
| 2 | `theorem` | [summable_iff_summable_compl_and_tsum_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean/declarations/summable-iff-summable-compl-and-tsum-mem--8f856e0f2e576da45d94dc96.md) | 24 | `result-track:8f856e0f2e576da45d94dc965c06babe96e90ae7661cb682a5515bb6c1b6f3d6` |
| 3 | `theorem` | [summable_iff_cauchySeq_finset_and_tsum_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean/declarations/summable-iff-cauchyseq-finset-and-tsum-mem--622e10ea1ff438e3995754aa.md) | 32 | `result-track:622e10ea1ff438e3995754aa7bc824bb3a3b8aff983c88adc6d8fce2c1fda71d` |
| 4 | `theorem` | [Summable.toCompl_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean/declarations/summable-tocompl-tsum--9286bb5c501c6ba97b01e60d.md) | 49 | `result-track:9286bb5c501c6ba97b01e60d74ba1454984353e7d7f7ec1897123831dd326573` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
