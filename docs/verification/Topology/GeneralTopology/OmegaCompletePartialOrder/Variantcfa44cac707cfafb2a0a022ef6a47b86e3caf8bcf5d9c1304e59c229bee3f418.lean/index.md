# Verification target: GRWTSK.Topology.GeneralTopology.OmegaCompletePartialOrder.Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a102963df2a9803213d38dc2559d72ed09432f61",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a102963df2a9803213d38dc2559d72ed09432f61`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean.json)

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
| 1 | `lemma` | [Topology.IsScott.ωScottContinuous_iff_continuous](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/declarations/topology-isscott-scottcontinuous-iff-continuous--56e43a6c5d12a79a80c24e43.md) | 30 | `result-track:56e43a6c5d12a79a80c24e437d43a46e4d1abc6631e4e4dbb90d15354515579d` |
| 2 | `def` | [IsωSup](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/declarations/is-sup--ff94d8a49dc95a88492319f3.md) | 40 | `declaration-track:ff94d8a49dc95a88492319f33e4614ea1463f8b6d2f10c04cab8eeadbe7f791c` |
| 3 | `theorem` | [isωSup_iff_isLUB](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/declarations/is-sup-iff-islub--bce0636bfc425c6b8d48a2e0.md) | 43 | `result-track:bce0636bfc425c6b8d48a2e0f5aa7e5a32759f0aacb05c8fbbf0ad2422402b87` |
| 4 | `def` | [IsOpen](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/declarations/isopen--1b7315c379dca3c540966207.md) | 51 | `declaration-track:1b7315c379dca3c5409662071da55b49523893ab9dabc73948bf074d6994496a` |
| 5 | `theorem` | [isOpen_univ](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/declarations/isopen-univ--b769dc8b81d5b6b6091081a4.md) | 54 | `result-track:b769dc8b81d5b6b6091081a4c4dbae40f02f69daf0d8c0aa6a4d4c305bff812e` |
| 6 | `theorem` | [IsOpen.inter](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/declarations/isopen-inter--b48aa3be10d37328cbdf08d4.md) | 56 | `result-track:b48aa3be10d37328cbdf08d4c6b6595634afec9e5aa33549e43e7041b1694d67` |
| 7 | `theorem` | [isOpen_sUnion](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/declarations/isopen-sunion--d8613c443abe7603827b8043.md) | 61 | `result-track:d8613c443abe7603827b80431f52a888cedc4e0e0529ad5465436f156573884f` |
| 8 | `theorem` | [IsOpen.isUpperSet](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/declarations/isopen-isupperset--68c9b1b26c09b93fb14bd538.md) | 66 | `result-track:68c9b1b26c09b93fb14bd53895f56d6a395bddf80e942e82693a9136f9abef37` |
| 9 | `theorem` | [isωSup_ωSup](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variantcfa44cac707cfafb2a0a022ef6a47b86e3caf8bcf5d9c1304e59c229bee3f418.lean/declarations/is-sup-sup--8db4f59094ef09e7532097de.md) | 72 | `result-track:8db4f59094ef09e7532097de54b3a0eef2a313ce086ca5738c5565d6e5e35034` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
