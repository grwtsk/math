# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Number.Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11485d7108bb8c9e4569a1f1566ad6bd004cd64b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11485d7108bb8c9e4569a1f1566ad6bd004cd64b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean.json)

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
| 1 | `structure` | [FiniteAnalyticNumberModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/finiteanalyticnumbermodel--1c250818f2fdf099bb3e4c5e.md) | 35 | `declaration-track:1c250818f2fdf099bb3e4c5e8e41ea4b148d20184fdaa8cdd234ac3e65e30802` |
| 2 | `def` | [ofFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/offinite--961b2edc1634c6ce3c36ba40.md) | 41 | `declaration-track:961b2edc1634c6ce3c36ba40b6d85e1800452f6564ee5f57cabe3af2da0dcdcf` |
| 3 | `def` | [toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/tofinite--94598189a7d7eb17bfa729ca.md) | 47 | `declaration-track:94598189a7d7eb17bfa729caaa351470d7e84d45c6938f831b9315f5c23e0b16` |
| 4 | `theorem` | [toFinite_ofFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/tofinite-offinite--0362236723f0315a4f7c0155.md) | 52 | `result-track:0362236723f0315a4f7c015556866a206fc56784d55d6207997a63e9b4362849` |
| 5 | `theorem` | [ofFinite_toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/offinite-tofinite--7cebd87507c86e58b5ab08b2.md) | 57 | `result-track:7cebd87507c86e58b5ab08b295be2de5ec575e85b9b34de12031e49f8a729bb4` |
| 6 | `def` | [exactEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/exactequivalence--f06c8c7f7f65a1e76ecfae7e.md) | 64 | `declaration-track:f06c8c7f7f65a1e76ecfae7e3f6f86589db642ed8bef67601a4801807711710e` |
| 7 | `structure` | [AnalyticNumberShadowPayload](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/analyticnumbershadowpayload--b01041f84ea8affb7af3fd0e.md) | 81 | `declaration-track:b01041f84ea8affb7af3fd0e6318c5d1d65851f137548119560ffffb794519d0` |
| 8 | `structure` | [NumberToAnalyticBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/numbertoanalyticbridge--daee6846aa6ad94dd9c4b68b.md) | 89 | `declaration-track:daee6846aa6ad94dd9c4b68b8eafa3f7c01b76eefd274b6c28950502332ab9dc` |
| 9 | `def` | [NumberToAnalyticBridge.toFiniteAnalyticNumberModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/numbertoanalyticbridge-tofiniteanalyticnumbermodel--0b89b3c58153a77911fe3ae2.md) | 113 | `declaration-track:0b89b3c58153a77911fe3ae233f98ac1767e629e50b8a82446818f1cfa1e7112` |
| 10 | `def` | [NumberToAnalyticBridge.projectAnalytic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/numbertoanalyticbridge-projectanalytic--d5ffa0da0a6e32bdf4af4e62.md) | 119 | `declaration-track:d5ffa0da0a6e32bdf4af4e6264b29a1338583b72de0fa2315a8837512d383c42` |
| 11 | `theorem` | [number_to_analytic_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/number-to-analytic-sound--cc7f9e4c07de39fc296039cd.md) | 124 | `result-track:cc7f9e4c07de39fc296039cd7e1d02e0c9896177ba0d81d980827e5e72826265` |
| 12 | `theorem` | [analytic_to_number_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/analytic-to-number-sound--742c2601da1ed1ffef22eec6.md) | 129 | `result-track:742c2601da1ed1ffef22eec61112f25164a4fa1774f66605aeab37a9530dd8dc` |
| 13 | `theorem` | [number_analytic_round_trip_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/number-analytic-round-trip-sound--253946b898bf8390cccee17f.md) | 134 | `result-track:253946b898bf8390cccee17f334c7eaccc86296f508972338dca15f73534eaa3` |
| 14 | `theorem` | [number_analytic_bridge_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/number-analytic-bridge-sound--743b357d1985ddbb4726c567.md) | 139 | `result-track:743b357d1985ddbb4726c5673ae429c1009ef2c0075f4d135419d752a0ca9589` |
| 15 | `def` | [ArithmeticPayloadOwnsFullAnalyticNumberObject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/arithmeticpayloadownsfullanalyticnumberobject--469538c8efa1b03aa6840723.md) | 153 | `declaration-track:469538c8efa1b03aa684072328a5f8368c79a3ae3444a663fa1f308e21697a04` |
| 16 | `def` | [AnalyticNumberShadowIsFullAnalyticNumberObject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/analyticnumbershadowisfullanalyticnumberobject--fea3c20bc9acd337c3ea6a0b.md) | 158 | `declaration-track:fea3c20bc9acd337c3ea6a0bcb2c8c6b136c9db22cf513770e9a5489c4dd5710` |
| 17 | `theorem` | [arithmetic_payload_not_full_analytic_number_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/arithmetic-payload-not-full-analytic-number-object--3c09b82da002f9b1541efa55.md) | 162 | `result-track:3c09b82da002f9b1541efa55fa530f3e3c3c76ae0e31d3c21296c116c4178785` |
| 18 | `theorem` | [analytic_shadow_not_full_analytic_number_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/analytic-shadow-not-full-analytic-number-object--ed50bf44f571d978ac1b784c.md) | 168 | `result-track:ed50bf44f571d978ac1b784c39c3094333244910d79f7d320f47c27d4722d1c3` |
| 19 | `theorem` | [arithmetic_payload_exactly_equivalent_to_finite_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/arithmetic-payload-exactly-equivalent-to-finite-model--813cb3cdfa7d89310f7bd0e2.md) | 180 | `result-track:813cb3cdfa7d89310f7bd0e282f5dfd1310c8282841f826d61cb36d0ba7fd952` |
| 20 | `theorem` | [bidirectional_bridge_does_not_give_full_analytic_ownership](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/bidirectional-bridge-does-not-give-full-analytic-ownership--8da5b939731b7b9948829fe8.md) | 187 | `result-track:8da5b939731b7b9948829fe83eeabe597fb57b6a3d7b04d82d3c2c384dafdcb3` |
| 21 | `theorem` | [number_analytic_bridge_boundary_summary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3.lean/declarations/number-analytic-bridge-boundary-summary--4846d731b5c2bd150b9184c2.md) | 200 | `result-track:4846d731b5c2bd150b9184c2a1e835c33d656d419555b29ac6bb7233eaa7d527` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
