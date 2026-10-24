# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Hom.Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fc10f547d6e4af0e18eb15af84848eb6d1c92b7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fc10f547d6e4af0e18eb15af84848eb6d1c92b7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.VectorBundle.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Bundle.ContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/bundle-continuouslinearmap--caccd1f2505fa4a67eaa9f06.md) | 63 | `declaration-track:caccd1f2505fa4a67eaa9f06d85d98129f2075e475030b9a79011d358e066404` |
| 2 | `instance` | [Bundle.ContinuousLinearMap.module](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/bundle-continuouslinearmap-module--fa694e63924a09130eaa22ba.md) | 68 | `declaration-track:fa694e63924a09130eaa22ba9bcb546c8d6da4637df4d4cec630db5432ce1616` |
| 3 | `def` | [continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/continuouslinearmapcoordchange--aa9a6497875c3ac194a39b95.md) | 86 | `declaration-track:aa9a6497875c3ac194a39b9534c07beea108a202887480e98a24d6f317af9552` |
| 4 | `theorem` | [continuousOn_continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/continuouson-continuouslinearmapcoordchange--9be8c617d10d499b3e75e856.md) | 98 | `result-track:9be8c617d10d499b3e75e856687b33a1d590714187f461b5c9a54bfacf86a1c4` |
| 5 | `def` | [continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/continuouslinearmap--8d6c2ee8502b091d770e64e9.md) | 129 | `declaration-track:8d6c2ee8502b091d770e64e924706ad6cab671f17db92f1a4b4355213817cccf` |
| 6 | `instance` | [continuousLinearMap.isLinear](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/continuouslinearmap-islinear--d600d855ad6b867b7e695787.md) | 158 | `declaration-track:d600d855ad6b867b7e695787fab9a3cfccf8af4f92d3720f4745e5e616b7501a` |
| 7 | `theorem` | [continuousLinearMap_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/continuouslinearmap-apply--56e9946c54e08a076769b1a3.md) | 171 | `result-track:56e9946c54e08a076769b1a3bb9a1cfbabb8c015cd62e64565cb0d3d482df3ee` |
| 8 | `theorem` | [continuousLinearMap_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/continuouslinearmap-symm-apply--31755da90bb841cfb6fd0ac2.md) | 177 | `result-track:31755da90bb841cfb6fd0ac2738e2ef5716902c3483cfaf8e6fedd0d2b131f39` |
| 9 | `theorem` | [continuousLinearMap_symm_apply'](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/continuouslinearmap-symm-apply--950987851aeab92f1fc81758.md) | 183 | `result-track:950987851aeab92f1fc817586eb6b2e7488a882740c2df1789230d1a3b6af3bc` |
| 10 | `theorem` | [continuousLinearMapCoordChange_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/continuouslinearmapcoordchange-apply--6e3e68de5a6ece7087c2db94.md) | 190 | `result-track:6e3e68de5a6ece7087c2db94685bce42386ab83c800dd983459eb0f0b148371f` |
| 11 | `def` | [Bundle.ContinuousLinearMap.vectorPrebundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/bundle-continuouslinearmap-vectorprebundle--02dd6268bb1f60981edf37e4.md) | 221 | `declaration-track:02dd6268bb1f60981edf37e441ffbf93af3fd99659c0862faa30c71c398965e0` |
| 12 | `instance` | [Bundle.ContinuousLinearMap.topologicalSpaceTotalSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/bundle-continuouslinearmap-topologicalspacetotalspace--a7ab18c4b4557e52dd717a26.md) | 260 | `declaration-track:a7ab18c4b4557e52dd717a262d70ca0ced699291aa7c16f266707b611884de21` |
| 13 | `instance` | [Bundle.ContinuousLinearMap.fiberBundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/bundle-continuouslinearmap-fiberbundle--bf807418fe736cf58d5f3a00.md) | 266 | `declaration-track:bf807418fe736cf58d5f3a006121f5f88df71bb99c720193ac59833f0934355f` |
| 14 | `instance` | [Bundle.ContinuousLinearMap.vectorBundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/bundle-continuouslinearmap-vectorbundle--36e892b52883532d8340d7c3.md) | 272 | `declaration-track:36e892b52883532d8340d7c3b0b11a511a913093e7cebf9fff6d2366c961261a` |
| 15 | `def` | [Trivialization.continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/trivialization-continuouslinearmap--d179c94a3d9da2423f20a1d5.md) | 282 | `declaration-track:d179c94a3d9da2423f20a1d5ea8b8131db0079d578bc89f406d6946a883be040` |
| 16 | `instance` | [Bundle.ContinuousLinearMap.memTrivializationAtlas](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/bundle-continuouslinearmap-memtrivializationatlas--e08d749f696a2088cb7d92b1.md) | 287 | `declaration-track:e08d749f696a2088cb7d92b182026509aaadb2ab90eeee704850268285b4470b` |
| 17 | `theorem` | [Trivialization.baseSet_continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/trivialization-baseset-continuouslinearmap--cdb5c346135e4b393b702844.md) | 297 | `result-track:cdb5c346135e4b393b702844d15809a18d8888c9ee38282f17a1017bb16a5f29` |
| 18 | `theorem` | [Trivialization.continuousLinearMap_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/trivialization-continuouslinearmap-apply--433905e99a2b209a10aa2bc4.md) | 302 | `result-track:433905e99a2b209a10aa2bc4d3ffc4ae88877c0022eb6464ab61cf1c7f808c64` |
| 19 | `theorem` | [hom_trivializationAt_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/hom-trivializationat-apply--c339c68b4388d111565b9967.md) | 310 | `result-track:c339c68b4388d111565b99677b8b5ccecebfe62f4b4d796b806d9aa1c701dc8a` |
| 20 | `theorem` | [hom_trivializationAt_source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/hom-trivializationat-source--f46368e98101eba03f18a190.md) | 318 | `result-track:f46368e98101eba03f18a190a0175c087fd9f94d47b02266e5817effdd0d4b40` |
| 21 | `theorem` | [hom_trivializationAt_target](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/declarations/hom-trivializationat-target--1bedc6b2462c4d4e005fe685.md) | 326 | `result-track:1bedc6b2462c4d4e005fe6856aa576efa29cfea5e532e59f1a8991cd1698b01a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
