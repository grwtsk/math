# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Number.Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d5b2a262ae435e0ac71ad599b2fec4e2d9307f8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d5b2a262ae435e0ac71ad599b2fec4e2d9307f8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Bridge` — import line 6; external provider; requires a separately pinned dependency.
- `Number` — import line 7; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Zeta` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteAnalyticNumberModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/finiteanalyticnumbermodel--d65bd87261e2b268184e0379.md) | 35 | `declaration-track:d65bd87261e2b268184e03791013e43a00309b165dfebbad96d39404d7264617` |
| 2 | `def` | [ofFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/offinite--86558617c5218ce6a918c762.md) | 41 | `declaration-track:86558617c5218ce6a918c762ca0075b88ae1f34b9f1817956691314836263e88` |
| 3 | `def` | [toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/tofinite--9f3705ebf3ec023657f1c5bd.md) | 47 | `declaration-track:9f3705ebf3ec023657f1c5bd2821e90987c3167f8e51ccb207880f6d07ad5e93` |
| 4 | `theorem` | [toFinite_ofFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/tofinite-offinite--cc8ca20c52258eb40d1a4b81.md) | 52 | `result-track:cc8ca20c52258eb40d1a4b81e9029934e53e2df6bae0b478355c7181abedce61` |
| 5 | `theorem` | [ofFinite_toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/offinite-tofinite--e6cd6cb8eb60bbbf382231ef.md) | 57 | `result-track:e6cd6cb8eb60bbbf382231efc79ab9a86bd581bd4174ad379eea1b98335c4d52` |
| 6 | `def` | [exactEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/exactequivalence--beaa613b113e06f4b93e8baf.md) | 64 | `declaration-track:beaa613b113e06f4b93e8baf23924753145e7483dfff036c4891cdfeb8ddb3b2` |
| 7 | `structure` | [AnalyticNumberShadowPayload](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/analyticnumbershadowpayload--f828973eae924d6e8556f7a3.md) | 81 | `declaration-track:f828973eae924d6e8556f7a38fef5aa6c0709634c098d3d9d58273eb9d0d1e9c` |
| 8 | `structure` | [NumberToAnalyticBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/numbertoanalyticbridge--8e1a611a98e33eb52e51dba9.md) | 89 | `declaration-track:8e1a611a98e33eb52e51dba9f81317a46a66ea95b8952f9100b8bc0df1e67d85` |
| 9 | `def` | [NumberToAnalyticBridge.toFiniteAnalyticNumberModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/numbertoanalyticbridge-tofiniteanalyticnumbermodel--56c78ba70df680616810a0f7.md) | 113 | `declaration-track:56c78ba70df680616810a0f745cb67a68a7ca3df8302dfa84accdbef3a6fbfac` |
| 10 | `def` | [NumberToAnalyticBridge.projectAnalytic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/numbertoanalyticbridge-projectanalytic--2c62ec95c39153a44860d8f5.md) | 119 | `declaration-track:2c62ec95c39153a44860d8f5536fa3fbf2bc4ffd28ac5803c7580aae8efbd506` |
| 11 | `theorem` | [number_to_analytic_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/number-to-analytic-sound--fe2d9f5d710fa036fa722c23.md) | 124 | `result-track:fe2d9f5d710fa036fa722c23364178d91eb7379ca83afe2b6ff1af85ad69e8b3` |
| 12 | `theorem` | [analytic_to_number_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/analytic-to-number-sound--6f31ba407c9005dc756029d5.md) | 129 | `result-track:6f31ba407c9005dc756029d553188812fe036ecef2a7fd6fd630f73b76fb63bd` |
| 13 | `theorem` | [number_analytic_round_trip_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/number-analytic-round-trip-sound--76cdffeca063f5c64f7079bc.md) | 134 | `result-track:76cdffeca063f5c64f7079bc4c1d264010bb053afee6fc6fabdd44aa36af9625` |
| 14 | `theorem` | [number_analytic_bridge_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/number-analytic-bridge-sound--80a7696ad6dd838f3f5b62c2.md) | 139 | `result-track:80a7696ad6dd838f3f5b62c2c1a88aef0ce741f55c9bf1bfe7c0d5027ccd3a8e` |
| 15 | `def` | [ArithmeticPayloadOwnsFullAnalyticNumberObject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/arithmeticpayloadownsfullanalyticnumberobject--df6583b54be7e11c972d852e.md) | 153 | `declaration-track:df6583b54be7e11c972d852e53db1de3dcb879eac9c39919ab64e58d385e0b53` |
| 16 | `def` | [AnalyticNumberShadowIsFullAnalyticNumberObject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/analyticnumbershadowisfullanalyticnumberobject--abb5253f6135d7f09ec7a4a8.md) | 158 | `declaration-track:abb5253f6135d7f09ec7a4a8090ace732bcf749a5d2113f0b2fd89e64c304cc5` |
| 17 | `theorem` | [arithmetic_payload_not_full_analytic_number_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/arithmetic-payload-not-full-analytic-number-object--d71b906c2fc4692ed605edd7.md) | 162 | `result-track:d71b906c2fc4692ed605edd74a3b2834cccebf2404b48a6de462cb03295ce0fa` |
| 18 | `theorem` | [analytic_shadow_not_full_analytic_number_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/analytic-shadow-not-full-analytic-number-object--7462795951c096c2b7db3986.md) | 168 | `result-track:7462795951c096c2b7db39867a9e630daaf6b46db2fda9ae88859adfcf2bdc79` |
| 19 | `theorem` | [arithmetic_payload_exactly_equivalent_to_finite_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/arithmetic-payload-exactly-equivalent-to-finite-model--915085147e57a823dcff30cf.md) | 180 | `result-track:915085147e57a823dcff30cf6be3788f016d30cf14cddb73f337c3317b284a50` |
| 20 | `theorem` | [bidirectional_bridge_does_not_give_full_analytic_ownership](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/bidirectional-bridge-does-not-give-full-analytic-ownership--466f57e2ccca2d2a0e598471.md) | 187 | `result-track:466f57e2ccca2d2a0e598471cffdb53dda8fba27e8ce71a9f1e2a942f811b0a1` |
| 21 | `theorem` | [number_analytic_bridge_boundary_summary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variantd5a78b153b46a89890d51a9574521931bf04d24e9955de9e6ac89a293172f2d6.lean/declarations/number-analytic-bridge-boundary-summary--81235a56245abdf3c58c9347.md) | 200 | `result-track:81235a56245abdf3c58c93478acd3d904cace10518dfab3e27c75b52dae9ceaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
