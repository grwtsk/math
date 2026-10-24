# Verification target: GRWTSK.Topology.GeneralTopology.OmegaLimit.Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef2852a5a56a5ab4362dfdb8d5d0c16a3cc07ddc",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef2852a5a56a5ab4362dfdb8d5d0c16a3cc07ddc`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean.json)

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
| 1 | `def` | [omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit--0a47be921657c9101bf2eb80.md) | 58 | `declaration-track:0a47be921657c9101bf2eb800fc607f5963caf4b6fca7c2082960ae9b3d54cc1` |
| 2 | `theorem` | [omegaLimit_def](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-def--e200e169a250408065bd0bb4.md) | 78 | `result-track:e200e169a250408065bd0bb44c6a66d2cb567945b2dc3d72161e02cda4d1482f` |
| 3 | `theorem` | [omegaLimit_subset_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-subset-of-tendsto--e7a583c0d33df4ca4e47a4eb.md) | 80 | `result-track:e7a583c0d33df4ca4e47a4eb829b5c46932daea169f7c539eab88ad5da741820` |
| 4 | `theorem` | [omegaLimit_mono_left](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-mono-left--b55bca6f1b40628f136f7b84.md) | 86 | `result-track:b55bca6f1b40628f136f7b84d02b3c15d2cd2db05c675e002dd43aa5802db512` |
| 5 | `theorem` | [omegaLimit_mono_right](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-mono-right--5c1cc4435b5e6798c09c3735.md) | 89 | `result-track:5c1cc4435b5e6798c09c3735abc86dad23cd44bac40b5b9849587dc1b44f7ec1` |
| 6 | `theorem` | [isClosed_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/isclosed-omegalimit--e7a8f4b66600e18e56356a3e.md) | 92 | `result-track:e7a8f4b66600e18e56356a3e809632561fcbf34198b03448d1ac72c4df9613e1` |
| 7 | `theorem` | [mapsTo_omegaLimit'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/mapsto-omegalimit--34f71d5cdd4dd44ac7480a89.md) | 95 | `result-track:34f71d5cdd4dd44ac7480a89c08cccc8cadb3c845f38d73362e73b3f9733da44` |
| 8 | `theorem` | [mapsTo_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/mapsto-omegalimit--60a467d664590877aed0f35f.md) | 106 | `result-track:60a467d664590877aed0f35f4bee2d549a43ed3b0ddcef535d22f1f86d1276d6` |
| 9 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-image-eq--78356973c3287b096de52528.md) | 112 | `result-track:78356973c3287b096de52528306f2bacd1d924f63288f9a711547b4e24e87de7` |
| 10 | `theorem` | [omegaLimit_preimage_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-preimage-subset--e4db065435ce0212a46b5de6.md) | 115 | `result-track:e4db065435ce0212a46b5de69f71cb82bcc0e223513dfc03365e4cca909f2112` |
| 11 | `theorem` | [mem_omegaLimit_iff_frequently](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/mem-omegalimit-iff-frequently--41900368c607e99ed33170ee.md) | 128 | `result-track:41900368c607e99ed33170ee88cd736c19091a3d07e4bbeb87fe244554e9d249` |
| 12 | `theorem` | [mem_omegaLimit_iff_frequently₂](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/mem-omegalimit-iff-frequently--7271267a3ab9a01077e06a87.md) | 141 | `result-track:7271267a3ab9a01077e06a87d95cd73f9f0b65f45dc648ef44140ecab3043dbf` |
| 13 | `theorem` | [mem_omegaLimit_singleton_iff_mapClusterPt](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/mem-omegalimit-singleton-iff-mapclusterpt--f93639bb509193522013d5bd.md) | 147 | `result-track:f93639bb509193522013d5bd471d494f13a5d0e8cfaf9b88bcd9626042637337` |
| 14 | `theorem` | [omegaLimit_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-inter--e9bc2a42f51b857583c8c6ed.md) | 159 | `result-track:e9bc2a42f51b857583c8c6ed456aade749f66c05fab22cff44df6deed14f17ed` |
| 15 | `theorem` | [omegaLimit_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-iinter--c1a9a30f979088b463b756bd.md) | 163 | `result-track:c1a9a30f979088b463b756bd39f48c0bac7f87952650d45e56ae5faf3914b5f9` |
| 16 | `theorem` | [omegaLimit_union](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-union--91408032ed12594ba034363c.md) | 166 | `result-track:91408032ed12594ba034363c5d1c83a1ccc30dc717e68a5ba19d2c77cefea06e` |
| 17 | `theorem` | [omegaLimit_iUnion](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-iunion--34ad11f7816f52c17652c823.md) | 180 | `result-track:34ad11f7816f52c17652c823e1a9c3ac85180942e501dd237154754bb963e708` |
| 18 | `theorem` | [omegaLimit_eq_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-eq-iinter--0ad651b707de98671d24b3d3.md) | 190 | `result-track:0ad651b707de98671d24b3d3d2df5b218976985b741435127ff68b5fdfca5bb5` |
| 19 | `theorem` | [omegaLimit_eq_biInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-eq-biinter-inter--267631142368b83305e3f598.md) | 193 | `result-track:267631142368b83305e3f598887c9eaaa704895c2d9f313d9c53e2f26e13138c` |
| 20 | `theorem` | [omegaLimit_eq_iInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-eq-iinter-inter--f8b0896e7a19156ac9e7e2d8.md) | 198 | `result-track:f8b0896e7a19156ac9e7e2d8cda4be0add40a9c06e1d15b7ccafbe9549be8a0c` |
| 21 | `theorem` | [omegaLimit_subset_closure_image2](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-subset-closure-image2--ac0d97c487faa6ce533ac825.md) | 203 | `result-track:ac0d97c487faa6ce533ac8255eaff519fcd37db8972aecb20c35e2e39509a491` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/instance--db43fda8d3d3fc3b9ebc3603.md) | 214 | `declaration-track:db43fda8d3d3fc3b9ebc3603068d1527d7fdd4d0cfe4dc3debd7e4a7ee963a32` |
| 23 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--1a4ee887091930b428f0ef0e.md) | 224 | `result-track:1a4ee887091930b428f0ef0ed749d6473d1e61c5a61b97b75583387f444ba35b` |
| 24 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--c1d317417d5b6580026f2e79.md) | 263 | `result-track:c1d317417d5b6580026f2e796533cb12f7bf3d5209e756dc0a17e13fbfb8b93b` |
| 25 | `theorem` | [eventually_mapsTo_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/eventually-mapsto-of-iscompact-absorbing-of-isopen-of-omegalimit-subset--26f093f1b3dfbc17b893ca20.md) | 269 | `result-track:26f093f1b3dfbc17b893ca20b6f78d3390b2c7134c27810a06ae7e49e1edc1ca` |
| 26 | `theorem` | [eventually_closure_subset_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/eventually-closure-subset-of-isopen-of-omegalimit-subset--8bc3390c6c5af58bb5fdc18d.md) | 278 | `result-track:8bc3390c6c5af58bb5fdc18dbc034485b379e3efc53a6395a85cf26837a861ef` |
| 27 | `theorem` | [eventually_mapsTo_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/eventually-mapsto-of-isopen-of-omegalimit-subset--be1fb5e5f33c184d350ae7ba.md) | 283 | `result-track:be1fb5e5f33c184d350ae7ba126a859b5199427948af4f752263a08c9cebe43e` |
| 28 | `theorem` | [nonempty_omegaLimit_of_isCompact_absorbing](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/nonempty-omegalimit-of-iscompact-absorbing--cef041cc437c8996279e6e20.md) | 290 | `result-track:cef041cc437c8996279e6e20331add6538695c60d712a6696a18386d7fa11bc6` |
| 29 | `theorem` | [nonempty_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/nonempty-omegalimit--c9522be60ad91091d1ff38d0.md) | 308 | `result-track:c9522be60ad91091d1ff38d0494af08533a8264ca350d3da7a2b84b52b4bf3af` |
| 30 | `theorem` | [isInvariant_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/isinvariant-omegalimit--72a2de1da2623269906997bd.md) | 323 | `result-track:72a2de1da2623269906997bd233945a251c410bcf1680ab5e3785dea06bab75f` |
| 31 | `theorem` | [omegaLimit_image_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-image-subset--215e24ece9d3938dc875f8b6.md) | 329 | `result-track:215e24ece9d3938dc875f8b6304deaeba16fdc4a0efe91e600c675b482180453` |
| 32 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-image-eq--17d64861878e0ce43e1345ee.md) | 348 | `result-track:17d64861878e0ce43e1345ee85fdd35adce2bf0a39abc0c861e998dcf49f1062` |
| 33 | `theorem` | [omegaLimit_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/declarations/omegalimit-omegalimit--e632c44a322dcf5d1f524cb7.md) | 354 | `result-track:e632c44a322dcf5d1f524cb7fa5e55b5ad00874c5028efbae04c4a0747d9f4b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
