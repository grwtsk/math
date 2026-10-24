# Verification target: GRWTSK.Algebra.Convolution.Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd65bf27e7cd7f52907c76f2edd3504620763499",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd65bf27e7cd7f52907c76f2edd3504620763499`.

Source path: `GRWTSK/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/instance--f7894114de207d245a69d8e8.md) | 48 | `declaration-track:f7894114de207d245a69d8e896d39655184b7d915d2073d26494a81996b9c866` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/instance--530dd620e6a47c2fb7f97004.md) | 51 | `declaration-track:530dd620e6a47c2fb7f97004feca30a2e3f956e0a74fd5cc50088399b9f7ed6b` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/instance--1e6eb07e7beba129add88edd.md) | 54 | `declaration-track:1e6eb07e7beba129add88edd6e0d1ac46946f61fcabef86a643798a93669acb5` |
| 4 | `lemma` | [convOne_def](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convone-def--d88a44e1d9c6e6e914b2fada.md) | 56 | `result-track:d88a44e1d9c6e6e914b2fadac61e9c8325c645e36bf9762c12dadd4596608804` |
| 5 | `lemma` | [convMul_def](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convmul-def--8ec05c687fe08a61ca70a93a.md) | 58 | `result-track:8ec05c687fe08a61ca70a93a26a99009ff960d7d0cbcfe2dfaa6653688bbf8f1` |
| 6 | `lemma` | [convPow_succ](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convpow-succ--3e785171139366d4bb34359f.md) | 61 | `result-track:3e785171139366d4bb34359ffe3de171b8aaf5ff0af7f916b8321bca5a656476` |
| 7 | `lemma` | [convOne_apply](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convone-apply--cd2713de1ef0ca0da52f6b61.md) | 64 | `result-track:cd2713de1ef0ca0da52f6b614cb2d960bd3fd5e4c63a78382f55b0998dde8a10` |
| 8 | `lemma` | [convMul_apply](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convmul-apply--32ed027f193dff945d10ddde.md) | 66 | `result-track:32ed027f193dff945d10ddde1d745b9c6628b73b8bac5d13f26c3bbec74ea1e4` |
| 9 | `lemma` | [toLinearMap_convOne](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/tolinearmap-convone--919fb8ec6d191adb41cafaa8.md) | 74 | `result-track:919fb8ec6d191adb41cafaa817ad86d9caf2afe5f6f0f38d8699f515555e0dfd` |
| 10 | `lemma` | [toLinearMap_convMul](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/tolinearmap-convmul--9b08d0556a9f8ad88087bf3b.md) | 77 | `result-track:9b08d0556a9f8ad88087bf3be051ff07dcea8f76e5d4a1504f9bfc2877d4a1ae` |
| 11 | `lemma` | [toLinearMap_convPow](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/tolinearmap-convpow--0e256bce0845989e19b45f43.md) | 82 | `result-track:0e256bce0845989e19b45f43420d382e72ceb25fc9b9aa38adba1899c7809aaa` |
| 12 | `lemma` | [convMul_comp_bialgHom_distrib](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convmul-comp-bialghom-distrib--bcac39586ffa5016773971bc.md) | 87 | `result-track:bcac39586ffa5016773971bcdb69768cc0e80751418fb947ec89eac50ac3a9ee` |
| 13 | `lemma` | [comp_convMul_distrib](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/comp-convmul-distrib--8345d8f0c255230adff0cc41.md) | 92 | `result-track:8345d8f0c255230adff0cc41676c04443610494fb1596e2f643671da5b28474c` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/instance--4d81394cb0c0d9ec83a0e96e.md) | 99 | `declaration-track:4d81394cb0c0d9ec83a0e96eda9f0d5eb11efe9bf41f5b0779f5ffb40d76437b` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/instance--5144c7e6da3741b22ad1e434.md) | 105 | `declaration-track:5144c7e6da3741b22ad1e434ab77a33816b03f4b38f17d154fe86773d5f7a5b6` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/instance--0d62ae138f91bf8ef4e4e576.md) | 114 | `declaration-track:0d62ae138f91bf8ef4e4e576096373fdda37361f57d9be727a0a612bcdc1ef2b` |
| 17 | `lemma` | [convOne_def](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convone-def--b2aa4438fa14e64a7e9cc0ae.md) | 117 | `result-track:b2aa4438fa14e64a7e9cc0ae5ababa66363d51202ef3fb8740350c268f0383bf` |
| 18 | `lemma` | [convOne_apply](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convone-apply--5f063e7c31f34f743f07d707.md) | 120 | `result-track:5f063e7c31f34f743f07d7073b5204b5ae58b01b9314aa4b6cb719eb72fe4523` |
| 19 | `lemma` | [toLinearMap_convOne](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/tolinearmap-convone--da1a908af8352687af47414f.md) | 123 | `result-track:da1a908af8352687af47414fb63d4e40454d3b70ccb399ed593abfa071ce66a0` |
| 20 | `lemma` | [toAlgHom_convOne](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/toalghom-convone--9bc7144c1288f4b7eb651c08.md) | 126 | `result-track:9bc7144c1288f4b7eb651c085903e4e4eb030e9ab1700569b979d9dffe8c756a` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/instance--7ef3a903fc871d014544d994.md) | 130 | `declaration-track:7ef3a903fc871d014544d9944fa6f0f1df0bcee71847e561b209d4ca479a0283` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/instance--5c2e19f08f521c77dcb06d09.md) | 133 | `declaration-track:5c2e19f08f521c77dcb06d09aadf7bbfb4fba8dfb377b8a593344494955ec654` |
| 23 | `lemma` | [convMul_def](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convmul-def--814ef4090198066f805a8197.md) | 135 | `result-track:814ef4090198066f805a81976bf3251818b0a4b5190e35805d4baa46d44f19b8` |
| 24 | `lemma` | [convPow_succ](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/convpow-succ--8e98ffbbaa254196c78028d7.md) | 140 | `result-track:8e98ffbbaa254196c78028d7ed2a5df0a79a858283cc0d148392791e6f146f03` |
| 25 | `lemma` | [toLinearMap_convMul](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/tolinearmap-convmul--93adb56d2d1405ad1dbb954f.md) | 144 | `result-track:93adb56d2d1405ad1dbb954f73ed1a22ba16266a876b61b679dd3ed358b8e7ff` |
| 26 | `lemma` | [toAlgHom_convMul](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/toalghom-convmul--59312e8aca2605c07527e08d.md) | 149 | `result-track:59312e8aca2605c07527e08d0d13ca10e1cb0bba550e763c8e5c99f8fe4f196c` |
| 27 | `lemma` | [toLinearMap_convPow](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/tolinearmap-convpow--a45a657bc972a78ae7365d58.md) | 155 | `result-track:a45a657bc972a78ae7365d5883a3e7fa376c39ae1e5e895aa45b355294b2c388` |
| 28 | `lemma` | [toAlgHom_convPow](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/toalghom-convpow--e013d0f0697436ffeb96d1e1.md) | 161 | `result-track:e013d0f0697436ffeb96d1e1b00dc27c5df32177eb20c5a06afddeb54f0ae0f1` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Convolution/Variant2c0f02df22250424542e8f53ae3c940e034fb6d45865f9d58491c69cec2cdbf1.lean/declarations/instance--7956d180c95f7a1eb2d9c85c.md) | 166 | `declaration-track:7956d180c95f7a1eb2d9c85cbeaaa7e9f9e3b55192ca54046efb4c16b47ec48a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
