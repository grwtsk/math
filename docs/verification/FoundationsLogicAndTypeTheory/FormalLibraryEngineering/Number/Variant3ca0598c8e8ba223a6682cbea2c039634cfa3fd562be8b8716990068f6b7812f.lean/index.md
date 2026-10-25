# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Number.Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81210c2bf0dd0da160ae5b0b96189438846e22f0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81210c2bf0dd0da160ae5b0b96189438846e22f0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean.json)

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
| 1 | `structure` | [FiniteAnalyticNumberModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/finiteanalyticnumbermodel--a5a0c69da0f18733d64ba199.md) | 27 | `declaration-track:a5a0c69da0f18733d64ba199ac6a62617ee48dac6eaf9dd4e427cbe55e8a2815` |
| 2 | `def` | [ofFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/offinite--94083c2f49bc5d08d3296464.md) | 33 | `declaration-track:94083c2f49bc5d08d32964646ceecd7c4cefee6cc6a1c8161b0621f56661b66b` |
| 3 | `def` | [toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/tofinite--85838c593cc6cad43ab426d8.md) | 39 | `declaration-track:85838c593cc6cad43ab426d8c2c25a99fef986aac6baa2874041bf3e4ba70145` |
| 4 | `theorem` | [toFinite_ofFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/tofinite-offinite--0819357852d5da11ba10bd74.md) | 44 | `result-track:0819357852d5da11ba10bd746f9e633e389ad27928eb9ea21b1f8d0708a9a96c` |
| 5 | `theorem` | [ofFinite_toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/offinite-tofinite--059f32af937f919a8a6e3f18.md) | 49 | `result-track:059f32af937f919a8a6e3f18be6a5fe4a669074efa849e7255b391c3499e785a` |
| 6 | `def` | [exactEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/exactequivalence--7470ea55a3dc0c47f5d6cda8.md) | 56 | `declaration-track:7470ea55a3dc0c47f5d6cda8b85fd532c2815b40a326f8365a7ae2d9379f0806` |
| 7 | `structure` | [AnalyticNumberShadowPayload](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/analyticnumbershadowpayload--a1d20a09f6ccb34ed785b5b8.md) | 73 | `declaration-track:a1d20a09f6ccb34ed785b5b8748067654254650448e8abe5a1f5c9e46caa7edd` |
| 8 | `structure` | [NumberToAnalyticBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/numbertoanalyticbridge--88f37979b8b5a841d1a67148.md) | 81 | `declaration-track:88f37979b8b5a841d1a6714800a631932282b68e65ffa044210b5578ce27a28a` |
| 9 | `def` | [NumberToAnalyticBridge.toFiniteAnalyticNumberModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/numbertoanalyticbridge-tofiniteanalyticnumbermodel--ef765333abc930fdb9538ffd.md) | 105 | `declaration-track:ef765333abc930fdb9538ffd95133f2c928a637155510634ce53c0d26264ea5e` |
| 10 | `def` | [NumberToAnalyticBridge.projectAnalytic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/numbertoanalyticbridge-projectanalytic--3b4a117b40820775d50d120b.md) | 111 | `declaration-track:3b4a117b40820775d50d120b0ff37b1b801ef962b66f6394668cead51ceace9a` |
| 11 | `theorem` | [number_to_analytic_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/number-to-analytic-sound--15e2ea4e3a5dc6e21700596e.md) | 116 | `result-track:15e2ea4e3a5dc6e21700596edc0d34de920ca31e558017b3686f256e28cedae4` |
| 12 | `theorem` | [analytic_to_number_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/analytic-to-number-sound--d071fc7951e97c32f5853ccf.md) | 121 | `result-track:d071fc7951e97c32f5853ccfd3e59283d1936f1777f99e567eacb8065c3a877a` |
| 13 | `theorem` | [number_analytic_round_trip_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/number-analytic-round-trip-sound--9017e57e9690a9e880163939.md) | 126 | `result-track:9017e57e9690a9e880163939ae00037803bb1f7004887609d53ec7b913226ce4` |
| 14 | `theorem` | [number_analytic_bridge_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/number-analytic-bridge-sound--134f3d7b67e421699e048cbf.md) | 131 | `result-track:134f3d7b67e421699e048cbfb20ba060974244c5ded4c145c36554c777aae805` |
| 15 | `def` | [ArithmeticPayloadOwnsFullAnalyticNumberObject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/arithmeticpayloadownsfullanalyticnumberobject--f27773a7c7868ae8b9b2b0b6.md) | 145 | `declaration-track:f27773a7c7868ae8b9b2b0b6f3b3acb00724909a60a6e1c8fbbad7f273f9b5ea` |
| 16 | `def` | [AnalyticNumberShadowIsFullAnalyticNumberObject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/analyticnumbershadowisfullanalyticnumberobject--e7a0c338f09956cdba524b3e.md) | 150 | `declaration-track:e7a0c338f09956cdba524b3e7083bb60df6e535d43ca361b3e639fa56f0f2eb9` |
| 17 | `theorem` | [arithmetic_payload_not_full_analytic_number_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/arithmetic-payload-not-full-analytic-number-object--15c371cc50c1fe9f53390f03.md) | 154 | `result-track:15c371cc50c1fe9f53390f0366300a3af989e780ceb9e4da8b1d53afcfe61a0b` |
| 18 | `theorem` | [analytic_shadow_not_full_analytic_number_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/analytic-shadow-not-full-analytic-number-object--61b69acf688b2b6bb38d334e.md) | 160 | `result-track:61b69acf688b2b6bb38d334ef50890864c32fcca035c54999ed3daebdeadb723` |
| 19 | `theorem` | [arithmetic_payload_exactly_equivalent_to_finite_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/arithmetic-payload-exactly-equivalent-to-finite-model--9396aa90b98ffde95b6c7cb4.md) | 172 | `result-track:9396aa90b98ffde95b6c7cb4f1806f17b69d578c704a44415d0219583ae3da10` |
| 20 | `theorem` | [bidirectional_bridge_does_not_give_full_analytic_ownership](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/bidirectional-bridge-does-not-give-full-analytic-ownership--f5fce77048c32db607874618.md) | 179 | `result-track:f5fce77048c32db607874618f0752710a028fae840836de88d011751cc50999b` |
| 21 | `theorem` | [number_analytic_bridge_boundary_summary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/declarations/number-analytic-bridge-boundary-summary--1d631d2eb5e7a09a930a9785.md) | 192 | `result-track:1d631d2eb5e7a09a930a97857a83cf7c3887864a815feb476daa9a694f884b0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
