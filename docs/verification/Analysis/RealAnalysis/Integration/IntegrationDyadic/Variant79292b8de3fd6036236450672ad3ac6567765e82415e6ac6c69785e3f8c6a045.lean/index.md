# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegrationDyadic.Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21dc0ee17918724bacc9ee2a78d079fc5730702c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21dc0ee17918724bacc9ee2a78d079fc5730702c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEvalDyadic` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalDyadic1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/evaldyadic1--0b236e7838ddc41d91a92099.md) | 45 | `declaration-track:0b236e7838ddc41d91a92099223f5f57573c1b1c062e436a33ca16fec97edc90` |
| 2 | `def` | [integrateInterval1Dyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integrateinterval1dyadic--76fb8b7bfaf29cecbec4d964.md) | 51 | `declaration-track:76fb8b7bfaf29cecbec4d964227f13a5fc9631b3d1296127bcf737737ea810ce` |
| 3 | `theorem` | [integrateInterval1Dyadic_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integrateinterval1dyadic-correct--cf6f6c9c1c27ed6b50606779.md) | 56 | `result-track:cf6f6c9c1c27ed6b50606779ebb82a2eeaba2169b4681d173149279c4881b86e` |
| 4 | `def` | [collectBoundsDyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/collectboundsdyadic--a7c4b0be5d03c13963688e26.md) | 121 | `declaration-track:a7c4b0be5d03c13963688e263514f05fe0fc16b2b1cf0c987c3dfdb82434a260` |
| 5 | `def` | [integratePartitionDyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integratepartitiondyadic--36bbc95427f3878590639e83.md) | 126 | `declaration-track:36bbc95427f3878590639e830a9d731e419702f1818bd3be08c8363aa4827570` |
| 6 | `def` | [partitionDomainValid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/partitiondomainvalid--026a42c6cae499ff47f79882.md) | 135 | `declaration-track:026a42c6cae499ff47f79882bff57ebe5d461be2d570a9d66dc4f63974da8e29` |
| 7 | `def` | [checkPartitionDomainValid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkpartitiondomainvalid--7cd72473184f6a6facc063e3.md) | 142 | `declaration-track:7cd72473184f6a6facc063e3fe7374c5ef5c779410847490ed1ed3e40bea1786` |
| 8 | `theorem` | [checkPartitionDomainValid_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkpartitiondomainvalid-correct--b67f24274e6df13bfb774a82.md) | 147 | `result-track:b67f24274e6df13bfb774a82440d461a7f98f718837e90edbd9be936c7fa5c21` |
| 9 | `def` | [checkIntegralLowerBoundDyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkintegrallowerbounddyadic--5d185b0544a22df7b1bdd8b2.md) | 162 | `declaration-track:5d185b0544a22df7b1bdd8b20b442cd838d47272fecfb183315b73601c7bde5f` |
| 10 | `def` | [checkIntegralUpperBoundDyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkintegralupperbounddyadic--1c8b94d323ef49f12cc254f7.md) | 170 | `declaration-track:1c8b94d323ef49f12cc254f7c59ab65a2a50358a2e501524200a6468b54039cb` |
| 11 | `def` | [checkIntegralLowerBoundDyadicFull](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkintegrallowerbounddyadicfull--79e9385b7070418e07e070f2.md) | 179 | `declaration-track:79e9385b7070418e07e070f20d919332f8138201f3215f2fac9fb1270460194f` |
| 12 | `def` | [checkIntegralUpperBoundDyadicFull](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkintegralupperbounddyadicfull--4d742ec36ad1244da4df89fa.md) | 188 | `declaration-track:4d742ec36ad1244da4df89fac6cb3b7412049a3a0a2b46666ce22954139f39dd` |
| 13 | `theorem` | [integral_mem_bound_dyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integral-mem-bound-dyadic--21db9886d5aca27300476a82.md) | 198 | `result-track:21db9886d5aca27300476a82794be1ee0d5a4ca51cb428d9a7a88a298abffbf2` |
| 14 | `theorem` | [integral_lower_of_check_dyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integral-lower-of-check-dyadic--b193ce9a1067ccb97e73cdf9.md) | 234 | `result-track:b193ce9a1067ccb97e73cdf9e29c0289c73b39fd1f87ef81738115f41ce3a5f8` |
| 15 | `theorem` | [integral_upper_of_check_dyadic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integral-upper-of-check-dyadic--c4801e88085ab9aa07997d1e.md) | 249 | `result-track:c4801e88085ab9aa07997d1ee29a2ff4b85760f1e8653d38a37ee9caa66da8b5` |
| 16 | `def` | [integratePartitionDyadicList](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integratepartitiondyadiclist--a3a1ae12dddd45e8a896086b.md) | 267 | `declaration-track:a3a1ae12dddd45e8a896086b02cdecb8829560be4e8ef028e238bdab0f6cb3c6` |
| 17 | `def` | [checkPartitionDomainValidList](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkpartitiondomainvalidlist--b39838254c343d10190db434.md) | 273 | `declaration-track:b39838254c343d10190db434192ae3ff90ca4819a459c46d452120c1cfcc5ab8` |
| 18 | `def` | [checkIntegralLowerBoundDyadicList](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkintegrallowerbounddyadiclist--1998d5134b93b1b075d8b95a.md) | 279 | `declaration-track:1998d5134b93b1b075d8b95acf3071385fac1e9a5dc799b46cdfa24979f305ca` |
| 19 | `def` | [checkIntegralUpperBoundDyadicList](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkintegralupperbounddyadiclist--39df6df5e4fa6c3ffb1d0129.md) | 285 | `declaration-track:39df6df5e4fa6c3ffb1d0129448203ef84056fcebd7d677152c93b1589ad7502` |
| 20 | `structure` | [ListPartitionCovers](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/listpartitioncovers--cdd8865784fb0819c7a140be.md) | 295 | `declaration-track:cdd8865784fb0819c7a140be2cedfcc7c721068a14223d4658342fb60c0cc908` |
| 21 | `def` | [listPartitionDomainValid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/listpartitiondomainvalid--889b703c3907635ebb2e445a.md) | 303 | `declaration-track:889b703c3907635ebb2e445a406c6cae05df5435306d97c613bd5044362e94fb` |
| 22 | `theorem` | [checkPartitionDomainValidList_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/checkpartitiondomainvalidlist-correct--1f7cbea432a936bb4b85ff45.md) | 309 | `result-track:1f7cbea432a936bb4b85ff450dd973f251a1ec4fbe1123a5b9900be39d7091b5` |
| 23 | `theorem` | [lo_le_part_lo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/lo-le-part-lo--f22a05119fab2bba5f08d439.md) | 318 | `result-track:f22a05119fab2bba5f08d43900a168231184ddbf4d99241614991b78883cd8d6` |
| 24 | `theorem` | [part_hi_le_hi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/part-hi-le-hi--f4b04e5e83c65f9ec9daeafb.md) | 333 | `result-track:f4b04e5e83c65f9ec9daeafbc49f9b3b26dc8188ceae1401f1536a6d9c7c355b` |
| 25 | `theorem` | [integral_mem_bound_dyadic_list](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integral-mem-bound-dyadic-list--9a513b7d58ac3c4088a5578b.md) | 356 | `result-track:9a513b7d58ac3c4088a5578b01856cac405249f45f7d2ebadf37b69ff325f1de` |
| 26 | `theorem` | [integral_lower_of_check_dyadic_list](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integral-lower-of-check-dyadic-list--5018bde5dcdc268fa669a149.md) | 447 | `result-track:5018bde5dcdc268fa669a149ca603e32cfa46f600d2663a8aacd22e9a5973582` |
| 27 | `theorem` | [integral_upper_of_check_dyadic_list](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/declarations/integral-upper-of-check-dyadic-list--8a7419c646c425dfd93a2283.md) | 463 | `result-track:8a7419c646c425dfd93a2283ca140f1aa9c96a17cdf01883496eb6be9af27af9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
