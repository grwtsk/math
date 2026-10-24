# Verification target: GRWTSK.Algebra.Basic.Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76bc233e9ccb11826cb851e55bfacae166f9bf97",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76bc233e9ccb11826cb851e55bfacae166f9bf97`.

Source path: `GRWTSK/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Invertible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Synonym` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/add-div--d184068e10a9ae57e1b8d60a.md) | 26 | `result-track:d184068e10a9ae57e1b8d60ac404aa0e826fe06490751d603c0e3dbc4e1b4bbf` |
| 2 | `theorem` | [div_add_div_same](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-add-div-same--e92d903fcefa78dd793237fc.md) | 29 | `result-track:e92d903fcefa78dd793237fc69f797a71aaaae03675a774713f1f9b5df875ccb` |
| 3 | `theorem` | [same_add_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/same-add-div--3d6e25e2fb2e6a2fc8b145bf.md) | 32 | `result-track:3d6e25e2fb2e6a2fc8b145bf4fac56cb52efd7a380d71b9ba17d427bc0e0e91b` |
| 4 | `theorem` | [div_add_same](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-add-same--cfda678e8335fbd9b402dd10.md) | 34 | `result-track:cfda678e8335fbd9b402dd1086ae276f4ddf6c903f6aaaeb448c27d29a858d59` |
| 5 | `theorem` | [one_add_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/one-add-div--32383448057feb7df738fbbc.md) | 36 | `result-track:32383448057feb7df738fbbcd2608ddb6228ec6d765dc07cec92abda0ee53ec7` |
| 6 | `theorem` | [div_add_one](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-add-one--576de0d9bbfcdc3865b528ef.md) | 39 | `result-track:576de0d9bbfcdc3865b528efc40e77cc52c8e8b2c4c3b18e250dce4c97c2f80a` |
| 7 | `theorem` | [inv_add_inv'](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/inv-add-inv--0f50c0dd1b9ba4334f50400c.md) | 43 | `result-track:0f50c0dd1b9ba4334f50400ca1c3c5b8846ce8b12a77a949772c6c0c77eba336` |
| 8 | `theorem` | [one_div_mul_add_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/one-div-mul-add-mul-one-div-eq-one-div-add-one-div--eedd1e341e0ec82f49a8dbae.md) | 47 | `result-track:eedd1e341e0ec82f49a8dbae546792b0151f3756058efabf2fa405501ff1af10` |
| 9 | `theorem` | [add_div_eq_mul_add_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/add-div-eq-mul-add-div--11c94e548494ae03adb4cb5b.md) | 51 | `result-track:11c94e548494ae03adb4cb5b59d3ecaade13001095b161b9f8f53c6c1bf4c29c` |
| 10 | `theorem` | [add_div'](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/add-div--d6f71febfbf106395898dd00.md) | 55 | `result-track:d6f71febfbf106395898dd006e1f94e3c3290ac1412db7daf8abd81430bbc9c6` |
| 11 | `theorem` | [div_add'](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-add--c55f4e497930fe4fe810db71.md) | 59 | `result-track:c55f4e497930fe4fe810db719b2acd13fbf966ff84cda1696248ae400043a0e8` |
| 12 | `theorem` | [Commute.div_add_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/commute-div-add-div--e14f6664bee93a0e381cbbbb.md) | 62 | `result-track:e14f6664bee93a0e381cbbbb49432bd3adfed7f11c82e50d3d0a42893819425b` |
| 13 | `theorem` | [Commute.one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/commute-one-div-add-one-div--0bafba74703cc94688dc8918.md) | 66 | `result-track:0bafba74703cc94688dc89180234bdf58aff3b088e210e8eca9daf7888b214a7` |
| 14 | `theorem` | [Commute.inv_add_inv](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/commute-inv-add-inv--6bb70d0a84f8573a9d60a95e.md) | 70 | `result-track:6bb70d0a84f8573a9d60a95e51cbd992a29852ffd29cf21ec46487e1a0dce3f4` |
| 15 | `lemma` | [add_self_div_two](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/add-self-div-two--e566a2bb0fcc61ae21110819.md) | 76 | `result-track:e566a2bb0fcc61ae2111081958c6424e3427bcd1b34f1be1f58114f20ecef2c1` |
| 16 | `lemma` | [add_halves](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/add-halves--57a06c6828a31908c376ac0c.md) | 79 | `result-track:57a06c6828a31908c376ac0c518f09e983a7262bb626a3e69330b8c47afadefb` |
| 17 | `theorem` | [div_neg_self](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-neg-self--8e669f9929abdaea016f2d6d.md) | 88 | `result-track:8e669f9929abdaea016f2d6db633a4424160c43a1a424cdd7a84778d3096b058` |
| 18 | `theorem` | [neg_div_self](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/neg-div-self--0cdd748516f45068a6d40994.md) | 91 | `result-track:0cdd748516f45068a6d4099459ea462449afa78415a001c12a38b717498b3c62` |
| 19 | `theorem` | [div_sub_div_same](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-sub-div-same--7f454262caee1622cb5aefa6.md) | 93 | `result-track:7f454262caee1622cb5aefa65e29831006e98a1a3bc46328380c9c60b262f6cc` |
| 20 | `theorem` | [same_sub_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/same-sub-div--f0615b6fc0f7e1cf03e5cd22.md) | 96 | `result-track:f0615b6fc0f7e1cf03e5cd22e06af4f7ad38fab529185f6c5e506eee6b610ae1` |
| 21 | `theorem` | [one_sub_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/one-sub-div--0bfc1129382fd723b854d95e.md) | 99 | `result-track:0bfc1129382fd723b854d95e326c4b05b753ef0ea308d45410968e1e6f8c6c81` |
| 22 | `theorem` | [div_sub_same](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-sub-same--4f796feebf127bd1434219fb.md) | 102 | `result-track:4f796feebf127bd1434219fb4ebea7050359662fc3ae202d7ab07c2a9a7a8239` |
| 23 | `theorem` | [div_sub_one](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-sub-one--d7403a9994daaf2b3d6aebd0.md) | 105 | `result-track:d7403a9994daaf2b3d6aebd09a991145eab3cfb814b4c9480eb2c4f7b8a24c31` |
| 24 | `theorem` | [sub_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/sub-div--375c4a4ed61d93edb8367117.md) | 108 | `result-track:375c4a4ed61d93edb83671178a2757e4225faee7ed0118ec0c6ea07c8ece50c2` |
| 25 | `theorem` | [inv_sub_inv'](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/inv-sub-inv--593c5b19a575ab856df2d8a8.md) | 112 | `result-track:593c5b19a575ab856df2d8a83e94a3026a196db6a12f797e8212f1793872014f` |
| 26 | `theorem` | [one_div_mul_sub_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/one-div-mul-sub-mul-one-div-eq-one-div-add-one-div--0ba0a9c03cf667884e62126e.md) | 115 | `result-track:0ba0a9c03cf667884e62126e9339cfddcdf9f9c00396dc31cde19f20b169e3d0` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instance--c1c758e837e5b2328a070c38.md) | 120 | `declaration-track:c1c758e837e5b2328a070c38856d0dae3612fccc4b7751a5479770791698df83` |
| 28 | `theorem` | [Commute.div_sub_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/commute-div-sub-div--cd63414c121bf44a5c545d52.md) | 123 | `result-track:cd63414c121bf44a5c545d521b9f06ed20d15b98500c4605c7f35b846e72f59e` |
| 29 | `theorem` | [Commute.inv_sub_inv](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/commute-inv-sub-inv--b2a48cbd022df0ffd9399857.md) | 127 | `result-track:b2a48cbd022df0ffd939985767b7f4dd8fb9c881dffb6ced35efa3d13ab7ae7e` |
| 30 | `lemma` | [sub_half](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/sub-half--b0902e466b28639787515527.md) | 133 | `result-track:b0902e466b28639787515527dc7ab1cdab853333ee0fb3d08f403051de78162a` |
| 31 | `lemma` | [half_sub](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/half-sub--54b1e2af13a797f519153133.md) | 134 | `result-track:54b1e2af13a797f5191531333417dc02d5bdc4c14b58047729283196a3307a42` |
| 32 | `theorem` | [div_add_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-add-div--56500b1b3c7608adc93554d2.md) | 142 | `result-track:56500b1b3c7608adc93554d262d6ee4709ff485353ef3e1f7863f003aa991f3f` |
| 33 | `theorem` | [one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/one-div-add-one-div--800d12364f139acdbc721ddd.md) | 146 | `result-track:800d12364f139acdbc721ddde3e76fcdf8c68c39cfb3752b07fbf7ef66165b1a` |
| 34 | `theorem` | [inv_add_inv](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/inv-add-inv--d4084002c6e25dbc9ac9f922.md) | 149 | `result-track:d4084002c6e25dbc9ac9f922833824127f7e8a160eb29307b1bd27f8aefb7947` |
| 35 | `theorem` | [div_sub_div](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-sub-div--d9e8b48ccbfb53c1ec11decc.md) | 161 | `result-track:d9e8b48ccbfb53c1ec11deccbf5402b51aff525bc1b1decd4479a61a1dc219bc` |
| 36 | `theorem` | [inv_sub_inv](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/inv-sub-inv--9df78fe024009ec91b1663d3.md) | 165 | `result-track:9df78fe024009ec91b1663d37e4d84ee4ffef56be99cf5e3a34cfab3aa7843d9` |
| 37 | `theorem` | [sub_div'](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/sub-div--a672f1a3ebf6d41ade6fcdc7.md) | 169 | `result-track:a672f1a3ebf6d41ade6fcdc79d66f3a3dc2c2b2c2cf49d3c5450c5a3adbec211` |
| 38 | `theorem` | [div_sub'](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/div-sub--c974e0fb160b458d65cbcecc.md) | 173 | `result-track:c974e0fb160b458d65cbceccf0589f66f40c494c65aca24f9562d559d76c1a68` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instance--d031c959b9546ce36fa9f47d.md) | 177 | `declaration-track:d031c959b9546ce36fa9f47d1cdb344b3e4ca0d684be47885c890ea1a1473592` |
| 40 | `abbrev` | [DivisionRing.ofIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/divisionring-ofisunitoreqzero--e974ffb6bfe8ac2c45fc2dfe.md) | 188 | `declaration-track:e974ffb6bfe8ac2c45fc2dfe1a90498852dfe2661f5ff1a09ea9b244386afb64` |
| 41 | `abbrev` | [Field.ofIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/field-ofisunitoreqzero--63b9ecaaef66cd2ba8215ed5.md) | 199 | `declaration-track:63b9ecaaef66cd2ba8215ed581809713763ff3eb6ffcb4de7ec5568689e618e5` |
| 42 | `abbrev` | [divisionSemiring](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/divisionsemiring--74a520a6eb61399bb00405a5.md) | 213 | `declaration-track:74a520a6eb61399bb00405a5d5f663bea1073c068a151d7cbd65b204e42b861f` |
| 43 | `abbrev` | [divisionRing](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/divisionring--cb4f20333cc08a7860eb364d.md) | 227 | `declaration-track:cb4f20333cc08a7860eb364d3d923928c876c02502f7e2f75de948f450d239ea` |
| 44 | `abbrev` | [semifield](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/semifield--d783873f33c4a06f5f34dbde.md) | 245 | `declaration-track:d783873f33c4a06f5f34dbde0f68cafef62c818c838182fb8849bf253514aa05` |
| 45 | `abbrev` | [field](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/field--bf99ad78871a9ac3d55ba2b5.md) | 257 | `declaration-track:bf99ad78871a9ac3d55ba2b5a01b3b2165d9d63e5f63c1dfa1183527d09e2060` |
| 46 | `instance` | [instRatCast](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instratcast--fe53b5aae50c1b322097e042.md) | 277 | `declaration-track:fe53b5aae50c1b322097e042c208fbc950deb72a46a38d0302b699aff5d32bc6` |
| 47 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instdivisionsemiring--5ef92c5459631a081853346b.md) | 278 | `declaration-track:5ef92c5459631a081853346b20878935293ef6f7dc68cd4d3988d3cc2eb6f15b` |
| 48 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instdivisionring--5c7e3a6f771467ba171fac65.md) | 279 | `declaration-track:5c7e3a6f771467ba171fac650e92fb33addd40e75f2b3deca8b76fd0f5e8ba5a` |
| 49 | `instance` | [instSemifield](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instsemifield--ffdfc1de5b17316391ded56f.md) | 280 | `declaration-track:ffdfc1de5b17316391ded56fc7778e93230487fe33162adc8365355822dddf46` |
| 50 | `instance` | [instField](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instfield--287a386eed4cd809c2da5faf.md) | 281 | `declaration-track:287a386eed4cd809c2da5faf48035795056bc424755f058c1305b89615af1573` |
| 51 | `lemma` | [toDual_ratCast](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/todual-ratcast--2f1f2c6ace92668fba046035.md) | 285 | `result-track:2f1f2c6ace92668fba046035e1adfba5b0cb8241b8a8f5dc659543ff629ca13c` |
| 52 | `lemma` | [ofDual_ratCast](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/ofdual-ratcast--57e9cfa7160215acdeab237c.md) | 287 | `result-track:57e9cfa7160215acdeab237c96ce6db632a2871fc8e56001267bcd8449fc4838` |
| 53 | `instance` | [instRatCast](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instratcast--d03abbda2d7922655697902a.md) | 293 | `declaration-track:d03abbda2d7922655697902a2786da6a7bd54f950448da8d58b8af20b7dd9311` |
| 54 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instdivisionsemiring--81eb10b8e4ba0a04fb9a1a78.md) | 294 | `declaration-track:81eb10b8e4ba0a04fb9a1a78a88365b57d8d9252774fb9d00ead54fa8c384a46` |
| 55 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instdivisionring--89f24385e2ddcfa0b85db2ad.md) | 295 | `declaration-track:89f24385e2ddcfa0b85db2ada6bb9662891ef6982de3091b9d19420a57ec6d8b` |
| 56 | `instance` | [instSemifield](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instsemifield--99f68127906e3bc0da724c84.md) | 296 | `declaration-track:99f68127906e3bc0da724c84bfa902b87177060fad004d79c746dedd16db6a54` |
| 57 | `instance` | [instField](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/instfield--e63611a7e8cb479dcd386852.md) | 297 | `declaration-track:e63611a7e8cb479dcd386852eab1be7cce98364a237e780981c79d41efc6b0fd` |
| 58 | `lemma` | [toLex_ratCast](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/tolex-ratcast--ae36590bdcd4de3fddcdb34c.md) | 301 | `result-track:ae36590bdcd4de3fddcdb34cc4fc9e9219c4b591105e0d237734e066c16bc185` |
| 59 | `lemma` | [ofLex_ratCast](../../../../mathematics/Algebra/Basic/Variantf9a631bbf4e5168dd0edb2bdec6475bfd8fd0d624847a0f7acd3331018c71899.lean/declarations/oflex-ratcast--47a925c3f7ea86ea5a59d18b.md) | 303 | `result-track:47a925c3f7ea86ea5a59d18b73ea2c84da15ca40d31c4a5743443d1f25095658` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
