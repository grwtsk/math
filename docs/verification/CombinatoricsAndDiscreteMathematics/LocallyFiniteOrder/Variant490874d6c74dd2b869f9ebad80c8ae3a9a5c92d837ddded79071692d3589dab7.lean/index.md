# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LocallyFiniteOrder.Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88a9f363c8e0480bef9910c7d6fdd25237ed626c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88a9f363c8e0480bef9910c7d6fdd25237ed626c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean.json)

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
| 1 | `lemma` | [Finset.card_Ico_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/finset-card-ico-mul-right--d81d5696932a1ac04e865a0f.md) | 52 | `result-track:d81d5696932a1ac04e865a0fb72232d99b48c415c889e2d7f0874a6c35be1745` |
| 2 | `lemma` | [card_Ico_one_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/card-ico-one-mul--0a3b0282840df7d9370001fe.md) | 66 | `result-track:0a3b0282840df7d9370001fe3ca8492b76afac69c3be9749e375586e735e2d6f` |
| 3 | `def` | [LocallyFiniteOrder.addMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-addmonoidhom--5726ab0e44a97b8825a88ddf.md) | 83 | `declaration-track:5726ab0e44a97b8825a88ddfc08759ad6623da3ceeea93212988da79a71d3b1a` |
| 4 | `def` | [LocallyFiniteOrder.orderAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-orderaddmonoidhom--4e92c9f9b768c1b37489a807.md) | 111 | `declaration-track:4e92c9f9b768c1b37489a80739583c1a19298a73640244d55ad677cfe338089f` |
| 5 | `lemma` | [LocallyFiniteOrder.orderAddMonoidHom_toAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-orderaddmonoidhom-toaddmonoidhom--296328406a4787859f00236f.md) | 121 | `result-track:296328406a4787859f00236faee07658ebf7516576717b695f3c9f15fbe8bc10` |
| 6 | `lemma` | [LocallyFiniteOrder.orderAddMonoidHom_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-orderaddmonoidhom-apply--4fa330fa17a8ac9369b874fc.md) | 125 | `result-track:4fa330fa17a8ac9369b874fcea192aa7289871dc7821092bf74e5a2aaf9388cf` |
| 7 | `lemma` | [LocallyFiniteOrder.orderAddMonoidHom_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-orderaddmonoidhom-strictmono--28cabee36d3c8b4fcb50c02e.md) | 128 | `result-track:28cabee36d3c8b4fcb50c02e351701605c2be47b5c2fb147a00ddb28dfe436d4` |
| 8 | `lemma` | [LocallyFiniteOrder.orderAddMonoidHom_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-orderaddmonoidhom-bijective--485793923cc438136f55f969.md) | 134 | `result-track:485793923cc438136f55f96972e3c6b4e0bf5739b805d7e3bacf111440df6d84` |
| 9 | `def` | [LocallyFiniteOrder.orderAddMonoidEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-orderaddmonoidequiv--55a2b517b87dc9a1d462d756.md) | 161 | `declaration-track:55a2b517b87dc9a1d462d7560b22ce7e9131fd972d99417dc894588fac124830` |
| 10 | `lemma` | [LocallyFiniteOrder.orderAddMonoidEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-orderaddmonoidequiv-apply--27704f5d04ea70a75a7e0f43.md) | 172 | `result-track:27704f5d04ea70a75a7e0f43552164cf9579c36e3944512b7c243258cb948324` |
| 11 | `def` | [LocallyFiniteOrder.orderMonoidEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-ordermonoidequiv--9b3746af54f0872d8a9cb46f.md) | 177 | `declaration-track:9b3746af54f0872d8a9cb46f67047a34709534ea9ac6b359d803bcdcc6f4ce50` |
| 12 | `def` | [LocallyFiniteOrder.orderMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-ordermonoidhom--d05e3d027f98a2d0cc1b3812.md) | 185 | `declaration-track:d05e3d027f98a2d0cc1b38129fc19c721dd7884b7ba9ec81e0fa87d3570131ed` |
| 13 | `lemma` | [LocallyFiniteOrder.orderMonoidHom_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-ordermonoidhom-strictmono--fdfbd1c996b29b0ff2ba94d2.md) | 191 | `result-track:fdfbd1c996b29b0ff2ba94d29b68108916578b06d5cfff8f7b9d93a94b63d218` |
| 14 | `def` | [LocallyFiniteOrder.orderMonoidWithZeroEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-ordermonoidwithzeroequiv--a2dad8c2c516f122b6208cf3.md) | 201 | `declaration-track:a2dad8c2c516f122b6208cf3713e7dc2dba5b83e8922a31b48f00e0eb1035815` |
| 15 | `def` | [LocallyFiniteOrder.orderMonoidWithZeroHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-ordermonoidwithzerohom--c8e5da065c1f0837aa335f03.md) | 208 | `declaration-track:c8e5da065c1f0837aa335f0398ff43d57cd1fc6387f028f747e7874b4de69976` |
| 16 | `lemma` | [LocallyFiniteOrder.orderMonoidWithZeroHom_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/declarations/locallyfiniteorder-ordermonoidwithzerohom-strictmono--47e0d8b38cf434fc88fa1569.md) | 214 | `result-track:47e0d8b38cf434fc88fa1569efc5f726ee7ebab9a8f5b4f9e843de5fda2b4028` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
