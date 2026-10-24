# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegrationDyadic.Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "503299e995e73d1768f22a63316db017b5f817b8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `503299e995e73d1768f22a63316db017b5f817b8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEvalDyadic` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalDyadic1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/evaldyadic1--2d78296d07a998ac22c848b7.md) | 37 | `declaration-track:2d78296d07a998ac22c848b7cdfce724ccde04443189cc48889b1e6b438b308b` |
| 2 | `def` | [integrateInterval1Dyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integrateinterval1dyadic--77a7766cefc2397b2bdaa70f.md) | 43 | `declaration-track:77a7766cefc2397b2bdaa70fbed585d91630cb77ce9e5e195a5a12d2ace41fd4` |
| 3 | `theorem` | [integrateInterval1Dyadic_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integrateinterval1dyadic-correct--97a1e18c474b834a67cf6cb8.md) | 48 | `result-track:97a1e18c474b834a67cf6cb82c442855809bec5dfed03fe6443739b8a0dcd44f` |
| 4 | `def` | [collectBoundsDyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/collectboundsdyadic--ca76aa99a5c3d1857f81a903.md) | 113 | `declaration-track:ca76aa99a5c3d1857f81a9032c08b95de67da4b76f8cf33565199d3bd2c4f605` |
| 5 | `def` | [integratePartitionDyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integratepartitiondyadic--891f4d3bf5c33c1dd92492c1.md) | 118 | `declaration-track:891f4d3bf5c33c1dd92492c1e3fe303bac2bb82181f49a4b5b4b2a34275f9849` |
| 6 | `def` | [partitionDomainValid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/partitiondomainvalid--1ca196c64042caf0793db850.md) | 127 | `declaration-track:1ca196c64042caf0793db85078e6204a50c14404379d4394ac38235dcbb29792` |
| 7 | `def` | [checkPartitionDomainValid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkpartitiondomainvalid--438edfd66a0ae4a2a1eafb80.md) | 134 | `declaration-track:438edfd66a0ae4a2a1eafb80d0a72b11ecf537bf56f592a1c951b68fa9fce92b` |
| 8 | `theorem` | [checkPartitionDomainValid_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkpartitiondomainvalid-correct--0fb67c0bbed02e929ed1fa2d.md) | 139 | `result-track:0fb67c0bbed02e929ed1fa2da24e0bd737b9fe61e716b259ec15a4f995f1bc03` |
| 9 | `def` | [checkIntegralLowerBoundDyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkintegrallowerbounddyadic--a8159d44bc119379e77548bd.md) | 154 | `declaration-track:a8159d44bc119379e77548bd1afc9b4826c9452c327a9ed3d6ef4118daef66d8` |
| 10 | `def` | [checkIntegralUpperBoundDyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkintegralupperbounddyadic--863db09ab71bfe85b6d9b961.md) | 162 | `declaration-track:863db09ab71bfe85b6d9b961a473a565a9b6e2f1378704b8a403e3b949ac9932` |
| 11 | `def` | [checkIntegralLowerBoundDyadicFull](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkintegrallowerbounddyadicfull--5b7042a04e58877be6354247.md) | 171 | `declaration-track:5b7042a04e58877be6354247a65820d84ea961115ffa9be5a11785ad0a0c6e90` |
| 12 | `def` | [checkIntegralUpperBoundDyadicFull](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkintegralupperbounddyadicfull--0049a50a58c561c306256644.md) | 180 | `declaration-track:0049a50a58c561c306256644b09b4bf0d0eff516a25c2e265cb2ddb88aed4032` |
| 13 | `theorem` | [integral_mem_bound_dyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integral-mem-bound-dyadic--b40b5273ed31c5e76fcfa723.md) | 190 | `result-track:b40b5273ed31c5e76fcfa723a3567a6114ce7d01c6e966a1460d4fb393d8a680` |
| 14 | `theorem` | [integral_lower_of_check_dyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integral-lower-of-check-dyadic--7043ab3a82522499dc608a06.md) | 226 | `result-track:7043ab3a82522499dc608a062b7c6ff54af29bd3e4f647d9fdb139a11e6ae56a` |
| 15 | `theorem` | [integral_upper_of_check_dyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integral-upper-of-check-dyadic--77b8c2862314c23a6328b5e0.md) | 241 | `result-track:77b8c2862314c23a6328b5e0eb47189c738e2c996a838450f1aa55c5c8c6cdfe` |
| 16 | `def` | [integratePartitionDyadicList](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integratepartitiondyadiclist--dfe7622ed83d8d2082780173.md) | 259 | `declaration-track:dfe7622ed83d8d2082780173b734b593e7f68729a2eb78eafb6c42bcf15e8402` |
| 17 | `def` | [checkPartitionDomainValidList](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkpartitiondomainvalidlist--b8bc25b9e3b627485c67662b.md) | 265 | `declaration-track:b8bc25b9e3b627485c67662b7651b70c51167ec71c4cd7523e94a8fc8cdb0c67` |
| 18 | `def` | [checkIntegralLowerBoundDyadicList](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkintegrallowerbounddyadiclist--220be3c1fc5294838995466d.md) | 271 | `declaration-track:220be3c1fc5294838995466d670f37b856bf7cb9950b03125cda01089d0120fb` |
| 19 | `def` | [checkIntegralUpperBoundDyadicList](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkintegralupperbounddyadiclist--5ed188fa44eb97883a1c9596.md) | 277 | `declaration-track:5ed188fa44eb97883a1c959699d22d8c56de3551c55f074cd3f696239af7678b` |
| 20 | `structure` | [ListPartitionCovers](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/listpartitioncovers--2aed12ce6fa709b5842c4162.md) | 287 | `declaration-track:2aed12ce6fa709b5842c4162d775fa1d234f7bcbfebe153d552de5268dd00468` |
| 21 | `def` | [listPartitionDomainValid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/listpartitiondomainvalid--8529235aafd41f16021914a7.md) | 295 | `declaration-track:8529235aafd41f16021914a7b98bf093eed7f8f692f5bf2ea159c3f174badb09` |
| 22 | `theorem` | [checkPartitionDomainValidList_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/checkpartitiondomainvalidlist-correct--41caeff350d7acf91dc55a7c.md) | 301 | `result-track:41caeff350d7acf91dc55a7cc6cc2eb2023682cc3e14e5cee6cb63f80eb27a65` |
| 23 | `theorem` | [lo_le_part_lo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/lo-le-part-lo--8719d3be142ba1025301c308.md) | 310 | `result-track:8719d3be142ba1025301c30890bc6ed553dbc7b3d43abb77846b3f91aa95c677` |
| 24 | `theorem` | [part_hi_le_hi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/part-hi-le-hi--6f16d7b992bf8a66b34976fd.md) | 325 | `result-track:6f16d7b992bf8a66b34976fdf3a9990072b82df04e5676e4ae0f72d9adb99421` |
| 25 | `theorem` | [integral_mem_bound_dyadic_list](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integral-mem-bound-dyadic-list--0934eb24cf67cbc8d242528f.md) | 348 | `result-track:0934eb24cf67cbc8d242528fea9e3fa100716e97c65be9ef5a01f02e57229df5` |
| 26 | `theorem` | [integral_lower_of_check_dyadic_list](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integral-lower-of-check-dyadic-list--3905aa6998e2ce0e076a3131.md) | 439 | `result-track:3905aa6998e2ce0e076a3131ec1e7e912b228d4ba85dffe6c3daf5b5e1856a31` |
| 27 | `theorem` | [integral_upper_of_check_dyadic_list](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/declarations/integral-upper-of-check-dyadic-list--2bce7f0cbf53e8f9d0c39ba1.md) | 455 | `result-track:2bce7f0cbf53e8f9d0c39ba1de15dee4862cc57e45f9fa16e0df971e20677258` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
