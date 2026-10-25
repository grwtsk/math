# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Encoding.Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc60d2ebd8cb07f4dc2ac884ea0c32c914f451bc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc60d2ebd8cb07f4dc2ac884ea0c32c914f451bc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Encoding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.List` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Syntax` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/listencode--94b7e21a9ea9ccbe7f341612.md) | 60 | `declaration-track:94b7e21a9ea9ccbe7f3416123f2100a63f04027fe3a827dd748b2cd38d5bfc09` |
| 2 | `def` | [listDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/listdecode--a1325e1b660c01bdfd736c28.md) | 66 | `declaration-track:a1325e1b660c01bdfd736c2828d321dc65294eb0ab0c8a7517ae63e625790d37` |
| 3 | `theorem` | [listDecode_encode_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/listdecode-encode-list--cd594e2730d532a22ff058d8.md) | 74 | `result-track:cd594e2730d532a22ff058d85e2328e6e2ac1a81545174356e6dcaa8f8e75571` |
| 4 | `def` | [encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/encoding--cc2952340d153fd98aa5c231.md) | 100 | `declaration-track:cc2952340d153fd98aa5c231980e676b4918558929aef0fdb32b956ad999de19` |
| 5 | `theorem` | [listEncode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/listencode-injective--16b50b24508ec29dd020145b.md) | 110 | `result-track:16b50b24508ec29dd020145bbdb3179d897f52eddc82579b726426b907c0fda8` |
| 6 | `theorem` | [card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/card-le--373adcdc2f1b26cd6b09668d.md) | 114 | `result-track:373adcdc2f1b26cd6b09668d690dca627808764488f9fe656213da40053c609c` |
| 7 | `theorem` | [card_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/card-sigma--f90f4a010241b6abaf2e47e3.md) | 117 | `result-track:f90f4a010241b6abaf2e47e301221afaaab06afbaf7efc3706608aded61abe51` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/instance--5a01c511bbe1d17e4b3b257b.md) | 148 | `declaration-track:5a01c511bbe1d17e4b3b257b665af55992ebaca27b5012a40b170d5f62fc9cda` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/instance--ff86afb906d4136a03934547.md) | 155 | `declaration-track:ff86afb906d4136a039345471d498ae58b8eb8a1d99b53cd531bfcfdda86b5ea` |
| 10 | `instance` | [small](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/small--a27c78bd5d7c8654aa791834.md) | 160 | `declaration-track:a27c78bd5d7c8654aa79183458c0c3e7f52cc76da18deb1dfbd5c9e2a55ddd3c` |
| 11 | `def` | [listEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/listencode--1dade273ddc01d494396dc0e.md) | 168 | `declaration-track:1dade273ddc01d494396dc0e14abdc68899bbce33d53f026f172dd400b5320ed` |
| 12 | `def` | [sigmaAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/sigmaall--1d5fbb5c1073e881304f9c61.md) | 179 | `declaration-track:1d5fbb5c1073e881304f9c61dd0bc83b7f96c1256a4c432198e13128562b4916` |
| 13 | `lemma` | [sigmaAll_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/sigmaall-apply--bdf51e2413572e1bd386b3c3.md) | 185 | `result-track:bdf51e2413572e1bd386b3c307db973b09be3ee90c3ef532db1d2c7ed5c7f120` |
| 14 | `def` | [sigmaImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/sigmaimp--97736be9ce33c5bc63720448.md) | 190 | `declaration-track:97736be9ce33c5bc637204480022b533cd48e86d6043271b9094948d7582d3d2` |
| 15 | `lemma` | [sigmaImp_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/sigmaimp-apply--f620cd3363b2a7d73f057a31.md) | 195 | `result-track:f620cd3363b2a7d73f057a31c2e019ec0ca14f49338620e257d1481d8e5df97c` |
| 16 | `def` | [listDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/listdecode--78dda248dee519f334c069fe.md) | 200 | `declaration-track:78dda248dee519f334c069fe052ea0b30bd4d793c9cf29ed3958d4a2ba039b91` |
| 17 | `theorem` | [listDecode_encode_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/listdecode-encode-list--30e3964af4cc501625740e2d.md) | 221 | `result-track:30e3964af4cc501625740e2d9750e820c2a90f154265bb96093129485cae5f8e` |
| 18 | `def` | [encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/encoding--55541786abe716c7d8b788ac.md) | 284 | `declaration-track:55541786abe716c7d8b788acfb2b87b7a7d31d0148a203843c41634f84f01a38` |
| 19 | `theorem` | [listEncode_sigma_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/listencode-sigma-injective--9656e7dda7f715f28d30f15c.md) | 294 | `result-track:9656e7dda7f715f28d30f15cff72ec7d95f58aca208cce47462295d031bdf3ec` |
| 20 | `theorem` | [card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/declarations/card-le--222775ab919a190f1a4a5a9c.md) | 298 | `result-track:222775ab919a190f1a4a5a9c2c7280d6dda1c48949144fdb9708e7bfc8399ce7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
