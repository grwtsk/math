# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Inv.Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19a1402f53608594a94ddcdd6b5b438d223f8f9b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19a1402f53608594a94ddcdd6b5b438d223f8f9b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean.json)

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
| 1 | `def` | [invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/invofmemrange--d2c29390e10a4a9c99974a56.md) | 57 | `declaration-track:d2c29390e10a4a9c99974a56119595c5342f7129f23310c44096b070bee2d684` |
| 2 | `theorem` | [left_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/left-inv-of-invofmemrange--4badcc4e7c2cdce0207b9ccb.md) | 61 | `result-track:4badcc4e7c2cdce0207b9ccb09d6a862fb9e606f6b13dacab1c18954e7b16c54` |
| 3 | `theorem` | [right_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/right-inv-of-invofmemrange--3d149e6b28a7789d926f1161.md) | 65 | `result-track:3d149e6b28a7789d926f116140f87fe9970312015d053c47b33070dcf7a6740c` |
| 4 | `theorem` | [invFun_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/invfun-restrict--21b74e70543759845d7cfb14.md) | 68 | `result-track:21b74e70543759845d7cfb14fb653fd958153f1a758f24646b9789846d07213d` |
| 5 | `theorem` | [invOfMemRange_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/invofmemrange-surjective--fe21e20399e30f2837b75fa5.md) | 73 | `result-track:fe21e20399e30f2837b75fa5e657c58c7c204778590cce1c129d4d0f15c6ce6c` |
| 6 | `def` | [invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/invofmemrange--6b7042a31e0ee73ef4166fe2.md) | 90 | `declaration-track:6b7042a31e0ee73ef4166fe2a9d9fcda804e444b73d554a703ef03bc51e65f36` |
| 7 | `theorem` | [left_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/left-inv-of-invofmemrange--d7f7dee1ea9ac6cd672541dd.md) | 94 | `result-track:d7f7dee1ea9ac6cd672541dd025a79f3ad2429c93da8435b3bd6779061b63717` |
| 8 | `theorem` | [right_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/right-inv-of-invofmemrange--797434f399df10902a7bdb4f.md) | 98 | `result-track:797434f399df10902a7bdb4f1d891f96615c4dce3f7ca5d772bb2abfefc96111` |
| 9 | `theorem` | [invFun_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/invfun-restrict--00accfb50a7a11b6b7c49e4e.md) | 101 | `result-track:00accfb50a7a11b6b7c49e4ed7b765f637be3fa387c9853b4bbf302bc96f3ef2` |
| 10 | `theorem` | [invOfMemRange_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/invofmemrange-surjective--4b7bbcb1df095b5ab9ea18d0.md) | 106 | `result-track:4b7bbcb1df095b5ab9ea18d004d6e085e20ca0863126b2d2dedc8c40685a431f` |
| 11 | `def` | [chooseX](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/choosex--3177bdc0252af48ba0c28203.md) | 127 | `declaration-track:3177bdc0252af48ba0c28203e48f3503ac9b0d173384c5abdc515cddf3662f2a` |
| 12 | `def` | [choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/choose--bf8e596592087a6a8d87386a.md) | 132 | `declaration-track:bf8e596592087a6a8d87386a5d227f216922a12d3a9d59d2ee790928421f43e6` |
| 13 | `theorem` | [choose_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/choose-spec--4c1d28c1bb69920d4f5b4153.md) | 135 | `result-track:4c1d28c1bb69920d4f5b4153ed30c45daf6f041d6ad194c53debe8921158e836` |
| 14 | `theorem` | [choose_subtype_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/choose-subtype-eq--68e6c7db5371f34ce9ed1e66.md) | 138 | `result-track:68e6c7db5371f34ce9ed1e664d2619c5277f4989d5ae393fb4b8be90d0c6651b` |
| 15 | `def` | [bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/bijinv--74ddbc480b9d07982c9718f7.md) | 153 | `declaration-track:74ddbc480b9d07982c9718f77657b52979fd868ec3de954c73d482f7e7fe12cd` |
| 16 | `theorem` | [leftInverse_bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/leftinverse-bijinv--8a4e2e1246726a1210a70ade.md) | 156 | `result-track:8a4e2e1246726a1210a70ade240c5865ec24bff8d7ee86b30bc1b48e6b45d3ac` |
| 17 | `theorem` | [rightInverse_bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/rightinverse-bijinv--49ebfe043f3b3b4ca119a2b1.md) | 159 | `result-track:49ebfe043f3b3b4ca119a2b13a43b9315fec161d98d80cc203cdba86e8f5c353` |
| 18 | `theorem` | [bijective_bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant576aa6b0793578443cd3697adb402383a009b12b9aff81eada59348e1c208ca5.lean/declarations/bijective-bijinv--36975e34ade2ff2608abc84c.md) | 162 | `result-track:36975e34ade2ff2608abc84c74da0517ba73c2d1d8090de334e59492e7d97b97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
