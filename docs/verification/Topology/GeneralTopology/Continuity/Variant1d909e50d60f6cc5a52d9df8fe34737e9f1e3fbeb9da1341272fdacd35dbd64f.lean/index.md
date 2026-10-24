# Verification target: GRWTSK.Topology.GeneralTopology.Continuity.Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f571d6fb8ef5bbc83a1e9b4299bce60090ecbda",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f571d6fb8ef5bbc83a1e9b4299bce60090ecbda`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Uniformity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sequences` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_iff_norm_div_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/tendsto-iff-norm-div-tendsto-zero--7047dfa0615b9a234c325235.md) | 28 | `result-track:7047dfa0615b9a234c3252355f6f05ad417cb2799db231bf4918f518fe2d3a31` |
| 2 | `theorem` | [tendsto_one_iff_norm_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/tendsto-one-iff-norm-tendsto-zero--9470192d5ff77cba46d64a0d.md) | 33 | `result-track:9470192d5ff77cba46d64a0d3f73c051037cc6654ca0694a7384f8113e25177b` |
| 3 | `theorem` | [comap_norm_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/comap-norm-nhds-one--a9aa5c2ee64c5642d71e2727.md) | 38 | `result-track:a9aa5c2ee64c5642d71e2727e3165726135d37ecc38e52c4091e674d5117d13d` |
| 4 | `theorem` | [squeeze_one_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/squeeze-one-norm--e25a12f191f54fea80b24e74.md) | 51 | `result-track:e25a12f191f54fea80b24e74fb2cd9a355b12a7bec86b68535c56cb52137aa9d` |
| 5 | `theorem` | [squeeze_one_norm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/squeeze-one-norm--580a6c406102702f3d6889d7.md) | 60 | `result-track:580a6c406102702f3d6889d72020825af1e392a69d16580c1875eb117a055b01` |
| 6 | `theorem` | [tendsto_norm_div_self](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/tendsto-norm-div-self--89ecad39ee4552cee5abf3f5.md) | 65 | `result-track:89ecad39ee4552cee5abf3f54e49b50a6c7c4d417e231ec6271a767e486bff43` |
| 7 | `theorem` | [tendsto_norm_div_self_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/tendsto-norm-div-self-nhdsge--b3adf5e10b24da0ecb23c012.md) | 70 | `result-track:b3adf5e10b24da0ecb23c0122c47ab20cb9664d53dc9e8da9d3ed5a2b4111e03` |
| 8 | `theorem` | [tendsto_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/tendsto-norm--d6349aac82f3b7c0b8f5067b.md) | 74 | `result-track:d6349aac82f3b7c0b8f5067b524442f0451bd079e4bb955e95bbc512f4aa7190` |
| 9 | `theorem` | [tendsto_norm_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/tendsto-norm-one--57ce481c45a6a1776ad9f35c.md) | 79 | `result-track:57ce481c45a6a1776ad9f35cacf00bfbf1a4ccdf39c6ae76db0039cb91085e92` |
| 10 | `theorem` | [continuous_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuous-norm--987446dfc71ec4e5125de008.md) | 83 | `result-track:987446dfc71ec4e5125de0089cdb500c335fa3ed5064937496e3a709de0a6eac` |
| 11 | `theorem` | [continuous_nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuous-nnnorm--919fdf6a51f20e15391c8ed0.md) | 87 | `result-track:919fdf6a51f20e15391c8ed0d9883144f4579d1fe6051f2c714f497065fa0317` |
| 12 | `instance` | [SeminormedGroup.toContinuousENorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/seminormedgroup-tocontinuousenorm--87cbda594394081c141d4592.md) | 95 | `declaration-track:87cbda594394081c141d459236a0698346464e57980df8da85b96b6f904fbce2` |
| 13 | `instance` | [NormedGroup.toENormedMonoid](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/normedgroup-toenormedmonoid--340a9485da2325439299d525.md) | 99 | `declaration-track:340a9485da2325439299d5257e6169c61a695a3765503890a24363f7acda3c24` |
| 14 | `instance` | [NormedCommGroup.toENormedCommMonoid](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/normedcommgroup-toenormedcommmonoid--328b5c9e2725c2976691d0cd.md) | 104 | `declaration-track:328b5c9e2725c2976691d0cde2b5410952a6fa3c27ccd671bdc504932704867b` |
| 15 | `theorem` | [Inseparable.norm_eq_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/inseparable-norm-eq-norm--4cef5ce632e1c0b62de8bc75.md) | 115 | `result-track:4cef5ce632e1c0b62de8bc75e55676431f9a0eb317ed4bdec47df1443da717f4` |
| 16 | `theorem` | [Inseparable.nnnorm_eq_nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/inseparable-nnnorm-eq-nnnorm--14bcc8672449ac04e56d6b47.md) | 120 | `result-track:14bcc8672449ac04e56d6b470ea457f468f64ef4ce146208946a595fafc4d7eb` |
| 17 | `theorem` | [Inseparable.enorm_eq_enorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/inseparable-enorm-eq-enorm--86d08ac646583acadfe81858.md) | 124 | `result-track:86d08ac646583acadfe81858c6a24511e9d97475268b1eea148c05bfee4ce0db` |
| 18 | `theorem` | [mem_closure_one_iff_norm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/mem-closure-one-iff-norm--402e3c9d989ee6948d5b7468.md) | 129 | `result-track:402e3c9d989ee6948d5b74684d551c8e29a2becdbb755849b009d3ec09c37e77` |
| 19 | `theorem` | [closure_one_eq](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/closure-one-eq--1a3269c202707fbdfe9817ea.md) | 133 | `result-track:1a3269c202707fbdfe9817ea0e00b425b64dbe2dd4f6e117b80c8c031b2a37c3` |
| 20 | `theorem` | [Filter.Tendsto.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/filter-tendsto-norm--7d2cd6af8094bce415f67b61.md) | 141 | `result-track:7d2cd6af8094bce415f67b61860f36272e4e811afdc99e4d4eb35157b47ea331` |
| 21 | `theorem` | [Filter.Tendsto.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/filter-tendsto-nnnorm--3966a852c122a442a94b7341.md) | 145 | `result-track:3966a852c122a442a94b7341cc7c988c5f1fb7ffc4d58dc602cd6ccc8a18435f` |
| 22 | `lemma` | [Filter.Tendsto.enorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/filter-tendsto-enorm--509be75c443c4cae0a1f326c.md) | 149 | `result-track:509be75c443c4cae0a1f326c5f2eeaffdeb2d584ecc949ccd29f589e98df238c` |
| 23 | `theorem` | [Continuous.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuous-norm--c3f158aed6680ea38db74969.md) | 159 | `result-track:c3f158aed6680ea38db749699db6602b0b56394c5874cedfc01fbc51cac53097` |
| 24 | `theorem` | [Continuous.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuous-nnnorm--bc3d7e156623ab0fe82efebb.md) | 163 | `result-track:bc3d7e156623ab0fe82efebb2191dec9ea738834707c2355868e913cad91ee1d` |
| 25 | `theorem` | [ContinuousAt.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuousat-norm--cd6a578f4460e5748c75915a.md) | 178 | `result-track:cd6a578f4460e5748c75915a2219e9c821631f51211124798ce61e2d3ccceb75` |
| 26 | `theorem` | [ContinuousAt.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuousat-nnnorm--dc52a98a881ab26859ec8a3e.md) | 182 | `result-track:dc52a98a881ab26859ec8a3e5458e68c7f75f58715f100e0526f54a4420fcdee` |
| 27 | `theorem` | [ContinuousWithinAt.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuouswithinat-norm--ad7533ddfbc3ff7a7355e711.md) | 186 | `result-track:ad7533ddfbc3ff7a7355e7117e9a4278b2399d9f3085e83607cddb2f2545aa97` |
| 28 | `theorem` | [ContinuousWithinAt.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuouswithinat-nnnorm--8640a2fb647288b4d2384c88.md) | 191 | `result-track:8640a2fb647288b4d2384c88072217c99a4a038153a05ae5f81550288cd8cac4` |
| 29 | `theorem` | [ContinuousOn.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuouson-norm--7301923581554c4696f75b56.md) | 196 | `result-track:7301923581554c4696f75b562a4ecb136bcd5bbbd7cd68556e182786f8a4f41d` |
| 30 | `theorem` | [ContinuousOn.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/continuouson-nnnorm--894b166ffd0d6dfea4f94c4d.md) | 200 | `result-track:894b166ffd0d6dfea4f94c4df2267c0402d558f788c3db024a4f72123ec7939f` |
| 31 | `theorem` | [eventually_ne_of_tendsto_norm_atTop'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/eventually-ne-of-tendsto-norm-attop--ae38d98544daea92ae95eed5.md) | 208 | `result-track:ae38d98544daea92ae95eed52504e73a82bb75963dc62f157749be311f42ad17` |
| 32 | `theorem` | [SeminormedCommGroup.mem_closure_iff](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/seminormedcommgroup-mem-closure-iff--4c68f7132168e061fa4083af.md) | 213 | `result-track:4c68f7132168e061fa4083af96fa3f4344959740dbd89d4c409cb5fe694a0045` |
| 33 | `theorem` | [SeminormedGroup.tendstoUniformlyOn_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/seminormedgroup-tendstouniformlyon-one--44a2709fe9bcc2868a91ff1d.md) | 218 | `result-track:44a2709fe9bcc2868a91ff1d46af2f9c9fed6c00d628d9062ddd425d898bb28f` |
| 34 | `theorem` | [SeminormedGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/seminormedgroup-uniformcauchyseqonfilter-iff-tendstouniformlyonfilter-on--1f880c326618ecf72429c023.md) | 223 | `result-track:1f880c326618ecf72429c023f5204cff05df8022eee57573d7d3b3b1e834c58f` |
| 35 | `theorem` | [SeminormedGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/seminormedgroup-uniformcauchyseqon-iff-tendstouniformlyon-one--d3a5b70e2dbcc4c536b97980.md) | 240 | `result-track:d3a5b70e2dbcc4c536b97980f3f9a62b89f6f171f150ed4ad1bc76cd026bce2f` |
| 36 | `theorem` | [controlled_prod_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/controlled-prod-of-mem-closure--5fc9467f97608052f78a42b2.md) | 257 | `result-track:5fc9467f97608052f78a42b28128d6556bf29a6c318a5d114e01fbfca05153f3` |
| 37 | `theorem` | [controlled_prod_of_mem_closure_range](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/controlled-prod-of-mem-closure-range--dd76f95d0bf931edf67c1026.md) | 288 | `result-track:dd76f95d0bf931edf67c1026a05942a4eb53855dff43d84b97789c183303bee8` |
| 38 | `lemma` | [tendsto_norm_nhdsNE_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/tendsto-norm-nhdsne-one--3a644a4668fff9369a4b46a9.md) | 307 | `result-track:3a644a4668fff9369a4b46a913fd837bdac5f9bc8136c900c4a1a19806cf4034` |
| 39 | `theorem` | [tendsto_norm_div_self_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/tendsto-norm-div-self-nhdsne--f46e7049562dbd801b5b7e14.md) | 321 | `result-track:f46e7049562dbd801b5b7e140add64db0957f637d63466c1cbc18ed23d1c71db` |
| 40 | `lemma` | [comap_norm_nhdsGT_zero'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/declarations/comap-norm-nhdsgt-zero--59cc48a69883d0ea8cff56fd.md) | 334 | `result-track:59cc48a69883d0ea8cff56fdf0795ae7efec5eb794ef345e7659aaf8c2439d9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
