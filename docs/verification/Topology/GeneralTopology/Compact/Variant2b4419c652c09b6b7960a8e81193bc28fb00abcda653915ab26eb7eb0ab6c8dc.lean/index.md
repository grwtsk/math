# Verification target: GRWTSK.Topology.GeneralTopology.Compact.Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a092fcc377f7e54eb29c593926656c7c86bb3acf",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a092fcc377f7e54eb29c593926656c7c86bb3acf`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.StrongTopology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator--f48a24fc175d22e07c13789d.md) | 67 | `declaration-track:f48a24fc175d22e07c13789d6ddca4656944816aaa1aa209901c6022cd4167ad` |
| 2 | `theorem` | [isCompactOperator_zero](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-zero--e4f30ead7e94aee55e117c40.md) | 71 | `result-track:e4f30ead7e94aee55e117c404038301ed001b52f0667d5f3f574cbfd5d533145` |
| 3 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_image_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iff-exists-mem-nhds-image-subset-compact--009565cc5d08d70a23ab2ff4.md) | 82 | `result-track:009565cc5d08d70a23ab2ff48d539be6f7a8808e9cb27cfc9e79b3ccfe78116c` |
| 4 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iff-exists-mem-nhds-iscompact-closure-image--276a3c3ce68850e877711bd9.md) | 87 | `result-track:276a3c3ce68850e877711bd9a699f1b44f98240f65c552aa8dc465e7b9b81aa6` |
| 5 | `theorem` | [IsCompactOperator.image_subset_compact_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-image-subset-compact-of-isvonnbounded--dc0646a6a1c84a27b33e43ff.md) | 102 | `result-track:dc0646a6a1c84a27b33e43ffb2f4c2b64d04bc07a05cd7fdca0a728f3b7dcf09` |
| 6 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iscompact-closure-image-of-isvonnbounded--f959ab7654f4ef961f92233b.md) | 112 | `result-track:f959ab7654f4ef961f92233b8844186e465af99e0435d79dd99e0c83d7f540b8` |
| 7 | `theorem` | [IsCompactOperator.image_subset_compact_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-image-subset-compact-of-bounded--5effdfe36fe00cf727f17c6c.md) | 126 | `result-track:5effdfe36fe00cf727f17c6c103bd11dc8815d9de57623832c285d320f6f0e91` |
| 8 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iscompact-closure-image-of-bounded--ac2768747a44f00745feecdd.md) | 131 | `result-track:ac2768747a44f00745feecddfc27a8d8c5a37e1c5fe319c99c210759b0afd9ce` |
| 9 | `theorem` | [IsCompactOperator.image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-image-ball-subset-compact--ba0711c2b3c4c42c4396bcab.md) | 136 | `result-track:ba0711c2b3c4c42c4396bcabebf8fedf65f489902e1869844d2b036acda94959` |
| 10 | `theorem` | [IsCompactOperator.image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-image-closedball-subset-compact--3611bfe9efeab04b733a27b1.md) | 140 | `result-track:3611bfe9efeab04b733a27b1da80ce2a57d77ff6af62a717a0cb696897a01b9d` |
| 11 | `theorem` | [IsCompactOperator.isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iscompact-closure-image-ball--de0378b08874e176939dfa1c.md) | 145 | `result-track:de0378b08874e176939dfa1c07583c54420d439bbcb939f535d644a7c4686dbe` |
| 12 | `theorem` | [IsCompactOperator.isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iscompact-closure-image-closedball--6cbad9fc1aee9cb42a066492.md) | 150 | `result-track:6cbad9fc1aee9cb42a066492130e5c3632f33eb9360291e3ef6846b23944b2b3` |
| 13 | `theorem` | [isCompactOperator_iff_image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iff-image-ball-subset-compact--cd7291464c3f1a4547d0a65d.md) | 155 | `result-track:cd7291464c3f1a4547d0a65d0330adeb8cd6feb43e7e3ea9034c9764c577d5a9` |
| 14 | `theorem` | [isCompactOperator_iff_image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iff-image-closedball-subset-compact--b593426e51024634a8d0f5ed.md) | 162 | `result-track:b593426e51024634a8d0f5edf09e1a3ac7334c81697cd5870cf2c77db5fb8a64` |
| 15 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iff-iscompact-closure-image-ball--9e25230bbc0ff9195adb286c.md) | 169 | `result-track:9e25230bbc0ff9195adb286cfb163f76b6ef45f60f8162c5faf93fc160e1b1c5` |
| 16 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-iff-iscompact-closure-image-closedball--2fd46eee4c5fcc9dfefd4730.md) | 176 | `result-track:2fd46eee4c5fcc9dfefd47301d482a9d572f0ba718d5e9e4bd193192a4e18db9` |
| 17 | `theorem` | [IsCompactOperator.smul](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-smul--526f8944ce44e17341788544.md) | 194 | `result-track:526f8944ce44e1734178854419c22ef4ae3deb29e63a51534689001e482d17c3` |
| 18 | `theorem` | [IsCompactOperator.add](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-add--20d7b8068fe44edc0aef042b.md) | 201 | `result-track:20d7b8068fe44edc0aef042bc767ed8513188f4a87fff3c1b233b2c5f6187a0a` |
| 19 | `theorem` | [IsCompactOperator.neg](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-neg--011be9ce21feb623361070f6.md) | 208 | `result-track:011be9ce21feb623361070f6718f3d1174c03053fb1c868567f17c2acdd07db4` |
| 20 | `theorem` | [IsCompactOperator.sub](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-sub--7a93b689b41eb7191125886e.md) | 213 | `result-track:7a93b689b41eb7191125886e4d6a00e462b18a39f2d3176e418b19082d47a6fd` |
| 21 | `def` | [compactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/compactoperator--04c3bbbd1988ace4243cd20f.md) | 220 | `declaration-track:04c3bbbd1988ace4243cd20f7bd3a2e5616e254b88ec5fa1e3209c0c14ddcb78` |
| 22 | `theorem` | [IsCompactOperator.comp_clm](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-comp-clm--f90a425b584c1df7a1ac99cb.md) | 235 | `result-track:f90a425b584c1df7a1ac99cb816576f675b3f0c05791ad669a3b9ebf5403725c` |
| 23 | `theorem` | [IsCompactOperator.continuous_comp](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-continuous-comp--0e5869d5845f4fde77a82a83.md) | 242 | `result-track:0e5869d5845f4fde77a82a839d908fb063ef690b5184056a26cb90d9a01f0eba` |
| 24 | `theorem` | [IsCompactOperator.clm_comp](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-clm-comp--fd6fd13b1cecc395849de8e9.md) | 249 | `result-track:fd6fd13b1cecc395849de8e9ab65a8903b7c00381d0d146d48b27d8c04544472` |
| 25 | `theorem` | [IsCompactOperator.codRestrict](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-codrestrict--b1286e298f9c39c98893f553.md) | 262 | `result-track:b1286e298f9c39c98893f55321d5424018717c5671237415bb8fa04b897b51f8` |
| 26 | `theorem` | [IsCompactOperator.restrict](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-restrict--82ed08bbbc829dc2d2e81067.md) | 285 | `result-track:82ed08bbbc829dc2d2e810673d82338ab05f75841abc888f23bb7de1f1b2b500` |
| 27 | `theorem` | [IsCompactOperator.restrict'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-restrict--7579c169401e39a19dfbc108.md) | 298 | `result-track:7579c169401e39a19dfbc1081a12e957b39354fa342338667b9642168fab46b9` |
| 28 | `theorem` | [IsCompactOperator.continuous](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-continuous--f95384408da270fe39b894f3.md) | 313 | `result-track:f95384408da270fe39b894f343ea671054d2de23be577a4335de471f7d1bb6c3` |
| 29 | `def` | [ContinuousLinearMap.mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/continuouslinearmap-mkofiscompactoperator--0adcdf936453bfca4311982b.md) | 345 | `declaration-track:0adcdf936453bfca4311982bc0b9a2c51076d924b59bb0504376775d6aac6022` |
| 30 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_to_linearMap](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/continuouslinearmap-mkofiscompactoperator-to-linearmap--0364738c3283c6efe8915c99.md) | 350 | `result-track:0364738c3283c6efe8915c998738e3201a683495169f34dab4e47cbda2815021` |
| 31 | `theorem` | [ContinuousLinearMap.coe_mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/continuouslinearmap-coe-mkofiscompactoperator--ccc00960f00ac113071e2a7f.md) | 356 | `result-track:ccc00960f00ac113071e2a7fffed9ecd5c25a78648515136b7c86577c342a21f` |
| 32 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_mem_compactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/continuouslinearmap-mkofiscompactoperator-mem-compactoperator--f72c35e9dfa361833f6a33a8.md) | 360 | `result-track:f72c35e9dfa361833f6a33a8400cdcab2fd249589e6e81b727bad067abcd71da` |
| 33 | `theorem` | [isClosed_setOf_isCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/isclosed-setof-iscompactoperator--badb5ab4c4303e72aa76334e.md) | 369 | `result-track:badb5ab4c4303e72aa76334e91aa9999e8af9e474e996355b334f61faedbf662` |
| 34 | `theorem` | [compactOperator_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/compactoperator-topologicalclosure--7cb1f05d9da8550f775c3042.md) | 405 | `result-track:7cb1f05d9da8550f775c304293365ac523e15a08c9a1b21ae353b9fdbd90d7ea` |
| 35 | `theorem` | [isCompactOperator_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/declarations/iscompactoperator-of-tendsto--c5ccf19e80e22b3abf9037bc.md) | 412 | `result-track:c5ccf19e80e22b3abf9037bc9bffc635b737fd3a55200b98759ad34170abb01e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
