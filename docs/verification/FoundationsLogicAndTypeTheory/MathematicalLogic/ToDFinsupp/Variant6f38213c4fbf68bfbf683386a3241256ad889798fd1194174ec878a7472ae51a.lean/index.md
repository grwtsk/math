# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ToDFinsupp.Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbb2103057bc7cc675049bb07656b88b5e69ec5e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbb2103057bc7cc675049bb07656b88b5e69ec5e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finsupp.toDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/finsupp-todfinsupp--ccf7fc4c60954a3dfab9292a.md) | 79 | `declaration-track:ccf7fc4c60954a3dfab9292a4a0df6e0969c11a24b38813ebd2337e6607d0ba6` |
| 2 | `theorem` | [Finsupp.toDFinsupp_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/finsupp-todfinsupp-coe--b78bffcd6b0d943e90650ed5.md) | 87 | `result-track:b78bffcd6b0d943e90650ed58c1a03607acdc6371404106a48c3def09f89048a` |
| 3 | `theorem` | [Finsupp.toDFinsupp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/finsupp-todfinsupp-single--9ec2ccb923b1269a6a30b834.md) | 96 | `result-track:9ec2ccb923b1269a6a30b83409f4dd0b235320c143860dc9f2075e8ffc3432bb` |
| 4 | `theorem` | [toDFinsupp_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/todfinsupp-support--6349f591e483e654933a0858.md) | 105 | `result-track:6349f591e483e654933a0858d4fc08b101de214be4472372faaf1b8eb7bf3a38` |
| 5 | `def` | [DFinsupp.toFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/dfinsupp-tofinsupp--16b3fe1e04e16ad11796dd6d.md) | 115 | `declaration-track:16b3fe1e04e16ad11796dd6d49952a71857f99e7c6ef44e0a6ccd83e0c8763ef` |
| 6 | `theorem` | [DFinsupp.toFinsupp_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/dfinsupp-tofinsupp-coe--92a50f1dc58b1320a1061814.md) | 120 | `result-track:92a50f1dc58b1320a10618145b4abce4ffa9c58497cd13e8ea389760919a0917` |
| 7 | `theorem` | [DFinsupp.toFinsupp_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/dfinsupp-tofinsupp-support--bf8070f12acf714a2fd20765.md) | 125 | `result-track:bf8070f12acf714a2fd207650335b7e1460eecd287bb004d93fe046f06b6e7c3` |
| 8 | `theorem` | [DFinsupp.toFinsupp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/dfinsupp-tofinsupp-single--4313b6d58e5bbd4fa064fe8b.md) | 131 | `result-track:4313b6d58e5bbd4fa064fe8b97d476dcfbd47404d85c9d443b22af17ddef35e7` |
| 9 | `theorem` | [Finsupp.toDFinsupp_toFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/finsupp-todfinsupp-tofinsupp--bae4cbea616cd44b709ebb34.md) | 138 | `result-track:bae4cbea616cd44b709ebb34dd89839112f55045ec4d77ea557a0b849fc559c8` |
| 10 | `theorem` | [DFinsupp.toFinsupp_toDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/dfinsupp-tofinsupp-todfinsupp--e08859c99a6a2dc4177f91e8.md) | 143 | `result-track:e08859c99a6a2dc4177f91e8bf8be08401324a34f8b47a715debc5d3266c0d61` |
| 11 | `theorem` | [toDFinsupp_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/todfinsupp-zero--5743a3e49d1fe41946d2cb9b.md) | 159 | `result-track:5743a3e49d1fe41946d2cb9b1b225f49f55be907a0b92c7afb5c428d6e2c5ee6` |
| 12 | `theorem` | [toDFinsupp_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/todfinsupp-add--b541183155caab0f530961f2.md) | 164 | `result-track:b541183155caab0f530961f2d41d79d0962f718c4e27bbe59fcdb1217aec2f41` |
| 13 | `theorem` | [toDFinsupp_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/todfinsupp-neg--9138fa1e23e799c93e792462.md) | 170 | `result-track:9138fa1e23e799c93e7924620b63feb8c17a7b0eba9488952fbe7c3c3c1a5854` |
| 14 | `theorem` | [toDFinsupp_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/todfinsupp-sub--15cc757cdd4d9c51be6db7d2.md) | 175 | `result-track:15cc757cdd4d9c51be6db7d265ffcc6de88d4ca031df34a71640a4ab58132b51` |
| 15 | `theorem` | [toDFinsupp_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/todfinsupp-smul--3ea47cb465cb409edba009bf.md) | 181 | `result-track:3ea47cb465cb409edba009bf9cef4478667603290bdcd31d232a321c26e33f6a` |
| 16 | `theorem` | [toFinsupp_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/tofinsupp-zero--cc48d55566992bd9d2d4a9c6.md) | 193 | `result-track:cc48d55566992bd9d2d4a9c61e648a78f95b572077043fff89a0000cfd83b164` |
| 17 | `theorem` | [toFinsupp_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/tofinsupp-add--fbd2b7a94f97014c37ddc21a.md) | 198 | `result-track:fbd2b7a94f97014c37ddc21abdedcf84be3c12aa40cc9678c2bb6046746b3801` |
| 18 | `theorem` | [toFinsupp_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/tofinsupp-neg--6fe1a5ae5ae6465a68c910a7.md) | 204 | `result-track:6fe1a5ae5ae6465a68c910a757e001b454e47191b5a7d25ac94bcf83e480774f` |
| 19 | `theorem` | [toFinsupp_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/tofinsupp-sub--96e8d22033be9a4ee0d083c5.md) | 210 | `result-track:96e8d22033be9a4ee0d083c564f994d3e4f482ca7aff111d83c1a506f0b99758` |
| 20 | `theorem` | [toFinsupp_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/tofinsupp-smul--9c94b5d8112da5fbbe9df458.md) | 216 | `result-track:9c94b5d8112da5fbbe9df4589a9d549c541555729cbb5c26e84abda5b2c36cb5` |
| 21 | `def` | [finsuppEquivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/finsuppequivdfinsupp--a09b24a56f3e09373a58c566.md) | 232 | `declaration-track:a09b24a56f3e09373a58c56681f0f7bb1946df636005837454a358e11ac4fb27` |
| 22 | `def` | [finsuppAddEquivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/finsuppaddequivdfinsupp--57725789eed372cb0ca7ae79.md) | 243 | `declaration-track:57725789eed372cb0ca7ae797dacf8e63dfced9e9d4a8c67bc4a6a9a9f4a831e` |
| 23 | `def` | [finsuppLequivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/finsupplequivdfinsupp--00baa3bf470cf065e9ff5967.md) | 257 | `declaration-track:00baa3bf470cf065e9ff5967a09194328b8586ee13250a46b352371acac92068` |
| 24 | `theorem` | [finsuppLequivDFinsupp_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/finsupplequivdfinsupp-apply-apply--afd39fc4c62e2bd5499498d9.md) | 268 | `result-track:afd39fc4c62e2bd5499498d93aebe16558960d42529a98d8442f16acf37b44d7` |
| 25 | `theorem` | [finsuppLequivDFinsupp_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/finsupplequivdfinsupp-symm-apply--913d01e30ee0d36df5305d32.md) | 274 | `result-track:913d01e30ee0d36df5305d327be701bf4aa08a307eb66f001ba00733ad83559a` |
| 26 | `def` | [sigmaFinsuppEquivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/sigmafinsuppequivdfinsupp--6a39f94d0f7297a932823f05.md) | 290 | `declaration-track:6a39f94d0f7297a932823f05a9873331b16b23dab8a6f79b5b331c4b06919b23` |
| 27 | `theorem` | [sigmaFinsuppEquivDFinsupp_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/sigmafinsuppequivdfinsupp-apply--eb5e82fc68baaaa35dbffb8e.md) | 310 | `result-track:eb5e82fc68baaaa35dbffb8ed1402175f8b5f9d777767ec0fd2378c33af93bf3` |
| 28 | `theorem` | [sigmaFinsuppEquivDFinsupp_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/sigmafinsuppequivdfinsupp-symm-apply--8130c214e3ef9a689e947e72.md) | 316 | `result-track:8130c214e3ef9a689e947e720cf9dc531632f09be2e9ad6390fb0e6dbd891546` |
| 29 | `theorem` | [sigmaFinsuppEquivDFinsupp_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/sigmafinsuppequivdfinsupp-support--81e1cc0e5cc0bc2a2ceee362.md) | 322 | `result-track:81e1cc0e5cc0bc2a2ceee3624016e173bd75ca4b0f6c88f27f6db64d812043af` |
| 30 | `theorem` | [sigmaFinsuppEquivDFinsupp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/sigmafinsuppequivdfinsupp-single--571d9dd79a3564715bdf8296.md) | 331 | `result-track:571d9dd79a3564715bdf8296e409ed4a2da17ee24c76e6741262f8da566a5520` |
| 31 | `theorem` | [sigmaFinsuppEquivDFinsupp_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/sigmafinsuppequivdfinsupp-add--ad6bc395c6f3fb2beb828182.md) | 348 | `result-track:ad6bc395c6f3fb2beb828182001ee3ea84462f152d56e1cd4112c876b232d127` |
| 32 | `def` | [sigmaFinsuppAddEquivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/sigmafinsuppaddequivdfinsupp--e61e3066c2654dff22fa2239.md) | 357 | `declaration-track:e61e3066c2654dff22fa2239d57f9a646ff6baa6be19d801e65d68e661d19d73` |
| 33 | `theorem` | [sigmaFinsuppEquivDFinsupp_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/sigmafinsuppequivdfinsupp-smul--ee0e6cf0b87ac689a0d27624.md) | 368 | `result-track:ee0e6cf0b87ac689a0d276249be615d8313db727b11b80355ffce3aad7d4673d` |
| 34 | `def` | [sigmaFinsuppLequivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variant6f38213c4fbf68bfbf683386a3241256ad889798fd1194174ec878a7472ae51a.lean/declarations/sigmafinsupplequivdfinsupp--5058b5921f2cab596a6c5084.md) | 380 | `declaration-track:5058b5921f2cab596a6c5084e56c82e65936bf55409f90caec1c961b82c2ed8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
