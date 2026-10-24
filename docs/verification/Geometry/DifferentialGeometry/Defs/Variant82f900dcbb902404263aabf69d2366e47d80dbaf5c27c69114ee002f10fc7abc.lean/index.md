# Verification target: GRWTSK.Geometry.DifferentialGeometry.Defs.Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11a5df6a2c9d5199fc0b85f34a824e029a40551f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11a5df6a2c9d5199fc0b85f34a824e029a40551f`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean.json)

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
| 1 | `def` | [DifferentiableWithinAtProp](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/differentiablewithinatprop--58e749f7f5e2a824a387de89.md) | 132 | `declaration-track:58e749f7f5e2a824a387de89300b5d7fea3a67d11ba9f8f530a64d12fe45dd97` |
| 2 | `theorem` | [differentiableWithinAtProp_self_source](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/differentiablewithinatprop-self-source--5230de0fbd657ec1bdbd85dc.md) | 137 | `result-track:5230de0fbd657ec1bdbd85dc08ebc5951023999286c30e228ba32c821915e340` |
| 3 | `theorem` | [DifferentiableWithinAtProp_self](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/differentiablewithinatprop-self--dac8a177b3d822dd1abd88cf.md) | 142 | `result-track:dac8a177b3d822dd1abd88cf157561143941f21870acbb48d38f9e8427c86a1f` |
| 4 | `theorem` | [differentiableWithinAtProp_self_target](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/differentiablewithinatprop-self-target--adef25a00520b05c3b0dda5d.md) | 146 | `result-track:adef25a00520b05c3b0dda5d5185b20c2e0eb674424fecb9f992d13c732864f2` |
| 5 | `theorem` | [differentiableWithinAt_localInvariantProp](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/differentiablewithinat-localinvariantprop--30f19b4d48bc2c1be86ab683.md) | 153 | `result-track:30f19b4d48bc2c1be86ab68331191247b84786dff7fb90f0ffbbc0e7081f03be` |
| 6 | `def` | [UniqueMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/uniquemdiffwithinat--5a5d34ba1b7f8c3520b83435.md) | 202 | `declaration-track:5a5d34ba1b7f8c3520b83435c6abcc01daa04e27cc21b154d610307501323d1e` |
| 7 | `def` | [UniqueMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/uniquemdiffon--01175eeeb9ceb5b9a8b93887.md) | 207 | `declaration-track:01175eeeb9ceb5b9a8b93887341abbaeaf5146118e63fb5589321df823274107` |
| 8 | `def` | [MDifferentiableWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiablewithinat--280c7fbd28bd1163e61180b2.md) | 219 | `declaration-track:280c7fbd28bd1163e61180b2c3ddb9ffe3b03e1529a8f3cff11f08f640f322ba` |
| 9 | `theorem` | [mdifferentiableWithinAt_iff'](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiablewithinat-iff--fbc8aed823b8d134e08ff448.md) | 222 | `result-track:fbc8aed823b8d134e08ff448664b9adce71132a0e73d066bb0a08385325dc6ac` |
| 10 | `theorem` | [MDifferentiableWithinAt.continuousWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiablewithinat-continuouswithinat--22f7a1d070b347188e71a767.md) | 228 | `result-track:22f7a1d070b347188e71a767a8a6f3f6cabbd1e8e5148dddc1c89ecd8d4aac28` |
| 11 | `theorem` | [MDifferentiableWithinAt.differentiableWithinAt_writtenInExtChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiablewithinat-differentiablewithinat-writteninextchartat--e0b062393883677db2136016.md) | 233 | `result-track:e0b062393883677db21360164a79b3db55baae84b4959a3dc88e96bf918c324a` |
| 12 | `def` | [MDifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiableat--698ae5fcd82748a9f95728c3.md) | 248 | `declaration-track:698ae5fcd82748a9f95728c34a90db6e97da3085027aa5a5cac09758d0a8f87a` |
| 13 | `theorem` | [mdifferentiableAt_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiableat-iff--add393abaa7cdf788d4f17d1.md) | 251 | `result-track:add393abaa7cdf788d4f17d1578ad2b56adbfeb9de124ffc0fe7556d1de8d731` |
| 14 | `theorem` | [MDifferentiableAt.continuousAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiableat-continuousat--537565d3f9a7a31c07e9f318.md) | 258 | `result-track:537565d3f9a7a31c07e9f31828411fcf5b243063020c68da2d5f05311f854707` |
| 15 | `theorem` | [MDifferentiableAt.differentiableWithinAt_writtenInExtChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiableat-differentiablewithinat-writteninextchartat--fb117c7b4e57b10bc9d8a69a.md) | 262 | `result-track:fb117c7b4e57b10bc9d8a69acdd5949204f43944ba005319f1bbf3af9f46d862` |
| 16 | `def` | [MDifferentiableOn](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiableon--fdc4436714bf36f2d8e67f18.md) | 271 | `declaration-track:fdc4436714bf36f2d8e67f1899d16794b07b9726440f6370ba61160544c7c362` |
| 17 | `def` | [MDifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mdifferentiable--12d16aa10f0b58895dbf5320.md) | 278 | `declaration-track:12d16aa10f0b58895dbf5320d6cf8822e4a6028d67301d5b27392db4bb4f85fc` |
| 18 | `def` | [OpenPartialHomeomorph.MDifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/openpartialhomeomorph-mdifferentiable--f23eaa3ba8a682f79411fefe.md) | 283 | `declaration-track:f23eaa3ba8a682f79411fefec327dd265eb3729c0b2ec50706e0c282c0118a6b` |
| 19 | `def` | [HasMFDerivWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/hasmfderivwithinat--d50cf8150e012b39a5d537df.md) | 298 | `declaration-track:d50cf8150e012b39a5d537dfe4cde3c61ec6c4ead6089d38f5de33aa012e517a` |
| 20 | `def` | [HasMFDerivAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/hasmfderivat--1a21fa41c8b729489f05a364.md) | 314 | `declaration-track:1a21fa41c8b729489f05a36434ab9ad9ed6bebf1d7397bdaa05c467faf681bf3` |
| 21 | `def` | [mfderivWithin](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mfderivwithin--348b8e4caa4d563fbfe6d36d.md) | 325 | `declaration-track:348b8e4caa4d563fbfe6d36d28395127375f8e60204a37bb12b33bc3c9bb8864` |
| 22 | `def` | [mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/mfderiv--dbaeb840fbc838fae89f36f8.md) | 336 | `declaration-track:dbaeb840fbc838fae89f36f8f20d7437b7dd66047ccff51a0d1413070f678df5` |
| 23 | `def` | [tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/tangentmapwithin--98b38e89ac9f956a0e76ea52.md) | 346 | `declaration-track:98b38e89ac9f956a0e76ea520683a0ac068d41ddcbd731fcb9efcb2a64301461` |
| 24 | `def` | [tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/declarations/tangentmap--0c78c159571e49f32376ec6a.md) | 352 | `declaration-track:0c78c159571e49f32376ec6a6d19f9c5e11fa1db6a18ed7cc4c1ff7c676d2769` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
