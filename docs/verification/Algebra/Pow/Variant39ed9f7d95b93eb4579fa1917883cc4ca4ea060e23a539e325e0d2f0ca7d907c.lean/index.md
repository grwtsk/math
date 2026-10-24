# Verification target: GRWTSK.Algebra.Pow.Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74c15e2174c40d4316d9955814ca8e76daf361df",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74c15e2174c40d4316d9955814ca8e76daf361df`.

Source path: `GRWTSK/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_le_pow_of_le](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/one-le-pow-of-le--f95d163d8584ff42c43ce2cc.md) | 32 | `result-track:f95d163d8584ff42c43ce2cc6ca73f684ed74cca0bff6b266e9e6fd3854fd5ad` |
| 2 | `theorem` | [pow_le_one_of_le](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-le-one-of-le--a9e3491485784cd662687c71.md) | 39 | `result-track:a9e3491485784cd662687c713983ba10b7a334a2fb1ba3c1432f435c42d76c4d` |
| 3 | `theorem` | [pow_lt_one_of_lt](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-lt-one-of-lt--cf0ced53b479fc7a1cfeff91.md) | 42 | `result-track:cf0ced53b479fc7a1cfeff912defa67ea85408d6467467d3dba0352830b63b39` |
| 4 | `theorem` | [pow_right_monotone](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-right-monotone--40e73408d600f78e1a1e84b9.md) | 58 | `result-track:40e73408d600f78e1a1e84b9fce8783fe1500bf67bda5c9f6669e4af34a87570` |
| 5 | `theorem` | [pow_le_pow_right'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-le-pow-right--3940bb1bef23cdf29dd51fb8.md) | 62 | `result-track:3940bb1bef23cdf29dd51fb88e57c689c8b2a67421d224016b52352d144481f0` |
| 6 | `theorem` | [pow_le_pow_right_of_le_one'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-le-pow-right-of-le-one--d1cc9a31ccb7f0368a139d81.md) | 66 | `result-track:d1cc9a31ccb7f0368a139d81192bfd0d9920dd4b11742709b24b74928b11c1f3` |
| 7 | `theorem` | [one_lt_pow'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/one-lt-pow--53be3bb6683fbd991be94e52.md) | 70 | `result-track:53be3bb6683fbd991be94e5292d51cb7fcb7dda58fcc907dd5998254b28f840c` |
| 8 | `lemma` | [le_self_pow](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/le-self-pow--ade4e9b72da8e1c9e05bcc46.md) | 74 | `result-track:ade4e9b72da8e1c9e05bcc4604da90c28313bb785cac2b364bcc4b76f1a91781` |
| 9 | `theorem` | [pow_right_strictMono'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-right-strictmono--5446a5a4f49971bebd7b6e2c.md) | 84 | `result-track:5446a5a4f49971bebd7b6e2c5e947666d425265b565ca0252fad8d74b4045e57` |
| 10 | `theorem` | [pow_lt_pow_right'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-lt-pow-right--c854c20a33742c47f158b306.md) | 88 | `result-track:c854c20a33742c47f158b3061d419a3a743fa02aae42c9d49f1b4a03cb85f3f4` |
| 11 | `theorem` | [Right.one_le_pow_of_le](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/right-one-le-pow-of-le--33b32842a6c9300381093d20.md) | 98 | `result-track:33b32842a6c9300381093d20a45f69017831c1fe9af3b4d00e40d5b8c5b92f09` |
| 12 | `theorem` | [Right.pow_le_one_of_le](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/right-pow-le-one-of-le--214b42dd469031856578126b.md) | 105 | `result-track:214b42dd469031856578126b41da102cd7694d8c3200f4aa99fdbe07a6d72718` |
| 13 | `theorem` | [Right.pow_lt_one_of_lt](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/right-pow-lt-one-of-lt--bb316d5c541ffc478815d73f.md) | 109 | `result-track:bb316d5c541ffc478815d73f03c6113ac8a27b88e085b571b6ce6a77e3f3e099` |
| 14 | `lemma` | [pow_le_pow_mul_of_sq_le_mul](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-le-pow-mul-of-sq-le-mul--7c222c230884f28ba5352a44.md) | 117 | `result-track:7c222c230884f28ba5352a441e14ef4243fe2d0f15fc0dc42b40c530d315d1fa` |
| 15 | `theorem` | [StrictMono.pow_const](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/strictmono-pow-const--2336824b248565e684645851.md) | 135 | `result-track:2336824b248565e684645851ac3d1a13838e68ab98e86dfc4d9ee0498a4948a6` |
| 16 | `theorem` | [pow_left_strictMono](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-left-strictmono--117d3a174e299c02d167d280.md) | 143 | `result-track:117d3a174e299c02d167d280a4981f17844deb3227a604ef9e15ad784615865a` |
| 17 | `lemma` | [pow_lt_pow_left'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-lt-pow-left--f185260f737c695f4e4dc3e2.md) | 146 | `result-track:f185260f737c695f4e4dc3e22fe5d9d7e06d08b5623750fd4880157518fef3cc` |
| 18 | `theorem` | [pow_le_pow_left'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-le-pow-left--8eb3e37ead9fc08930eea57c.md) | 156 | `result-track:8eb3e37ead9fc08930eea57c9b1831aeef0a6560388aa360461842d1a9d9f551` |
| 19 | `theorem` | [Monotone.pow_const](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/monotone-pow-const--a43f0eaf24818e6ca5389a99.md) | 163 | `result-track:a43f0eaf24818e6ca5389a9990c56443628b5b41716a390ed8078f56bc23a0f2` |
| 20 | `theorem` | [pow_left_mono](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-left-mono--070792c23a574b628686e17e.md) | 170 | `result-track:070792c23a574b628686e17e245b90feabb771e25ce7b4e1934aa7e33da4b931` |
| 21 | `lemma` | [pow_le_pow](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-le-pow--ab86073be5b7552e17a4d830.md) | 173 | `result-track:ab86073be5b7552e17a4d830affe081c235b3107aaa96ddf2198a31a7b76f6dc` |
| 22 | `lemma` | [le_pow_sup](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/le-pow-sup--eb10c2bd4270a9d44fd44462.md) | 183 | `result-track:eb10c2bd4270a9d44fd4446242313696bb7a17ccbf8d23f640344b9a22617af7` |
| 23 | `lemma` | [pow_inf_le](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-inf-le--bbc05342e5d22ceeeeeb97e0.md) | 191 | `result-track:bbc05342e5d22ceeeeeb97e0b14f93029aeb09c644327c4ad3acfd1ae50c56b6` |
| 24 | `theorem` | [one_le_pow_iff](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/one-le-pow-iff--9f2fe7580795a7746a409412.md) | 206 | `result-track:9f2fe7580795a7746a4094126499783823df32e3dece7ae34b129f24406b08a1` |
| 25 | `theorem` | [pow_le_one_iff](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-le-one-iff--e83115f041fd4bb55373aa05.md) | 210 | `result-track:e83115f041fd4bb55373aa054d0e51e4324964239a0291caf321ddc431f6ddcd` |
| 26 | `theorem` | [one_lt_pow_iff](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/one-lt-pow-iff--cc62b14d2719a017a5604f17.md) | 214 | `result-track:cc62b14d2719a017a5604f178ba1ddf2b856e331a7bac7c6e2d35c79de2a521b` |
| 27 | `theorem` | [pow_lt_one_iff](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-lt-one-iff--774b40c0372734188695d145.md) | 218 | `result-track:774b40c0372734188695d1456237af5cf5026e2185b1e2774e559aca0913c911` |
| 28 | `theorem` | [pow_eq_one_iff](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-eq-one-iff--697df53d50f43aca4946efdf.md) | 222 | `result-track:697df53d50f43aca4946efdf00e036722c394686043c2c8973f320f102d7aee8` |
| 29 | `theorem` | [pow_le_pow_iff_right'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-le-pow-iff-right--330b8089858f8a61392e1adb.md) | 233 | `result-track:330b8089858f8a61392e1adb655bc68a1428bd4bbc5ac943ba3c8d27e7701143` |
| 30 | `theorem` | [pow_lt_pow_iff_right'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/pow-lt-pow-iff-right--c6e258fa1900dc1bdb25a4c8.md) | 237 | `result-track:c6e258fa1900dc1bdb25a4c82d7b76c32f20e6ad89246fdf2e96109d00d1ce85` |
| 31 | `theorem` | [lt_of_pow_lt_pow_left'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/lt-of-pow-lt-pow-left--85b8946c24b6c844feaa4d28.md) | 247 | `result-track:85b8946c24b6c844feaa4d288ae5df48092edc0ae13281147511ee8eb2e76092` |
| 32 | `theorem` | [min_lt_of_mul_lt_sq](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/min-lt-of-mul-lt-sq--036d332180580df7c1379599.md) | 251 | `result-track:036d332180580df7c1379599527c18345cdd61a4afa71e78b4bee81fea12e7f2` |
| 33 | `theorem` | [lt_max_of_sq_lt_mul](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/lt-max-of-sq-lt-mul--e85480632378d61472366a09.md) | 255 | `result-track:e85480632378d61472366a09edd7b91137947e551bf61fa1c0bef865528a8108` |
| 34 | `theorem` | [le_of_pow_le_pow_left'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/le-of-pow-le-pow-left--199419e9bc8cadf3b87a0380.md) | 265 | `result-track:199419e9bc8cadf3b87a0380da9e79cffbb24e151f3e6446af14f5b304fceb4a` |
| 35 | `theorem` | [min_le_of_mul_le_sq](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/min-le-of-mul-le-sq--1fa5f71d919ac9dbe2a723dd.md) | 269 | `result-track:1fa5f71d919ac9dbe2a723dd7e4fb7ab1562180591450dfeac87546e447c218a` |
| 36 | `theorem` | [le_max_of_sq_le_mul](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/le-max-of-sq-le-mul--3465b2a6bdcf20a7e9387c2c.md) | 273 | `result-track:3465b2a6bdcf20a7e9387c2c7d19b270d67c94dd23de293eb63c691f91cb6b02` |
| 37 | `theorem` | [Left.pow_lt_one_iff'](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/left-pow-lt-one-iff--0f19a58cd5592a67cc58671c.md) | 279 | `result-track:0f19a58cd5592a67cc58671c433c40a9ccaa4bcb469717f1dc1c59dbe49499dc` |
| 38 | `theorem` | [Left.pow_lt_one_iff](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/left-pow-lt-one-iff--b69f784eabc63ff2cee011b3.md) | 284 | `result-track:b69f784eabc63ff2cee011b3d74f76084a2d094303eea376106b61d78b14a1d3` |
| 39 | `theorem` | [Right.pow_lt_one_iff](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/right-pow-lt-one-iff--3073803182157a3aea51fba4.md) | 288 | `result-track:3073803182157a3aea51fba49c1785c74da7dd87cb0a2bd2a8799edb06cab757` |
| 40 | `theorem` | [one_le_zpow](../../../../mathematics/Algebra/Pow/Variant39ed9f7d95b93eb4579fa1917883cc4ca4ea060e23a539e325e0d2f0ca7d907c.lean/declarations/one-le-zpow--4b640f3992b122f23da8986b.md) | 302 | `result-track:4b640f3992b122f23da8986b146c087508f49405925f58c74f53af016ecd226b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
