# Verification target: GRWTSK.Algebra.Pow.Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aee98a6149f1f0988626ddce674b2cbfdfc23c72",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aee98a6149f1f0988626ddce674b2cbfdfc23c72`.

Source path: `GRWTSK/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_le_pow_of_le](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/one-le-pow-of-le--f32f04e7bcc7e42c3cc15b07.md) | 42 | `result-track:f32f04e7bcc7e42c3cc15b075d9ad7c191385117c3ab3d92167a9661f0c4b608` |
| 2 | `theorem` | [pow_le_one_of_le](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-le-one-of-le--988011364201c8f748301cfd.md) | 49 | `result-track:988011364201c8f748301cfdd6ff7abd8d440d36321629c6a6326fbc7776d393` |
| 3 | `theorem` | [pow_lt_one_of_lt](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-lt-one-of-lt--6b1297038a9f4a13c791c59a.md) | 52 | `result-track:6b1297038a9f4a13c791c59add6c1e5c3db3f03f551553b6bd516753697a9b08` |
| 4 | `theorem` | [pow_right_monotone](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-right-monotone--b5b88f7619db2f212622ad86.md) | 68 | `result-track:b5b88f7619db2f212622ad86a11d2194ee8bb19e0aed77649a035c4f41b8084c` |
| 5 | `theorem` | [pow_le_pow_right'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-le-pow-right--cede95719114a18e26b3401e.md) | 73 | `result-track:cede95719114a18e26b3401eacb4fc3e4aaa220d1d5c38c9033c7075f1d3eac9` |
| 6 | `theorem` | [pow_le_pow_right_of_le_one'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-le-pow-right-of-le-one--f939bc096bfbe20329b4dd53.md) | 77 | `result-track:f939bc096bfbe20329b4dd53b7d2e9f93f686b011ae052d8ce0f2da90adaad93` |
| 7 | `theorem` | [one_lt_pow'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/one-lt-pow--43258f67f0da29a0d03efab9.md) | 81 | `result-track:43258f67f0da29a0d03efab9cd78260fe664c3089dd516eee70c7143e344bb2b` |
| 8 | `lemma` | [le_self_pow](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/le-self-pow--51ed17ba6bb04fce5ef1d51b.md) | 85 | `result-track:51ed17ba6bb04fce5ef1d51bf2bfb1772087e54fb9770b23f61706a4aa19ccad` |
| 9 | `theorem` | [pow_right_strictMono'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-right-strictmono--c5ba3eb3290d475bc3735b8d.md) | 95 | `result-track:c5ba3eb3290d475bc3735b8d56205f15bd79f474f7a821e6e76bf796df89a9bc` |
| 10 | `theorem` | [pow_lt_pow_right'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-lt-pow-right--36bdd9eecc1e1891a8c5d4a1.md) | 99 | `result-track:36bdd9eecc1e1891a8c5d4a15f1f144e2559ff1546c679321525a28b5dc4e828` |
| 11 | `theorem` | [Right.one_le_pow_of_le](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/right-one-le-pow-of-le--8da0e115b1770bf390b35c1e.md) | 109 | `result-track:8da0e115b1770bf390b35c1e2ae68bce831878d0c7e433a45c123daff538cb09` |
| 12 | `theorem` | [Right.pow_le_one_of_le](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/right-pow-le-one-of-le--28ae249db3330d4457a2f89a.md) | 116 | `result-track:28ae249db3330d4457a2f89a41accefee1c8438c6e324945139745e2e4db95e5` |
| 13 | `theorem` | [Right.pow_lt_one_of_lt](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/right-pow-lt-one-of-lt--03bdc1c90e6fde40ec48e790.md) | 120 | `result-track:03bdc1c90e6fde40ec48e7906ef7fc411d595c4fb8aa6ff33436861dc9b43607` |
| 14 | `lemma` | [pow_le_pow_mul_of_sq_le_mul](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-le-pow-mul-of-sq-le-mul--d7ed934332b3a40d2c8855d8.md) | 128 | `result-track:d7ed934332b3a40d2c8855d88e617b8759d3559fe64f4fc7ea502d7f028ebb4d` |
| 15 | `theorem` | [StrictMono.pow_const](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/strictmono-pow-const--9fc6f24c5bcc8de8652d05c8.md) | 146 | `result-track:9fc6f24c5bcc8de8652d05c86f596433e862958252153e9f2dbfc61a7e0f83d1` |
| 16 | `theorem` | [pow_left_strictMono](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-left-strictmono--2c84ee13fe974c38360d6ac5.md) | 154 | `result-track:2c84ee13fe974c38360d6ac58e49a7f6f4a0f754e0a5356f41b7f71889ad0f7a` |
| 17 | `lemma` | [pow_lt_pow_left'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-lt-pow-left--a1e5a595f7df9ed36f9621fc.md) | 157 | `result-track:a1e5a595f7df9ed36f9621fc5a8f1afdcfac2d6239736e0805eef737df7283a1` |
| 18 | `theorem` | [pow_le_pow_left'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-le-pow-left--229409077e47a3e3f9b4ae68.md) | 167 | `result-track:229409077e47a3e3f9b4ae68ca2c7e37515b55bcd18739b3aff275f4e59e6d6b` |
| 19 | `theorem` | [Monotone.pow_const](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/monotone-pow-const--117875af94cde58cfbe7fc0c.md) | 174 | `result-track:117875af94cde58cfbe7fc0c4d933a0c6b2c232c6232ef36026d15e2d2ec4ec6` |
| 20 | `theorem` | [pow_left_mono](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-left-mono--834b46532988a2c4f4a392fa.md) | 181 | `result-track:834b46532988a2c4f4a392fa5dbd7845f1319bf33562b053226fdbad84b34f63` |
| 21 | `lemma` | [pow_le_pow](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-le-pow--496ae5f7a7cc4225dfd2bb50.md) | 185 | `result-track:496ae5f7a7cc4225dfd2bb50a4afc57b956d7278a1a8c77b85bf7134fcbdb39d` |
| 22 | `lemma` | [le_pow_sup](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/le-pow-sup--524323fb3d3676329c3e7b9d.md) | 195 | `result-track:524323fb3d3676329c3e7b9d839bff2e2231a0567b28a1d3f1ea3861dffb9ba3` |
| 23 | `lemma` | [pow_inf_le](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-inf-le--d701e52f004e880eff36a3ca.md) | 203 | `result-track:d701e52f004e880eff36a3cabc79649f50261ec0f8aa67ef16ea716f9327eacd` |
| 24 | `theorem` | [one_le_pow_iff](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/one-le-pow-iff--22449354e9f3c381447e3f3f.md) | 218 | `result-track:22449354e9f3c381447e3f3f4e53a19651a7afb3d3e379bedad2a6e6dc07ee6e` |
| 25 | `theorem` | [pow_le_one_iff](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-le-one-iff--25c91d3a0ede6533f32563a2.md) | 222 | `result-track:25c91d3a0ede6533f32563a2356db6454ed4f395ed7b2f64dd4555fa4ff4720c` |
| 26 | `theorem` | [one_lt_pow_iff](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/one-lt-pow-iff--73e2dd07461771da206fcd55.md) | 226 | `result-track:73e2dd07461771da206fcd551b3dca1008da8e669fae4c569ac71b1c4128d2ba` |
| 27 | `theorem` | [pow_lt_one_iff](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-lt-one-iff--acd15867f40b7ddd0cdd42c0.md) | 230 | `result-track:acd15867f40b7ddd0cdd42c082bcabf982b3f5a790fc784b3079a920e7fbeefc` |
| 28 | `theorem` | [pow_le_pow_iff_right'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-le-pow-iff-right--1bc16f6080649d9923324295.md) | 240 | `result-track:1bc16f6080649d9923324295016d794b01ff9cfc5a863990d5bc9cf3af591379` |
| 29 | `theorem` | [pow_lt_pow_iff_right'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-lt-pow-iff-right--3d5783ba71d6c3995403107e.md) | 244 | `result-track:3d5783ba71d6c3995403107e7892ab80e298439b2bd023ecaa30d61e0a8ecdc7` |
| 30 | `theorem` | [lt_of_pow_lt_pow_left'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/lt-of-pow-lt-pow-left--a89fecdc7c1678b0c460b07f.md) | 254 | `result-track:a89fecdc7c1678b0c460b07fc6add6c2b5393560fc01235a4ca767215afa03de` |
| 31 | `theorem` | [min_lt_of_mul_lt_sq](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/min-lt-of-mul-lt-sq--06b73844829c51d3b4038977.md) | 258 | `result-track:06b73844829c51d3b403897752798e4fa45b56ae06f9488a60b11e44b5876f49` |
| 32 | `theorem` | [lt_max_of_sq_lt_mul](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/lt-max-of-sq-lt-mul--7278f0c32a9a6d3e7c431bda.md) | 262 | `result-track:7278f0c32a9a6d3e7c431bda9368fbbfada07915bc6ef82da079f1914d1f93ad` |
| 33 | `theorem` | [pow_le_pow_iff_left](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/pow-le-pow-iff-left--159fd1fc7ff4383f9f6236ab.md) | 272 | `result-track:159fd1fc7ff4383f9f6236abcde890237bc57dea95ea7513aa8aef86ee89c07d` |
| 34 | `theorem` | [min_le_of_mul_le_sq](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/min-le-of-mul-le-sq--0942ecf8238cfd99511adc03.md) | 279 | `result-track:0942ecf8238cfd99511adc0308c3c92f35d9ec3e7658776653acb9bb794f9e8f` |
| 35 | `theorem` | [le_max_of_sq_le_mul](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/le-max-of-sq-le-mul--a9f2b98290f0a77e90df5938.md) | 283 | `result-track:a9f2b98290f0a77e90df593899cbdf797c0bac544c6ed1e042dde8bd7ff2e9ac` |
| 36 | `theorem` | [Left.pow_lt_one_iff'](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/left-pow-lt-one-iff--f4625f79ddaa955f9a3573f2.md) | 289 | `result-track:f4625f79ddaa955f9a3573f224ec15d165e5d4c31246c5dc930531562c49960c` |
| 37 | `theorem` | [Left.pow_lt_one_iff](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/left-pow-lt-one-iff--c7a8487d09d6120a9491b8cc.md) | 294 | `result-track:c7a8487d09d6120a9491b8cc39b8eaf9c81b259a6f2c0d98144853a6f33074ca` |
| 38 | `theorem` | [Right.pow_lt_one_iff](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/right-pow-lt-one-iff--6e1c85541a6f3cd15519e360.md) | 298 | `result-track:6e1c85541a6f3cd15519e3600ebbb100b4f1fd78314f0c4ee3659fb5610e5924` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/instance--e6bc2292bb50e1022f4bb2a8.md) | 304 | `declaration-track:e6bc2292bb50e1022f4bb2a82e88acc56b3142bc5af70afa1f1e9a3fb908b8a5` |
| 40 | `theorem` | [one_le_zpow](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/one-le-zpow--ff8e5f377eb382e3e3a64b29.md) | 316 | `result-track:ff8e5f377eb382e3e3a64b29b0addd3f9d76c20a1be04f280e27333f55e2534e` |
| 41 | `lemma` | [one_lt_zpow](../../../../mathematics/Algebra/Pow/Variantd26c33579e12722036c8d82d8793b139043a93120d5b2cc0da796a8c5cd2b4c2.lean/declarations/one-lt-zpow--f66c38cf5633b60f1da4c440.md) | 322 | `result-track:f66c38cf5633b60f1da4c440491fe613489443c4b862b1c65d6849f5245f3f1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
