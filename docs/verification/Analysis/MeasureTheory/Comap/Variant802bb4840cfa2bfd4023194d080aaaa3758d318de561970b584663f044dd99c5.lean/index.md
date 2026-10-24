# Verification target: GRWTSK.Analysis.MeasureTheory.Comap.Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0305e9c566226c854db64b906c5a13a8e7673dff",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0305e9c566226c854db64b906c5a13a8e7673dff`.

Source path: `GRWTSK/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.QuasiMeasurePreserving` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comapₗ](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap--22ec1a54db3f6c08dfab3366.md) | 39 | `declaration-track:22ec1a54db3f6c08dfab3366c1005d810a286a7914381a31ed48febe513f7116` |
| 2 | `theorem` | [comapₗ_apply](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-apply--30d44f696950bb492ec9f04f.md) | 47 | `result-track:30d44f696950bb492ec9f04f91395374ca6637ebd9733ff5af6093a1ac87cb07` |
| 3 | `def` | [comap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap--501e12bff8db99ea4681fe6a.md) | 58 | `declaration-track:501e12bff8db99ea4681fe6ab578bdba3527c779da52a4f38cfb651785633f06` |
| 4 | `theorem` | [comap_apply₀](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-apply--fd82570e301a18d26baa1d72.md) | 68 | `result-track:fd82570e301a18d26baa1d7231bc3b72e9c4e5d353c9c8c019aa489c69de9e76` |
| 5 | `lemma` | [comap_undef](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-undef--d97ca2e3fe8aa5a94379dddb.md) | 74 | `result-track:d97ca2e3fe8aa5a94379dddb3012ea8b88a31ebcd5121be9d062fbc82f91128b` |
| 6 | `theorem` | [le_comap_apply](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/le-comap-apply--3636f9ae00f1568f2504b469.md) | 78 | `result-track:3636f9ae00f1568f2504b46934bc120f1657a5efb97efb88a2895bdaf713939b` |
| 7 | `theorem` | [comap_apply](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-apply--472b69123c202b5e7a21a46b.md) | 84 | `result-track:472b69123c202b5e7a21a46bb618b7a4baea8e5c60957a06f9b5a53f3f42f0f4` |
| 8 | `theorem` | [comapₗ_eq_comap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-eq-comap--87a96083ba082bf440aba0ca.md) | 89 | `result-track:87a96083ba082bf440aba0ca38424af07ee367b621ad133e26447284832ba049` |
| 9 | `theorem` | [measure_image_eq_zero_of_comap_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/measure-image-eq-zero-of-comap-eq-zero--6318822210639dd5f5f6422c.md) | 94 | `result-track:6318822210639dd5f5f6422cc77b75e2b68d4f7f3563deb080d63eebd6d82759` |
| 10 | `theorem` | [ae_eq_image_of_ae_eq_comap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/ae-eq-image-of-ae-eq-comap--82a7af34c6c23088dbbcb68d.md) | 99 | `result-track:82a7af34c6c23088dbbcb68ddaa974d20cd4f7bc28eb79e4fd6cb111d542c3be` |
| 11 | `theorem` | [NullMeasurableSet.image](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/nullmeasurableset-image--4e6991f91bbeb90f41f90071.md) | 116 | `result-track:4e6991f91bbeb90f41f900719ebce8cfbbf3c643bef3ac1dcaa99f94afd2df89` |
| 12 | `theorem` | [comap_preimage](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-preimage--103340c46c63945471a9ce5f.md) | 127 | `result-track:103340c46c63945471a9ce5fd457bc7ab9339a10a89dbeef8ec69f1b3e5eaba0` |
| 13 | `lemma` | [comap_zero](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-zero--2c31363ab5e56fe5d6d2f56f.md) | 132 | `result-track:2c31363ab5e56fe5d6d2f56f4d593177978dfa54cff59f5c41e0f38d8d5311d8` |
| 14 | `lemma` | [comap_id](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-id--d4597bb1cd7f97099ecd9f01.md) | 138 | `result-track:d4597bb1cd7f97099ecd9f0133432f1ee46cceccde5a3171bc93612b94531aef` |
| 15 | `lemma` | [comap_comap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-comap--91cba84d4653dd8359d596b7.md) | 144 | `result-track:91cba84d4653dd8359d596b7916e18aff1cf40991d76c5c7fa9a1e770a263934` |
| 16 | `lemma` | [comap_smul](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-smul--e68075f3bea09551ff393aa1.md) | 153 | `result-track:e68075f3bea09551ff393aa125ce67d47e7c75ea79910f443a2fb28b6bfb195a` |
| 17 | `lemma` | [MeasurableEmbedding.comap_add](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/measurableembedding-comap-add--8efffdb48816e6fedd94b73b.md) | 174 | `result-track:8efffdb48816e6fedd94b73b498bf3111c25fccf9951079c2783fc53cbd632b2` |
| 18 | `lemma` | [comap_symm](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/comap-symm--5a408d68bd84e08ebfb94187.md) | 182 | `result-track:5a408d68bd84e08ebfb94187bd07f268db9e7bbeb8cc4c06c70b3167c2b19ac4` |
| 19 | `lemma` | [map_symm](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/map-symm--bda0f9fbdd2855ddb8066fa7.md) | 187 | `result-track:bda0f9fbdd2855ddb8066fa7e540a1d6fec4ef70b608886d2cbc92c1dd5acd0b` |
| 20 | `lemma` | [MeasureTheory.Measure.comap_swap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/declarations/measuretheory-measure-comap-swap--3a4ef722f51e5f3031054688.md) | 192 | `result-track:3a4ef722f51e5f3031054688fe68de0096f1551b142c47262574dd6b8c195cef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
