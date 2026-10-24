# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extreme.Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "326bbf8804716ccbf3108711e4582ce50b2f67bf",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `326bbf8804716ccbf3108711e4582ce50b2f67bf`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean.json)

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
| 1 | `structure` | [IsExtreme](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme--1dbd09dd8a32b1f2e394f769.md) | 63 | `declaration-track:1dbd09dd8a32b1f2e394f769e870eb43c40e09aca645a7cb6b19b23ed840245e` |
| 2 | `def` | [Set.extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/set-extremepoints--222f88445b8757a16c6ca3cf.md) | 70 | `declaration-track:222f88445b8757a16c6ca3cff7dd66bfb31aa8c35d9da7878fbfef48c234a11e` |
| 3 | `theorem` | [IsExtreme.refl](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-refl--8ddb9ebc3ed8e08e6d405ab6.md) | 74 | `result-track:8ddb9ebc3ed8e08e6d405ab6f7caaa5a7af5bda9dc8b0ececbc01abb1b223d56` |
| 4 | `theorem` | [IsExtreme.rfl](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-rfl--e53ae6f5a87fc75d3167f33f.md) | 79 | `result-track:e53ae6f5a87fc75d3167f33fe6853f6383908c063cbae6af0c49b2a880064b98` |
| 5 | `theorem` | [IsExtreme.right_mem_of_mem_openSegment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-right-mem-of-mem-opensegment--855a4cf75f1a54c81328a525.md) | 82 | `result-track:855a4cf75f1a54c81328a5258b63ee13d2fe4f407b2031a70e8ee3b00072f497` |
| 6 | `theorem` | [IsExtreme.trans](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-trans--c8b4c8eebca1b8d108df4a61.md) | 87 | `result-track:c8b4c8eebca1b8d108df4a6130f45781e034f24a60d780615f86ea5929125dab` |
| 7 | `theorem` | [IsExtreme.antisymm](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-antisymm--64dd97797f37088037f06c1d.md) | 94 | `result-track:64dd97797f37088037f06c1dc79cf6a60c80ee2782f72e82fc009ead82c9f48e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/instance--4b3c963849e789cc2bf07ce8.md) | 97 | `declaration-track:4b3c963849e789cc2bf07ce83b69e5c7545d60124a38a672b1f4fdf948e2ddc8` |
| 9 | `theorem` | [IsExtreme.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-inter--f5143692c3df1fdbd57014c5.md) | 102 | `result-track:f5143692c3df1fdbd57014c5e4117b23376a7f9934d33d7abf0511019c2e844e` |
| 10 | `theorem` | [IsExtreme.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-mono--a150aba1283945975436c861.md) | 109 | `result-track:a150aba1283945975436c861f639126c7649de04958c36703ac18caacf72b4b9` |
| 11 | `theorem` | [isExtreme_iInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-iinter--4094d8c4d2f9e3cdb5ee3856.md) | 113 | `result-track:4094d8c4d2f9e3cdb5ee385698554d560ceaedaa1e3e38f433b32972fdb8f344` |
| 12 | `theorem` | [isExtreme_biInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-biinter--d64f9fa7da8b7db2024d8a5d.md) | 120 | `result-track:d64f9fa7da8b7db2024d8a5d5737a419ae577962cced05d1da14353b940bb31d` |
| 13 | `theorem` | [isExtreme_sInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-sinter--da7ef0975ca00d0841a843fd.md) | 125 | `result-track:da7ef0975ca00d0841a843fdd01da5c699c9fe1295827564b88647132d878de4` |
| 14 | `theorem` | [mem_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/mem-extremepoints--74ad5bf6c9df8f9645a038f0.md) | 135 | `result-track:74ad5bf6c9df8f9645a038f0fe1ac7f4ff160d49b13cddbf6185af4727d2f9a4` |
| 15 | `theorem` | [mem_extremePoints_iff_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/mem-extremepoints-iff-left--3cca2373447d91c8585c2266.md) | 145 | `result-track:3cca2373447d91c8585c22663fcf9efd5a6f9fdb4e3ef547288790b47a583c04` |
| 16 | `lemma` | [isExtreme_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-singleton--566de86bad245d0d6e2ac5f8.md) | 150 | `result-track:566de86bad245d0d6e2ac5f8b56fda67dacc897fb7fda98a0935c2aa5ff62f3b` |
| 17 | `theorem` | [extremePoints_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/extremepoints-subset--689928c9566fd3ba148a27d7.md) | 155 | `result-track:689928c9566fd3ba148a27d7efff0640c6f2ff02abaae7d2d6bcecbdcde50e9c` |
| 18 | `theorem` | [extremePoints_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/extremepoints-empty--f2933895b0a805731a606c22.md) | 159 | `result-track:f2933895b0a805731a606c228b60e9aff568e127a8e590d645760bff9e439601` |
| 19 | `theorem` | [extremePoints_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/extremepoints-singleton--c7f85e744ec3cc21410feb2e.md) | 163 | `result-track:c7f85e744ec3cc21410feb2e914f1202f6d3d047471808888f1345d844514497` |
| 20 | `theorem` | [inter_extremePoints_subset_extremePoints_of_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/inter-extremepoints-subset-extremepoints-of-subset--8368b94ad1fce8326d1b82d8.md) | 166 | `result-track:8368b94ad1fce8326d1b82d8e556093931a59aa67be79f2046393de182adc8f5` |
| 21 | `theorem` | [IsExtreme.extremePoints_subset_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-extremepoints-subset-extremepoints--a163584afe45aebe08ff5fd4.md) | 170 | `result-track:a163584afe45aebe08ff5fd42e9c0bc9439865b263f9ba3b50ab153f1fe7ddd4` |
| 22 | `theorem` | [IsExtreme.extremePoints_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-extremepoints-eq--0f1c355cd235fa5661962317.md) | 174 | `result-track:0f1c355cd235fa5661962317b0e0cc8cca24d34280ff535ff012aef34877d039` |
| 23 | `lemma` | [Set.extremePoints_eq_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/set-extremepoints-eq-self--56ac0c2d0dfb9705e8c8ab49.md) | 180 | `result-track:56ac0c2d0dfb9705e8c8ab491fded2c461a0be9febce9570d6fb483e5cf0cd17` |
| 24 | `theorem` | [IsExtreme.convex_sdiff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/isextreme-convex-sdiff--00d682f56e0102c717751aaa.md) | 190 | `result-track:00d682f56e0102c717751aaaf920ccbad0608311f70dedb3556223e396788145` |
| 25 | `theorem` | [extremePoints_prod](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/extremepoints-prod--2b14236e6226b9a9acb79d86.md) | 198 | `result-track:2b14236e6226b9a9acb79d864c6a8f5d0c61366435531cbeca9989269d967d7a` |
| 26 | `theorem` | [extremePoints_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/extremepoints-pi--a262af20426ba38079ab9d6d.md) | 216 | `result-track:a262af20426ba38079ab9d6d9396b533bae9c416c76d28534235d670115fd4bb` |
| 27 | `lemma` | [image_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/image-extremepoints--5273944ece6b28207639ad40.md) | 241 | `result-track:5273944ece6b28207639ad40e8a4583b4c5643d83ee910396a4db77779ee5a2b` |
| 28 | `theorem` | [mem_extremePoints_iff_forall_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/mem-extremepoints-iff-forall-segment--37239e6a21720b91e0c5579d.md) | 259 | `result-track:37239e6a21720b91e0c5579d76ac46558bbb5580d1cb86759bdfe0116dd74cf5` |
| 29 | `theorem` | [Convex.mem_extremePoints_iff_convex_sdiff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/convex-mem-extremepoints-iff-convex-sdiff--75653f9d94c8f064dd0e4b57.md) | 271 | `result-track:75653f9d94c8f064dd0e4b57057f39dbb46472a6c3f4ced16a5e494af78efa65` |
| 30 | `theorem` | [Convex.mem_extremePoints_iff_mem_sdiff_convexHull_sdiff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/convex-mem-extremepoints-iff-mem-sdiff-convexhull-sdiff--c1b7cce7812507671e1ac969.md) | 284 | `result-track:c1b7cce7812507671e1ac96932324d8055ca6261308a6375e51662264ad77f06` |
| 31 | `theorem` | [extremePoints_convexHull_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/extremepoints-convexhull-subset--822e64ded63dcb0cd25be571.md) | 293 | `result-track:822e64ded63dcb0cd25be571a58b9fb1acd6e60a992e51e09c007c4b93981009` |
| 32 | `lemma` | [star_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/star-segment--2180f6b94d0c10da5febf13e.md) | 306 | `result-track:2180f6b94d0c10da5febf13ed05b86933d8b920c325fae30d94be729ef4b2d10` |
| 33 | `lemma` | [star_openSegment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/star-opensegment--808c7fcebf3c702e8839846b.md) | 311 | `result-track:808c7fcebf3c702e8839846b057a4be05822a8b531177a8931a12912e9f7f174` |
| 34 | `lemma` | [star_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/declarations/star-extremepoints--b491cff7e68eaac333f35712.md) | 317 | `result-track:b491cff7e68eaac333f35712f88fa76f746bc347b456bba6cfc52f33cb358334` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
