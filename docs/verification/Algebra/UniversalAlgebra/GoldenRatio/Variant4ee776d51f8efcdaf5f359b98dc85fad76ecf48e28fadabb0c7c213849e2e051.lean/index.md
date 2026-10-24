# Verification target: GRWTSK.Algebra.UniversalAlgebra.GoldenRatio.Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f95b2f76b6dfe0e68695978737df7fa6f9bea98",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f95b2f76b6dfe0e68695978737df7fa6f9bea98`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean.json)

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
| 1 | `abbrev` | [goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio--2b18bea2018d188a8883ec4d.md) | 45 | `declaration-track:2b18bea2018d188a8883ec4dd522ea06d567bd04c74034e9577bdf0194cb9845` |
| 2 | `abbrev` | [goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenconj--277316e3b660312150957ad0.md) | 48 | `declaration-track:277316e3b660312150957ad03770090557fd27d88ed840b32086bdfc816d1046` |
| 3 | `theorem` | [inv_goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/inv-goldenratio--c42977b42dabd019cdf4f769.md) | 56 | `result-track:c42977b42dabd019cdf4f7695aa2652980552524477e5bd60936363b35cfc55c` |
| 4 | `theorem` | [inv_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/inv-goldenconj--261620fd4f9b8e84cf1ce393.md) | 60 | `result-track:261620fd4f9b8e84cf1ce393a64601a6e32d627495e957c0fe0daf19e88e9468` |
| 5 | `theorem` | [goldenRatio_mul_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-mul-goldenconj--f16fa41594626c28c145561a.md) | 65 | `result-track:f16fa41594626c28c145561a07f017bef2d8ac053ed2d0d797b9e9c28993d42b` |
| 6 | `theorem` | [goldenConj_mul_goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenconj-mul-goldenratio--5d022b28a38067945f316ee5.md) | 69 | `result-track:5d022b28a38067945f316ee596d5d169ee398c6ce64df0f82d729604b64847ee` |
| 7 | `theorem` | [goldenRatio_add_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-add-goldenconj--57122403a910c8dc931a22a4.md) | 74 | `result-track:57122403a910c8dc931a22a4975e3bbc31adf94c9be19015b7009b4238393f50` |
| 8 | `theorem` | [one_sub_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/one-sub-goldenconj--0b9883593b0c6e9744209e82.md) | 78 | `result-track:0b9883593b0c6e9744209e82920d20809080e1f9681a82e163738dbd77cb5792` |
| 9 | `theorem` | [one_sub_goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/one-sub-goldenratio--88bd88aa6f9e308d6e3132f2.md) | 81 | `result-track:88bd88aa6f9e308d6e3132f2fed00e01755b7431a7953ade7fdb7ede7c1e16f0` |
| 10 | `theorem` | [goldenRatio_sub_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-sub-goldenconj--bba7c768cc51870d1aefb0d8.md) | 85 | `result-track:bba7c768cc51870d1aefb0d8eaeae37a1eccebae9e11f7bea7f0ee6daeb4a080` |
| 11 | `theorem` | [goldenRatio_pow_sub_goldenRatio_pow](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-pow-sub-goldenratio-pow--7c05b61efa3b6f22db1626f9.md) | 87 | `result-track:7c05b61efa3b6f22db1626f91c33ad81c51f24eb508bfcb73347d02640d9a864` |
| 12 | `theorem` | [goldenRatio_sq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-sq--dbfc197e3c093463d4e34a80.md) | 91 | `result-track:dbfc197e3c093463d4e34a80c2a656a57b396af73d700a5c70558f270e2eebfb` |
| 13 | `theorem` | [goldenConj_sq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenconj-sq--1638729aefde71d29dd4e4a7.md) | 95 | `result-track:1638729aefde71d29dd4e4a7f61e25ef2c82bbc8a61528456ad473f2be890740` |
| 14 | `theorem` | [goldenRatio_pos](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-pos--b7434ab115533a271531e63a.md) | 98 | `result-track:b7434ab115533a271531e63a798f271d070d5a16455c18b5a0e54c47df3e35be` |
| 15 | `theorem` | [goldenRatio_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-ne-zero--dd2b12ac740d020c6777c8e0.md) | 101 | `result-track:dd2b12ac740d020c6777c8e006f37c7c8dba8d46ab11ae023fee03cf7dd66dc3` |
| 16 | `theorem` | [one_lt_goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/one-lt-goldenratio--901b7b0ce95548f11b9e7a86.md) | 104 | `result-track:901b7b0ce95548f11b9e7a865d0ece00602668e97d70877b36190fd1545395c8` |
| 17 | `theorem` | [goldenRatio_lt_two](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-lt-two--d5f6fa55a0a7dc0e98de127a.md) | 108 | `result-track:d5f6fa55a0a7dc0e98de127a0bda773fb16d7790be7e26ee0f51592a061cbde4` |
| 18 | `theorem` | [goldenConj_neg](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenconj-neg--030c29e6fa2fb9f10cf1220f.md) | 112 | `result-track:030c29e6fa2fb9f10cf1220f2db5e0847f836fef09ed3cb4b10db4e77a30a4a5` |
| 19 | `theorem` | [goldenConj_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenconj-ne-zero--129fc474a729e02349b75f52.md) | 115 | `result-track:129fc474a729e02349b75f52228fd84c74ac06b49efa0bb1bb747327d14953e8` |
| 20 | `theorem` | [neg_one_lt_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/neg-one-lt-goldenconj--11353cdb1da5829008ce493c.md) | 118 | `result-track:11353cdb1da5829008ce493c29becca167fe26730a4c96d132f49eeea88f53df` |
| 21 | `theorem` | [goldenRatio_irrational](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-irrational--66591c6c04eeb072c3b69b6c.md) | 128 | `result-track:66591c6c04eeb072c3b69b6cd152b0bf9a841971211750fa34665fb03d1a9dd4` |
| 22 | `theorem` | [goldenConj_irrational](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenconj-irrational--6829f6ba5634df3ba21d35fa.md) | 136 | `result-track:6829f6ba5634df3ba21d35fa186a593e36fafc2de56d319d4d9a45dfb2428b10` |
| 23 | `def` | [fibRec](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/fibrec--9bfed4d98d9e38f928ef64ec.md) | 152 | `declaration-track:9bfed4d98d9e38f928ef64ec408e0c469890f890300e42156075b4f716b580f3` |
| 24 | `theorem` | [fibRec_charPoly_eq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/fibrec-charpoly-eq--7526b28683ec9463e2a2c9eb.md) | 161 | `result-track:7526b28683ec9463e2a2c9eb3c3cb3b4b8837fc572c31103b0b5a0b816f02d0e` |
| 25 | `theorem` | [fib_isSol_fibRec](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/fib-issol-fibrec--0cd834bf56a5330975e6d535.md) | 169 | `result-track:0cd834bf56a5330975e6d5352d249608fd7ebdc02588f959cc6c273a04688835` |
| 26 | `theorem` | [geom_goldenRatio_isSol_fibRec](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/geom-goldenratio-issol-fibrec--438de36fc56757824008a032.md) | 177 | `result-track:438de36fc56757824008a03216775391a38e37cd8b36ba02a354c88dc54b496d` |
| 27 | `theorem` | [geom_goldenConj_isSol_fibRec](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/geom-goldenconj-issol-fibrec--36fef47bf77815f32b20746b.md) | 182 | `result-track:36fef47bf77815f32b20746b8a7ba15cb0dd1b7b58f66e6d3adc4fc9492b37cd` |
| 28 | `theorem` | [coe_fib_eq'](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/coe-fib-eq--d43e67d7bf3115ab1ac72b9f.md) | 189 | `result-track:d43e67d7bf3115ab1ac72b9fd7e5b104eb2662274e518f0bde961dd0375e0689` |
| 29 | `theorem` | [coe_fib_eq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/coe-fib-eq--df5bab46964b17181cf906cd.md) | 206 | `result-track:df5bab46964b17181cf906cda4fd8158c3272af84b392ff94ad4d98f406e4038` |
| 30 | `theorem` | [coe_intFib_eq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/coe-intfib-eq--7cbd2302b831e9f04f0c36ad.md) | 210 | `result-track:7cbd2302b831e9f04f0c36ad21739ee841176dd10a67fe27d33c78d256259a1b` |
| 31 | `theorem` | [fib_succ_sub_goldenRatio_mul_fib](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/fib-succ-sub-goldenratio-mul-fib--600366e02de8dcc2e2aa7227.md) | 219 | `result-track:600366e02de8dcc2e2aa72277a6b1a0ee2e688fa19bbf41b5da330d31f2d2ffe` |
| 32 | `lemma` | [goldenConj_mul_fib_succ_add_fib](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenconj-mul-fib-succ-add-fib--627d0fd52f282754c164ce22.md) | 228 | `result-track:627d0fd52f282754c164ce22734e0f996633bb1ff4ec44fb6dbe8cf64be48008` |
| 33 | `lemma` | [goldenRatio_mul_fib_succ_add_fib](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/goldenratio-mul-fib-succ-add-fib--ef27e9309bc92ed8ca7a5868.md) | 232 | `result-track:ef27e9309bc92ed8ca7a58686b0c3fbd4a1b322ca2f9ece180f793e39decba4c` |
| 34 | `theorem` | [fib_succ_sub_goldenConj_mul_fib](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/declarations/fib-succ-sub-goldenconj-mul-fib--0020de6e4be3b96aa487ec17.md) | 245 | `result-track:0020de6e4be3b96aa487ec17929882ba19b08a2f11e3c30e85e9af47e64a5459` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
