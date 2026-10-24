# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d4e2fb530a305c81f52ae998fbfa2fcc7571ea6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d4e2fb530a305c81f52ae998fbfa2fcc7571ea6`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Filter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap--4cad6cd526bbd53516e6d201.md) | 84 | `declaration-track:4cad6cd526bbd53516e6d201f810b860aa893302c535fef8fc1349a7f4366acd` |
| 2 | `lemma` | [IsProperMap.continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-continuous--fed029ee1a7757df3e8d269c.md) | 96 | `result-track:fed029ee1a7757df3e8d269cb0291b1a65558dfb291d75a12e9577147b3ea4bb` |
| 3 | `lemma` | [IsProperMap.isClosedMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-isclosedmap--52cb6e153e93c2235b8cf708.md) | 99 | `result-track:52cb6e153e93c2235b8cf708ec1acef023ababd7457c85f95519195f501fe3e2` |
| 4 | `lemma` | [isProperMap_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-iff-ultrafilter--1eb6b8e597fc8c5a36311cad.md) | 104 | `result-track:1eb6b8e597fc8c5a36311cad77a8fe39ee353c26bb15c6882a85d878014484f9` |
| 5 | `lemma` | [isProperMap_iff_ultrafilter_of_t2](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-iff-ultrafilter-of-t2--020dbdf9fc19202d23eec396.md) | 119 | `result-track:020dbdf9fc19202d23eec39622d5962a5260316940ff84b92b89206c09d685a9` |
| 6 | `lemma` | [IsProperMap.ultrafilter_le_nhds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-ultrafilter-le-nhds-of-tendsto--f6874578f9ef02811c93c657.md) | 127 | `result-track:f6874578f9ef02811c93c657647e7828fb8afc8f1b78117d49bb7a3dc936354a` |
| 7 | `lemma` | [IsProperMap.comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-comp--a945d3a62321dd18553390f7.md) | 132 | `result-track:a945d3a62321dd18553390f7291ec7cc88847932432e8222d32d454a0d1e3cfa` |
| 8 | `lemma` | [isProperMap_of_comp_of_surj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-of-comp-of-surj--57ff518a917ff6c6e970359d.md) | 143 | `result-track:57ff518a917ff6c6e970359dc5a96273c1d41a56aea6964a3c432a13f3245249` |
| 9 | `lemma` | [isProperMap_of_comp_of_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-of-comp-of-inj--c210413d6dca73458ed87971.md) | 153 | `result-track:c210413d6dca73458ed87971174e4ac3b60730040b56ce2f53ffaa7a2ca2eb34` |
| 10 | `lemma` | [isProperMap_of_comp_of_t2](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-of-comp-of-t2--0de5fb6af3deba9ffdba5276.md) | 161 | `result-track:0de5fb6af3deba9ffdba5276ef33863ecbdb943660f6586d7eaf21f52a8b2d5e` |
| 11 | `lemma` | [IsProperMap.prodMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-prodmap--1a61ad814779fe277fae9143.md) | 170 | `result-track:1a61ad814779fe277fae9143387f043900e6337f72ee966e2159fa9163ed7dcc` |
| 12 | `lemma` | [IsProperMap.pi_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-pi-map--c11371125604f82086865836.md) | 194 | `result-track:c11371125604f82086865836209c21d43277d0e6f941b54d788b15592e8ab687` |
| 13 | `lemma` | [IsProperMap.isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-iscompact-preimage--a1e1fa9abbcd50d62c6b7325.md) | 218 | `result-track:a1e1fa9abbcd50d62c6b7325d7035701f29b1c0162afe91605a1110ad9ed307f` |
| 14 | `theorem` | [isProperMap_iff_isClosedMap_and_compact_fibers](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-iff-isclosedmap-and-compact-fibers--44e88906d495c855eed3ce4f.md) | 233 | `result-track:44e88906d495c855eed3ce4fda2d5f871b4eb3bf8db4bb669ecc043634e83ada` |
| 15 | `lemma` | [isProperMap_iff_isClosedMap_of_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-iff-isclosedmap-of-inj--aa79e47ffb87a876516c1486.md) | 260 | `result-track:aa79e47ffb87a876516c14869549fb5c523130d8cff8347e64c9c16b91a91df9` |
| 16 | `lemma` | [isProperMap_of_isClosedMap_of_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-of-isclosedmap-of-inj--148b1571d8e681a1206000c2.md) | 267 | `result-track:148b1571d8e681a1206000c2f4e33219382b8bf4d310bbca68a86b00184691ba` |
| 17 | `lemma` | [Homeomorph.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/homeomorph-ispropermap--671268d6f1fe5c1e0eb48c91.md) | 272 | `result-track:671268d6f1fe5c1e0eb48c91704f5769c0ad81004f030f40fbacef9b30500530` |
| 18 | `lemma` | [IsHomeomorph.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ishomeomorph-ispropermap--afde1b03add96e5a0c928ec7.md) | 275 | `result-track:afde1b03add96e5a0c928ec7692f8766e101c94d75302a160cb1274b73de98c1` |
| 19 | `lemma` | [isProperMap_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-id--f3523868be013c8b30a52b19.md) | 279 | `result-track:f3523868be013c8b30a52b194f510a25450ae4f2b79203f1169c1ea997a1570b` |
| 20 | `lemma` | [Topology.IsClosedEmbedding.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/topology-isclosedembedding-ispropermap--1949fa244a65db91f08a9832.md) | 282 | `result-track:1949fa244a65db91f08a9832cf3bd48e2d0c9c9091e7490f9ef83e24d6839ecc` |
| 21 | `lemma` | [IsClosed.isProperMap_subtypeVal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/isclosed-ispropermap-subtypeval--8d808dd9c35918e645738edf.md) | 286 | `result-track:8d808dd9c35918e645738edfcfb275ef433f346d8c6ada3146219a34de0c98a5` |
| 22 | `lemma` | [IsProperMap.restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-restrict--b04c7302b5b337d71e22e3ee.md) | 290 | `result-track:b04c7302b5b337d71e22e3eec51628b5908a655ff8f9cf0b36a85d51fbe787c8` |
| 23 | `lemma` | [IsProperMap.isClosed_range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-isclosed-range--c9b52c8a75d03150684b98d4.md) | 294 | `result-track:c9b52c8a75d03150684b98d4a7de897581714663ae4944c6aa18c68c938ea5ff` |
| 24 | `lemma` | [isProperMap_iff_isClosedMap_and_tendsto_cofinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-iff-isclosedmap-and-tendsto-cofinite--122b81ac96e5f4232efc77c8.md) | 299 | `result-track:122b81ac96e5f4232efc77c87d03c7b12335554cebac1111bc64adeff1fae1b2` |
| 25 | `theorem` | [Continuous.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/continuous-ispropermap--d2b2bf364ac94b2486f9ad3e.md) | 310 | `result-track:d2b2bf364ac94b2486f9ad3ecf4cd9e9d6beb1e882da9c78ad54f0bd02451b8a` |
| 26 | `theorem` | [IsProperMap.universally_closed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-universally-closed--eb6a31fe5e683eac20e99cd9.md) | 317 | `result-track:eb6a31fe5e683eac20e99cd995c275c557f2f92dc1591433e63699b57b2c311d` |
| 27 | `theorem` | [isProperMap_iff_isClosedMap_filter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant102f7925a99ab4f997086163684af29790119f4d4465e3145033f0ab909695d8.lean/declarations/ispropermap-iff-isclosedmap-filter--3972a7c4bfbc4a1ab5189b34.md) | 326 | `result-track:3972a7c4bfbc4a1ab5189b34305246816f80895767eccc61f1b94e549d72c6ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
