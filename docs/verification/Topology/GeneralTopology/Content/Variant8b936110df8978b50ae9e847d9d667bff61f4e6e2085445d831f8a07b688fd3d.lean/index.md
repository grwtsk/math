# Verification target: GRWTSK.Topology.GeneralTopology.Content.Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8685ee6555367d06b0f7b373c3d9dd971b9bcdac",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8685ee6555367d06b0f7b373c3d9dd971b9bcdac`.

Source path: `GRWTSK/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Content](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/content--ca10e7a1a8e8e2b32d4c4d9a.md) | 75 | `declaration-track:ca10e7a1a8e8e2b32d4c4d9adc90e5d687d3bdd2015bff4d61d26c7f2ba771fc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/instance--2874244e8852517425ecb331.md) | 84 | `declaration-track:2874244e8852517425ecb331e8f640956d37936786f368f3bf2e1584cba075ae` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/instance--80b7baed570962c6b3e06097.md) | 92 | `declaration-track:80b7baed570962c6b3e0609700c7eaad408c46b9cecb1ed78a6ba8b79722592c` |
| 4 | `lemma` | [toFun_eq_toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/tofun-eq-tonnreal-apply--c69e3d3661489006f76e6713.md) | 99 | `result-track:c69e3d3661489006f76e67139d63fd71e22a9dc6d0ab356c2f84d1b97c4adeef` |
| 5 | `lemma` | [mk_apply](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/mk-apply--cd81e65ef27bdb5c5207ca83.md) | 102 | `result-track:cd81e65ef27bdb5c5207ca833c956ca20f5130e42f1a3a9616d63fc723ff463d` |
| 6 | `lemma` | [apply_ne_top](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/apply-ne-top--5e3663d664764f20af1045d5.md) | 105 | `result-track:5e3663d664764f20af1045d585b4caae76606356eb86d1febbc14d6c658d52fa` |
| 7 | `theorem` | [apply_eq_coe_toFun](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/apply-eq-coe-tofun--30e51f89f1a6e9a5ca54f125.md) | 108 | `result-track:30e51f89f1a6e9a5ca54f1250e56bc4709ec4d35d3e81011de984979b1c9fa58` |
| 8 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/mono--9846c6016b5dea91099f3ebb.md) | 111 | `result-track:9846c6016b5dea91099f3ebb94cf45d0bb5708971ed9e4877aa070f3e73ea0ab` |
| 9 | `theorem` | [sup_disjoint](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/sup-disjoint--4eeada3485443af6d0bd21da.md) | 114 | `result-track:4eeada3485443af6d0bd21daa16378fdc76bf72be9d1dd11dd130c9eb50ca0a7` |
| 10 | `theorem` | [sup_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/sup-le--5adc5e36817a90683cdac500.md) | 119 | `result-track:5adc5e36817a90683cdac5004ceb6d91ddab15486a6dac3f74a773f26e8839ec` |
| 11 | `theorem` | [lt_top](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/lt-top--4bc3dcb1be06ecc035e0dfa2.md) | 122 | `result-track:4bc3dcb1be06ecc035e0dfa277c2d603969ccfd0d7f7cd3db35d9fa12709f507` |
| 12 | `theorem` | [empty](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/empty--1b612481c7e2d69c05e3c79d.md) | 125 | `result-track:1b612481c7e2d69c05e3c79df35d281dd7fd9bfeb5fe0b3ab26ca16d40fbf97a` |
| 13 | `def` | [innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent--4a411c59a628901950acd529.md) | 130 | `declaration-track:4a411c59a628901950acd529a5756dd91a202ba48344076ddd273bbdfea55e56` |
| 14 | `theorem` | [le_innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/le-innercontent--a7aab9f58b9def0cf433ea18.md) | 133 | `result-track:a7aab9f58b9def0cf433ea18a56979d6f81b24285e7aae95f388d32e0748e759` |
| 15 | `theorem` | [innerContent_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-le--b147f7d4a01b0efb65bd1525.md) | 137 | `result-track:b147f7d4a01b0efb65bd152535855a987b7a8cb3b0efac588deb27732ebdf934` |
| 16 | `theorem` | [innerContent_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-of-iscompact--31e4b41b84c6313c32cb3eac.md) | 141 | `result-track:31e4b41b84c6313c32cb3eac0c92024982e06829625f8f8e59e388c27aa6b04f` |
| 17 | `theorem` | [innerContent_bot](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-bot--79b13c05d46f504157ac9adf.md) | 145 | `result-track:79b13c05d46f504157ac9adf3ac75aa24cc38209d12455bcf7c29fbe38838c3e` |
| 18 | `theorem` | [innerContent_mono](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-mono--4cca59b1143640eb44cbe9bf.md) | 155 | `result-track:4cca59b1143640eb44cbe9bfe34a889a3e122919c83082345b66567d78876e87` |
| 19 | `theorem` | [innerContent_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-exists-compact--7ccb87c0b8eeda1b70946841.md) | 159 | `result-track:7ccb87c0b8eeda1b709468416c3bcd7bf6aa22b9565572b631993a898b387cd4` |
| 20 | `theorem` | [innerContent_iSup_nat](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-isup-nat--128d8d77194997b76a56ae4a.md) | 171 | `result-track:128d8d77194997b76a56ae4aa56d8896d63b4b3c65bd3c4b0c129dca4f3778ab` |
| 21 | `theorem` | [innerContent_iUnion_nat](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-iunion-nat--ad1e55faebb04cc8c2ea517e.md) | 199 | `result-track:ad1e55faebb04cc8c2ea517ef8305c4472c979caab2210e16ced69b4860a97dc` |
| 22 | `theorem` | [innerContent_comap](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-comap--5efae8fca8800f71bf69457a.md) | 205 | `result-track:5efae8fca8800f71bf69457aaab76b6f63fc43274e62beb7f1252ec8ab34a7d8` |
| 23 | `theorem` | [is_mul_left_invariant_innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/is-mul-left-invariant-innercontent--efb9e6ca2b75cb5e88fc185d.md) | 213 | `result-track:efb9e6ca2b75cb5e88fc185d68c2a48f37341543c99cda61d3531c2533c18d32` |
| 24 | `theorem` | [innerContent_pos_of_is_mul_left_invariant](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-pos-of-is-mul-left-invariant--314a5292b46e9cf16559eec5.md) | 220 | `result-track:314a5292b46e9cf16559eec5d437240e841869675dc373e3983ffa190a33b1ab` |
| 25 | `theorem` | [innerContent_mono'](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/innercontent-mono--00327784c388a1995921fca8.md) | 234 | `result-track:00327784c388a1995921fca8cae04614a5427295d456e58db738bc850fae24bd` |
| 26 | `def` | [outerMeasure](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure--1f435fee2cae04c295d016ea.md) | 241 | `declaration-track:1f435fee2cae04c295d016ea944b5f346f2e5e80eee98abb979b1553cfb36b18` |
| 27 | `theorem` | [outerMeasure_opens](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-opens--ee0ab3a051c88bd60afbcb0c.md) | 246 | `result-track:ee0ab3a051c88bd60afbcb0c313dc68bca7f937254828068831916ac50dcaf1e` |
| 28 | `theorem` | [outerMeasure_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-of-isopen--2682c2c2dc25ae7099f2e73e.md) | 249 | `result-track:2682c2c2dc25ae7099f2e73ea0df82be21f3b40796a79f082a2aecd39a44e4bf` |
| 29 | `theorem` | [outerMeasure_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-le--ef9b672bf0cd863e46a9cb79.md) | 253 | `result-track:ef9b672bf0cd863e46a9cb79159372a4a039acee3704b6d1c3610ba09ccfd145` |
| 30 | `theorem` | [le_outerMeasure_compacts](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/le-outermeasure-compacts--db09e18c7b3c8e1eba6f04ee.md) | 257 | `result-track:db09e18c7b3c8e1eba6f04ee12a9181c75adf7a4c25b3f5c5359360036c7aaec` |
| 31 | `theorem` | [outerMeasure_eq_iInf](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-eq-iinf--73ae74a9a84ba89ad3fd774b.md) | 264 | `result-track:73ae74a9a84ba89ad3fd774bea69a3ccca2c12eaeb7fccd91ba1d34e8a05f2e9` |
| 32 | `theorem` | [outerMeasure_interior_compacts](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-interior-compacts--a0582db100bd66961d02f1c6.md) | 268 | `result-track:a0582db100bd66961d02f1c68887883e7db66d6f5532bc4f4ba44f57fd94ee83` |
| 33 | `theorem` | [outerMeasure_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-exists-compact--d6849a88eeda9ed4f0ce2ee0.md) | 271 | `result-track:d6849a88eeda9ed4f0ce2ee0aa1dbd91021e6de0d6b21ae627ae780b340512f3` |
| 34 | `theorem` | [outerMeasure_exists_open](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-exists-open--067810cc9fd594c976d476f3.md) | 277 | `result-track:067810cc9fd594c976d476f3fc78101eb4ce3af43f6e9e549240e25d5e9ca0ed` |
| 35 | `theorem` | [outerMeasure_preimage](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-preimage--561f27e13ec479ecdd6f250e.md) | 284 | `result-track:561f27e13ec479ecdd6f250ee99a74cd3010466ea2ca3bd3e98a99a517aa1e16` |
| 36 | `theorem` | [outerMeasure_lt_top_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-lt-top-of-iscompact--77ddb79b2de8a273aab8d987.md) | 291 | `result-track:77ddb79b2de8a273aab8d987ba13562d1545a4f8cf8226aff081fa205e4036bc` |
| 37 | `theorem` | [is_mul_left_invariant_outerMeasure](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/is-mul-left-invariant-outermeasure--4d14bbe3ab8536ceebbd06ae.md) | 302 | `result-track:4d14bbe3ab8536ceebbd06aee0587e524a7cf04ecc85f1a51fe755fc9b6a244b` |
| 38 | `theorem` | [outerMeasure_caratheodory](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-caratheodory--51b897d0fc23198eff25d837.md) | 307 | `result-track:51b897d0fc23198eff25d837567d0284d388069a3de8e877d327b8a9bfb5ba09` |
| 39 | `theorem` | [outerMeasure_pos_of_is_mul_left_invariant](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outermeasure-pos-of-is-mul-left-invariant--5426d90c5abe2f6b71309ddf.md) | 316 | `result-track:5426d90c5abe2f6b71309ddf96665b52c094df957f01a3ffc78476b3cf33eadc` |
| 40 | `theorem` | [borel_le_caratheodory](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/borel-le-caratheodory--d43571f83384e30f293d7803.md) | 325 | `result-track:d43571f83384e30f293d7803183912a58d39fd447c4dad1dba2d18c57f094419` |
| 41 | `def` | [measure](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/measure--75b5444f61b9115a4c13da7e.md) | 368 | `declaration-track:75b5444f61b9115a4c13da7e8ea932a967e161a637652a2dee786b45063c1ac2` |
| 42 | `theorem` | [measure_apply](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/measure-apply--030fea1bce0c6dd964900631.md) | 371 | `result-track:030fea1bce0c6dd96490063166a96ad0db935c0b94540a2e55391e61f5c3f931` |
| 43 | `instance` | [outerRegular](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/outerregular--bc796b2ec7b9a19be637ae63.md) | 374 | `declaration-track:bc796b2ec7b9a19be637ae63c25c6b9eaa802d275cd19ee4fd20527d2b96869b` |
| 44 | `instance` | [regular](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/regular--65362b6c0bd54b063ea1901e.md) | 383 | `declaration-track:65362b6c0bd54b063ea1901e0e897c34f4bdb462a9bb0e1586b8f2afa4c9f696` |
| 45 | `def` | [ContentRegular](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/contentregular--c4fdbf0db567a8e1d2899d6d.md) | 402 | `declaration-track:c4fdbf0db567a8e1d2899d6d3dc8f772a4e169b5998671897fdba040f15e4cee` |
| 46 | `theorem` | [contentRegular_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/contentregular-exists-compact--b538c42d7ebe3478534fbd05.md) | 406 | `result-track:b538c42d7ebe3478534fbd052bfe07e8c367af62f3a5653849acd54d24936644` |
| 47 | `theorem` | [measure_eq_content_of_regular](../../../../../mathematics/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/declarations/measure-eq-content-of-regular--f1fd4694e370c3122d4b5921.md) | 422 | `result-track:f1fd4694e370c3122d4b5921cbd21eea12ba908cc749fcee298191e8789fe09e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
