# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Hom.Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb69b3d9ddd5ba8ce6fb3fee212d0de9eaa41ce6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb69b3d9ddd5ba8ce6fb3fee212d0de9eaa41ce6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.VectorBundle.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Bundle.ContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/bundle-continuouslinearmap--e4d41eab2753ec262a8199ad.md) | 71 | `declaration-track:e4d41eab2753ec262a8199ad8b1742c37ffd8fd4437ec99217023d5ecc5c0c2f` |
| 2 | `instance` | [Bundle.ContinuousLinearMap.module](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/bundle-continuouslinearmap-module--02d5da856d05e6d030791ea7.md) | 76 | `declaration-track:02d5da856d05e6d030791ea7187ccdeab505dbd31f7ac81aabe317125c6deef9` |
| 3 | `def` | [continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/continuouslinearmapcoordchange--ed693a5ede28c98eb086dcf3.md) | 94 | `declaration-track:ed693a5ede28c98eb086dcf3232e7fbb9abec45554a8b7bb6d486d6d9cc36c54` |
| 4 | `theorem` | [continuousOn_continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/continuouson-continuouslinearmapcoordchange--8b46ecb822db349854f22750.md) | 106 | `result-track:8b46ecb822db349854f22750bbd48cf649ec6735dddf067d3ec628f9add47837` |
| 5 | `def` | [continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/continuouslinearmap--a5b9ef3fcdd386142917f968.md) | 137 | `declaration-track:a5b9ef3fcdd386142917f968afc5bc20465e2be523f9c02d5c40746d1e657b15` |
| 6 | `instance` | [continuousLinearMap.isLinear](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/continuouslinearmap-islinear--b976aee1e44cafb60dc362ea.md) | 166 | `declaration-track:b976aee1e44cafb60dc362ea73a2c6c0108f37905b7250a857bc8793c22fa160` |
| 7 | `theorem` | [continuousLinearMap_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/continuouslinearmap-apply--7df82893cca3f0cd2f33c124.md) | 179 | `result-track:7df82893cca3f0cd2f33c124de7a9876def0aebe4bfda8b28b2f62e6dbf8d788` |
| 8 | `theorem` | [continuousLinearMap_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/continuouslinearmap-symm-apply--35a3b381284729584d163403.md) | 185 | `result-track:35a3b381284729584d1634031ee1733f093f45ba10ba89c353b9d2529aeb18fc` |
| 9 | `theorem` | [continuousLinearMap_symm_apply'](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/continuouslinearmap-symm-apply--b56ac0d52e1f030d5369ebca.md) | 191 | `result-track:b56ac0d52e1f030d5369ebcaef894f50afbf3c59aabbfa6347751e0d9d265586` |
| 10 | `theorem` | [continuousLinearMapCoordChange_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/continuouslinearmapcoordchange-apply--aff2cf2e0e9c94bb770cd4d5.md) | 198 | `result-track:aff2cf2e0e9c94bb770cd4d58a78cdbc2232cfcaab33665cf0f6b805a03e3bf4` |
| 11 | `def` | [Bundle.ContinuousLinearMap.vectorPrebundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/bundle-continuouslinearmap-vectorprebundle--3a973867ea7dd3833a60dfd8.md) | 229 | `declaration-track:3a973867ea7dd3833a60dfd87a2810731eaf02d2811ebada15247be58a1b745d` |
| 12 | `instance` | [Bundle.ContinuousLinearMap.topologicalSpaceTotalSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/bundle-continuouslinearmap-topologicalspacetotalspace--29b016a2b60c63d5242bd35b.md) | 268 | `declaration-track:29b016a2b60c63d5242bd35b60b96846cbb32b94c9f4a862b45ba7a2ea7e122b` |
| 13 | `instance` | [Bundle.ContinuousLinearMap.fiberBundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/bundle-continuouslinearmap-fiberbundle--b68c5757e463867bc9c2cba1.md) | 274 | `declaration-track:b68c5757e463867bc9c2cba1bb294cec97490e8c194610879bd9124a0f091a7b` |
| 14 | `instance` | [Bundle.ContinuousLinearMap.vectorBundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/bundle-continuouslinearmap-vectorbundle--492be40069c7034e7d0a53c5.md) | 280 | `declaration-track:492be40069c7034e7d0a53c572573dc34974fc474bea7c023a7907c364008ea2` |
| 15 | `def` | [Trivialization.continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/trivialization-continuouslinearmap--c5c816a2e98c34152cd24b51.md) | 290 | `declaration-track:c5c816a2e98c34152cd24b51d3da8a40fffbf69834b1bac1c64cd1daf28e2f9f` |
| 16 | `instance` | [Bundle.ContinuousLinearMap.memTrivializationAtlas](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/bundle-continuouslinearmap-memtrivializationatlas--08f5b455a2e25f823457ebbf.md) | 295 | `declaration-track:08f5b455a2e25f823457ebbf932e993bca21fbbdce81b37ef0c934e0a2c374f0` |
| 17 | `theorem` | [Trivialization.baseSet_continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/trivialization-baseset-continuouslinearmap--7f3679733e03cf525b26b4d7.md) | 305 | `result-track:7f3679733e03cf525b26b4d7ea870bacb614955453afd6adc82640a99386bda2` |
| 18 | `theorem` | [Trivialization.continuousLinearMap_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/trivialization-continuouslinearmap-apply--74d5f5f2e6fcd77e40489725.md) | 310 | `result-track:74d5f5f2e6fcd77e40489725f57ef9bf5cb4d78a98152bfb13ecab15dbb1f308` |
| 19 | `theorem` | [hom_trivializationAt_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/hom-trivializationat-apply--47d93d47d9fb8037b01332e7.md) | 318 | `result-track:47d93d47d9fb8037b01332e76da202d89a3046bd8f1223ba9e52d3f9f735cf0e` |
| 20 | `theorem` | [hom_trivializationAt_source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/hom-trivializationat-source--ae2ffb89570ea46e6ae54469.md) | 326 | `result-track:ae2ffb89570ea46e6ae544697362cb08a0ec8c029e95b12e10260211745e03cc` |
| 21 | `theorem` | [hom_trivializationAt_target](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/declarations/hom-trivializationat-target--3b331b668d4402edc2931074.md) | 334 | `result-track:3b331b668d4402edc2931074292e6868731bd937c8a111a2edd39b0562728462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
