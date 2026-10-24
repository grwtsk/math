# Verification target: GRWTSK.Topology.GeneralTopology.CountableInter.Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e23749c7d2e55ce5ed83a21b279237a700d20a54",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e23749c7d2e55ce5ed83a21b279237a700d20a54`.

Source path: `GRWTSK/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CountableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countableinterfilter--df56c7e14985ef9cf77cda37.md) | 42 | `declaration-track:df56c7e14985ef9cf77cda37c3c7e399dcac7120af1086ac3948802dd8821a7c` |
| 2 | `theorem` | [countable_sInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countable-sinter-mem--a11771f9867785eafaebef10.md) | 48 | `result-track:a11771f9867785eafaebef10d2412736fdc26f523cb7a09bb7b54f368c5ed089` |
| 3 | `theorem` | [countable_iInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countable-iinter-mem--1224cdeb030e0f0653c45708.md) | 52 | `result-track:1224cdeb030e0f0653c45708bfd4e70c5094ed6e2ce6d06440fd184899c62f45` |
| 4 | `theorem` | [countable_bInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countable-binter-mem--5c61b33f2696a6edfe9fdb09.md) | 55 | `result-track:5c61b33f2696a6edfe9fdb09fd37fd942d12f0258c28cd350354790ad820a9ba` |
| 5 | `theorem` | [eventually_countable_forall](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventually-countable-forall--b00a8c1da19336c95b56d83f.md) | 61 | `result-track:b00a8c1da19336c95b56d83faccef38ffcea12bc5d812e60472cfdfd63b0be08` |
| 6 | `theorem` | [eventually_countable_ball](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventually-countable-ball--ed7ad2648a424092dd835a44.md) | 66 | `result-track:ed7ad2648a424092dd835a44724749e35df7693fe476fe351e9da3d36c65508b` |
| 7 | `theorem` | [eventually_finset_ball](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventually-finset-ball--bca415ab6aee4cefc2ec1af1.md) | 72 | `result-track:bca415ab6aee4cefc2ec1af1679d785c7673c82a1745e2b599091a4a29e8ab9d` |
| 8 | `theorem` | [EventuallySubset.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventuallysubset-countable-iunion--e40893a1fed49a1258269c52.md) | 78 | `result-track:e40893a1fed49a1258269c525150cee8b0cf5aa74345965723f90975ff157c98` |
| 9 | `theorem` | [EventuallyEqSet.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventuallyeqset-countable-iunion--bb4340d364ed466af9721fa6.md) | 85 | `result-track:bb4340d364ed466af9721fa6b0430cc389ead9cf34d90b4624be86981b65813d` |
| 10 | `theorem` | [EventuallySubset.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventuallysubset-countable-bunion--3ba809d0566429ca00eb4e4d.md) | 93 | `result-track:3ba809d0566429ca00eb4e4daa4f41b6237003ce3a7434e3647210b06ec4ba05` |
| 11 | `theorem` | [EventuallyEqSet.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventuallyeqset-countable-bunion--f208a6f5106f4c7e0b420484.md) | 103 | `result-track:f208a6f5106f4c7e0b42048459fe296cb2b5bbd9d178ddd217ecc87c79ad1f93` |
| 12 | `theorem` | [EventuallySubset.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventuallysubset-countable-iinter--c3dd005aaa35dd1b3e3b4a35.md) | 112 | `result-track:c3dd005aaa35dd1b3e3b4a35ee859bd88f1298060ee685f5eab860760fc68683` |
| 13 | `theorem` | [EventuallyEqSet.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventuallyeqset-countable-iinter--5a2bb407f1b85062330f64a2.md) | 120 | `result-track:5a2bb407f1b85062330f64a220b6b410a7c61e7a82278769354b085f0940d6cb` |
| 14 | `theorem` | [EventuallySubset.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventuallysubset-countable-binter--b8756faa6b65d0fdb1a273e8.md) | 128 | `result-track:b8756faa6b65d0fdb1a273e803d455b79acf37905b062a1e5cd89112253ece71` |
| 15 | `theorem` | [EventuallyEqSet.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/eventuallyeqset-countable-binter--de5aa28ce4cafd00d7d10449.md) | 138 | `result-track:de5aa28ce4cafd00d7d1044976fa808eb18fbf0a9d0118765010c803a1296533` |
| 16 | `def` | [ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/ofcountableinter--430a1050da133217934bb5f1.md) | 166 | `declaration-track:430a1050da133217934bb5f1c9ef03ae832b31d26808aa4e5b782c8116c63097` |
| 17 | `instance` | [countableInter_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countableinter-ofcountableinter--db2153809c7db5edfda8fc94.md) | 175 | `declaration-track:db2153809c7db5edfda8fc9417f1a6d1d57dbe96d652587e65857037c9e07f52` |
| 18 | `theorem` | [mem_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/mem-ofcountableinter--89e058878bba01dfa9ac9b43.md) | 182 | `result-track:89e058878bba01dfa9ac9b435488cff7aba1c5ae8a8e1962f071c15e6901333e` |
| 19 | `def` | [ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/ofcountableunion--4fc448e7a0664575995b2207.md) | 192 | `declaration-track:4fc448e7a0664575995b22074e9885767839f6cb8acf7dcc2446cdf99df04c1b` |
| 20 | `instance` | [countableInter_ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countableinter-ofcountableunion--24a84a224acc5470cef36077.md) | 206 | `declaration-track:24a84a224acc5470cef36077d7e3ddfe6dfeef01b9a09177e1f66399923b892d` |
| 21 | `theorem` | [mem_ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/mem-ofcountableunion--b82cafc6ca4144251c93a61a.md) | 211 | `result-track:b82cafc6ca4144251c93a61a1d5a4a323c1bcbe0fb7bdff696e495a42b87730e` |
| 22 | `instance` | [countableInterFilter_principal](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countableinterfilter-principal--67bfac551c55b978e8966dd0.md) | 217 | `declaration-track:67bfac551c55b978e8966dd0d35d68bacc2bfce29195c1cbf11c5b0798213675` |
| 23 | `instance` | [countableInterFilter_bot](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countableinterfilter-bot--efe227f4c95a79735f8170fe.md) | 220 | `declaration-track:efe227f4c95a79735f8170fe940ae8b5a5debaa1ee414ab6d4daf3aa3bce3ef9` |
| 24 | `instance` | [countableInterFilter_top](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countableinterfilter-top--17146f5d115854d3d3ab98c8.md) | 224 | `declaration-track:17146f5d115854d3d3ab98c8cd3780425fa88774a2d0a20cbd1d17a3871105e1` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/instance--9d95138797036d396b88c0b1.md) | 228 | `declaration-track:9d95138797036d396b88c0b164eb455b23e35d45eabd56ad9abe2696fca67d74` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/instance--7ae1ef7bddfcd2fbfd63183c.md) | 236 | `declaration-track:7ae1ef7bddfcd2fbfd63183ce5dc53f91793096b7fd51159320634681b0de7b3` |
| 27 | `instance` | [countableInterFilter_inf](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countableinterfilter-inf--9526e76a91f290a65f1bf960.md) | 243 | `declaration-track:9526e76a91f290a65f1bf960c3c1af44320f3064b6b757f16b122aa98791f28c` |
| 28 | `instance` | [countableInterFilter_sup](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countableinterfilter-sup--6c423ed1afd58f67c0e96b34.md) | 254 | `declaration-track:6c423ed1afd58f67c0e96b34ddb7072a8a311556ba4085f78f9cf16a862170a4` |
| 29 | `instance` | [CountableInterFilter.curry](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countableinterfilter-curry--aa3b7fbac4a69407390b23d0.md) | 259 | `declaration-track:aa3b7fbac4a69407390b23d04216372be42d7e4b14b03eae0d5b49906af2bebb` |
| 30 | `inductive` | [CountableGenerateSets](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countablegeneratesets--8cbf1311e506bc089dab4e72.md) | 272 | `declaration-track:8cbf1311e506bc089dab4e72639a35f44f523c981ee13253ac8fdfe79bbe073c` |
| 31 | `def` | [countableGenerate](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countablegenerate--4d3d51b7e7e287297c4d33bb.md) | 281 | `declaration-track:4d3d51b7e7e287297c4d33bbe628841039faca29798740158139c945319eea3a` |
| 32 | `theorem` | [mem_countableGenerate_iff](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/mem-countablegenerate-iff--05f11815e5190fcc1faa3ff2.md) | 289 | `result-track:05f11815e5190fcc1faa3ff271ca8db5375f8e9989191ce3d01efc35b67a09bb` |
| 33 | `theorem` | [le_countableGenerate_iff_of_countableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/le-countablegenerate-iff-of-countableinterfilter--9fb55672e36a8bf0bcbc2620.md) | 307 | `result-track:9fb55672e36a8bf0bcbc26208bbc552617836f6980dfcfc0eddc108543a8f034` |
| 34 | `theorem` | [countableGenerate_isGreatest](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/declarations/countablegenerate-isgreatest--6911dd8edb776b860a0b174e.md) | 321 | `result-track:6911dd8edb776b860a0b174e28a0bc697c67b87dd259858d447bd7dfa17bbfb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
