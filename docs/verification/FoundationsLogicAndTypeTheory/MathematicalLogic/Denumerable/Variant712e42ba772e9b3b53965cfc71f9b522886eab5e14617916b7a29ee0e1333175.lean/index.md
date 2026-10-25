# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Denumerable.Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3b2e0b5a52a14b14e858e0ad0b8d42ed4a6ed37",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3b2e0b5a52a14b14e858e0ad0b8d42ed4a6ed37`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.EquivFin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Denumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/denumerable--004975b27f300c526d28d3b6.md) | 29 | `declaration-track:004975b27f300c526d28d3b6bacb3eb19d83776de9d5f9630705d6f2a1c8b6e2` |
| 2 | `theorem` | [decode_isSome](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/decode-issome--ea7e4c53fdb9a767fc81b710.md) | 43 | `result-track:ea7e4c53fdb9a767fc81b710fd4ed31e4d4d9ce31cc1f69022908622c530ebd7` |
| 3 | `def` | [ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofnat--8a47090eaeb2578345fe593f.md) | 47 | `declaration-track:8a47090eaeb2578345fe593f042128826a772560d3dcc7ebb4baaf5a384808ff` |
| 4 | `theorem` | [decode_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/decode-eq-ofnat--c4ce725ae9f11c0fd5f728d5.md) | 51 | `result-track:c4ce725ae9f11c0fd5f728d5826d6725c392829015f9ba6a266d20508c5f1b26` |
| 5 | `theorem` | [ofNat_of_decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofnat-of-decode--82c9d3ac014b9c8f9fd51fbd.md) | 55 | `result-track:82c9d3ac014b9c8f9fd51fbdc5f7d0fbefc9fe0f07135c5ee403c5096ddb5816` |
| 6 | `theorem` | [encode_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/encode-ofnat--e2cb882618ba377625a39d0b.md) | 59 | `result-track:e2cb882618ba377625a39d0b07533432bf073130484057796ffa5584f0624bb4` |
| 7 | `theorem` | [ofNat_encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofnat-encode--4d1de566d5dcb0b5cee0c36f.md) | 64 | `result-track:4d1de566d5dcb0b5cee0c36f7f0f48adddea4fb578b43ea373fc4705003abd7b` |
| 8 | `def` | [eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/eqv--9a110cbb76a0cf9dc11b4272.md) | 68 | `declaration-track:9a110cbb76a0cf9dc11b4272180f8bae5bc4857b078a6a0aa9a5eade1c287721` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/instance--2a14b338db93ed3fd6188573.md) | 72 | `declaration-track:2a14b338db93ed3fd6188573ee1310c0d1261375f4545bc9d8d44d0460059b8d` |
| 10 | `def` | [mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/mk--85e3db3fd532be4c0d9c1fd6.md) | 76 | `declaration-track:85e3db3fd532be4c0d9c1fd697399697bdd756f04c3be6cb5d2a10ef2dc42688` |
| 11 | `def` | [ofEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofequiv--c1fd970d0f7b828d6e784fe6.md) | 84 | `declaration-track:c1fd970d0f7b828d6e784fe6f782cf76bcb1a2d062fe16b6ff484aad2b9f01fd` |
| 12 | `theorem` | [ofEquiv_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofequiv-ofnat--228ac558a0d7604ae4435173.md) | 90 | `result-track:228ac558a0d7604ae44351739448f54fb31706ae5d6c52ea34972d86cc7b198f` |
| 13 | `def` | [equiv₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/equiv--ccfcb81863e57afaf90de86c.md) | 98 | `declaration-track:ccfcb81863e57afaf90de86c0c82064c0b5470f701407882b923dfba39c4ef58` |
| 14 | `instance` | [nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/nat--c1a4dd3f5b0e55310017ded9.md) | 101 | `declaration-track:c1a4dd3f5b0e55310017ded9665061921e6d7e18ad595d747193a5d816f60e4d` |
| 15 | `theorem` | [ofNat_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofnat-nat--2b77a6122a65b22a46b6f1eb.md) | 105 | `result-track:2b77a6122a65b22a46b6f1eb17c772017bbd6656bae89f35f52716d88406f1d3` |
| 16 | `instance` | [option](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/option--afe2c7497dd0031e90386ca8.md) | 109 | `declaration-track:afe2c7497dd0031e90386ca8ac05925d2c6bc19cf3dd02bd6324e4ae2d0a5980` |
| 17 | `instance` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/sum--78aae2946c14ad50f962da51.md) | 121 | `declaration-track:78aae2946c14ad50f962da5134f7f0cfb583023d4e8261e6c100c8eba5e51496` |
| 18 | `instance` | [sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/sigma--8b1e4b4b13f219a54cc7f9f1.md) | 133 | `declaration-track:8b1e4b4b13f219a54cc7f9f15f54564661a0ee0269640ad40df7c1fa57d2af40` |
| 19 | `theorem` | [sigma_ofNat_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/sigma-ofnat-val--ffab9f2db55b56b059ff227a.md) | 137 | `result-track:ffab9f2db55b56b059ff227a36c358664fdd18050780e0162fa5b71e8f1ba330` |
| 20 | `instance` | [prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/prod--c089a530083b2a4a37630b5d.md) | 144 | `declaration-track:c089a530083b2a4a37630b5d3b11db21b5fc05371a0b48d980dd726ce74ff047` |
| 21 | `theorem` | [prod_ofNat_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/prod-ofnat-val--b49fce0b5d7090e97356b11b.md) | 147 | `result-track:b49fce0b5d7090e97356b11bebdd8526f0cd8aa328a279bd13cb7585bc3a0848` |
| 22 | `theorem` | [prod_nat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/prod-nat-ofnat--bee3040d9110791c27fafd73.md) | 151 | `result-track:bee3040d9110791c27fafd7349b03b4b3f89ed5f78d88efcefda2a19406318aa` |
| 23 | `instance` | [int](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/int--963de90b55c6bb410c3d5bc8.md) | 153 | `declaration-track:963de90b55c6bb410c3d5bc87fc0accb82b8f300a2e9ac3629ad6601f1683fba` |
| 24 | `instance` | [pnat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/pnat--0172f107f4db01004631af6d.md) | 156 | `declaration-track:0172f107f4db01004631af6d19540dfae9377899d0921406bd5ea1415a68f70d` |
| 25 | `instance` | [ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ulift--9f4601fd6e0c790522732c1e.md) | 160 | `declaration-track:9f4601fd6e0c790522732c1e071ade721b1d3c2be6332ba13a1ecd0b7a6842b0` |
| 26 | `instance` | [plift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/plift--76c846722bc7e820a4e4adbf.md) | 164 | `declaration-track:76c846722bc7e820a4e4adbfa307ad0063847c2574873df84ac57479a30f9fd9` |
| 27 | `def` | [pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/pair--2b1b6df556397ac4c61eac78.md) | 168 | `declaration-track:2b1b6df556397ac4c61eac78ccc208681105732f8277356c80eddd8a3f6b043d` |
| 28 | `theorem` | [exists_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/exists-succ--a5d7f8973b05b615ba6e4e81.md) | 185 | `result-track:a5d7f8973b05b615ba6e4e81c48a362d74cc825106fcd7c08d10c58f80021d35` |
| 29 | `def` | [succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/succ--a648f1d21b7e28bc80485930.md) | 200 | `declaration-track:a648f1d21b7e28bc80485930a9e78a8c4480af01f499f77ab8788f2c06f2bf73` |
| 30 | `theorem` | [succ_le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/succ-le-of-lt--926c47419bdbd4a12df2314f.md) | 204 | `result-track:926c47419bdbd4a12df2314f1dc28cf76c0f8890fcc52efea07d67aa18ff7f93` |
| 31 | `theorem` | [le_succ_of_forall_lt_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/le-succ-of-forall-lt-le--3b1c940ed397a0dff9d16bd8.md) | 210 | `result-track:3b1c940ed397a0dff9d16bd8fd4d242e8b0947a5f2032e84b04ba58714b43ea0` |
| 32 | `theorem` | [lt_succ_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/lt-succ-self--52a8526623eaff30e0282d15.md) | 217 | `result-track:52a8526623eaff30e0282d1522b2e3e5484fb0bd868effd3ddd6f712070fcbd0` |
| 33 | `theorem` | [lt_succ_iff_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/lt-succ-iff-le--0ae261b41c3a30b3ed182974.md) | 222 | `result-track:0ae261b41c3a30b3ed1829741462bf8981b6a0e31bfaa92f6ec35dc86c6bc985` |
| 34 | `def` | [ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofnat--64e22aa9efba36ec8cc6a95e.md) | 227 | `declaration-track:64e22aa9efba36ec8cc6a95e025ed4406f67e0e59462e3cc022e59567bc1261f` |
| 35 | `theorem` | [ofNat_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofnat-surjective--713f902b8deb1ee763526b87.md) | 231 | `result-track:713f902b8deb1ee763526b87d07dfac3dc1a7458cde7cd46e7035f6ac33c1f22` |
| 36 | `theorem` | [ofNat_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofnat-range--39d31c1ab6ea91558e5b6808.md) | 251 | `result-track:39d31c1ab6ea91558e5b6808158fe80376ea7596ac68520bd8e719f72fdbcf82` |
| 37 | `theorem` | [coe_comp_ofNat_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/coe-comp-ofnat-range--0a10773e417a14d88219e8e0.md) | 255 | `result-track:0a10773e417a14d88219e8e0202efe81ac18e9649c1429f73c23a99e855035a0` |
| 38 | `def` | [toFunAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/tofunaux--a1589fc333c0525e627c1095.md) | 258 | `declaration-track:a1589fc333c0525e627c10956da4704c1a432af16a4901371d2adb5e9dc0a2d8` |
| 39 | `theorem` | [toFunAux_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/tofunaux-eq--877cd20f150f1fc0e6e67ba0.md) | 261 | `result-track:877cd20f150f1fc0e6e67ba0547948864e8cb2432950579def2bc2f592aa1d63` |
| 40 | `theorem` | [right_inverse_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/right-inverse-aux--f639e27b8f620a54990c753f.md) | 268 | `result-track:f639e27b8f620a54990c753f77b5714f00b2907894e4f4f0dbeecf344e0ffd34` |
| 41 | `def` | [denumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/denumerable--94716579f3217034ef18d4bc.md) | 293 | `declaration-track:94716579f3217034ef18d4bc81dcd9c8a9a590b5c51aff35c1fe68e7348eed36` |
| 42 | `def` | [ofEncodableOfInfinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/ofencodableofinfinite--52223d6501ca7615a5d6d8ad.md) | 307 | `declaration-track:52223d6501ca7615a5d6d8add55569270568bcfc06d75f2d3d503ccad2346128` |
| 43 | `theorem` | [nonempty_denumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/nonempty-denumerable--e4cd5ff0ae7387d7da17fada.md) | 317 | `result-track:e4cd5ff0ae7387d7da17fada0071b47755c600a8334326d0daf029d3d5bafb96` |
| 44 | `theorem` | [nonempty_denumerable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/nonempty-denumerable-iff--5749ff4dbd0c5ea72012451c.md) | 320 | `result-track:5749ff4dbd0c5ea72012451c72de0af4621163c414470e8b48d4456828ce381d` |
| 45 | `instance` | [nonempty_equiv_of_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/declarations/nonempty-equiv-of-countable--f3c1490990221d909526a1d2.md) | 324 | `declaration-track:f3c1490990221d909526a1d26ff9ad3684014cf43cfbca70648214612338a60d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
