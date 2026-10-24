# Verification target: GRWTSK.Algebra.GroupTheory.Int.Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0902bcdde74e5ba94d573a733c3635ff64592c5a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0902bcdde74e5ba94d573a733c3635ff64592c5a`.

Source path: `GRWTSK/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean.json)

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
| 1 | `theorem` | [natCast_strictMono](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/natcast-strictmono--0efce99f45845b772fda66f7.md) | 44 | `result-track:0efce99f45845b772fda66f7789b68f0080a0f9aa03b2189d12443542c65c008` |
| 2 | `theorem` | [abs_eq_natAbs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/abs-eq-natabs--f1087df095124a36c59a95d2.md) | 48 | `result-track:f1087df095124a36c59a95d2a0ecbeff8d213811bf2d193419385acf49c53f8b` |
| 3 | `lemma` | [natCast_natAbs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/natcast-natabs--0ce4d6dd6446db7ba9f62196.md) | 52 | `result-track:0ce4d6dd6446db7ba9f62196a9efe452cf3be7ad592e24ebde35ced8fa255846` |
| 4 | `theorem` | [natAbs_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/natabs-abs--c7222f02b799bf77ebcb5245.md) | 54 | `result-track:c7222f02b799bf77ebcb52459a5633f2b97fd85690881691b282decb9512d77f` |
| 5 | `theorem` | [sign_mul_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/sign-mul-abs--395a03857fe9417ab78db327.md) | 56 | `result-track:395a03857fe9417ab78db3276d416ccdebf3828f00ea0bb1dd7eaf0a4f3075ce` |
| 6 | `theorem` | [sign_mul_self_eq_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/sign-mul-self-eq-abs--750ba87fd14af96b9352f73f.md) | 59 | `result-track:750ba87fd14af96b9352f73f863728f52f2f169eb2ed460dac5e1b21969c5eb4` |
| 7 | `lemma` | [natAbs_le_self_sq](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/natabs-le-self-sq--81cfcc83fc1af46e1537684b.md) | 62 | `result-track:81cfcc83fc1af46e1537684b33adade458e79e7d91496a02bbfbac56a770a350` |
| 8 | `lemma` | [le_self_sq](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/le-self-sq--d2eae476ca3dfd73d4b03e34.md) | 69 | `result-track:d2eae476ca3dfd73d4b03e3473e826e1c3925e5b518d8c9c46d0fcc8c31251de` |
| 9 | `lemma` | [abs_natCast](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/abs-natcast--688dded5b588e71efe9f8340.md) | 73 | `result-track:688dded5b588e71efe9f834023afea5104da84b5743d224f5c2e6243efe35c23` |
| 10 | `theorem` | [natAbs_sub_pos_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/natabs-sub-pos-iff--b51f18d3f9c00c756657323c.md) | 75 | `result-track:b51f18d3f9c00c756657323c6c00a11ff6bbc3fea088ba181096dae73cd972f6` |
| 11 | `theorem` | [natAbs_sub_ne_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/natabs-sub-ne-zero-iff--17f2e0f10072ed6ec69aaf50.md) | 78 | `result-track:17f2e0f10072ed6ec69aaf500403bc5d392b870619fa1e3ed58b60eee456f115` |
| 12 | `theorem` | [abs_lt_one_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/abs-lt-one-iff--645621e423598e3938908979.md) | 82 | `result-track:645621e423598e3938908979545bbd0da4049fcef7ad801c5f85180228b9e196` |
| 13 | `theorem` | [abs_le_one_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/abs-le-one-iff--6d83d118fda330903af0edc5.md) | 85 | `result-track:6d83d118fda330903af0edc5e96673347839fbc61d06ab21772fb9ec7692d620` |
| 14 | `theorem` | [one_le_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/one-le-abs--8c3489f6655ba8e4f7b5331b.md) | 88 | `result-track:8c3489f6655ba8e4f7b5331b1f5e1db70a652d43681bccf6550ec7ca82622d19` |
| 15 | `lemma` | [eq_zero_of_abs_lt_dvd](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/eq-zero-of-abs-lt-dvd--f0e9293df04c893725406165.md) | 91 | `result-track:f0e9293df04c893725406165f1a317661cad3db7b5187d0f58dd44349ba41e52` |
| 16 | `lemma` | [abs_sub_lt_of_lt_lt](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/abs-sub-lt-of-lt-lt--340a7aea7a2cc717e3c80943.md) | 97 | `result-track:340a7aea7a2cc717e3c809430426af5edc83bdecf576e87a406d8bf41b84ffe4` |
| 17 | `theorem` | [ediv_eq_zero_of_lt_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/ediv-eq-zero-of-lt-abs--d844fe942537732f1c1db37f.md) | 102 | `result-track:d844fe942537732f1c1db37f3f7003dfab672bbebf5bb3f68a481b160e11df5d` |
| 18 | `theorem` | [emod_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/emod-abs--bc04634d24afcb6984eff71d.md) | 110 | `result-track:bc04634d24afcb6984eff71dd66fd4db788fd650fea603f97eb21a669cddf8ea` |
| 19 | `theorem` | [emod_lt_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/emod-lt-abs--30622c5536a697a2a2256c45.md) | 113 | `result-track:30622c5536a697a2a2256c4569550b9433b5f5fe2e34ce0544123ad3fb7ddab2` |
| 20 | `theorem` | [abs_ediv_le_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/abs-ediv-le-abs--3f4f77d51cbeab0ef58680ef.md) | 118 | `result-track:3f4f77d51cbeab0ef58680ef16111dcaf46f093225358879c5635c2e986e25c1` |
| 21 | `theorem` | [abs_sign_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/abs-sign-of-ne-zero--a6d8626dce0dc88b386397e6.md) | 131 | `result-track:a6d8626dce0dc88b386397e67a4a503401c7b6b9c4a4d0c5d8d5d70212e76e08` |
| 22 | `theorem` | [sign_eq_ediv_abs'](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/sign-eq-ediv-abs--6399f9c6b9f1b4a325a3b207.md) | 134 | `result-track:6399f9c6b9f1b4a325a3b207f7cbf5eff1330aef865f9a7202ff81f93dbcf9d3` |
| 23 | `theorem` | [sign_eq_abs_ediv](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/sign-eq-abs-ediv--31b8138835f49feb9ca27837.md) | 138 | `result-track:31b8138835f49feb9ca278375762f5d3bb5fbedfd7a35393c4df38b7a69cd2f5` |
| 24 | `lemma` | [zpow_abs_eq_one](../../../../../mathematics/Algebra/GroupTheory/Int/Variantbba65d798c3df58d569668039b217305cef1c8d7717b81a87d3fdcc84b807dc8.lean/declarations/zpow-abs-eq-one--3668362351fbfc216be0256f.md) | 148 | `result-track:3668362351fbfc216be0256f34fafdc30730b5372f9c053535fb81468d71858e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
