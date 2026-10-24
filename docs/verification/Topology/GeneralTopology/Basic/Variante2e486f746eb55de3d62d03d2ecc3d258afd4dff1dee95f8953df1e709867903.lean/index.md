# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e6b2056157bf93f9f2185db974c666d91fc8063",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e6b2056157bf93f9f2185db974c666d91fc8063`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Content` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.CompactlySupported` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PartitionOfUnity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CompactlySupportedContinuousMap.monotone_of_nnreal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/compactlysupportedcontinuousmap-monotone-of-nnreal--4a708da1732a6dcf3dbb77da.md) | 49 | `result-track:4a708da1732a6dcf3dbb77da4d0e5876126e4e0384f7beeecdf8af152e26145d` |
| 2 | `lemma` | [CompactlySupportedContinuousMap.monotone_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/compactlysupportedcontinuousmap-monotone-of-nonneg--0a8ac5a2ef37401d7e26f41b.md) | 56 | `result-track:0a8ac5a2ef37401d7e26f41b0fe7e48b164374b3dded017d582529fd5dbc1572` |
| 3 | `def` | [rieszContentAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/rieszcontentaux--f660759961d562afbae23a3b.md) | 74 | `declaration-track:f660759961d562afbae23a3ba9e691686de453c37bc68d7ebe08da501ef2e055` |
| 4 | `theorem` | [rieszContentAux_image_nonempty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/rieszcontentaux-image-nonempty--cc098d61c2f94eca5f1bedd9.md) | 83 | `result-track:cc098d61c2f94eca5f1bedd9b79348f8d767649680384f3335b1b00a54bb8381` |
| 5 | `theorem` | [rieszContentAux_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/rieszcontentaux-mono--00be2a473100332344f85138.md) | 106 | `result-track:00be2a473100332344f85138640c340b973bfaee189503b2f9305c55cfb378ad` |
| 6 | `theorem` | [rieszContentAux_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/rieszcontentaux-le--17067f1570ab3a1b495fd500.md) | 117 | `result-track:17067f1570ab3a1b495fd5009526afe824c577597af134fd652b386fc8d78159` |
| 7 | `theorem` | [exists_lt_rieszContentAux_add_pos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/exists-lt-rieszcontentaux-add-pos--409639bd3e7a0ab13b678efa.md) | 126 | `result-track:409639bd3e7a0ab13b678efadf6f05df2bef84982475d41a47a8e88cb3ed2d1f` |
| 8 | `theorem` | [rieszContentAux_sup_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/rieszcontentaux-sup-le--a50fd44eaeac0153b9f9e4f5.md) | 138 | `result-track:a50fd44eaeac0153b9f9e4f57b8df802def22d1eab77d5b83dd7e2d45ff3fdc3` |
| 9 | `lemma` | [exists_continuous_add_one_of_isCompact_nnreal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/exists-continuous-add-one-of-iscompact-nnreal--3162348c944bcde8e831fcd6.md) | 165 | `result-track:3162348c944bcde8e831fcd6d8af6be6a63fcfc39ad349aa703ac98ae112c0dc` |
| 10 | `lemma` | [rieszContentAux_union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/rieszcontentaux-union--7c996e3982ae0c4cfb3e312a.md) | 246 | `result-track:7c996e3982ae0c4cfb3e312a278d232322bb06931e23dcb3b87951a88aabf476` |
| 11 | `def` | [rieszContent](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/rieszcontent--9fe5dc1f69cee1d2911ab41b.md) | 288 | `declaration-track:9fe5dc1f69cee1d2911ab41b182ed2e2fa60d0efe3292ab1e193fc197d12a5d5` |
| 12 | `lemma` | [rieszContent_ne_top](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/rieszcontent-ne-top--d5fbec912ab555c835b7d87f.md) | 294 | `result-track:d5fbec912ab555c835b7d87f2b732198de460ba3c5033a7fc46696a638d08ad3` |
| 13 | `lemma` | [contentRegular_rieszContent](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/contentregular-rieszcontent--8f1446ba0c7040821c3b53a7.md) | 297 | `result-track:8f1446ba0c7040821c3b53a725786af2035b9358b75777c4de34bf2e0cb6298e` |
| 14 | `def` | [rieszMeasure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/rieszmeasure--dc5ee83195d1361b5474afa9.md) | 336 | `declaration-track:dc5ee83195d1361b5474afa93d30ebc9cd8a36c5a8e6e999b9ff9f054f867a17` |
| 15 | `lemma` | [le_rieszMeasure_of_isCompact_tsupport_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/le-rieszmeasure-of-iscompact-tsupport-subset--eac1e879c1e53bf621f09584.md) | 338 | `result-track:eac1e879c1e53bf621f0958426db31142ad51b661e9b511a9f3c4639956baffa` |
| 16 | `lemma` | [le_rieszMeasure_of_tsupport_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/declarations/le-rieszmeasure-of-tsupport-subset--bba9aab5dab623f88a4891fd.md) | 356 | `result-track:bba9aab5dab623f88a4891fd9802a8264f345d140e3fc581ccb9b10725089762` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
