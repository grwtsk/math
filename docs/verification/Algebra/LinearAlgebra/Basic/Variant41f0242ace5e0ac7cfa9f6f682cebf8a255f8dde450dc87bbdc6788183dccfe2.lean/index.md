# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03355acf82bc6a8f39d2e5b8832d7f15ac1b8fc6",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03355acf82bc6a8f39d2e5b8832d7f15ac1b8fc6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/bitmatrix--ecf04b063660f3a093ee165a.md) | 31 | `declaration-track:ecf04b063660f3a093ee165acce7e8b30e2ffa089230b2ffb3f4e704079d0455` |
| 2 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/map--f21aa676f208faca31b5a0bd.md) | 40 | `declaration-track:f21aa676f208faca31b5a0bdcc3a3e431074886718ce2e168dc886653f3ceabf` |
| 3 | `def` | [zipWith](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/zipwith--35502e0e89342766675620a6.md) | 45 | `declaration-track:35502e0e89342766675620a65fe7d49e7ab2c3ca6b204dfa042169bdd8f13b78` |
| 4 | `def` | [and](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/and--34de8581fa5dea8a77562150.md) | 53 | `declaration-track:34de8581fa5dea8a77562150f66725db37782abeda050b84f265d2e35be825d6` |
| 5 | `def` | [or](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/or--2de6efd975bf1497073e69fa.md) | 58 | `declaration-track:2de6efd975bf1497073e69fa94db75f4b67dddf859986e82e31d2fdad0f1fd58` |
| 6 | `def` | [xor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/xor--84be5f1187dab67dd07221c8.md) | 63 | `declaration-track:84be5f1187dab67dd07221c89df575c0e42f6a566387e00f172cf9b3b207dfca` |
| 7 | `def` | [not](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/not--81bd919986f20373f656d8b1.md) | 68 | `declaration-track:81bd919986f20373f656d8b15f5b971d30e45c74138bea682494b70170c4960d` |
| 8 | `theorem` | [map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/map-apply--17fa9b18ec19b97c104013f0.md) | 72 | `result-track:17fa9b18ec19b97c104013f0dfaee70918085e5f6dd6c451c22ecff3690a961d` |
| 9 | `theorem` | [zipWith_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/zipwith-apply--bcd8ae0f49b55e9c2320b8d0.md) | 81 | `result-track:bcd8ae0f49b55e9c2320b8d079e7e41577751dfc442ea9d9d23608a834efd7b6` |
| 10 | `theorem` | [and_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/and-apply--b31a0e69b68c3543cb889d37.md) | 90 | `result-track:b31a0e69b68c3543cb889d371bd77f2a8abf73e1776a7c6236f2ee5b5ef4d4ad` |
| 11 | `theorem` | [or_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/or-apply--b228ed1f49fb920ca2d03f58.md) | 98 | `result-track:b228ed1f49fb920ca2d03f58ffc7af59670b854357abdbdba6f6f04a6e30a10d` |
| 12 | `theorem` | [xor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/xor-apply--b72375052ff20bc1bf7b0bec.md) | 106 | `result-track:b72375052ff20bc1bf7b0bec8af259ca60b416541bb6d20db42196a59f915c53` |
| 13 | `theorem` | [not_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/not-apply--0e9b3f9fb99f5da92011bec9.md) | 114 | `result-track:0e9b3f9fb99f5da92011bec9b0b7a330c638a3d024c3a56bd73cde57dee68f7c` |
| 14 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/ext--cdaeb96d95a59fc01a3e33d1.md) | 123 | `result-track:cdaeb96d95a59fc01a3e33d18c17fd9c0c5d6f49157b0a888acdc0e78c843eae` |
| 15 | `theorem` | [and_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/and-comm--399a6d10e18b941a9c244138.md) | 130 | `result-track:399a6d10e18b941a9c244138fb0cb10340a2cfd33bb4310f027919c882fee52b` |
| 16 | `theorem` | [and_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/and-assoc--b563476b467d15ced7009a4b.md) | 138 | `result-track:b563476b467d15ced7009a4b2098dcccc4797c71d2e663f65dde73f7a1f6743d` |
| 17 | `theorem` | [or_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/or-comm--832df48df96ef41370ff7ddd.md) | 147 | `result-track:832df48df96ef41370ff7ddd25fed5b8705394f0a7e0dc69fe4c74dcfea8e5a3` |
| 18 | `theorem` | [xor_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/xor-comm--e30072bd18202c5cf195052b.md) | 155 | `result-track:e30072bd18202c5cf195052b9b784fe2e62ca49d44a171ce11d157cdbfd2aed7` |
| 19 | `theorem` | [not_not](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/not-not--f0b5e70a4ab32f8e27dc56d8.md) | 163 | `result-track:f0b5e70a4ab32f8e27dc56d8f25cc6e272b62f8978c84ec1643ece5dd4a6498c` |
| 20 | `structure` | [BitMatrix.ArrayBacked](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/bitmatrix-arraybacked--d3e9b80819978a9c0287c307.md) | 181 | `declaration-track:d3e9b80819978a9c0287c3075163d0ad64c79a4116ce480b630d45761bf73e36` |
| 21 | `def` | [flatIdx](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/flatidx--a717cf70a1778eef5b3c14ed.md) | 195 | `declaration-track:a717cf70a1778eef5b3c14ed1efa6c9ebc2625bd958432710c936c83802c8017` |
| 22 | `def` | [ofArray?](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/ofarray--845f396bc8213fb63af06e25.md) | 214 | `declaration-track:845f396bc8213fb63af06e25260aad06d2aa45f008c6e57f61312bec888ef820` |
| 23 | `def` | [fill](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/fill--b4134e122ea86bf7b5401cf1.md) | 225 | `declaration-track:b4134e122ea86bf7b5401cf132b24db63ea1589db9578930780c0ad02d5fd464` |
| 24 | `def` | [get](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/get--a094251673c4166b3ba7920a.md) | 238 | `declaration-track:a094251673c4166b3ba7920aff085af45b4b3a42753f463ce1f978da8dc29e98` |
| 25 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/tomatrix--637907463883fa503dab294a.md) | 248 | `declaration-track:637907463883fa503dab294a8d44d8a36a991302257395b584e8d412ea462e07` |
| 26 | `def` | [mapInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/mapinplace--1f417b77a02b531b2984e045.md) | 260 | `declaration-track:1f417b77a02b531b2984e0453ca95d09469feb666f1dc000ff33036363aefc8b` |
| 27 | `def` | [zipWithInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/zipwithinplace--c7a97f39dc63619f33ced376.md) | 274 | `declaration-track:c7a97f39dc63619f33ced3762c543cf7e47d9d9a28b2569cb46f122feb801b10` |
| 28 | `def` | [andInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/andinplace--cb7cef273041348d87a1f5ea.md) | 288 | `declaration-track:cb7cef273041348d87a1f5eaca7e5105f41078e171d4b11de28ee8e51543fde3` |
| 29 | `def` | [orInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/orinplace--6eb8166905eeb7f62a1c26be.md) | 294 | `declaration-track:6eb8166905eeb7f62a1c26bee5bd973c2aaafed6861e514e2198a6371e455ec0` |
| 30 | `def` | [xorInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/xorinplace--822b49a960b2f59653a4d1a9.md) | 300 | `declaration-track:822b49a960b2f59653a4d1a96a47614327fdc605522eb18131c81ea473407ff3` |
| 31 | `def` | [notInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/notinplace--61baa2b370ff89bd5bde4486.md) | 306 | `declaration-track:61baa2b370ff89bd5bde44860aed04b680c235a2c54db948632b84234285f7e8` |
| 32 | `theorem` | [get_mapInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/get-mapinplace--96bd8e2e23e9e5107c3e80a5.md) | 318 | `result-track:96bd8e2e23e9e5107c3e80a51f621925e5bd8d5b3898d48083c58e8cda6d0c2e` |
| 33 | `theorem` | [get_zipWithInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/get-zipwithinplace--77b5acac49daec25871360f8.md) | 329 | `result-track:77b5acac49daec25871360f84917192e4ee9f7b9359fb4f3a670cdcc1a4efef6` |
| 34 | `theorem` | [mapInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/mapinplace-spec--1e2d3a817d0ba69adca8d80c.md) | 343 | `result-track:1e2d3a817d0ba69adca8d80cad20668cb75fda5804f032edce35b407da2a34d6` |
| 35 | `theorem` | [zipWithInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/zipwithinplace-spec--ebe35e8734e02311f57a8e6c.md) | 358 | `result-track:ebe35e8734e02311f57a8e6c0900eefeec0e00ebf47784a63fa11c4e13fd7c55` |
| 36 | `theorem` | [andInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/andinplace-spec--690c059925eaa3ffaf94c633.md) | 367 | `result-track:690c059925eaa3ffaf94c63347bb687b0da43a59b6cf9da8385ac58f8f03e399` |
| 37 | `theorem` | [orInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/orinplace-spec--688ca1d60f46bcc718889d71.md) | 374 | `result-track:688ca1d60f46bcc718889d717a3118c0cce7f0ea9007edef651a22b1e1cf153b` |
| 38 | `theorem` | [xorInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/xorinplace-spec--f9f0e4e35cbf10db05a0af0c.md) | 381 | `result-track:f9f0e4e35cbf10db05a0af0c07e0f5e8f5bb349412747511e81e5c46b51366db` |
| 39 | `theorem` | [notInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/notinplace-spec--a117ad79ceaeef8e9c357a17.md) | 388 | `result-track:a117ad79ceaeef8e9c357a17e1f844d35643b79103646778ebc6e57566aeda88` |
| 40 | `def` | [Refines](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/refines--25e2d87aab941b495563d334.md) | 408 | `declaration-track:25e2d87aab941b495563d33445fadd1b4bc77987e61b596c21dabc44d5a4b499` |
| 41 | `theorem` | [refines_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/refines-tomatrix--9fe2b36f99fa4b4102d685f8.md) | 420 | `result-track:9fe2b36f99fa4b4102d685f83cbe2e0053eef1219d7e618b4faa73d5aefd9529` |
| 42 | `theorem` | [mapInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/mapinplace-refines--f6cfdc40e373881c11aaef94.md) | 428 | `result-track:f6cfdc40e373881c11aaef9465f9bbc42b2947859701fed01e365bfae61470c1` |
| 43 | `theorem` | [zipWithInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/zipwithinplace-refines--07dbbcb4d8214ed1b2311e4e.md) | 442 | `result-track:07dbbcb4d8214ed1b2311e4e6d6c03288ae92dedd696abf5bab48d23e69a9274` |
| 44 | `theorem` | [andInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/andinplace-refines--be911871b952a77d8d459167.md) | 454 | `result-track:be911871b952a77d8d4591673290bcf5917ee5fd400c2a4010bc221b9b137919` |
| 45 | `theorem` | [andInPlace_comm_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/andinplace-comm-tomatrix--5b480783bed690061a176de8.md) | 479 | `result-track:5b480783bed690061a176de80fb6caf2fc596833e536171136ec549870ae7ef1` |
| 46 | `theorem` | [andInPlace_assoc_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/andinplace-assoc-tomatrix--aa1bf7c015a7d71edf9555ff.md) | 486 | `result-track:aa1bf7c015a7d71edf9555ff96f67d1e0b644c23c1c290bb8a2642e5297abdab` |
| 47 | `theorem` | [notInPlace_involutive_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean/declarations/notinplace-involutive-tomatrix--d89a531a56f3442838ff6c49.md) | 494 | `result-track:d89a531a56f3442838ff6c49cf479d4b9b8a6d8d6fd6c1f7bd294fdba203d1c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
