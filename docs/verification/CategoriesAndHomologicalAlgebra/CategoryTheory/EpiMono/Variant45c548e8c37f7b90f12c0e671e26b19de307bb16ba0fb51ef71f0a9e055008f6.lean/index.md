# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08ef1c9bd028d729607ae02aeb05a6e99d310aae",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08ef1c9bd028d729607ae02aeb05a6e99d310aae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unop_mono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/unop-mono-of-epi--00f1e0cd3f48cf13326f0bde.md) | 31 | `declaration-track:00f1e0cd3f48cf13326f0bde1de8466b36dac952ea62308821f3bd1f129a76e2` |
| 2 | `instance` | [unop_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/unop-epi-of-mono--a33f8eef6e9fff21162e4eff.md) | 34 | `declaration-track:a33f8eef6e9fff21162e4eff0f235e9407c9370f03f880ae8d3513978b574ce2` |
| 3 | `instance` | [op_mono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/op-mono-of-epi--0b05302fffe34c3d0c1d13dc.md) | 37 | `declaration-track:0b05302fffe34c3d0c1d13dccfa3aaa35beb0760f8e8646397e155f8c5c4c5bf` |
| 4 | `instance` | [op_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/op-epi-of-mono--9e97c96aad3d0db7ea575fcb.md) | 40 | `declaration-track:9e97c96aad3d0db7ea575fcb632fc9819ddaec024580aaf9cc46b0ca989d6ee4` |
| 5 | `structure` | [SplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitmono--d2fa6adb0f1355eb8036d1b2.md) | 49 | `declaration-track:d2fa6adb0f1355eb8036d1b287ace7a8c9d82ffa87a02a2d401f0ad575bccf46` |
| 6 | `class` | [IsSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/issplitmono--02a377d4137c31573ed379ea.md) | 58 | `declaration-track:02a377d4137c31573ed379ea53f34e068961eb19b9886c6f508c6180961912fe` |
| 7 | `def` | [SplitMono.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitmono-comp--03a114c1d39ffe146c52a4b4.md) | 64 | `declaration-track:03a114c1d39ffe146c52a4b4f69de2d1a4ceacebd0e617c622a97fb185611f49` |
| 8 | `theorem` | [IsSplitMono.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/issplitmono-mk--84b3bf664063b656d8b88939.md) | 69 | `result-track:84b3bf664063b656d8b88939fcacb87c3047c11fc230e10c3747d56be8b47985` |
| 9 | `structure` | [SplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitepi--9bedc5b9b3fdf9ba2fafe947.md) | 79 | `declaration-track:9bedc5b9b3fdf9ba2fafe9476c38dacb6279970b4d1d9172f4fdd9d3fd6297b8` |
| 10 | `class` | [IsSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/issplitepi--f78004cffb1088ca60c15c1a.md) | 88 | `declaration-track:f78004cffb1088ca60c15c1a5891aded0fa92543dff01325280abcb0ae7be1e1` |
| 11 | `def` | [SplitEpi.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitepi-comp--2c4a5f7cd2a9908ce891304b.md) | 94 | `declaration-track:2c4a5f7cd2a9908ce891304b8e0a0da7e97553d30f8ebb7748562a3fa16f6d45` |
| 12 | `theorem` | [IsSplitEpi.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/issplitepi-mk--722f5a6411f7e237e002cc98.md) | 99 | `result-track:722f5a6411f7e237e002cc9803d6eff50da9583fba29fd8bbe58605fa21012e7` |
| 13 | `def` | [retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/retraction--e88eb96b9605689443777e8c.md) | 103 | `declaration-track:e88eb96b9605689443777e8c5e49f17c6a3bc448469b3511916f38edbc7d57ed` |
| 14 | `theorem` | [IsSplitMono.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/issplitmono-id--f2abaff0c770c61cf743a3c1.md) | 107 | `result-track:f2abaff0c770c61cf743a3c1bad9a327d722260daec9d852cb78369d70a7a86c` |
| 15 | `def` | [SplitMono.splitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitmono-splitepi--6131cd89eec06dc5ea1173e7.md) | 111 | `declaration-track:6131cd89eec06dc5ea1173e75ddf3366a5da6c608fb033c0fe6dbc3a60eb791f` |
| 16 | `instance` | [retraction_isSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/retraction-issplitepi--cb8d1fc145c5f88ffe18a7ef.md) | 115 | `declaration-track:cb8d1fc145c5f88ffe18a7ef7d6f84ec0c91f0c7cb2da836f4a0ea630d696175` |
| 17 | `theorem` | [isIso_of_epi_of_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/isiso-of-epi-of-issplitmono--364043242ddaaf3dd656353c.md) | 120 | `result-track:364043242ddaaf3dd656353cfb7b37d7a26374c44f1887913e8924517df68543` |
| 18 | `def` | [section_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/section--a10340a4b722b2af3b87e4d0.md) | 126 | `declaration-track:a10340a4b722b2af3b87e4d04e564d8dc5e9c97a9143ebe4ff150054ae84dc3e` |
| 19 | `theorem` | [IsSplitEpi.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/issplitepi-id--fdbfcbccdb9594b34c1e6e8c.md) | 130 | `result-track:fdbfcbccdb9594b34c1e6e8cbd4b91acec192bf6da888558cda56dfe64828cb5` |
| 20 | `def` | [SplitEpi.splitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitepi-splitmono--2cf67eed8c5a1dee68d1db89.md) | 134 | `declaration-track:2cf67eed8c5a1dee68d1db8979009e2272ed4aac47ec0eab002df4d2dd71f483` |
| 21 | `instance` | [section_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/section-issplitmono--cc6cec3dfcbe509aa2a6571d.md) | 138 | `declaration-track:cc6cec3dfcbe509aa2a6571dbef80e2993c6ba96e5c3ba2530ce33abaf4d4b38` |
| 22 | `theorem` | [isIso_of_mono_of_isSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/isiso-of-mono-of-issplitepi--058fb02ef2101fcd0ed6b934.md) | 142 | `result-track:058fb02ef2101fcd0ed6b9348b847508144e9f3566e2ecc8baf5f2fe78114957` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/instance--1620bacb0d8fa8cc8bfcd8b6.md) | 146 | `declaration-track:1620bacb0d8fa8cc8bfcd8b690ad9ad777f4b38699914a88c49ee175bf0f537f` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/instance--05d8bff896b483990e983bef.md) | 150 | `declaration-track:05d8bff896b483990e983bef3da0216cfbd4b1e13c460a0e1662caf2486e5b62` |
| 25 | `theorem` | [SplitMono.mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitmono-mono--b225a235e758162bd7edfd1c.md) | 153 | `result-track:b225a235e758162bd7edfd1c8e43cfe3a6d76d8109a7be1fccc4b3c75ae62f41` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/instance--ab10a2aba16e6f1c50ac871c.md) | 157 | `declaration-track:ab10a2aba16e6f1c50ac871cacf6f45eb3c1aa64e300ec50fb4218e0833046c6` |
| 27 | `theorem` | [SplitEpi.epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitepi-epi--e1a4a1d95f40b7990a3c294d.md) | 160 | `result-track:e1a4a1d95f40b7990a3c294de03e79e5eb4083d35aec97f28702546cc9266fe1` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/instance--8928541e8f3abe34bed9f03e.md) | 164 | `declaration-track:8928541e8f3abe34bed9f03e9f586b3c18c3a3e2cc740cea0270ea21bd0dce66` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/instance--9a1e760e8a9413d3d8e1b0a9.md) | 167 | `declaration-track:9a1e760e8a9413d3d8e1b0a9f4584e0f1ea89df41ca328c075ede002887471ce` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/instance--2aa5128e8ef80976ad8fbed4.md) | 170 | `declaration-track:2aa5128e8ef80976ad8fbed41c3dc91bf4df1e8f072f9ea76104c5c9c2df6146` |
| 31 | `theorem` | [IsIso.of_mono_retraction'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/isiso-of-mono-retraction--1aa3bd22550d4faa81779d52.md) | 174 | `result-track:1aa3bd22550d4faa81779d523161645a6eae19f029d3eb9c11e8c0342ba0713c` |
| 32 | `theorem` | [IsIso.of_mono_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/isiso-of-mono-retraction--e24bb55eef511c4d10a9c672.md) | 179 | `result-track:e24bb55eef511c4d10a9c6722ff0e5993b65e39f5c9263c0d4a5518827f84797` |
| 33 | `theorem` | [IsIso.of_epi_section'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/isiso-of-epi-section--ee6ce056575bbdbd885d26d9.md) | 184 | `result-track:ee6ce056575bbdbd885d26d9af24dab8eddc3437539ac1f89c235909bada6a45` |
| 34 | `theorem` | [IsIso.of_epi_section](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/isiso-of-epi-section--3ddacfc2d8d50dbcf75a323f.md) | 189 | `result-track:3ddacfc2d8d50dbcf75a323fdea793b82cbd01f8846b6f4d3edb993d72d07418` |
| 35 | `def` | [Groupoid.ofTruncSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/groupoid-oftruncsplitmono--e86fcd22858482c06a6f269f.md) | 195 | `declaration-track:e86fcd22858482c06a6f269f60cac5a3013d6133d93b76ed0cb2038cf1e2f967` |
| 36 | `class` | [SplitMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitmonocategory--087af88e6d9634db4adbd0fb.md) | 208 | `declaration-track:087af88e6d9634db4adbd0fbfd16b973c0a0f7c9aa08f6ceed9f0a666822a26e` |
| 37 | `class` | [SplitEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitepicategory--1bb42bc502c0f4f3644dd97c.md) | 213 | `declaration-track:1bb42bc502c0f4f3644dd97c5ed427ddfc9b1ba7c35e7c08c1f223886f9c1128` |
| 38 | `theorem` | [isSplitMono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/issplitmono-of-mono--69c82cbf73943609a4f35357.md) | 221 | `result-track:69c82cbf73943609a4f35357418842931176838ca94f5998250657258c9f030a` |
| 39 | `theorem` | [isSplitEpi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/issplitepi-of-epi--5126ee2e31b11854b30e1028.md) | 226 | `result-track:5126ee2e31b11854b30e1028cdc84290fe666e2ce679114e4f6e3dffdaa33dbc` |
| 40 | `def` | [SplitMono.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitmono-map--8ad3ab4c5e70cc51d2ba7aa4.md) | 235 | `declaration-track:8ad3ab4c5e70cc51d2ba7aa4b9c3da8b25129a6392e410796dde1deb2b089a17` |
| 41 | `def` | [SplitEpi.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/splitepi-map--061755d8150f97222f389f32.md) | 241 | `declaration-track:061755d8150f97222f389f32e73e25b7be4338470e487b773a71efd1138d343b` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/instance--d6b63802c0e6d31555df7223.md) | 245 | `declaration-track:d6b63802c0e6d31555df72237815a0a147d74d1c3c1097dd29b488bd12e40836` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/declarations/instance--f55a40495f0375dfe73599e8.md) | 248 | `declaration-track:f55a40495f0375dfe73599e8b502693de52b4b895c8f47f97fdfe213c1229093` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
