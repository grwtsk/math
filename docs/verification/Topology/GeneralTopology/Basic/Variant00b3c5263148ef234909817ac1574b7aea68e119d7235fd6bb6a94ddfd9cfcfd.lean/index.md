# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47fd39ea3d4f5931c87219cb28766b65076f3078",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47fd39ea3d4f5931c87219cb28766b65076f3078`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean.json)

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
| 1 | `class` | [ProperVAdd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/propervadd--462369551ba4d09c19c49398.md) | 47 | `declaration-track:462369551ba4d09c19c493986fc065ac15c56f84a19f2d3071466082894d32f3` |
| 2 | `class` | [ProperSMul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/propersmul--a7d1ffd6b248895e820f735a.md) | 56 | `declaration-track:a7d1ffd6b248895e820f735afd87d82dc0c3bc8f5f6011bcb01e5fd943c09925` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/instance--df4e05d076a5727097027d08.md) | 70 | `declaration-track:df4e05d076a5727097027d0850bc45d893ab3199bd55d201fc9599de07975cd9` |
| 4 | `theorem` | [properSMul_iff_continuousSMul_ultrafilter_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/propersmul-iff-continuoussmul-ultrafilter-tendsto--79e8bb2f79d291ff791ade3a.md) | 80 | `result-track:79e8bb2f79d291ff791ade3ab54b62622ca7207edc804966fd7a3a6106c695b4` |
| 5 | `theorem` | [properSMul_iff_continuousSMul_ultrafilter_tendsto_t2](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/propersmul-iff-continuoussmul-ultrafilter-tendsto-t2--654da8922ae68ce4e29d03d0.md) | 101 | `result-track:654da8922ae68ce4e29d03d0b09c60b5d2902fae620b9620b70955f00057be49` |
| 6 | `instance` | [t2Space_quotient_mulAction_of_properSMul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/t2space-quotient-mulaction-of-propersmul--cb7bfe7b5ba352fdc7acf3f6.md) | 114 | `declaration-track:cb7bfe7b5ba352fdc7acf3f6e72b8822b80692902034e458723d23dc7e8ed9e8` |
| 7 | `theorem` | [t2Space_of_properSMul_of_t1Group](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/t2space-of-propersmul-of-t1group--4f2e5d65a67e70fb4b4b4410.md) | 132 | `result-track:4f2e5d65a67e70fb4b4b4410256d59608e1217910dea5957c89b3f8af304ef6f` |
| 8 | `theorem` | [properSMul_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/propersmul-of-isclosedembedding--f5f1fe02168a96fe1f9feb82.md) | 153 | `result-track:f5f1fe02168a96fe1f9feb8273c00d7401037ee67e801ce6bab92bfb7993908a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/instance--8762a5817aa4a5f57531848e.md) | 166 | `declaration-track:8762a5817aa4a5f57531848e149de6ece39e72e8862bcdc057d1c5181d761de8` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/instance--8e53a7b411017568bca556b5.md) | 172 | `declaration-track:8e53a7b411017568bca556b56dc4e41c47684e52cfd79d362695936681c6fe49` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/instance--6289454f6186a3b403b68876.md) | 185 | `declaration-track:6289454f6186a3b403b688767fea4820100ea704a54a1cd26bb934aacff88106` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/instance--220c9d02f62a6ccbb0ba7d12.md) | 200 | `declaration-track:220c9d02f62a6ccbb0ba7d1233b03d2a4445d8ae3d37443efa1540bde187ec41` |
| 13 | `instance` | [QuotientGroup.instT2Space](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/quotientgroup-instt2space--cd66f460fa13db8e8a6f0516.md) | 206 | `declaration-track:cd66f460fa13db8e8a6f05161afc1ebdcb638789421c31dc618afe2d6c3dab88` |
| 14 | `lemma` | [ProperSMul.isProperMap_smul_pair_set](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/propersmul-ispropermap-smul-pair-set--f697314241daeea2db02b355.md) | 215 | `result-track:f697314241daeea2db02b35549e2c939ecf38c8eb7a430a4fa40e4bd32338c18` |
| 15 | `theorem` | [IsClosed.smul_right_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/isclosed-smul-right-of-iscompact--fdb1d73da9e530bb12d0156f.md) | 241 | `result-track:fdb1d73da9e530bb12d0156fa77741ffb5e8b7dbaa62c48b20018c62723371e4` |
| 16 | `lemma` | [ProperSMul.isCompact_setOfPred_inter_nonempty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/propersmul-iscompact-setofpred-inter-nonempty--8fc655daad5ad209f58c710d.md) | 270 | `result-track:8fc655daad5ad209f58c710d1422f07605d54b58311633e36e3158539f41e2cd` |
| 17 | `lemma` | [MulAction.properSMul_of_proper_orbitMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/declarations/mulaction-propersmul-of-proper-orbitmap--ccb3b1d4b1b30607f7017084.md) | 292 | `result-track:ccb3b1d4b1b30607f701708442e65485f9339216f3c60a31736fe24f4bd9de85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
