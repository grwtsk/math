# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Hom.Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc1ccf07dc9ffdfc9245047de0c4a9e4cbcaf9b5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc1ccf07dc9ffdfc9245047de0c4a9e4cbcaf9b5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.VectorBundle.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bundle.ContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/bundle-continuouslinearmap--0ecf0a5949648347dff55d90.md) | 65 | `declaration-track:0ecf0a5949648347dff55d902e441b33e44ea739c9eadcb6e51328f94cf5adf1` |
| 2 | `def` | [continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/continuouslinearmapcoordchange--527c618435b6dc79fb83366a.md) | 79 | `declaration-track:527c618435b6dc79fb83366ac5393527ea033feb2e2208b6f4904c114603663c` |
| 3 | `theorem` | [continuousOn_continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/continuouson-continuouslinearmapcoordchange--de89829485b9fcfddff096fb.md) | 88 | `result-track:de89829485b9fcfddff096fb59f1dc676633b31434ddbd4bfee6905fc6c591da` |
| 4 | `def` | [continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/continuouslinearmap--8be67147f2a88184296d1c56.md) | 113 | `declaration-track:8be67147f2a88184296d1c56f10146119e157fa3ef847aea1889b2f3b53413c7` |
| 5 | `instance` | [continuousLinearMap.isLinear](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/continuouslinearmap-islinear--9225a91387723849581cdaa7.md) | 141 | `declaration-track:9225a91387723849581cdaa7333276381c6d1be58602b8de37b9907ba12a01fc` |
| 6 | `theorem` | [continuousLinearMap_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/continuouslinearmap-apply--a274e763f7e0b8698e717e1b.md) | 153 | `result-track:a274e763f7e0b8698e717e1b03a614f311e88d70cbac59efaff30c5d5f9a638e` |
| 7 | `theorem` | [continuousLinearMap_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/continuouslinearmap-symm-apply--a0fde0a4c7120f6f1a16f9b6.md) | 158 | `result-track:a0fde0a4c7120f6f1a16f9b69ff6ba9bc941ba686aff0a1301c1608632ac473d` |
| 8 | `theorem` | [continuousLinearMap_symm_apply'](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/continuouslinearmap-symm-apply--74fb73a7794ebae8ece6d16a.md) | 163 | `result-track:74fb73a7794ebae8ece6d16a08213a73a4d998f0776537b75d3ba01541ba406f` |
| 9 | `theorem` | [continuousLinearMapCoordChange_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/continuouslinearmapcoordchange-apply--2a2d6721bf40af76c43fe6f9.md) | 171 | `result-track:2a2d6721bf40af76c43fe6f9b19c3cde64b37a55f2044153366015716bbf3535` |
| 10 | `def` | [Bundle.ContinuousLinearMap.vectorPrebundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/bundle-continuouslinearmap-vectorprebundle--f810499ea5f368066d0d0769.md) | 199 | `declaration-track:f810499ea5f368066d0d0769238c721f5bf24ad5b7373917b0522904ecfad1cb` |
| 11 | `instance` | [Bundle.ContinuousLinearMap.topologicalSpaceTotalSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/bundle-continuouslinearmap-topologicalspacetotalspace--fffddc41db9a2b4f3c6d1eb9.md) | 237 | `declaration-track:fffddc41db9a2b4f3c6d1eb980fd0e0215c012017e00015d1d24b119462ee723` |
| 12 | `instance` | [Bundle.ContinuousLinearMap.fiberBundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/bundle-continuouslinearmap-fiberbundle--bc469bc7e2bf4b20c1b53a80.md) | 242 | `declaration-track:bc469bc7e2bf4b20c1b53a80f9f170204c2c3f1a1d4f4ec270d8fc9c7685789a` |
| 13 | `instance` | [Bundle.ContinuousLinearMap.vectorBundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/bundle-continuouslinearmap-vectorbundle--23d4ca94cb44a1d203ac3557.md) | 247 | `declaration-track:23d4ca94cb44a1d203ac3557e5e6a626001225f0a0202673edc4d5c50b025653` |
| 14 | `def` | [Trivialization.continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/trivialization-continuouslinearmap--9a057216536a63ff69d6e279.md) | 256 | `declaration-track:9a057216536a63ff69d6e27933f627b49e492f88830ec34fefa84f74038a00ec` |
| 15 | `instance` | [Bundle.ContinuousLinearMap.memTrivializationAtlas](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/bundle-continuouslinearmap-memtrivializationatlas--d0c58d690ff109cbb751d992.md) | 260 | `declaration-track:d0c58d690ff109cbb751d9927d5d2b7f3f22b1e1c6f8ca1c4333cd6b4b1913b7` |
| 16 | `theorem` | [Trivialization.baseSet_continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/trivialization-baseset-continuouslinearmap--c6ed41f98dfbedd2528c2124.md) | 269 | `result-track:c6ed41f98dfbedd2528c21248f7504dfef9af9035bee85abc9bf6ef8d1cdc7e6` |
| 17 | `theorem` | [Trivialization.continuousLinearMap_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/trivialization-continuouslinearmap-apply--2d99e4d4bbc8e162de3107f7.md) | 273 | `result-track:2d99e4d4bbc8e162de3107f708f41b288e86d79b196c2c4197fe398981ee28d7` |
| 18 | `theorem` | [hom_trivializationAt_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/hom-trivializationat-apply--3c2a40fdb6a2004f147e5b0d.md) | 280 | `result-track:3c2a40fdb6a2004f147e5b0d0d78cbfab5ceaa462516f66cd3d0cbfe5a2e76c0` |
| 19 | `theorem` | [hom_trivializationAt_source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/hom-trivializationat-source--7adb9048e68720d792ae0f0b.md) | 287 | `result-track:7adb9048e68720d792ae0f0b478e647d32eeda37e1df346f7fff9d45b8b08687` |
| 20 | `theorem` | [hom_trivializationAt_target](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant8e5cc75bf44d7dd2e5bb0b50317ee547ebb39aba9fb63484d3e422de3049e6a2.lean/declarations/hom-trivializationat-target--f0637dfffae6a8875a54bb60.md) | 294 | `result-track:f0637dfffae6a8875a54bb60ae85ce040b3eb4a848cc0ec5f1f0bb8804450cdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
