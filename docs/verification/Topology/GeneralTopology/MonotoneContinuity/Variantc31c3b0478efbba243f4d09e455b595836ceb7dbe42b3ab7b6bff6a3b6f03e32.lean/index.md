# Verification target: GRWTSK.Topology.GeneralTopology.MonotoneContinuity.Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e345abcf2fcfbd30052acc9665419e6e524c9b62",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e345abcf2fcfbd30052acc9665419e6e524c9b62`.

Source path: `GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean.json)

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
| 1 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuouswithinat-right-of-exists-between--ebf4de309dcf772863e74b0c.md) | 51 | `result-track:ebf4de309dcf772863e74b0ccb0b1d78703baa71a3212bdec12620a967897737` |
| 2 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuouswithinat-right-of-monotoneon-of-exists-between--e6ac266ccb5daae7dc9058df.md) | 70 | `result-track:e6ac266ccb5daae7dc9058df187bbb8c97f55d2700373c08b57d7c51ebd278a8` |
| 3 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuouswithinat-right-of-monotoneon-of-closure-image-mem-nhdswithin--b5ae9b0ee7fffe16a59379dc.md) | 86 | `result-track:b5ae9b0ee7fffe16a59379dc10018e9b72954527cbb8b2c8344865a3c4b00f65` |
| 4 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuouswithinat-right-of-monotoneon-of-image-mem-nhdswithin--9969673c9cefdd8a2f1f84f2.md) | 99 | `result-track:9969673c9cefdd8a2f1f84f20096fd6a3aba29af8365d32498679de9db305899` |
| 5 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuouswithinat-right-of-closure-image-mem-nhdswithin--01fc4271320b7ed70d78ea27.md) | 108 | `result-track:01fc4271320b7ed70d78ea277d9cdde2849d82709c41eb9b681b498582e954f5` |
| 6 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuouswithinat-right-of-image-mem-nhdswithin--0b1b7f51bf7cfedbbd4046a2.md) | 117 | `result-track:0b1b7f51bf7cfedbbd4046a296692f318e1d73167b854025567dc95f74513bff` |
| 7 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuouswithinat-right-of-surjon--a7936311e0e993502ca658a6.md) | 125 | `result-track:a7936311e0e993502ca658a60b5ab49427521e3c1e4590b0360d38f9b643b4c1` |
| 8 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuouswithinat-left-of-exists-between--b5e1995add6a0a5816c5977e.md) | 139 | `result-track:b5e1995add6a0a5816c5977e8de561cff7b0e97eda8b64aac3a17556343a39e0` |
| 9 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuouswithinat-left-of-monotoneon-of-exists-between--0e1f7e39ae34346e686ee199.md) | 152 | `result-track:0e1f7e39ae34346e686ee19958fd81d28edad520b87a09ed3e16c9188aceae79` |
| 10 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuouswithinat-left-of-monotoneon-of-closure-image-mem-nhdswithin--e77d96f4ca4cf25931d13b85.md) | 163 | `result-track:e77d96f4ca4cf25931d13b8534f4305481055ea67b2875df78118de8ed723318` |
| 11 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuouswithinat-left-of-monotoneon-of-image-mem-nhdswithin--c0430a1f0789112525042c5d.md) | 172 | `result-track:c0430a1f0789112525042c5dc103dd806a416e856e3fba488b9ded098c551493` |
| 12 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuouswithinat-left-of-closure-image-mem-nhdswithin--c188d0ba5af99169a2979651.md) | 181 | `result-track:c188d0ba5af99169a29796516c2c26401ae341ca8b647e8a16b55fa20000243f` |
| 13 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuouswithinat-left-of-image-mem-nhdswithin--6c02e69fa24efc8479b7d4d4.md) | 189 | `result-track:6c02e69fa24efc8479b7d4d4706d6991bf7c1ae9289acab18e4b31d445bb92b3` |
| 14 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuouswithinat-left-of-surjon--8ef737a89bd7c2c3c79896a9.md) | 196 | `result-track:8ef737a89bd7c2c3c79896a9cae1cfdcc8cbf626948fd68b63455588c7f70209` |
| 15 | `theorem` | [StrictMonoOn.continuousAt_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuousat-of-exists-between--8983ad3324cbe1bf7c4b23d7.md) | 204 | `result-track:8983ad3324cbe1bf7c4b23d70c6e5c7ff8c2f5ce780542c429a1e76ad1363861` |
| 16 | `theorem` | [StrictMonoOn.continuousAt_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuousat-of-closure-image-mem-nhds--0ccaf9d12e846db6b4dec26e.md) | 214 | `result-track:0ccaf9d12e846db6b4dec26e9fe6507a9d42e296909dfed78bf1b4c4ebc112bc` |
| 17 | `theorem` | [StrictMonoOn.continuousAt_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/strictmonoon-continuousat-of-image-mem-nhds--2c351a1422702a70967fd8da.md) | 225 | `result-track:2c351a1422702a70967fd8da583d9a388c0c65e07377704278325f8a20cf2094` |
| 18 | `theorem` | [continuousAt_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuousat-of-monotoneon-of-exists-between--e73270ccf5af9077898026bf.md) | 233 | `result-track:e73270ccf5af9077898026bfe716e9bae2c9c516204c78a7843ea01358d47b56` |
| 19 | `theorem` | [continuousAt_of_monotoneOn_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuousat-of-monotoneon-of-closure-image-mem-nhds--926c757f93e053d90ae4d485.md) | 245 | `result-track:926c757f93e053d90ae4d485cf1bfd4c6d3f4da1c4007ea59e9d66769bd4d9e9` |
| 20 | `theorem` | [continuousAt_of_monotoneOn_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuousat-of-monotoneon-of-image-mem-nhds--703131d631bec762432298bb.md) | 256 | `result-track:703131d631bec762432298bb3e0f255a063b60aa26b5c7f4bf4070d679138eeb` |
| 21 | `theorem` | [Monotone.continuous_of_denseRange](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/monotone-continuous-of-denserange--addfc1d93a206b5e9b8fa8aa.md) | 262 | `result-track:addfc1d93a206b5e9b8fa8aa1aa0b39b354e3d2d1a308a89e7b1085d36282c5a` |
| 22 | `theorem` | [Monotone.continuous_of_surjective](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/monotone-continuous-of-surjective--af5b6fc8ee07c2e18d6011ed.md) | 270 | `result-track:af5b6fc8ee07c2e18d6011ed959b6ef645e15c95fcac969cbe8d86ccceef8a94` |
| 23 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/continuous--2abb500e96d789756798aaa0.md) | 289 | `result-track:2abb500e96d789756798aaa08cf10f6ec192b2d22c71ef4579efb5cbea1d158d` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/instance--8d6702274588a7fd4d1c08ce.md) | 297 | `declaration-track:8d6702274588a7fd4d1c08ced4d2619c14e457065dc7f04e71420ed2dc36f006` |
| 25 | `abbrev` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/tohomeomorph--b06e8924d00946caf4f5ac26.md) | 302 | `declaration-track:b06e8924d00946caf4f5ac26a97d3d2001757600765af3f26fb78b293119fcd3` |
| 26 | `theorem` | [coe_toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/coe-tohomeomorph--87cce305194aeed28b697389.md) | 305 | `result-track:87cce305194aeed28b69738926e2671d71f228fd4b11b25d7b4183737a3f0525` |
| 27 | `theorem` | [coe_toHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantc31c3b0478efbba243f4d09e455b595836ceb7dbe42b3ab7b6bff6a3b6f03e32.lean/declarations/coe-tohomeomorph-symm--f58f3b1fadb1b39ef3e905f9.md) | 309 | `result-track:f58f3b1fadb1b39ef3e905f9fcb98e25f58270e3ca32695f6c55234669ac84c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
