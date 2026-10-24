# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb2c9bb68bc26a05ab688ea9872511e9d3e8e08",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb2c9bb68bc26a05ab688ea9872511e9d3e8e08`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.PosPart` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.CharZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 17; external provider; requires a separately pinned dependency.
- `Qq` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ite_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/ite-pos--0dd5952f366070338d6de452.md) | 37 | `result-track:0dd5952f366070338d6de452b550b239e21f01b9afb129615f69df5c01f4f9c0` |
| 2 | `lemma` | [ite_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/ite-nonneg--0d09ba1fb06262e6cb0ae874.md) | 40 | `result-track:0d09ba1fb06262e6cb0ae874913270dce3fc35e026cd00940123953525f3d561` |
| 3 | `lemma` | [ite_nonneg_of_pos_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/ite-nonneg-of-pos-of-nonneg--222c24912b3bf3e4aa206851.md) | 43 | `result-track:222c24912b3bf3e4aa206851b3619ef5a721ab4e66cd157afe1145719aa9ee95` |
| 4 | `lemma` | [ite_nonneg_of_nonneg_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/ite-nonneg-of-nonneg-of-pos--d952f1d0851a36e7a72ad07b.md) | 46 | `result-track:d952f1d0851a36e7a72ad07b31617982277746b41264b1355f20ebddbc0691c9` |
| 5 | `lemma` | [ite_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/ite-ne-zero--1629144e1689d4beb47e16d5.md) | 49 | `result-track:1629144e1689d4beb47e16d5ff9790dc3bf3deb95f7ebb56c6736f287615a48a` |
| 6 | `lemma` | [ite_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/ite-ne-zero-of-pos-of-ne-zero--841f58be0582b284afd3f04a.md) | 51 | `result-track:841f58be0582b284afd3f04a60db53709938c588c580092afd19ad67f2a7f3bb` |
| 7 | `lemma` | [ite_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/ite-ne-zero-of-ne-zero-of-pos--6b6985de0d4a65d36147fb02.md) | 55 | `result-track:6b6985de0d4a65d36147fb02634891e377e5beaed362e455215b963da5a1f106` |
| 8 | `def` | [evalIte](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalite--277242ea4e2b983b71a7daac.md) | 63 | `declaration-track:277242ea4e2b983b71a7daac87e0dd3b917db0e78b8bd095de4e36c4b6e365ed` |
| 9 | `lemma` | [le_min_of_lt_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/le-min-of-lt-of-le--79b130fa046c2d9e4f9c6fed.md) | 97 | `result-track:79b130fa046c2d9e4f9c6fed0d840c25157befff94f2ad7f0c316e1f093c37a4` |
| 10 | `lemma` | [le_min_of_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/le-min-of-le-of-lt--fad0bd8ce5c2e50179033724.md) | 98 | `result-track:fad0bd8ce5c2e501790337245091f651e15eb15961655f88374ee893c6732ccf` |
| 11 | `lemma` | [min_ne](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/min-ne--bc1f165b3f74f59df9293b38.md) | 99 | `result-track:bc1f165b3f74f59df9293b38f68a636825c9fdf38637710ee8be2321f56329d8` |
| 12 | `lemma` | [min_ne_of_ne_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/min-ne-of-ne-of-lt--3ab08d1bc5be46c6c0bdae91.md) | 102 | `result-track:3ab08d1bc5be46c6c0bdae91c2f14f36a758a2607cf3be5b1b53dbd77a62c39f` |
| 13 | `lemma` | [min_ne_of_lt_of_ne](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/min-ne-of-lt-of-ne--634f66ca1d599b149d3f7ef4.md) | 103 | `result-track:634f66ca1d599b149d3f7ef46c830314959506abc2647db2a00dc661aaaa0d33` |
| 14 | `lemma` | [max_ne](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/max-ne--d52005a84a20a07ac89f226b.md) | 105 | `result-track:d52005a84a20a07ac89f226b7d1415d5cb0f0233602c931f56fec083fd83bd78` |
| 15 | `def` | [evalMin](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalmin--ffbc808969ae5422c9dc6e01.md) | 112 | `declaration-track:ffbc808969ae5422c9dc6e0120e0c071aa3a1df10f4650179e0086407adf3f56` |
| 16 | `def` | [evalMax](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalmax--04b6309e72b43c34c6cd8270.md) | 131 | `declaration-track:04b6309e72b43c34c6cd827056fc380e75a17799a4ec5580d5dc247df54c0f43` |
| 17 | `def` | [evalAdd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evaladd--82849171c9aedc145c840f1e.md) | 160 | `declaration-track:82849171c9aedc145c840f1ede6162fa32bae85269ab61c71dd69438339bcebe` |
| 18 | `theorem` | [mul_nonneg_of_pos_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/mul-nonneg-of-pos-of-nonneg--ef77562958b15edb2fa710ac.md) | 183 | `result-track:ef77562958b15edb2fa710ac93a0d809e72c31a8ed735d9da00c8d85bc411f42` |
| 19 | `theorem` | [mul_nonneg_of_nonneg_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/mul-nonneg-of-nonneg-of-pos--fadef32085c88606631cf92b.md) | 188 | `result-track:fadef32085c88606631cf92be89f5b02ce345f38e47a50a05a0fddd9b1173213` |
| 20 | `theorem` | [mul_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/mul-ne-zero-of-ne-zero-of-pos--36bfeabe020169beb6ad6098.md) | 193 | `result-track:36bfeabe020169beb6ad6098b4d5b4cbae250a0df91f9a8e124377e81c9045d2` |
| 21 | `theorem` | [mul_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/mul-ne-zero-of-pos-of-ne-zero--bf7be114b24db0df15958d5e.md) | 198 | `result-track:bf7be114b24db0df15958d5e07bcdc88225c758960e4917b315f682b1348937c` |
| 22 | `def` | [evalMul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalmul--074bc62a7b62545cfc1b38d1.md) | 205 | `declaration-track:074bc62a7b62545cfc1b38d112549151fb19d7166f6db217330fbe884150ac3d` |
| 23 | `lemma` | [int_div_self_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/int-div-self-pos--332e81aea32fea75fc4e9d8c.md) | 232 | `result-track:332e81aea32fea75fc4e9d8c63f5118a00ec691bca368abe8e1d43afb980bc85` |
| 24 | `lemma` | [int_div_nonneg_of_pos_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/int-div-nonneg-of-pos-of-nonneg--7f52c3ea800698ba6d53da5d.md) | 235 | `result-track:7f52c3ea800698ba6d53da5da86760bd2033a9dbacf8f909d89649b47b320e60` |
| 25 | `lemma` | [int_div_nonneg_of_nonneg_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/int-div-nonneg-of-nonneg-of-pos--f0b55c973b477ed524ec564f.md) | 238 | `result-track:f0b55c973b477ed524ec564f39c4130005f65cf4c2469c95a9f5b5201dfb3576` |
| 26 | `lemma` | [int_div_nonneg_of_pos_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/int-div-nonneg-of-pos-of-pos--b360ef1d2caee98b32502bd7.md) | 241 | `result-track:b360ef1d2caee98b32502bd72a71b7dcc50752412273400778ec5624e6604588` |
| 27 | `def` | [evalIntDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalintdiv--23af6fd2c2334a5826fdf420.md) | 246 | `declaration-track:23af6fd2c2334a5826fdf4208b018b50a9d42373505fa4ab241b1cdafb326ac7` |
| 28 | `theorem` | [pow_zero_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/pow-zero-pos--8d412c7f387c35aa39fcd6e3.md) | 267 | `result-track:8d412c7f387c35aa39fcd6e3b16a6f27be13d9a1991d3be742d777f58c9c83be` |
| 29 | `def` | [evalPowZeroNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalpowzeronat--9653a4af6d1a64c3b579519a.md) | 274 | `declaration-track:9653a4af6d1a64c3b579519a297bf95df00febf1e054117acf341347d8f5c4ba` |
| 30 | `def` | [evalPow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalpow--bf592e22e02b25b135ad8197.md) | 285 | `declaration-track:bf592e22e02b25b135ad8197d703cc12f24e0c1fac248c6707486ebf96b7fd00` |
| 31 | `theorem` | [abs_pos_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/abs-pos-of-ne-zero--ae44001afd0a369f339b6c45.md) | 335 | `result-track:ae44001afd0a369f339b6c45b81e50d37948131edcaa64f94e2c1853aa28cd79` |
| 32 | `def` | [evalAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalabs--9932ef01b09b815397ae5157.md) | 340 | `declaration-track:9932ef01b09b815397ae515730be64a3a91fbd4657e73c3516f707f098b01f50` |
| 33 | `theorem` | [int_natAbs_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/int-natabs-pos--b6e56e15817b2baf824c9fdc.md) | 355 | `result-track:b6e56e15817b2baf824c9fdc893056e8c6f493d3143bd4b2974cccda3a0487ca` |
| 34 | `def` | [evalNatAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalnatabs--e8fbfdb0c4d7155c7ed8313b.md) | 363 | `declaration-track:e8fbfdb0c4d7155c7ed8313b417d6886743a3612068d5fae6602a711252bff75` |
| 35 | `def` | [evalNatCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalnatcast--40183d359abbde60105ab49e.md) | 385 | `declaration-track:40183d359abbde60105ab49e201b4288ed440e3509ebcf9c24d4c1a11925375f` |
| 36 | `def` | [evalIntCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalintcast--738b306240cfc52128bc1c71.md) | 403 | `declaration-track:738b306240cfc52128bc1c715a3fc177ff2ab6b16016a34a3c1c325c34e91600` |
| 37 | `def` | [evalNatSucc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalnatsucc--6ea22e20141085e66684c12c.md) | 431 | `declaration-track:6ea22e20141085e66684c12c04abd77a25b6c5ab1d02d75d8de4668f1a38b960` |
| 38 | `def` | [evalPNatVal](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalpnatval--2f94f87f65b8c08ce48a947a.md) | 440 | `declaration-track:2f94f87f65b8c08ce48a947ae11aba844488ac27f724b7979dedfd3a63c9ce8a` |
| 39 | `def` | [evalFactorial](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalfactorial--675cc94fa5c98a938af9a6ec.md) | 449 | `declaration-track:675cc94fa5c98a938af9a6ecaa02c709432b36c68e37c4143bd981ddc3201fd7` |
| 40 | `def` | [evalAscFactorial](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalascfactorial--05c53c691ff8b0b8fdeca622.md) | 458 | `declaration-track:05c53c691ff8b0b8fdeca62299302d9a57a6409cd6c95e2147446113cdd6f827` |
| 41 | `def` | [evalNNRatNum](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalnnratnum--51bdcab51434457c0545265c.md) | 474 | `declaration-track:51bdcab51434457c0545265c54fafdffb4b9a81cdc797fdc1c4b63dfc9a2ebc5` |
| 42 | `def` | [evalNNRatDen](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalnnratden--455696635b2fd1149d7e34a8.md) | 488 | `declaration-track:455696635b2fd1149d7e34a8097a4b4fc4c2c325b41f31004ef09b4793b85360` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/example--4bef006a6647c73a0c6e2b2f.md) | 497 | `declaration-track:4bef006a6647c73a0c6e2b2f70cc941ba05435452e67ed2968b5c73bcffd1fa5` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/example--0efdb4e75452234dd7c5f338.md) | 498 | `declaration-track:0efdb4e75452234dd7c5f338bedd78512f59b6e19fece7347a631132d669cabe` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/example--8c5c72c04f4b1f96b1956e19.md) | 499 | `declaration-track:8c5c72c04f4b1f96b1956e19aeb8f23c86e643ed000654946c61f3ecf26d101c` |
| 46 | `def` | [evalRatNum](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalratnum--f831196a8b26ba5cd37906b5.md) | 512 | `declaration-track:f831196a8b26ba5cd37906b5041171bbf7691d11ef45efc246515f05ab8f6a2e` |
| 47 | `def` | [evalRatDen](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalratden--51d32e5f146a92a81dd24743.md) | 527 | `declaration-track:51d32e5f146a92a81dd2474373bbfe9b11aa9f59f5c2985dd70fae4ee3a63e58` |
| 48 | `def` | [evalPosPart](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalpospart--96f61f87ac4fa2009fe7a199.md) | 536 | `declaration-track:96f61f87ac4fa2009fe7a1999b04dbf2c7fd08b233909d3970441b5e2e4bb04a` |
| 49 | `def` | [evalNegPart](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/declarations/evalnegpart--785f010eb03463c2c92d5799.md) | 551 | `declaration-track:785f010eb03463c2c92d5799e35044e279fbf4a7466a1acbb11f5fd1a77fc034` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
