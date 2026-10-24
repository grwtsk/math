# Verification target: GRWTSK.Topology.GeneralTopology.MonotoneContinuity.Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fe27c8180bd874d218e0becfd6308ac59d4662c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fe27c8180bd874d218e0becfd6308ac59d4662c`.

Source path: `GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRightNhds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuouswithinat-right-of-exists-between--649163a635284df907edfe34.md) | 40 | `result-track:649163a635284df907edfe34443f751f64698f66c0709dff6c1b193a98c5f357` |
| 2 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuouswithinat-right-of-monotoneon-of-exists-between--91fb62f09db7addf7ea4c5e2.md) | 60 | `result-track:91fb62f09db7addf7ea4c5e266890bb4dceeb7fccfac72ecd0f57501287ad81f` |
| 3 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuouswithinat-right-of-monotoneon-of-closure-image-mem-nhdswithin--7ed95bacb425b7858183a5ea.md) | 77 | `result-track:7ed95bacb425b7858183a5ea547c2469bcd87ac6905786c0a5dae669a757b94b` |
| 4 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuouswithinat-right-of-monotoneon-of-image-mem-nhdswithin--530a6e6755e9ae3d769ea826.md) | 90 | `result-track:530a6e6755e9ae3d769ea826b85a230e1f502cc15e2126086a46d0137574ca3c` |
| 5 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuouswithinat-right-of-closure-image-mem-nhdswithin--a3e20c838e5cc09908ccc0e1.md) | 99 | `result-track:a3e20c838e5cc09908ccc0e11541a1f99f238b9954b0f51ca601aa6ff33aa5c0` |
| 6 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuouswithinat-right-of-image-mem-nhdswithin--39d0e75db89c5fe064d7cf8d.md) | 108 | `result-track:39d0e75db89c5fe064d7cf8dffdb6804c10b444e7f406ffc04c5986c01846b80` |
| 7 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuouswithinat-right-of-surjon--333ba3508f01df3b6aa222ad.md) | 116 | `result-track:333ba3508f01df3b6aa222adb3d040802008ebe0635577df6078258f02c5a23f` |
| 8 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuouswithinat-left-of-exists-between--a39ebc509cae6ca715c85980.md) | 130 | `result-track:a39ebc509cae6ca715c8598085ce1cbc5c18ecae69134cbaadfa8f45265ab534` |
| 9 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuouswithinat-left-of-monotoneon-of-exists-between--42e2dd9f0ffa9c8c9c98a487.md) | 143 | `result-track:42e2dd9f0ffa9c8c9c98a487c2ec1cbea171db8ae52853ca951ffc8a6cbc6c5b` |
| 10 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuouswithinat-left-of-monotoneon-of-closure-image-mem-nhdswithin--c80d9ef8e527732d4bb1736e.md) | 154 | `result-track:c80d9ef8e527732d4bb1736e397d90736d8dd8a71d7e2c7b99df675361281e30` |
| 11 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuouswithinat-left-of-monotoneon-of-image-mem-nhdswithin--aa7b457639c136d7020a320d.md) | 163 | `result-track:aa7b457639c136d7020a320d524211fe5fe8a5012e9af290b727c4be32522b7a` |
| 12 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuouswithinat-left-of-closure-image-mem-nhdswithin--c5bede5ff3c3c6016671e6c2.md) | 172 | `result-track:c5bede5ff3c3c6016671e6c24a9437bc1ad76a26ad38d5c32dc040339e4a56e6` |
| 13 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuouswithinat-left-of-image-mem-nhdswithin--abf5b7122cfa63f5e3ad386d.md) | 180 | `result-track:abf5b7122cfa63f5e3ad386d6b349ba0aac7f0f239796918590ad072fc4229f6` |
| 14 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuouswithinat-left-of-surjon--4e73b55eefc2ed1096330122.md) | 187 | `result-track:4e73b55eefc2ed10963301224b775817aae780f5bd571a244a71285e31586097` |
| 15 | `theorem` | [StrictMonoOn.continuousAt_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuousat-of-exists-between--c091986a010026a50de6032e.md) | 195 | `result-track:c091986a010026a50de6032e004e5e504e9a5b34cdb8d1874de81147c5e54e17` |
| 16 | `theorem` | [StrictMonoOn.continuousAt_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuousat-of-closure-image-mem-nhds--87b2b0aa91f7fcc377aee9fb.md) | 205 | `result-track:87b2b0aa91f7fcc377aee9fb9bce2cecd6c802c27b345a6665cf1d005d0ba829` |
| 17 | `theorem` | [StrictMonoOn.continuousAt_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/strictmonoon-continuousat-of-image-mem-nhds--411667f1699c0f19185f6068.md) | 216 | `result-track:411667f1699c0f19185f60687ecb462cd030283fc0e91f51dbd57c8d330ca15a` |
| 18 | `theorem` | [continuousAt_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuousat-of-monotoneon-of-exists-between--fa0500d3cd18b89236959b25.md) | 224 | `result-track:fa0500d3cd18b89236959b25f8f24b20562b2f1d997b7d2628fe0eceae4ad2f2` |
| 19 | `theorem` | [continuousAt_of_monotoneOn_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuousat-of-monotoneon-of-closure-image-mem-nhds--305139bd0df13311f9364988.md) | 236 | `result-track:305139bd0df13311f93649880b7315b2db8f5ffdff640e9a3768b61556172b2c` |
| 20 | `theorem` | [continuousAt_of_monotoneOn_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuousat-of-monotoneon-of-image-mem-nhds--876eb65881a486b7c592fc18.md) | 247 | `result-track:876eb65881a486b7c592fc1894b20d5587fef2a369950935a468714efe118d5d` |
| 21 | `theorem` | [Monotone.continuous_of_denseRange](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/monotone-continuous-of-denserange--9010b9cf434ffc974d5beb6a.md) | 253 | `result-track:9010b9cf434ffc974d5beb6a59b8e5d830aa1090718bfa444b9b43916338a940` |
| 22 | `theorem` | [Monotone.continuous_of_surjective](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/monotone-continuous-of-surjective--040d8a9de90f659b53ee06ee.md) | 261 | `result-track:040d8a9de90f659b53ee06ee8095ab833cf9ef50a8195d125c890ff0fe19aab9` |
| 23 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/continuous--f10e2355a148da285f2639f3.md) | 280 | `result-track:f10e2355a148da285f2639f354e2a8f46db44146517c50b3932b1869fb922744` |
| 24 | `def` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/tohomeomorph--55dbc7403548d65e026169b5.md) | 289 | `declaration-track:55dbc7403548d65e026169b561304d6c4688fcc297f76ab2cd41e50ba015d91e` |
| 25 | `theorem` | [coe_toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/coe-tohomeomorph--55a63defd56a8b46dbfd85dc.md) | 295 | `result-track:55a63defd56a8b46dbfd85dcbd8f7f6d1d2ef1de1ef18dd983803f9ed2ab40ce` |
| 26 | `theorem` | [coe_toHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/declarations/coe-tohomeomorph-symm--523154f082404e0149f730d1.md) | 299 | `result-track:523154f082404e0149f730d1f550665170581766c575fc2e427a9974e383be6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
