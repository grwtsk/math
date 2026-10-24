# Verification target: GRWTSK.Algebra.LinearAlgebra.Contraction.Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bafb9fcb6027b48328eff0d23bdfc81bd5dd28e1",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bafb9fcb6027b48328eff0d23bdfc81bd5dd28e1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeftAux](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleftaux--2bdc2507ae4bb3e9fd6ed81f.md) | 61 | `declaration-track:2bdc2507ae4bb3e9fd6ed81f3de5ff24117a4ee1987e6c3c0873cac538dfe5b1` |
| 2 | `theorem` | [contractLeftAux_contractLeftAux](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleftaux-contractleftaux--3f537c20c702383e003957e6.md) | 68 | `result-track:3f537c20c702383e003957e62f5f042fa54332e16bd886e7509856e764e78fa1` |
| 3 | `def` | [contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleft--767041768ef4a7892641bccd.md) | 82 | `declaration-track:767041768ef4a7892641bccd5ac86fb39c9c6d8bacd1d65ea289279d6d29c91e` |
| 4 | `def` | [contractRight](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright--36b3ba770193a700364b7b82.md) | 112 | `declaration-track:36b3ba770193a700364b7b82726a2878f2866cecb378179221aa11192ce16585` |
| 5 | `theorem` | [contractRight_eq](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright-eq--83c209a5bb5f4e1e31a0459c.md) | 116 | `result-track:83c209a5bb5f4e1e31a0459cfe7e5c3c65990b63a879ddba7cbbe46ac57a2d0e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/instance--dcfa18124ced6a6f7b2098fc.md) | 128 | `declaration-track:dcfa18124ced6a6f7b2098fc284c4b988369522f7d269a3fb0a621613607672b` |
| 7 | `theorem` | [contractLeft_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleft-mul--c909222a7cab3435666c4e61.md) | 131 | `result-track:c909222a7cab3435666c4e618ab0fa25389f1748897eb91cd99c5970514e33c1` |
| 8 | `theorem` | [contractRight_mul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright-mul--3549815b0c6e1b2a5aa89702.md) | 139 | `result-track:3549815b0c6e1b2a5aa897024fadbd25bd1b0915f520bec5e57b60191846cafc` |
| 9 | `theorem` | [contractLeft_algebraMap_mul](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleft-algebramap-mul--2d3e5fcf9b664c1763b0f66c.md) | 145 | `result-track:2d3e5fcf9b664c1763b0f66cae617569c229c9837187d7df331f54c63c4af2aa` |
| 10 | `theorem` | [contractLeft_mul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleft-mul-algebramap--e91e2bb815ab78087511e657.md) | 150 | `result-track:e91e2bb815ab78087511e6575c7f82b254ac7f570dbd112056ca36ba49dfbe60` |
| 11 | `theorem` | [contractRight_algebraMap_mul](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright-algebramap-mul--d4a9655fbdc39bcd8b4f1343.md) | 155 | `result-track:d4a9655fbdc39bcd8b4f1343b1863c2f5057bb10c00ce339446dabe333758aea` |
| 12 | `theorem` | [contractRight_mul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright-mul-algebramap--82afe83aa32df23765c84249.md) | 160 | `result-track:82afe83aa32df23765c842494ff6380b965b7d80cd8300207b9b9b701f032267` |
| 13 | `theorem` | [contractLeft_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleft--15416596d35f49642ef31251.md) | 168 | `result-track:15416596d35f49642ef3125116517b7e752bf9948ed0702d98197b220670a43f` |
| 14 | `theorem` | [contractRight_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright--b3a567135a13e3d31087fc87.md) | 177 | `result-track:b3a567135a13e3d31087fc876b17e0a409c0ae58c2fb3cd33f79fdf5238229d8` |
| 15 | `theorem` | [contractLeft_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleft-algebramap--b05d22350ea32f1751cb7cae.md) | 182 | `result-track:b05d22350ea32f1751cb7cae4b3d17edbdcc5d0e41688d96fdb30ed19947da67` |
| 16 | `theorem` | [contractRight_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright-algebramap--29e190cc0f8f24d48608b9d0.md) | 189 | `result-track:29e190cc0f8f24d48608b9d05f6b8072d48f3ddf9d0df7ab85ef144545023a47` |
| 17 | `theorem` | [contractLeft_one](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleft-one--e5dbfba6d69a54033a3d2adb.md) | 194 | `result-track:e5dbfba6d69a54033a3d2adbdab8f779a787e5274b8c13143af9663ed3ea2126` |
| 18 | `theorem` | [contractRight_one](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright-one--1ee8cfd7215d44616fe88dcc.md) | 199 | `result-track:1ee8cfd7215d44616fe88dccd7e510a2b2b5ead5aebc9674fbf2b2330c344f05` |
| 19 | `theorem` | [contractLeft_contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleft-contractleft--ab66fd1dcc57090ecc61dc9f.md) | 206 | `result-track:ab66fd1dcc57090ecc61dc9f1f0d76751d750d9bb14ad4ef32cd0f78afe736f3` |
| 20 | `theorem` | [contractRight_contractRight](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright-contractright--adaefbe5137ef34887ef5f82.md) | 215 | `result-track:adaefbe5137ef34887ef5f82517b8c0b09a880e8ed95429c49e2454f683d0e1e` |
| 21 | `theorem` | [contractLeft_comm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractleft-comm--0992a719ace95e4d8300210d.md) | 220 | `result-track:0992a719ace95e4d8300210d4b0512c2605de288b49a1026a2a566e934b3801d` |
| 22 | `theorem` | [contractRight_comm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/contractright-comm--b629d063fb449245e40608cb.md) | 229 | `result-track:b629d063fb449245e40608cbed65bd269883000cbbf8ce642f8a3889a1772194` |
| 23 | `def` | [changeFormAux](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeformaux--a2b9f43de9e36a001627f174.md) | 245 | `declaration-track:a2b9f43de9e36a001627f17494f8f6ae120b6f2496b173cc109405adb888e35b` |
| 24 | `theorem` | [changeFormAux_changeFormAux](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeformaux-changeformaux--dabcffd7fc710d7b6c1924b4.md) | 250 | `result-track:dabcffd7fc710d7b6c1924b4a066f19b1d1029560b42bcb705f272444f38e8d5` |
| 25 | `def` | [changeForm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform--32536141f0af9a1e73820997.md) | 268 | `declaration-track:32536141f0af9a1e73820997027ac55af400420f667c5d02c40e14d460b76b6d` |
| 26 | `theorem` | [changeForm.zero_proof](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-zero-proof--0e1af036d4d1cf673c7ab5f0.md) | 278 | `result-track:0e1af036d4d1cf673c7ab5f0911004b5488f84a25338f49ffce172d20c099660` |
| 27 | `theorem` | [changeForm.add_proof](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-add-proof--1335d8aec6609e90505c34d6.md) | 283 | `result-track:1335d8aec6609e90505c34d6d0713574edb1d65784ff082659348afc0aaf7cf3` |
| 28 | `theorem` | [changeForm.neg_proof](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-neg-proof--f8188fabc7c0f7241a0b77ce.md) | 288 | `result-track:f8188fabc7c0f7241a0b77cef0db56d5b954ff4431d342be4acfbaf6be54fa07` |
| 29 | `theorem` | [changeForm.associated_neg_proof](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-associated-neg-proof--e4709a45d0fc533e0d1578cf.md) | 292 | `result-track:e4709a45d0fc533e0d1578cf6b6cc52689da0457dd861e9b447b30b33c0ad69c` |
| 30 | `theorem` | [changeForm_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-algebramap--50b652cc6d1227759b055077.md) | 298 | `result-track:50b652cc6d1227759b055077a23a01160c7f7573acce2d9932f105b317dd9483` |
| 31 | `theorem` | [changeForm_one](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-one--f3edaf7751ad9861fcebe28c.md) | 303 | `result-track:f3edaf7751ad9861fcebe28ce14b953b3197a8ddfa9d75ee8d904b4ea652c1e7` |
| 32 | `theorem` | [changeForm_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform--881c5e984fbb359ef6b2ac02.md) | 308 | `result-track:881c5e984fbb359ef6b2ac02d217370f301513cbdf21452aa0f3e587dde1eea2` |
| 33 | `theorem` | [changeForm_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-mul--4edb2bac178a5ffe8c4181d9.md) | 313 | `result-track:4edb2bac178a5ffe8c4181d963181b609161cd06a0b2166a4856eafee23467f4` |
| 34 | `theorem` | [changeForm_ι_mul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-mul--0ed9622f0c8f8c4a0f1580da.md) | 321 | `result-track:0ed9622f0c8f8c4a0f1580da2c2421e548fb8fd9bc947459363d7b278fe24570` |
| 35 | `theorem` | [changeForm_contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-contractleft--e99195a2305de9a2aa611073.md) | 327 | `result-track:e99195a2305de9a2aa6110731d1cfd545b9338e9e9ecd9522f3c56361ee7a20f` |
| 36 | `theorem` | [changeForm_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-self-apply--b43932a36172be537360dc8f.md) | 338 | `result-track:b43932a36172be537360dc8f70dfc6a808718b9781216105ee383b42c898bc94` |
| 37 | `theorem` | [changeForm_self](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-self--e90071e904a095eeb5a3ae8b.md) | 348 | `result-track:e90071e904a095eeb5a3ae8b2c50256bead3e42c1a475a2f8668df09de4c546f` |
| 38 | `theorem` | [changeForm_changeForm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-changeform--ea0481651dc7f7ce0d70b2a8.md) | 354 | `result-track:ea0481651dc7f7ce0d70b2a858af79cd7bc3194e87b90a8d4c92a530f83b278e` |
| 39 | `theorem` | [changeForm_comp_changeForm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeform-comp-changeform--ab71f7b3843e88f273d0b16c.md) | 364 | `result-track:ab71f7b3843e88f273d0b16c54ec8d28419aff9ff7103e8187d48077f28419e6` |
| 40 | `def` | [changeFormEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeformequiv--3201a927e4a8d3863250425a.md) | 373 | `declaration-track:3201a927e4a8d3863250425ab1afd2270ebb17855a8c8f3bc2d4c729c4bbfd10` |
| 41 | `theorem` | [changeFormEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/changeformequiv-symm--e72ebe20f6bf45db0b92867a.md) | 387 | `result-track:e72ebe20f6bf45db0b92867abab6d36d4e1834f65421448e4a2b8af0618e2a3a` |
| 42 | `def` | [equivExterior](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/declarations/equivexterior--de749cc8d1857a59e3f5be96.md) | 399 | `declaration-track:de749cc8d1857a59e3f5be96bca6de9031265ffc610165fe2ba6953ad39b7991` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
