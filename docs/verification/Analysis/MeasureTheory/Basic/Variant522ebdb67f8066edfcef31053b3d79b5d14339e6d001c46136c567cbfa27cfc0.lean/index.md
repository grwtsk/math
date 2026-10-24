# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7db7bd917183abca11446d38876f5f43449f0a0",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7db7bd917183abca11446d38876f5f43449f0a0`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean.json)

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
| 1 | `def` | [map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map--d0a6b763aa6e6ede80bfb42d.md) | 65 | `declaration-track:d0a6b763aa6e6ede80bfb42d3dc42dc365080d00d36af6052d5e5e64a9006a1c` |
| 2 | `lemma` | [map_def](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map-def--5ad1d8704678bf4fa1236c5f.md) | 71 | `result-track:5ad1d8704678bf4fa1236c5f7da339abc66d39eb86476b19290ce7b64ba648b9` |
| 3 | `theorem` | [map_id](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map-id--12700f2ca70fccfd1fb86ec1.md) | 74 | `result-track:12700f2ca70fccfd1fb86ec1702801cc172d76e3d879872e9246360eea94a47e` |
| 4 | `theorem` | [map_comp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map-comp--8d08a734efacf557213f4c00.md) | 78 | `result-track:8d08a734efacf557213f4c002c6ffaca808026dab2cdcccd8869674f68588993` |
| 5 | `def` | [comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap--b28c838e0c2e1b455531a141.md) | 84 | `declaration-track:b28c838e0c2e1b455531a1410d33d67196cb2911923b2edc1833983d12fbd878` |
| 6 | `lemma` | [measurableSet_comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurableset-comap--1227060af6c9bd00d372b256.md) | 92 | `result-track:1227060af6c9bd00d372b256773e4605d3934e681201739b001e4071cc50279d` |
| 7 | `theorem` | [comap_eq_generateFrom](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-eq-generatefrom--18c577d2e03963a83c80c4b7.md) | 95 | `result-track:18c577d2e03963a83c80c4b70ac1b03d906f975d26da241680a3b5a60b2efa9e` |
| 8 | `theorem` | [comap_id](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-id--70863a9c84f224b6220557df.md) | 100 | `result-track:70863a9c84f224b6220557dfc9623ba9a39e340521662f5f45201111362caa58` |
| 9 | `theorem` | [comap_comp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-comp--ce0603132d22813b062d081a.md) | 104 | `result-track:ce0603132d22813b062d081aeaf177b853819b015b356ffc5361418802be4afa` |
| 10 | `theorem` | [comap_le_iff_le_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-le-iff-le-map--5e041f6fc33bfc950e98e600.md) | 108 | `result-track:5e041f6fc33bfc950e98e6000907aaff8dc29b84d6acf97865c7bca3dab0b791` |
| 11 | `theorem` | [gc_comap_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/gc-comap-map--67b8b8aae358d183e76a3118.md) | 111 | `result-track:67b8b8aae358d183e76a3118566a5e1832ca437a79c36bc452930178fdd46023` |
| 12 | `theorem` | [map_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map-mono--132a9b17426aa4bd917af09b.md) | 115 | `result-track:132a9b17426aa4bd917af09b231d863703dc815a212a9169e098b17ee0a9ee59` |
| 13 | `theorem` | [monotone_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/monotone-map--67e870507f4445dbc3631ff2.md) | 119 | `result-track:67e870507f4445dbc3631ff20c2519950456514ea6ecad50c4ca055e8d70a722` |
| 14 | `theorem` | [comap_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-mono--e2959fa479c115e0a2feb1f2.md) | 121 | `result-track:e2959fa479c115e0a2feb1f23e7e4a5cf00c1fe5f6df51fb3096b779b5380d0c` |
| 15 | `theorem` | [monotone_comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/monotone-comap--ecbb1ac51552bbebc11d3502.md) | 125 | `result-track:ecbb1ac51552bbebc11d35025a955aef36cde565109850f2255908c90a8bcde6` |
| 16 | `theorem` | [comap_bot](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-bot--c31b6f0a10a0238bfac87394.md) | 128 | `result-track:c31b6f0a10a0238bfac87394a9721377276645ba8a5f8addd4346b38cea0e159` |
| 17 | `theorem` | [comap_sup](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-sup--64dade9d34008a6efaa124be.md) | 132 | `result-track:64dade9d34008a6efaa124be0a03693ce3ef5efb7abd0a37b359f2b0e4a8ca6e` |
| 18 | `theorem` | [comap_iSup](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-isup--f2f69ee0ae6cb2fe0a5dc224.md) | 136 | `result-track:f2f69ee0ae6cb2fe0a5dc22430d27c787156d173dcecc28d4d8576790bebc5a4` |
| 19 | `theorem` | [map_top](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map-top--64805cd47ec09d8d0b1fa0b0.md) | 140 | `result-track:64805cd47ec09d8d0b1fa0b0b070e3b8e84b49678c336dae3c758a1b68367065` |
| 20 | `theorem` | [map_inf](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map-inf--971598b83f398ace13d16f6a.md) | 144 | `result-track:971598b83f398ace13d16f6a9ea1c247b6ba6c7f0665f128e135767987e74310` |
| 21 | `theorem` | [map_iInf](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map-iinf--360aca69293e21015832eb16.md) | 148 | `result-track:360aca69293e21015832eb16e3c4b6c7534aea5ba774081cbf5b2642c05b1840` |
| 22 | `theorem` | [comap_map_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-map-le--f7631c686eac1837d916fd64.md) | 151 | `result-track:f7631c686eac1837d916fd644344c9eeb819e0473bd1c6f344e0fe3dd96b0535` |
| 23 | `theorem` | [le_map_comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/le-map-comap--2851cec1e7c9ea6d43660a30.md) | 154 | `result-track:2851cec1e7c9ea6d43660a304eed0aca60e05e97ff66a2c75e0ef964ea6aa7c6` |
| 24 | `theorem` | [map_comap_eq_of_surjective](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map-comap-eq-of-surjective--cf4da283c673be2e9432c9df.md) | 157 | `result-track:cf4da283c673be2e9432c9df0e6f0d18f6f478de72b342f20a94349e7a131660` |
| 25 | `theorem` | [map_const](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/map-const--e8e0dd529c6521ad567d1fec.md) | 164 | `result-track:e8e0dd529c6521ad567d1fec3482feb82b011ec22f09af9c63c09c664310fcfe` |
| 26 | `theorem` | [comap_const](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-const--9aa52627eb62bd7e2910cbd7.md) | 167 | `result-track:9aa52627eb62bd7e2910cbd7ac2a1b74e4c6caa32627710d6e600e8d5202009f` |
| 27 | `theorem` | [comap_generateFrom](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-generatefrom--2b18ce7d3855c7060fa47e5c.md) | 170 | `result-track:2b18ce7d3855c7060fa47e5cc4390f5e1adfd06d5f807655011e8ed020865c83` |
| 28 | `theorem` | [measurable_iff_le_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-iff-le-map--736dca05a4b778b8c50a8c6a.md) | 183 | `result-track:736dca05a4b778b8c50a8c6a3bd62dc7507e25277eb747295e829909da28170e` |
| 29 | `theorem` | [measurable_iff_comap_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-iff-comap-le--10b49178685277a2a1db2b20.md) | 189 | `result-track:10b49178685277a2a1db2b209f6c20813904ebccce61887d70138baf903b847e` |
| 30 | `lemma` | [MeasurableSpace.comap_le_comap_of_eq_comp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurablespace-comap-le-comap-of-eq-comp--5669c1ec8046bba5a0ef3f82.md) | 197 | `result-track:5669c1ec8046bba5a0ef3f8253d7cf81d93232cbc736ac40f7efccd06b6df76b` |
| 31 | `theorem` | [comap_measurable](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/comap-measurable--40467952ab5a1a5d620aab0d.md) | 203 | `result-track:40467952ab5a1a5d620aab0db03b9dd634a192b4c80fbbd7f0512b32cd5464a8` |
| 32 | `lemma` | [measurable_comap_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-comap-iff--0421e5f32f3c377bc6ca45ac.md) | 206 | `result-track:0421e5f32f3c377bc6ca45ac6b082e6f78dd18b3646226b6f0cc83f9e7c3688a` |
| 33 | `lemma` | [measurable_comap_iff_right](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-comap-iff-right--d44fe813abb8a6ad6ee9b4ef.md) | 210 | `result-track:d44fe813abb8a6ad6ee9b4ef780ef744dbfb7a930fdba1e15a14d313c312e1df` |
| 34 | `theorem` | [Measurable.mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-mono--946f7e5edcf4370438d59ec6.md) | 214 | `result-track:946f7e5edcf4370438d59ec6011aebd9c10289a811a6834fa84390d1129a07f8` |
| 35 | `lemma` | [Measurable.iSup'](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-isup--f56f29aa600ec9334b36b36f.md) | 218 | `result-track:f56f29aa600ec9334b36b36f7ec6411b6c64e9d81cbeb41921414f9d1a36cac9` |
| 36 | `lemma` | [Measurable.sup_of_left](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-sup-of-left--f2babf253b5f10fff219a7e6.md) | 223 | `result-track:f2babf253b5f10fff219a7e6e98d21e85780aea5abcb3d9c81e3f1a2363b93fd` |
| 37 | `lemma` | [Measurable.sup_of_right](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-sup-of-right--e3a2f487a5a6ab8431441a1d.md) | 228 | `result-track:e3a2f487a5a6ab8431441a1d11613a0f4e7a285ddb88237e433704441651460e` |
| 38 | `theorem` | [measurable_id''](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-id--b59c6263a54df00ca5814dc8.md) | 233 | `result-track:b59c6263a54df00ca5814dc8816c4c479bdc938d8fdc15c7d4f359f8a746be6b` |
| 39 | `theorem` | [measurable_from_top](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-from-top--1ee2070c3ccf0bdd355c9f4e.md) | 236 | `result-track:1ee2070c3ccf0bdd355c9f4efdb66d12fd1b6dfe395b903020e21afbca254eae` |
| 40 | `theorem` | [measurable_generateFrom](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-generatefrom--3b1f081d44613ce14b20bae9.md) | 238 | `result-track:3b1f081d44613ce14b20bae9d3c02502fbd8f698aee5e8af51e79ca3a32f7da0` |
| 41 | `theorem` | [measurableSet_generateFrom_of_mem_supClosure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurableset-generatefrom-of-mem-supclosure--21ebe3c00360a3910c6b0944.md) | 242 | `result-track:21ebe3c00360a3910c6b094461c45b7905403cdf3ef15ea7fdc1d4bacc9b0efd` |
| 42 | `theorem` | [Subsingleton.measurable](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/subsingleton-measurable--0fa5049a0a0d9e8eff4e2720.md) | 256 | `result-track:0fa5049a0a0d9e8eff4e2720680bc635366d2001a5a5efa5f18cef62fa54fe20` |
| 43 | `theorem` | [measurable_of_subsingleton_codomain](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-of-subsingleton-codomain--a7db7b88839329f936d25a36.md) | 260 | `result-track:a7db7b88839329f936d25a36e8c918cf452061e5c58c01fa8f595079d60baf2b` |
| 44 | `theorem` | [measurable_one](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-one--04d1f284b2a0d82560e57838.md) | 264 | `result-track:04d1f284b2a0d82560e57838a7ffc1164f5153e318a5e014d2d67a242835b65e` |
| 45 | `theorem` | [measurable_of_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-of-empty--424907fdee26f1449406a87d.md) | 267 | `result-track:424907fdee26f1449406a87d065a68c3648a7cb99ced5bc0a95d42e304237baf` |
| 46 | `theorem` | [measurable_of_empty_codomain](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-of-empty-codomain--8a1fb1f3b448702312881708.md) | 270 | `result-track:8a1fb1f3b448702312881708a4a466d0be3f1b5ccba3426062199dcdc898fe85` |
| 47 | `theorem` | [measurable_const'](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-const--5daa2cd2ad055606c3881f0c.md) | 275 | `result-track:5daa2cd2ad055606c3881f0cd341a2ec5507832493a43f488a70852670d17a69` |
| 48 | `theorem` | [measurable_natCast](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-natcast--7e1b571a6edf70463fa758da.md) | 282 | `result-track:7e1b571a6edf70463fa758da843edbed98fd4597ee675190df7d1bda2f8c0607` |
| 49 | `theorem` | [measurable_intCast](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-intcast--0e283a8b1181793721c33814.md) | 286 | `result-track:0e283a8b1181793721c33814a69ba4e1daa1ba8b527ab515515dd1fcb221cd87` |
| 50 | `theorem` | [measurable_of_countable](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-of-countable--6c78da6bd6b52ecf88aea3ab.md) | 289 | `result-track:6c78da6bd6b52ecf88aea3abe5eb1020af70ae15f5da3ba96e316dd065c5c93e` |
| 51 | `theorem` | [measurable_of_finite](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-of-finite--7fb204b7f1fb579be1ae40f9.md) | 293 | `result-track:7fb204b7f1fb579be1ae40f9550fcda0132c22da1a47a3163a0585861ccc74c4` |
| 52 | `theorem` | [Measurable.iterate](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-iterate--f1fb6d9c189618c665bb7c2c.md) | 301 | `result-track:f1fb6d9c189618c665bb7c2cf41d6270b693e57adead6e71482aeddd0d92e2ef` |
| 53 | `theorem` | [measurableSet_preimage](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurableset-preimage--ed67e3afa6f0694cb9780b85.md) | 308 | `result-track:ed67e3afa6f0694cb9780b85a5a400d7bd0a57ca54f47d803b13ec1bdc6d3dc0` |
| 54 | `theorem` | [MeasurableSet.preimage](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurableset-preimage--fc0994a7979ec1140cd8a187.md) | 312 | `result-track:fc0994a7979ec1140cd8a1870224c0ee7fc9bc86fdda16775b835cd9646920bf` |
| 55 | `theorem` | [Measurable.piecewise](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-piecewise--6c8d9c5f48d55aa6f060935e.md) | 317 | `result-track:6c8d9c5f48d55aa6f060935e7f1f6f9a3bcabeea48018bcc5f6c4fca0f0a6a88` |
| 56 | `theorem` | [Measurable.ite](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-ite--50f03bf77140638f33301d6f.md) | 325 | `result-track:50f03bf77140638f33301d6f1a6acf3044f8c8c0df475ceee9cc864a69e1ef29` |
| 57 | `theorem` | [Measurable.indicator](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-indicator--13e2950b77353465ccc50a1e.md) | 330 | `result-track:13e2950b77353465ccc50a1ee9d3d2597935c72d82b4caffa3b0395c03aa6729` |
| 58 | `lemma` | [measurable_indicator_const_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-indicator-const-iff--ff30823531e99ac18f54e8d6.md) | 336 | `result-track:ff30823531e99ac18f54e8d66e6313899007b31848da33a20e029fb332758a28` |
| 59 | `theorem` | [measurableSet_mulSupport](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurableset-mulsupport--ba16c8c913a0a88aed911ac3.md) | 345 | `result-track:ba16c8c913a0a88aed911ac30f85581f52bbd9bc3001cd5a683f82d1f2b9f13f` |
| 60 | `theorem` | [Measurable.measurable_of_countable_ne](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/measurable-measurable-of-countable-ne--85fddec1223fe37e79afdb6e.md) | 351 | `result-track:85fddec1223fe37e79afdb6ec8d28cc4fc4ddddd800cf839cbfb893cecb7dea4` |
| 61 | `def` | [IsCountablySpanning](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/iscountablyspanning--2a934e86d72bd65f030724e8.md) | 370 | `declaration-track:2a934e86d72bd65f030724e8cec68654b828197e3f27703c5ea7073f5323c396` |
| 62 | `theorem` | [isCountablySpanning_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/iscountablyspanning-measurableset--71185a2073dc433bda11e8ce.md) | 373 | `result-track:71185a2073dc433bda11e8ce2621a796ead2c8690424e811a24a4c55deece7e3` |
| 63 | `lemma` | [IsCountablySpanning.prod](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/declarations/iscountablyspanning-prod--ac6b11ab82bed93b43f6c7da.md) | 378 | `result-track:ac6b11ab82bed93b43f6c7dabab45edef50c6a16814809e5c601ae5e854a202b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
