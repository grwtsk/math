# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableEquiv.Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "978a440d1661d69c77661e848a8aada7e5e55d02",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `978a440d1661d69c77661e848a8aada7e5e55d02`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean.json)

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
| 1 | `def` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/smul--31d988e10ddace91adb29dac.md) | 53 | `declaration-track:31d988e10ddace91adb29dacb697975d8df4d3170d3be0841d501da98a6273d3` |
| 2 | `theorem` | [_root_.measurableEmbedding_const_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/root-measurableembedding-const-smul--64482f6d62ab52ce1afab751.md) | 59 | `result-track:64482f6d62ab52ce1afab7510d6d1d10cb67767a09b58025e27addd637a27d49` |
| 3 | `theorem` | [symm_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/symm-smul--e5ce61fb462729ca1cdf5b0b.md) | 63 | `result-track:e5ce61fb462729ca1cdf5b0b85447bcbcab2bf1c00a75ce4e8bd2f1a17c7b1a4` |
| 4 | `def` | [smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/smul--c544f8c414c8ee1354b120f8.md) | 68 | `declaration-track:c544f8c414c8ee1354b120f8203f362702d7abc405c069bf18abd633decb0ed0` |
| 5 | `lemma` | [coe_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/coe-smul--c558291e5eafc2aa92f3a232.md) | 71 | `result-track:c558291e5eafc2aa92f3a2322f25bc2706266aba66d14d6530e9dfeafb89d534` |
| 6 | `theorem` | [symm_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/symm-smul--112590be7f63033f14e046db.md) | 74 | `result-track:112590be7f63033f14e046dbd02192ac49c1c48082795ebf2ef7915fafd7ca70` |
| 7 | `theorem` | [_root_.measurableEmbedding_const_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/root-measurableembedding-const-smul--4158fa5b6f342848a4beed0a.md) | 78 | `result-track:4158fa5b6f342848a4beed0a249b51abb9057e675f93b2fb2bdd9fe9d00606f5` |
| 8 | `def` | [mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/mulleft--96771af0844a5760eb2916d4.md) | 93 | `declaration-track:96771af0844a5760eb2916d41362e116215f21b5565d63773113c140e01fbbb3` |
| 9 | `theorem` | [coe_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/coe-mulleft--fe049ce88c6d005c5504152b.md) | 97 | `result-track:fe049ce88c6d005c5504152b491a72d63a4fef9d459bd7f409e32c77972fd77a` |
| 10 | `theorem` | [symm_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/symm-mulleft--9227945e61526aeb3e5c66f9.md) | 101 | `result-track:9227945e61526aeb3e5c66f9649d569263aa59f803d25750e87c147c76069475` |
| 11 | `theorem` | [toEquiv_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/toequiv-mulleft--99ebf2cad101a3972ada019b.md) | 105 | `result-track:99ebf2cad101a3972ada019bbd49773852f1e3576cce54e1d9a99c2746db9ea4` |
| 12 | `theorem` | [_root_.measurableEmbedding_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/root-measurableembedding-mulleft--e95f429afff5f2ca6f5d6d01.md) | 109 | `result-track:e95f429afff5f2ca6f5d6d018a9ac650237267d20aea1693193e5e1036270761` |
| 13 | `def` | [mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/mulright--c66b74a5375c82c7ae5b011e.md) | 117 | `declaration-track:c66b74a5375c82c7ae5b011ede4b3ab5245a9e4944d925ccc9c7dc79cdb726b7` |
| 14 | `theorem` | [_root_.measurableEmbedding_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/root-measurableembedding-mulright--3832d6bca714e77d6e28c207.md) | 121 | `result-track:3832d6bca714e77d6e28c207debb0cd2df8d958096d464705902e352b0d6697a` |
| 15 | `theorem` | [coe_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/coe-mulright--6a604c71493277131de2f994.md) | 125 | `result-track:6a604c71493277131de2f994ae2adf8a53d243f9eba05a16e151964c8553f504` |
| 16 | `theorem` | [symm_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/symm-mulright--18bfcf676853133e7b9b8fcc.md) | 129 | `result-track:18bfcf676853133e7b9b8fccc21526c8c3bb1eadc18df476ed37c916fd41e593` |
| 17 | `theorem` | [toEquiv_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/toequiv-mulright--ea1cc51b49d495067718b83a.md) | 133 | `result-track:ea1cc51b49d495067718b83a85938a30037c2856bd68415d2e7479c1121ba51a` |
| 18 | `def` | [mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/mulleft--55aea3712202f32707581b00.md) | 138 | `declaration-track:55aea3712202f32707581b00b2cfddd38c172427b09f67cfafb6f0b7ef6e8af7` |
| 19 | `theorem` | [_root_.measurableEmbedding_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/root-measurableembedding-mulleft--48fc71e4d828412698eb772d.md) | 141 | `result-track:48fc71e4d828412698eb772d8ac209445a481a7120391f7be7732b377b8518cf` |
| 20 | `lemma` | [coe_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/coe-mulleft--cf7e32914155884621e88da7.md) | 145 | `result-track:cf7e32914155884621e88da7dd8459bdb1887840919e3f42056614a4a177c39e` |
| 21 | `theorem` | [symm_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/symm-mulleft--a9db191ba30babd7e41458b1.md) | 148 | `result-track:a9db191ba30babd7e41458b15ab8445cd38a2ed2410fdcad90fa890a42cfe88d` |
| 22 | `theorem` | [toEquiv_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/toequiv-mulleft--016f0fb85a4b89e02e91d719.md) | 153 | `result-track:016f0fb85a4b89e02e91d719c274205f020d5ad3824030b03eb42eec51da7fb3` |
| 23 | `def` | [mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/mulright--b375849e89e48171f012855b.md) | 158 | `declaration-track:b375849e89e48171f012855b01a2664fb6b16287f2ef6e2bd15ffc1bf98d8b03` |
| 24 | `theorem` | [_root_.measurableEmbedding_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/root-measurableembedding-mulright--258a5cef715b837b69a59efb.md) | 161 | `result-track:258a5cef715b837b69a59efb6ba3ff0d44a3178010013e90dcaab52e32027489` |
| 25 | `theorem` | [coe_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/coe-mulright--5d5ce8165a952345bebe5078.md) | 166 | `result-track:5d5ce8165a952345bebe5078e40352d9e08c6b997c10f43a972ed895fd058d58` |
| 26 | `theorem` | [symm_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/symm-mulright--75eed9b60b3c3366cf4e8837.md) | 170 | `result-track:75eed9b60b3c3366cf4e8837e8b1c2e76623e4814db2bd59503fa7b512284703` |
| 27 | `theorem` | [toEquiv_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/toequiv-mulright--dfb59676d25d8c70f8130f13.md) | 175 | `result-track:dfb59676d25d8c70f8130f134d579d6ac26b726811a7424bed48cb0fdb647e19` |
| 28 | `def` | [inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/inv--cb5b026d6d5fcb323311793f.md) | 183 | `declaration-track:cb5b026d6d5fcb323311793fec029b7fafb97c8cfea881cf05f24e4f7f5650da` |
| 29 | `theorem` | [symm_inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/symm-inv--428cc4558717815a5202e0f6.md) | 187 | `result-track:428cc4558717815a5202e0f628e5ffb7102ec2a4633d6de92f689eef58ef9a5d` |
| 30 | `def` | [divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/divright--aaf040e25226375d426bb821.md) | 193 | `declaration-track:aaf040e25226375d426bb821c2125a20768b4be3f0508e1fbe2249b9c69f0c28` |
| 31 | `lemma` | [_root_.measurableEmbedding_divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/root-measurableembedding-divright--8645e66f2fc36e49f7ec6bf7.md) | 199 | `result-track:8645e66f2fc36e49f7ec6bf789521e2dc122cbdf650b93e545d8b16ff3b62b92` |
| 32 | `def` | [divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/divleft--a42726231358dd83c132cea2.md) | 205 | `declaration-track:a42726231358dd83c132cea253f56a051139c3caead43ae3ea706606ae7d6d66` |
| 33 | `lemma` | [_root_.measurableEmbedding_divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/root-measurableembedding-divleft--f361e4840228c94675830920.md) | 211 | `result-track:f361e4840228c9467583092095d0d36f4d4129d004903ef751d4ba59eb9a9bce` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/instance--58834bb2772a722641b5ef45.md) | 221 | `declaration-track:58834bb2772a722641b5ef45de4310c69383a7fe9163c3851a7c064692a95474` |
| 35 | `lemma` | [domSMul_apply](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/domsmul-apply--fecbb2a9d61dc7b1f6212586.md) | 233 | `result-track:fecbb2a9d61dc7b1f6212586309450d2b593694763ff4dd01d86f92b01d7a588` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/instance--f8d601a923eaf80df4326558.md) | 239 | `declaration-track:f8d601a923eaf80df4326558320a1eca2f4246e0d2a892d5cc2d8f21778512ca` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.lean/declarations/instance--4f7939dd791f1fb3f1b92ade.md) | 242 | `declaration-track:4f7939dd791f1fb3f1b92ade26b97e3eef7b1c0b8fb14e7df7508746a1619dc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
