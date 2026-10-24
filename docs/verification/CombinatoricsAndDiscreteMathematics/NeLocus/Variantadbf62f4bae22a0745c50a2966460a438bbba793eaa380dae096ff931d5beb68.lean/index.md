# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NeLocus.Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51c7ab204dff92cee81709bd447baa1bc4c980de",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51c7ab204dff92cee81709bd447baa1bc4c980de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Finsupp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus--04fa8f96acb2122b9fd5f4ef.md) | 43 | `declaration-track:04fa8f96acb2122b9fd5f4ef4421010b462487bec9d7bd2a41c0633c643593e3` |
| 2 | `theorem` | [mem_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/mem-nelocus--d1bd25fc90ad9ffd06fdb9f3.md) | 47 | `result-track:d1bd25fc90ad9ffd06fdb9f3c34cfb21220e17b9a0e9a4466f2765f89c084451` |
| 3 | `theorem` | [notMem_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/notmem-nelocus--71a0150765ae9afe54bdb9f0.md) | 51 | `result-track:71a0150765ae9afe54bdb9f0320e29f9910979f56bd9bb4763bfa99f3f3a7de5` |
| 4 | `theorem` | [coe_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/coe-nelocus--40988ab33428f2874f99de50.md) | 57 | `result-track:40988ab33428f2874f99de50eb30f3b21942ad138ee7e724cc502a9c95a8ee9f` |
| 5 | `theorem` | [neLocus_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-eq-empty--e663ad3698087e3a7cf55bc4.md) | 62 | `result-track:e663ad3698087e3a7cf55bc44772ce969538adf124ebb43a6c5e9ad453f0e083` |
| 6 | `theorem` | [nonempty_neLocus_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nonempty-nelocus-iff--2270358ca0e3f0e84af0a55f.md) | 68 | `result-track:2270358ca0e3f0e84af0a55f94a431ff0f4108eed513c3c398e661cb0c8858ae` |
| 7 | `theorem` | [neLocus_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-comm--64a85f00cede5e9a14d9e705.md) | 71 | `result-track:64a85f00cede5e9a14d9e705a87e5be1f5b211f21dea399cec72ae9ed29d33b4` |
| 8 | `theorem` | [neLocus_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-zero-right--aa6194f4071a50c9b9125c57.md) | 75 | `result-track:aa6194f4071a50c9b9125c57fc7fd53b0e2834410c6bd787d2c58f5103f03108` |
| 9 | `theorem` | [neLocus_zero_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-zero-left--c2eca77ec790bbf280c5d2ec.md) | 80 | `result-track:c2eca77ec790bbf280c5d2ecd45aabeea9368cfec90e047708ea6ceb3ec98ddb` |
| 10 | `theorem` | [subset_mapRange_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/subset-maprange-nelocus--83e94c24ee940dae076c39b4.md) | 87 | `result-track:83e94c24ee940dae076c39b49256b12b1d83e5fd2714a5924bbbab8d2e073bf4` |
| 11 | `theorem` | [zipWith_neLocus_eq_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/zipwith-nelocus-eq-left--7afc0a665aada3d01f35176b.md) | 91 | `result-track:7afc0a665aada3d01f35176bf90a4b3516a5fa019eb27b3b67f20989f15363af` |
| 12 | `theorem` | [zipWith_neLocus_eq_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/zipwith-nelocus-eq-right--cd97744392e3093f3216201f.md) | 98 | `result-track:cd97744392e3093f3216201f7975da2f2566124a2292313d08ae50fdad4211ef` |
| 13 | `theorem` | [mapRange_neLocus_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/maprange-nelocus-eq--6a27f71dd22a7cd940dfe69d.md) | 105 | `result-track:6a27f71dd22a7cd940dfe69d84829fb5ca688566d44c951f972d9a20cfa852a7` |
| 14 | `theorem` | [neLocus_add_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-add-left--e51b49ec777c8e4cf3d48389.md) | 116 | `result-track:e51b49ec777c8e4cf3d48389fd18eeb10276063adacaa39676538bebbbe02d88` |
| 15 | `theorem` | [neLocus_add_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-add-right--9d861781435af3f2666e3307.md) | 121 | `result-track:9d861781435af3f2666e33070016313b2640355b7b5eec6f0cd273bab83825c0` |
| 16 | `theorem` | [neLocus_neg_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-neg-neg--40abb61ee98cfaa6efffe32f.md) | 130 | `result-track:40abb61ee98cfaa6efffe32f3e50569f7115d568a282c97c227f2da3a9d53e81` |
| 17 | `theorem` | [neLocus_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-neg--9fb1ff137990145f09e2c5ad.md) | 133 | `result-track:9fb1ff137990145f09e2c5ad3854cee4dbef49a5f54d8348c31e4dd5ca1cce3c` |
| 18 | `theorem` | [neLocus_eq_support_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-eq-support-sub--258943fbdbece721437aeccb.md) | 135 | `result-track:258943fbdbece721437aeccb0bd70298ccfbe141eec88fef6b57bc8eddc600bd` |
| 19 | `theorem` | [neLocus_sub_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-sub-left--cd861f816f76b61264daeb7f.md) | 139 | `result-track:cd861f816f76b61264daeb7f9095b33d5307f476af7b27b2e1fd37a743df80b1` |
| 20 | `theorem` | [neLocus_sub_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-sub-right--2f88175544a94cc2b58e3e30.md) | 143 | `result-track:2f88175544a94cc2b58e3e300bba7171ea54f2ee46e1e14e76a90a79364fefe7` |
| 21 | `theorem` | [neLocus_self_add_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-self-add-right--381de80a97dd4b194eac9144.md) | 147 | `result-track:381de80a97dd4b194eac914495ab935964b26d87659dc91795c6c9b78cac66ec` |
| 22 | `theorem` | [neLocus_self_add_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-self-add-left--c290612be7bfc2b37c82ec0a.md) | 151 | `result-track:c290612be7bfc2b37c82ec0af45f555fb55829f031b07e6efa4f4a5ef1e2b9d4` |
| 23 | `theorem` | [neLocus_self_sub_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-self-sub-right--3dade28bc0ca24200dd281dd.md) | 155 | `result-track:3dade28bc0ca24200dd281dd6d63914433eecf802b0067a251d7cf07082e3cdc` |
| 24 | `theorem` | [neLocus_self_sub_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variantadbf62f4bae22a0745c50a2966460a438bbba793eaa380dae096ff931d5beb68.lean/declarations/nelocus-self-sub-left--ce73db7f938034b0b5a608d7.md) | 159 | `result-track:ce73db7f938034b0b5a608d711dfe829132cb5881f7765a5f3d73f3dae1e3609` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
