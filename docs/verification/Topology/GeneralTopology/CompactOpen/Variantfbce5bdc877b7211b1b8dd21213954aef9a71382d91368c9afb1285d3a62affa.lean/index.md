# Verification target: GRWTSK.Topology.GeneralTopology.CompactOpen.Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15503c9e88d9b8ae31b570bd697c92899c165c7c",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15503c9e88d9b8ae31b570bd697c92899c165c7c`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.SubsetProperties` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompactOpen.gen](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/compactopen-gen--1f7ef5a1c3a0068220e3ebab.md) | 51 | `declaration-track:1f7ef5a1c3a0068220e3ebab9c8807b8d49498048d8f2ccdbc6d093617820a18` |
| 2 | `theorem` | [gen_empty](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/gen-empty--1fc613a9817d4ab259454a6e.md) | 56 | `result-track:1fc613a9817d4ab259454a6e0d0e846d9a8f899bea408f4509b576a238d1705a` |
| 3 | `theorem` | [gen_univ](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/gen-univ--2afa992d0e69fe9e5ff2a460.md) | 61 | `result-track:2afa992d0e69fe9e5ff2a460345d23a2a473111fc8fcae0f8560962b4f43f937` |
| 4 | `theorem` | [gen_inter](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/gen-inter--a7a3851d1221592cee73f82a.md) | 66 | `result-track:a7a3851d1221592cee73f82af465f11cc49311cd7781c79ffb0e68975775b752` |
| 5 | `theorem` | [gen_union](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/gen-union--7452fb4f706eb351def153de.md) | 72 | `result-track:7452fb4f706eb351def153dec6707ef1a08a5ec1170118c3ec2f6305a53eb7d1` |
| 6 | `theorem` | [gen_empty_right](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/gen-empty-right--62d9bc5c5fe4d3fb75690328.md) | 77 | `result-track:62d9bc5c5fe4d3fb75690328feccd443991b69cdf2037000f86cfccd025259f5` |
| 7 | `instance` | [compactOpen](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/compactopen--61189d0f771ebcb48e7db8d5.md) | 82 | `declaration-track:61189d0f771ebcb48e7db8d58b62be689fde83f717e4ad595db4d962008d506e` |
| 8 | `theorem` | [compactOpen_eq](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/compactopen-eq--0eaf14d1ce8d54585d7b0731.md) | 88 | `result-track:0eaf14d1ce8d54585d7b0731d31aec55b73473b2d33a5e3373a785961faa2c85` |
| 9 | `theorem` | [isOpen_gen](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/isopen-gen--9a96f8ac1bb038573e751371.md) | 92 | `result-track:9a96f8ac1bb038573e7513718d879f5481a0fda67fe173a3c690efc0dcaba9dd` |
| 10 | `theorem` | [preimage_gen](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/preimage-gen--e261986e360a54424ed57d9b.md) | 101 | `result-track:e261986e360a54424ed57d9bcc51d36c7f71a4a17b192df6b1491041a9a7e13f` |
| 11 | `theorem` | [continuous_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-comp--98bae6a04bc5641c16c13e1b.md) | 108 | `result-track:98bae6a04bc5641c16c13e1b894d14fa5e2421048067beca7abc3ac75fd3d2a9` |
| 12 | `theorem` | [inducing_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/inducing-comp--61c9916c526289a55171a8b2.md) | 115 | `result-track:61c9916c526289a55171a8b2fda8687832d0e5b91fb2c7c687111c74efabcbe5` |
| 13 | `theorem` | [embedding_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/embedding-comp--2f28da8d9551582dcbb68a67.md) | 122 | `result-track:2f28da8d9551582dcbb68a6751ab08e61d677ce639085e4bbe6e2d630599e8be` |
| 14 | `theorem` | [image_gen](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/image-gen--9651f5ecf0360e56e26a8310.md) | 127 | `result-track:9651f5ecf0360e56e26a831013b91e61f5ad7a4ba6f6c9b967cfed8e28de469b` |
| 15 | `theorem` | [continuous_comp_left](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-comp-left--f59a931cef4bea4ac128f699.md) | 134 | `result-track:f59a931cef4bea4ac128f69937dcc3b074ca45e8941a375eb83fd35444bc4d0e` |
| 16 | `theorem` | [continuous_comp'](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-comp--9d1d14a4f7a4350cd418afc6.md) | 142 | `result-track:9d1d14a4f7a4350cd418afc627b13d1c04a32b6838d62cfdedd1b86c03df4b86` |
| 17 | `theorem` | [continuous.comp'](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-comp--0c95650128ed6a415cb01474.md) | 164 | `result-track:0c95650128ed6a415cb014740c91ae51d78741bbf919d2874300c3061956de6a` |
| 18 | `theorem` | [continuous_eval'](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-eval--26b30a01cc572703dd201a15.md) | 177 | `result-track:26b30a01cc572703dd201a15458af0775d39642c55910970afcf9f68307ff185` |
| 19 | `theorem` | [continuous_eval_const](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-eval-const--92848cbb43ddf4eb31de07ad.md) | 204 | `result-track:92848cbb43ddf4eb31de07adccabe825af5c511f088b3862f259836964d90694` |
| 20 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-coe--22e56a8bca075929af08a313.md) | 216 | `result-track:22e56a8bca075929af08a313472fa4f80ccaf8b9b16ef7a503304ecef1c0ee79` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/instance--618cda8797ab08362cd8b0b1.md) | 221 | `declaration-track:618cda8797ab08362cd8b0b1403b73ba743494c6bf9bc55c3ec554cf1f85de56` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/instance--b6227c48df69e0b325d265cd.md) | 224 | `declaration-track:b6227c48df69e0b325d265cdcb628725800248ae44d157eeeaebd3e5e92d14bc` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/instance--6bedbc68bcc407d44f6b41e8.md) | 227 | `declaration-track:6bedbc68bcc407d44f6b41e83881abb547ba90415fdd46587ea2f4519c46ff44` |
| 24 | `theorem` | [compactOpen_le_induced](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/compactopen-le-induced--ddc3c9fe5ac9ac9afcd0b7f4.md) | 234 | `result-track:ddc3c9fe5ac9ac9afcd0b7f447c59efda26e53b39847ea5eaef87d8b8fdcde64` |
| 25 | `theorem` | [compactOpen_eq_sInf_induced](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/compactopen-eq-sinf-induced--e94756a8e2e9efa94831f3c7.md) | 249 | `result-track:e94756a8e2e9efa94831f3c773aaa73c2aed1ee6434263e6126c9aac4554780a` |
| 26 | `theorem` | [continuous_restrict](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-restrict--e971f6229ae82c3149634385.md) | 269 | `result-track:e971f6229ae82c31496343851287e8eb51ed0b2c6c5f5d4ac063dfffdbc4b785` |
| 27 | `theorem` | [nhds_compactOpen_eq_sInf_nhds_induced](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/nhds-compactopen-eq-sinf-nhds-induced--bd4fe47346e1354652ff2bed.md) | 274 | `result-track:bd4fe47346e1354652ff2bed8ef589fbae1c0f32e08ecb4c43e6380848c13f2d` |
| 28 | `theorem` | [tendsto_compactOpen_restrict](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/tendsto-compactopen-restrict--d57097ba6ba704e3a2a52959.md) | 280 | `result-track:d57097ba6ba704e3a2a5295920d6ede8ffefb6d74d2de3c16a0532a97e9fb670` |
| 29 | `theorem` | [tendsto_compactOpen_iff_forall](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/tendsto-compactopen-iff-forall--09469ef4812625f438466cdc.md) | 286 | `result-track:09469ef4812625f438466cdc46a7f43f98297c263ef22e8bf884f8105ae92341` |
| 30 | `theorem` | [exists_tendsto_compactOpen_iff_forall](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/exists-tendsto-compactopen-iff-forall--24a466a2fb1fd5bb9dc63275.md) | 295 | `result-track:24a466a2fb1fd5bb9dc632750f7ae57164e429acfed0ee60b3b070f111c13145` |
| 31 | `def` | [coev](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/coev--d6e6d8d896206fa112288439.md) | 332 | `declaration-track:d6e6d8d896206fa1122884390103aba7cf868962b49aa6910b78ef2896a061b7` |
| 32 | `theorem` | [image_coev](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/image-coev--e5beb1d36dbf23ad429b9e8d.md) | 338 | `result-track:e5beb1d36dbf23ad429b9e8d2ec8ee6472f3ab206e3eeaa325ec4b8a4676a040` |
| 33 | `theorem` | [continuous_coev](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-coev--8fe5ee05d14880691c9a0600.md) | 343 | `result-track:8fe5ee05d14880691c9a060022243ca31fabfc8a1a6a3002bdd9e5a99f112c9f` |
| 34 | `def` | [curry'](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/curry--27e3f9572fda1b9432026edf.md) | 365 | `declaration-track:27e3f9572fda1b9432026edf03450b30cc554d59fbf99644f234613cb1b27d53` |
| 35 | `theorem` | [continuous_curry'](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-curry--2b65bd33b5c8ffe232851e56.md) | 371 | `result-track:2b65bd33b5c8ffe232851e563e35e4f5bb26c4da758b19b72c35f90fb1c8f576` |
| 36 | `theorem` | [continuous_of_continuous_uncurry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-of-continuous-uncurry--3479c72a7a176964dafea35b.md) | 378 | `result-track:3479c72a7a176964dafea35b3ffef768fe03e2f5100f66c191f9d44514c76504` |
| 37 | `def` | [curry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/curry--f86440c899783c5794b58daa.md) | 386 | `declaration-track:f86440c899783c5794b58daa306c48e57921f2a25f36396a8f2250081f5bfe04` |
| 38 | `theorem` | [curry_apply](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/curry-apply--857763fb702022878fccb14d.md) | 391 | `result-track:857763fb702022878fccb14d6d653cd69e7314afa3c423a5795750afc3a83d66` |
| 39 | `theorem` | [continuous_curry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-curry--8a5adf839c4de66c1b3ee306.md) | 396 | `result-track:8a5adf839c4de66c1b3ee306c6a78032e36abe0a7b036eddab5bafa1d25ff70b` |
| 40 | `theorem` | [continuous_uncurry_of_continuous](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-uncurry-of-continuous--a341641f0d633bc3641ad8a5.md) | 405 | `result-track:a341641f0d633bc3641ad8a5485e79d5e1f84523e070c263297d7ba236df23aa` |
| 41 | `def` | [uncurry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/uncurry--02d0d1f102a6af5ead1541b5.md) | 414 | `declaration-track:02d0d1f102a6af5ead1541b5cb5414c09c4196002df9db92d8e80d16055ac332` |
| 42 | `theorem` | [continuous_uncurry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-uncurry--6d89ee151d94c6d5225f090c.md) | 419 | `result-track:6d89ee151d94c6d5225f090ceb3171ac91ba1ba9aee669ed57eb9133e5e71fab` |
| 43 | `def` | [const'](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/const--0785b923973e1fd8e72f0246.md) | 427 | `declaration-track:0785b923973e1fd8e72f0246da8d47b6e1ee08e77ed8b36018109c1828cf206c` |
| 44 | `theorem` | [coe_const'](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/coe-const--81347bae3db740468b9e9b9a.md) | 432 | `result-track:81347bae3db740468b9e9b9a8526ae048cb15fd30b9f4d8aa74a24985262ef46` |
| 45 | `theorem` | [continuous_const'](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuous-const--dd3ce991488d3baf330dd96f.md) | 436 | `result-track:dd3ce991488d3baf330dd96fe21a64809612c0e4b8ba7e6e6bf869a8a8628c39` |
| 46 | `def` | [curry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/curry--7bd719647b6279560c1c8867.md) | 455 | `declaration-track:7bd719647b6279560c1c8867f2fa6e9026c2e61666d4b26aca67f501517004c3` |
| 47 | `def` | [continuousMapOfUnique](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuousmapofunique--f8d0b083804d0b1a329bc647.md) | 461 | `declaration-track:f8d0b083804d0b1a329bc647d3e05450534dedb3471c3b73c1b418e7adc065c0` |
| 48 | `theorem` | [continuousMapOfUnique_apply](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuousmapofunique-apply--ff0c2af8b784bbca285e2d65.md) | 474 | `result-track:ff0c2af8b784bbca285e2d657e073a1cfb0fd76e7a2403d8b4f2612388a614ab` |
| 49 | `theorem` | [continuousMapOfUnique_symm_apply](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/continuousmapofunique-symm-apply--ce22dc77e161e893100e93f4.md) | 479 | `result-track:ce22dc77e161e893100e93f4935dc2045dc0e72bded345616cb3faa1f06e0a7e` |
| 50 | `theorem` | [QuotientMap.continuous_lift_prod_left](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/quotientmap-continuous-lift-prod-left--dbecd55de057d72c6a00a04f.md) | 491 | `result-track:dbecd55de057d72c6a00a04f8e16e32702a9e7d16824e3a24b45f3a505b4be79` |
| 51 | `theorem` | [QuotientMap.continuous_lift_prod_right](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/declarations/quotientmap-continuous-lift-prod-right--55c217c5b88dda6193a5826d.md) | 505 | `result-track:55c217c5b88dda6193a5826d2de3b43487d372fe0b98c484622d13923d8c6334` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
