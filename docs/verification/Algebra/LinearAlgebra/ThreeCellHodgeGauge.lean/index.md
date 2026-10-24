# Verification target: GRWTSK.Analysis.LinearAlgebra.ThreeCellHodgeGauge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dede9b689159b011b7845285c90222f7344de7aa",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LinearAlgebra/ThreeCellHodgeGauge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dede9b689159b011b7845285c90222f7344de7aa`.

Source path: `GRWTSK/Analysis/LinearAlgebra/ThreeCellHodgeGauge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LinearAlgebra/ThreeCellHodgeGauge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Homology.ThreeCellCech`](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat`](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Tactic.Module` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cell](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/cell--0b99e95d753f3efbedb3bbef.md) | 22 | `declaration-track:0b99e95d753f3efbedb3bbef2b789d34ff5c7d483f01cbb4addf73f53027fb9c` |
| 2 | `def` | [average](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/average--4e93918181f87260628cdd1b.md) | 28 | `declaration-track:4e93918181f87260628cdd1bc4a55578c3a7d2d16b30abe1d51369025962739f` |
| 3 | `def` | [centered](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/centered--47022ea11606edf08c889a35.md) | 29 | `declaration-track:47022ea11606edf08c889a35dd466e4af72751c3e62ba44ffec97c79b560c03b` |
| 4 | `def` | [delta0Transpose](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/delta0transpose--6d137a1c27d37fc5de92b092.md) | 32 | `declaration-track:6d137a1c27d37fc5de92b092185c8c87df8cd5a1663836b6b3f95c4040857f29` |
| 5 | `def` | [delta1Transpose](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/delta1transpose--8824b836ec4187809c72bdf4.md) | 33 | `declaration-track:8824b836ec4187809c72bdf4cc9bdd8ebf530f2e60fa2359135af00ddb93a429` |
| 6 | `def` | [laplacian0](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/laplacian0--9bd02520178631a7b896f62e.md) | 35 | `declaration-track:9bd02520178631a7b896f62e57939529ba89d555c600a4a6aa2c6a4aee566a1e` |
| 7 | `def` | [laplacian1](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/laplacian1--5b825a77587dff2d6aa42850.md) | 36 | `declaration-track:5b825a77587dff2d6aa428502f99dc96248d637c4e37e42a87e12b81be51b556` |
| 8 | `theorem` | [laplacian0_formula](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/laplacian0-formula--f4088a29212aaa88e775b393.md) | 39 | `result-track:f4088a29212aaa88e775b39347155766e8cce60f4052e00730a84133ca4b9462` |
| 9 | `theorem` | [laplacian1_formula](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/laplacian1-formula--236ff803d4725ab96bf45f9b.md) | 43 | `result-track:236ff803d4725ab96bf45f9b0d0ef47206da2a4d9575dac8a0435bbfd96ceb92` |
| 10 | `theorem` | [laplacian2_formula](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/laplacian2-formula--00ca5d2e6f1534293c220d55.md) | 47 | `result-track:00ca5d2e6f1534293c220d55301627484fa091d9f2af708586733f99ed6bcb26` |
| 11 | `theorem` | [average_add](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/average-add--bcb562032bbc37d721805cb3.md) | 51 | `result-track:bcb562032bbc37d721805cb35bd9cf55660fb8399a835b2ce98685b4b1ad9802` |
| 12 | `theorem` | [average_sub](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/average-sub--e06de4460e058dc4aeb1a868.md) | 55 | `result-track:e06de4460e058dc4aeb1a86854d65c25957cc25eff1d4ebc6c85244b38694887` |
| 13 | `theorem` | [average_centered](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/average-centered--b39e9c7c652f1f8c8ccbd607.md) | 59 | `result-track:b39e9c7c652f1f8c8ccbd607089dd3317494d39a1432d44245f843a1de3dc563` |
| 14 | `theorem` | [delta0_sub](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/delta0-sub--b690c6e0a628db5b5ce6c722.md) | 63 | `result-track:b690c6e0a628db5b5ce6c722a84b6e9267e6dd73b3af93b0071a07b1a600dfaa` |
| 15 | `def` | [phaseRelax](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/phaserelax--a4f4a33a7792b81dfef9cf14.md) | 68 | `declaration-track:a4f4a33a7792b81dfef9cf14ddf0c6b69c38a16d6b50e64830d2334d3947b669` |
| 16 | `def` | [hodgeRelax](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/hodgerelax--957c3f45e32f469212044392.md) | 72 | `declaration-track:957c3f45e32f469212044392da9bcf3235c8df6a40adc0fbca5cdf8b1db1fdb0` |
| 17 | `def` | [treeRelax](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/treerelax--5feccf8ab545364515bdce7b.md) | 75 | `declaration-track:5feccf8ab545364515bdce7b7bd27fba76138d03166a1f59356cf31002c9819a` |
| 18 | `def` | [gaugeShift](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/gaugeshift--1d86953aed0564baa685b654.md) | 79 | `declaration-track:1d86953aed0564baa685b654365c7204ce938498e71f5a9d23e46a2f9e01c448` |
| 19 | `def` | [comparisonGauge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/comparisongauge--688edac58da275b103bee3f8.md) | 81 | `declaration-track:688edac58da275b103bee3f8cff2831eed186511feb81206bf62ef3ada7bfd61` |
| 20 | `theorem` | [tree_hodge_gauge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/tree-hodge-gauge--eb4cc96f897af6d8369c0cf2.md) | 84 | `result-track:eb4cc96f897af6d8369c0cf2af04fae65914939737cfa20ab27f68d51ae93bb8` |
| 21 | `theorem` | [comparisonGauge_mean](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/comparisongauge-mean--c74dc08798133855ecf9f1eb.md) | 90 | `result-track:c74dc08798133855ecf9f1ebdc6445673b2a13bed315517ba6539c27b7de891d` |
| 22 | `theorem` | [mismatch_gauge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/mismatch-gauge--c076ca8a415542350af053e6.md) | 96 | `result-track:c076ca8a415542350af053e6c17b0b6503710ecb89e7907f4552146979514c02` |
| 23 | `def` | [reduced](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/reduced--34b2bdde6227c4932956d989.md) | 102 | `declaration-track:34b2bdde6227c4932956d9897b6fdf17532158e9ede6bdbb96f15a5162a24f7d` |
| 24 | `theorem` | [reduced_gauge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/reduced-gauge--0c099c86f5b52d854aebc842.md) | 104 | `result-track:0c099c86f5b52d854aebc8425610fea10359fa1c18587e7a20f68b043c0a24b0` |
| 25 | `theorem` | [reduced_eq_iff_gauge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/reduced-eq-iff-gauge--697213946a91aabad9396e31.md) | 112 | `result-track:697213946a91aabad9396e31e6a055ecda0f2516783641f8af0844623005e4b2` |
| 26 | `theorem` | [reduced_surjective](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/reduced-surjective--fcec949d059327ef378408f2.md) | 133 | `result-track:fcec949d059327ef378408f22119cba03c36cb58f74af71a1cc0aa5462b5209e` |
| 27 | `theorem` | [average_phaseRelax](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/average-phaserelax--622e6b18e583c88c993149f6.md) | 143 | `result-track:622e6b18e583c88c993149f6fed79a977cba2de2169de2d2a7649da206b8a3da` |
| 28 | `theorem` | [reduced_hodge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/reduced-hodge--f9735b760f0da61f4da0c25a.md) | 148 | `result-track:f9735b760f0da61f4da0c25ac9dd653adade93aea00c4b7c1f9d981f965232c7` |
| 29 | `theorem` | [reduced_tree_hodge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/reduced-tree-hodge--73a6a3e3e2b62bf19a2b73e4.md) | 156 | `result-track:73a6a3e3e2b62bf19a2b73e4a4ecd3a039e3b38ca6ffc16c35cc0023cfba06ef` |
| 30 | `theorem` | [hodgeRelax_one](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/hodgerelax-one--b4137815b5f38aa045adf071.md) | 161 | `result-track:b4137815b5f38aa045adf071991b93ff54e990889973bbebdfc1146d7678612a` |
| 31 | `theorem` | [hodgeRelax_mul](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/hodgerelax-mul--b39e654e139c065aea8e4b26.md) | 164 | `result-track:b39e654e139c065aea8e4b26fc300cafb317d6f1d8fbf9a110021039191a4abe` |
| 32 | `theorem` | [hodge_fixed_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/hodge-fixed-iff--15b1b0425f3906ad91507373.md) | 177 | `result-track:15b1b0425f3906ad91507373d362707331144a751a3292b3ac12f23bfc9793aa` |
| 33 | `theorem` | [tree_fixes_matching](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/tree-fixes-matching--40834c0ee5b85c6e30b948e2.md) | 194 | `result-track:40834c0ee5b85c6e30b948e2fa4a8a5c7a24450de87e7d4599f5d523f429f6a2` |
| 34 | `theorem` | [comparisonGauge_map](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/comparisongauge-map--794a5ea3494f8ac7e5468a60.md) | 214 | `result-track:794a5ea3494f8ac7e5468a606590babd730b8d7d9ad742fa0f8ff977172c17f8` |
| 35 | `def` | [mapCell](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/mapcell--e2da7fbb26b1ee56f2fa9e82.md) | 220 | `declaration-track:e2da7fbb26b1ee56f2fa9e82545e4ef6b5ac573c0b87b25def8e041c2f678974` |
| 36 | `theorem` | [hodgeRelax_map](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/hodgerelax-map--f69e2050d13caae47aac497b.md) | 223 | `result-track:f69e2050d13caae47aac497bc6c0c7903cb5281e294a57263032ef734ce842c8` |
| 37 | `theorem` | [scalar_phase_agrees](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/scalar-phase-agrees--10e776d7d8ae89f269718f94.md) | 231 | `result-track:10e776d7d8ae89f269718f94699117c3da464b0d7816530ca8e784d677745493` |
| 38 | `theorem` | [scalar_laplacian0_agrees](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/scalar-laplacian0-agrees--b2a7a1dc6a262a24e68d0239.md) | 238 | `result-track:b2a7a1dc6a262a24e68d0239f98e12ef13718d47664e90d265b3f52153d3fa7d` |
| 39 | `theorem` | [hodge_vertex_derivative](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/hodge-vertex-derivative--643d13f9e19383059f168935.md) | 246 | `result-track:643d13f9e19383059f168935550e99b1c2cae7546551edf05dcbbba77bb2a10e` |
| 40 | `theorem` | [hodge_edge_derivative](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/hodge-edge-derivative--5c7a9a4daa7987d156e5aa14.md) | 253 | `result-track:5c7a9a4daa7987d156e5aa140660309182d6bb4c413b4d1422cdcf6c88b4934b` |
| 41 | `def` | [dot3](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/dot3--51b198fea846986424f55ee1.md) | 261 | `declaration-track:51b198fea846986424f55ee1e61e9952b6761b8d78a87ebc84e9bce5681a93cf` |
| 42 | `theorem` | [delta0_adjoint](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/delta0-adjoint--899aa56d3d56c68d810801ef.md) | 263 | `result-track:899aa56d3d56c68d810801ef421dbf91cba01b9c7d8a8c890f7afc8f4e0f8e46` |
| 43 | `theorem` | [delta1_adjoint](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/delta1-adjoint--2af7e989cdd1793d10718f2b.md) | 268 | `result-track:2af7e989cdd1793d10718f2bb168effa617133e1be841330c3c1fa22c07577c5` |
| 44 | `def` | [rawEnergy](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/rawenergy--98e18291c20822b6a4817c8c.md) | 272 | `declaration-track:98e18291c20822b6a4817c8cc3078739dfb6901c91abb2f91052783d21afac88` |
| 45 | `def` | [positiveEnergy](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/positiveenergy--99c178255b47abf2c2b77135.md) | 274 | `declaration-track:99c178255b47abf2c2b77135c09f7dee58f18be5a5da55582e1c0d2350f3dc83` |
| 46 | `theorem` | [positiveEnergy_nonneg](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/positiveenergy-nonneg--460ba1f280f6d1cc595589ac.md) | 277 | `result-track:460ba1f280f6d1cc595589ac94f8148748fb367787882205f962223c18444dec` |
| 47 | `theorem` | [hodge_energy](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/hodge-energy--afa55c83ddb54572fcb46fd1.md) | 281 | `result-track:afa55c83ddb54572fcb46fd11cffef39b531fd58717de45064263c5c0f57765a` |
| 48 | `theorem` | [hodge_contraction](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/hodge-contraction--e1b361245472a598f5621df1.md) | 287 | `result-track:e1b361245472a598f5621df147e3b5dc5c5b2738566f742528b1c0866620871b` |
| 49 | `theorem` | [matched_flows_differ](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/matched-flows-differ--1b09fb2d257484074219a4a8.md) | 297 | `result-track:1b09fb2d257484074219a4a81092a7babf05e7ccd5a18066d35c12ced33b3848` |
| 50 | `theorem` | [tree_half_expansion](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/declarations/tree-half-expansion--9cc0dee7dc828de69b10230e.md) | 309 | `result-track:9cc0dee7dc828de69b10230e9a69b54f31d33c02ada7cfc92ef0f3660616fed7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
