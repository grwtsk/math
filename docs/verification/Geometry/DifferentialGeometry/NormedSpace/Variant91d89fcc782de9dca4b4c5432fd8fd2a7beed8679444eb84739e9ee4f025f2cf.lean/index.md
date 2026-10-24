# Verification target: GRWTSK.Geometry.DifferentialGeometry.NormedSpace.Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9ade02ad2a047daf2f3c9ddf8e0a92742e87e90",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9ade02ad2a047daf2f3c9ddf8e0a92742e87e90`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contMDiffWithinAt_iff_contDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffwithinat-iff-contdiffwithinat--0ba5d5d5f12b2f0945aad635.md) | 46 | `result-track:0ba5d5d5f12b2f0945aad635e530d6c009c778d59ebf4d80e74c33735b5ae2b3` |
| 2 | `theorem` | [contMDiffAt_iff_contDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffat-iff-contdiffat--c2ca27e2ec46737efb74eec4.md) | 55 | `result-track:c2ca27e2ec46737efb74eec460c1026f2bec5968bd2a32405a00bca060539f2f` |
| 3 | `theorem` | [contMDiffOn_iff_contDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffon-iff-contdiffon--43843bb9dbd01aa88d5e9792.md) | 61 | `result-track:43843bb9dbd01aa88d5e979271a6ece96bad0b4700e39c7f45a1f81b07f967ad` |
| 4 | `theorem` | [contMDiff_iff_contDiff](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiff-iff-contdiff--c655901f337b8d3234a5d1f6.md) | 67 | `result-track:c655901f337b8d3234a5d1f676409211cef068c10d0f1402dba51535e00adace` |
| 5 | `theorem` | [ContDiffWithinAt.comp_contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contdiffwithinat-comp-contmdiffwithinat--918190a7153337ae31da35db.md) | 72 | `result-track:918190a7153337ae31da35db61e482058c22365967b098f97c1a4491cfa66bfa` |
| 6 | `theorem` | [ContDiffAt.comp_contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contdiffat-comp-contmdiffwithinat--7d416089dd2ae7630e6e08a8.md) | 77 | `result-track:7d416089dd2ae7630e6e08a80dda38046dfe09344042c907e594104cae6e9d1d` |
| 7 | `theorem` | [ContDiffAt.comp_contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contdiffat-comp-contmdiffat--e5495c87e1fb8bc6abf88b61.md) | 82 | `result-track:e5495c87e1fb8bc6abf88b6108c7f1c47e8ad9f78a3e1a3d5bc74e5773887df5` |
| 8 | `theorem` | [ContDiff.comp_contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contdiff-comp-contmdiffwithinat--33cc71e804ed97f43b048073.md) | 86 | `result-track:33cc71e804ed97f43b048073307a799afcfb1deda3f9c8f8eda91049ce15bcbd` |
| 9 | `theorem` | [ContDiff.comp_contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contdiff-comp-contmdiffat--0798e62410d83dadcc9c7dc5.md) | 91 | `result-track:0798e62410d83dadcc9c7dc5de593f1f7e285fc3ba93aa7ea9ab0fe4a929d1c6` |
| 10 | `theorem` | [ContDiff.comp_contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contdiff-comp-contmdiff--51dbd4d1f6e5db1cc56595d7.md) | 95 | `result-track:51dbd4d1f6e5db1cc56595d7ead97bcf50b48d1a6bc10b7b4cef6c36c82a1b47` |
| 11 | `theorem` | [ContinuousLinearMap.contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/continuouslinearmap-contmdiff--f1e53373a46872040162500d.md) | 103 | `result-track:f1e53373a46872040162500dd2fae5605f6917e139f85ac690d7bdacd51f7f16` |
| 12 | `theorem` | [ContinuousLinearMap.contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/continuouslinearmap-contmdiffat--11e5447b66d912158fed0e0c.md) | 106 | `result-track:11e5447b66d912158fed0e0cd8b8f0516558b66f92112754480981a8e824c8ba` |
| 13 | `theorem` | [ContinuousLinearMap.contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/continuouslinearmap-contmdiffwithinat--8fd023799754e7a6cd14eee7.md) | 109 | `result-track:8fd023799754e7a6cd14eee7cb4c24f231f8f651318afc52efa2b5a1dbc6b3a2` |
| 14 | `theorem` | [ContinuousLinearMap.contMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/continuouslinearmap-contmdiffon--bc2eed4e0c925ad3da6e96e3.md) | 113 | `result-track:bc2eed4e0c925ad3da6e96e3ea7bba25a24822f80b829a6a9c6ef7a57705474c` |
| 15 | `theorem` | [ContMDiffWithinAt.clm_precomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffwithinat-clm-precomp--c84a7ea55b7741e1a47e984e.md) | 119 | `result-track:c84a7ea55b7741e1a47e984e5a644166062d3447a394bfbb752a91cab556639f` |
| 16 | `theorem` | [ContMDiffAt.clm_precomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffat-clm-precomp--742447f7109e58b28162eb1b.md) | 126 | `result-track:742447f7109e58b28162eb1b8dfd4d5a0bb4b1dfb573b6b10158301a7c1a1ce0` |
| 17 | `theorem` | [ContMDiffOn.clm_precomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffon-clm-precomp--dbc19678b5701e4fd8fcdb10.md) | 132 | `result-track:dbc19678b5701e4fd8fcdb10b2eba48a8a48173983a6cec58bbb6e3d11a7ff70` |
| 18 | `theorem` | [ContMDiff.clm_precomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiff-clm-precomp--cbb9fb63a8857abf3d01cd43.md) | 138 | `result-track:cbb9fb63a8857abf3d01cd43cad8e92190376675a874c3d534acd72a9cce484c` |
| 19 | `theorem` | [ContMDiffWithinAt.clm_postcomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffwithinat-clm-postcomp--8d1555b22e7031b249a32b63.md) | 143 | `result-track:8d1555b22e7031b249a32b631fd00877bd0d2cbd077f1cdcd9125581d1b7fb28` |
| 20 | `theorem` | [ContMDiffAt.clm_postcomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffat-clm-postcomp--f586d589d5a66a4de7215cd4.md) | 150 | `result-track:f586d589d5a66a4de7215cd485ce6d368c9bd60e8784b1595271644205f9a770` |
| 21 | `theorem` | [ContMDiffOn.clm_postcomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffon-clm-postcomp--fae75a87025c073b5e57b243.md) | 156 | `result-track:fae75a87025c073b5e57b243c2aac919d760c3f11ebc643243013e7492c7ee45` |
| 22 | `theorem` | [ContMDiff.clm_postcomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiff-clm-postcomp--5746751ece40131a0d784792.md) | 162 | `result-track:5746751ece40131a0d784792f8f7a77457417b4e23e7dd4b5e23b8c14a5095c2` |
| 23 | `theorem` | [ContMDiffWithinAt.clm_comp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffwithinat-clm-comp--d7e26a819f1d8a0902da53bb.md) | 167 | `result-track:d7e26a819f1d8a0902da53bb0fbac5d015f8eb9ce8c4ba6db208c284c0aa2da7` |
| 24 | `theorem` | [ContMDiffAt.clm_comp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffat-clm-comp--ae5862154a0d4a622a196e34.md) | 174 | `result-track:ae5862154a0d4a622a196e3413ea3d59d5b009910366afad17734abd216ec852` |
| 25 | `theorem` | [ContMDiffOn.clm_comp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffon-clm-comp--40cdcb8a6fe504f1cb16d561.md) | 179 | `result-track:40cdcb8a6fe504f1cb16d5615829ef7d7c786dab3b9fa94f9536854caa8e3579` |
| 26 | `theorem` | [ContMDiff.clm_comp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiff-clm-comp--3c41a988591355d04eeb9111.md) | 184 | `result-track:3c41a988591355d04eeb91115720de3dd3074ca82aee3b2026a2ed88112aead4` |
| 27 | `theorem` | [ContMDiffWithinAt.clm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffwithinat-clm-apply--557ee7afbcc6272dcd2e4d31.md) | 190 | `result-track:557ee7afbcc6272dcd2e4d31dff4abda8368cbabc884edde0175781b89a570c6` |
| 28 | `theorem` | [ContMDiffAt.clm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffat-clm-apply--a62a37d3708a29a25b4b76b3.md) | 201 | `result-track:a62a37d3708a29a25b4b76b3fbc9fd9a34311b9bea8d4dcaa1243b489800b206` |
| 29 | `theorem` | [ContMDiffOn.clm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffon-clm-apply--21c2d1a88bd452bbd5ad4497.md) | 206 | `result-track:21c2d1a88bd452bbd5ad4497609746eb31a4ba734f3deb03ed2d0c7a2b1823f3` |
| 30 | `theorem` | [ContMDiff.clm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiff-clm-apply--e4b0df74c90ed878fa65b1e6.md) | 210 | `result-track:e4b0df74c90ed878fa65b1e6d04a2ed1e32629a36911c176cd220f299ee1e58b` |
| 31 | `theorem` | [ContMDiffWithinAt.cle_arrowCongr](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffwithinat-cle-arrowcongr--a5b840a61f63c08b3ec55718.md) | 214 | `result-track:a5b840a61f63c08b3ec557181f9c47269a39b76549640e816d36dc11481b66cf` |
| 32 | `theorem` | [ContMDiffAt.cle_arrowCongr](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffat-cle-arrowcongr--7dbf05c247e969184ac441db.md) | 224 | `result-track:7dbf05c247e969184ac441dbc2a04a35da06814669ef515f12367445c2db8217` |
| 33 | `theorem` | [ContMDiffOn.cle_arrowCongr](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffon-cle-arrowcongr--a282e72dda7fff78e8cc3dcd.md) | 231 | `result-track:a282e72dda7fff78e8cc3dcd99460cc0e5d6d2ea16d2b6af7e0d044fdda06b51` |
| 34 | `theorem` | [ContMDiff.cle_arrowCongr](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiff-cle-arrowcongr--aeb53ced84457e02252defa1.md) | 238 | `result-track:aeb53ced84457e02252defa14d97bcaada1090e04ec9045afdaf34b33fdb28c1` |
| 35 | `theorem` | [ContMDiffWithinAt.clm_prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffwithinat-clm-prodmap--8d9e47531110fb0030a3dedd.md) | 245 | `result-track:8d9e47531110fb0030a3dedd83d751591bf52a7fd35696ddcc05c7267bcb8e1e` |
| 36 | `theorem` | [ContMDiffAt.clm_prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffat-clm-prodmap--fd7c3bc2e89ecd79588e023a.md) | 253 | `result-track:fd7c3bc2e89ecd79588e023a1f23a654884ca143bd23067f88ce72c0bebac637` |
| 37 | `theorem` | [ContMDiffOn.clm_prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffon-clm-prodmap--cef3540b4aab63ef2fdcce55.md) | 258 | `result-track:cef3540b4aab63ef2fdcce554b26528acd1e1de8ed3dfff4da6520eba8a1bd09` |
| 38 | `theorem` | [ContMDiff.clm_prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiff-clm-prodmap--91fd26061601e49b8f677ed5.md) | 263 | `result-track:91fd26061601e49b8f677ed5ac3333aca5049ae129f3c4685c46e0e899dc7ac8` |
| 39 | `theorem` | [contMDiff_smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiff-smul--517975ae9a9605223ff6028e.md) | 273 | `result-track:517975ae9a9605223ff6028e25e829e1926f81d6615e21315ae4595a93019bbf` |
| 40 | `theorem` | [ContMDiffWithinAt.smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffwithinat-smul--a37583d2105fdeaf9a771646.md) | 278 | `result-track:a37583d2105fdeaf9a771646be97e6828a15a9431c6b58c39650d36a3270428e` |
| 41 | `theorem` | [ContMDiffAt.smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffat-smul--5290443e9f030021752b2780.md) | 283 | `result-track:5290443e9f030021752b27804ce61269d25b8512445af6df1c08e9809c14af3c` |
| 42 | `theorem` | [ContMDiffOn.smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiffon-smul--3c13d74ffb51740ab352087e.md) | 287 | `result-track:3c13d74ffb51740ab352087eac7e6f9f676c6988a2c72c50424cf9eb4a790523` |
| 43 | `theorem` | [ContMDiff.smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/declarations/contmdiff-smul--8c83e6dd72a77d9aab1922ac.md) | 291 | `result-track:8c83e6dd72a77d9aab1922acca5b599f7d3b65b31abae1aa7c0121dccccac3f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
