# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Surgery.Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcd0d66e6ad020f2e0077757e33a8db18d5897b5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcd0d66e6ad020f2e0077757e33a8db18d5897b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.AvalanchePartition` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Terrain.Legality` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Manifest` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SurgeryLayer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/surgerylayer--0f8204d86b4d5a526928a74a.md) | 21 | `declaration-track:0f8204d86b4d5a526928a74a84dbacaaa73ef0a0b3b811b6767f9418270ada50` |
| 2 | `structure` | [GlobalSurgeryLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/globalsurgerylocus--58a30298001223e3509cdf9f.md) | 36 | `declaration-track:58a30298001223e3509cdf9fc9492db43814c5d6124575c4be3e0f9a3341484e` |
| 3 | `structure` | [SurgeryPatch](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/surgerypatch--42561cab29544d1a6e31e7c4.md) | 42 | `declaration-track:42561cab29544d1a6e31e7c450e2512dc938647192c4976e186b0e292711c8c6` |
| 4 | `inductive` | [TerrainSurgeryMode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/terrainsurgerymode--29192daf526de65b7747ea7f.md) | 60 | `declaration-track:29192daf526de65b7747ea7fd57e4ab2f0b996c2219f19c38c070152fc6209df` |
| 5 | `structure` | [TerrainRollback](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/terrainrollback--e32d3edcd7299606f37e5629.md) | 66 | `declaration-track:e32d3edcd7299606f37e56294e908327d1ebaefda1561df1feb9a790b70a66aa` |
| 6 | `structure` | [TerrainSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/terrainsurgery--b310baa5476419f8d23b275f.md) | 72 | `declaration-track:b310baa5476419f8d23b275f8b0d4ce99f887dee4090c22283bc876bf83e61f2` |
| 7 | `theorem` | [changed_vertex_has_global_locus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/changed-vertex-has-global-locus--1d38dd5fca8798f622524d87.md) | 120 | `result-track:1d38dd5fca8798f622524d8734e5b4e6fe182cf73a99ece1e032cd64bf1efd79` |
| 8 | `theorem` | [complement_adjacency_unchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/complement-adjacency-unchanged--cc2affef518ee0d93220ff12.md) | 126 | `result-track:cc2affef518ee0d93220ff12380a10cea04bba91929aa0cf03ea52f4b96933bf` |
| 9 | `theorem` | [rollback_recovers_before](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/rollback-recovers-before--1f2cf4adcfd6a9e3716b6530.md) | 133 | `result-track:1f2cf4adcfd6a9e3716b6530bf97b48208bdfb1a30fb7c38e752eb512d24d04b` |
| 10 | `structure` | [ReversibleTerrainSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/reversibleterrainsurgery--d28ccc246da77f57342cebc1.md) | 143 | `declaration-track:d28ccc246da77f57342cebc143e10aa7fd435d1b52f07ae52cf9146cbd4a2fcc` |
| 11 | `structure` | [SurgeryObstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/surgeryobstruction--460ab20b81a2140bac1a633b.md) | 151 | `declaration-track:460ab20b81a2140bac1a633b6e9f747cdd0920cd10b0331f40b271501fadde6f` |
| 12 | `theorem` | [overlay_ne_rulesetRewrite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/declarations/overlay-ne-rulesetrewrite--4a915a089397ad30514cc933.md) | 160 | `result-track:4a915a089397ad30514cc933c61cb061d1ff08672cfebfc580bca16b62a25aa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
