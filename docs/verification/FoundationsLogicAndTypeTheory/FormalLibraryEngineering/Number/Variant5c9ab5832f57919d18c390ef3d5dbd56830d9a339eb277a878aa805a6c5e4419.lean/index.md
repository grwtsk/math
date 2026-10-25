# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Number.Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1347e7cbafb09f4b5d937e7bb89cea733b6f34f4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1347e7cbafb09f4b5d937e7bb89cea733b6f34f4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Bridge` — import line 1; external provider; requires a separately pinned dependency.
- `Number` — import line 2; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Zeta` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteAnalyticNumberModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/finiteanalyticnumbermodel--c6bd639b6a671d0e57f9e440.md) | 27 | `declaration-track:c6bd639b6a671d0e57f9e440f5e8d53cef89addfdbaff34b00a741ee0ebd4b89` |
| 2 | `def` | [ofFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/offinite--c6f7af0e152be309c7933f01.md) | 33 | `declaration-track:c6f7af0e152be309c7933f01fb5958fe1e62494a258d435fb699789b585541a2` |
| 3 | `def` | [toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/tofinite--4ac5c98db0cdbea132d763f2.md) | 39 | `declaration-track:4ac5c98db0cdbea132d763f20a66698adeebefd5360e3a677353197aade08287` |
| 4 | `theorem` | [toFinite_ofFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/tofinite-offinite--b06cc1efd3efab4dfee7beb3.md) | 44 | `result-track:b06cc1efd3efab4dfee7beb38b884a9f6436891007a905182bb0aa55ad0dfa64` |
| 5 | `theorem` | [ofFinite_toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/offinite-tofinite--55d087ee089dfbf1671bc749.md) | 49 | `result-track:55d087ee089dfbf1671bc749de282c642076076fb65f5d6d40792be9f315fcf0` |
| 6 | `def` | [exactEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/exactequivalence--e72917e193359480c0e75e85.md) | 56 | `declaration-track:e72917e193359480c0e75e859dca50c16c5d31a9f42beee1808a68a901d3b8cf` |
| 7 | `structure` | [AnalyticNumberShadowPayload](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/analyticnumbershadowpayload--8f91eeed88774a7beaf2614e.md) | 73 | `declaration-track:8f91eeed88774a7beaf2614e51de49560087105760ad2fcccae78d97e1e4c25c` |
| 8 | `structure` | [NumberToAnalyticBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/numbertoanalyticbridge--57c3020c0611604a0b079277.md) | 81 | `declaration-track:57c3020c0611604a0b079277a5f7690d3341abe9b9c87f582fd5f30faad43645` |
| 9 | `def` | [NumberToAnalyticBridge.toFiniteAnalyticNumberModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/numbertoanalyticbridge-tofiniteanalyticnumbermodel--94ee1f8d5c277f5d1db4f4ee.md) | 105 | `declaration-track:94ee1f8d5c277f5d1db4f4eef289f8ce6175f3c519915200be002f8a9625db2a` |
| 10 | `def` | [NumberToAnalyticBridge.projectAnalytic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/numbertoanalyticbridge-projectanalytic--d508122a9c225c2a5ee9b0e9.md) | 111 | `declaration-track:d508122a9c225c2a5ee9b0e93e5ae0a916ea6be2d4032b0d8ecf1aa205f64420` |
| 11 | `theorem` | [number_to_analytic_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/number-to-analytic-sound--18ffb9780a3eb9c2becf2662.md) | 116 | `result-track:18ffb9780a3eb9c2becf2662349ee9e97160b60496f796f1b3c84259fcc796e1` |
| 12 | `theorem` | [analytic_to_number_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/analytic-to-number-sound--6b9e8aa516ec1e502e208940.md) | 121 | `result-track:6b9e8aa516ec1e502e20894024e43e1d085331993cdfa29716b8e8a3a3bca61e` |
| 13 | `theorem` | [number_analytic_round_trip_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/number-analytic-round-trip-sound--15c4c4382f08d17ead7b6a91.md) | 126 | `result-track:15c4c4382f08d17ead7b6a911107d9283b9cc52dcec9d44fca05b41861786812` |
| 14 | `theorem` | [number_analytic_bridge_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/number-analytic-bridge-sound--5d5a37021e32637036dfd5ca.md) | 131 | `result-track:5d5a37021e32637036dfd5ca196a84b50aecb66c36b7e465b96b69907ab22101` |
| 15 | `def` | [ArithmeticPayloadOwnsFullAnalyticNumberObject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/arithmeticpayloadownsfullanalyticnumberobject--e071babc77c131bf3d91176c.md) | 145 | `declaration-track:e071babc77c131bf3d91176caaf0dbf7451a3078ec8fbe6959288f8092b84999` |
| 16 | `def` | [AnalyticNumberShadowIsFullAnalyticNumberObject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/analyticnumbershadowisfullanalyticnumberobject--b9e09e9b8910639b70868d23.md) | 150 | `declaration-track:b9e09e9b8910639b70868d235882baab85a4b45b08c53b3e23a9ac7096645e01` |
| 17 | `theorem` | [arithmetic_payload_not_full_analytic_number_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/arithmetic-payload-not-full-analytic-number-object--3643e4811ffb4011c251f4a8.md) | 154 | `result-track:3643e4811ffb4011c251f4a87621b852b8c53c275e8c943151ddc69066f12ac9` |
| 18 | `theorem` | [analytic_shadow_not_full_analytic_number_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/analytic-shadow-not-full-analytic-number-object--7fb33fcf72d120b95bfe99ba.md) | 160 | `result-track:7fb33fcf72d120b95bfe99ba9d231f9e7cbc77910fca514e4eb2791b4a0b4058` |
| 19 | `theorem` | [arithmetic_payload_exactly_equivalent_to_finite_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/arithmetic-payload-exactly-equivalent-to-finite-model--0a3c31729d9f70c864b759d3.md) | 172 | `result-track:0a3c31729d9f70c864b759d374acdb0dadd45a2dc42ccdc1f76ff24126013370` |
| 20 | `theorem` | [bidirectional_bridge_does_not_give_full_analytic_ownership](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/bidirectional-bridge-does-not-give-full-analytic-ownership--414f81e383aa1d84883374e9.md) | 179 | `result-track:414f81e383aa1d84883374e9a88604adfc6a7012c37664b657c15c8a0b977d72` |
| 21 | `theorem` | [number_analytic_bridge_boundary_summary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419.lean/declarations/number-analytic-bridge-boundary-summary--8898aa50b715b6ff891ffcdf.md) | 192 | `result-track:8898aa50b715b6ff891ffcdf4d1a7fd98f7112cbb672a98e6576bd2616360ad1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
