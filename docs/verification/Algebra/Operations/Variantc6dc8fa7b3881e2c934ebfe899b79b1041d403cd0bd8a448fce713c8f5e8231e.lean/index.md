# Verification target: GRWTSK.Algebra.Operations.Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55be893c6134f06e2bf47ad00809ff57adc6aca9",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55be893c6134f06e2bf47ad00809ff57adc6aca9`.

Source path: `GRWTSK/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [span](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/span--756c3d85ecbc6198901fd73d.md) | 65 | `declaration-track:756c3d85ecbc6198901fd73d59bf6f6d035d35f5b9fb38bde5bb2f2d41f1f80c` |
| 2 | `lemma` | [subset_span](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/subset-span--7fafdc6a8cff5f9ce08407ea.md) | 68 | `result-track:7fafdc6a8cff5f9ce08407eaf539027b995faa4c62d6c984c59036020eea6fe9` |
| 3 | `lemma` | [mem_span_iff](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/mem-span-iff--c802ecb1c4417e7aa9378f42.md) | 73 | `result-track:c802ecb1c4417e7aa9378f42023351a1b1d8a86e8b48c7daeefe6164f1678dde` |
| 4 | `lemma` | [span_mono](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/span-mono--e2ea22d6651c28cdd1014632.md) | 84 | `result-track:e2ea22d6651c28cdd1014632082f96c6026afb8a392ad14efcdf74d28f5cd9ed` |
| 5 | `lemma` | [span_le](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/span-le--52becd1eee328ba8ac7807c1.md) | 89 | `result-track:52becd1eee328ba8ac7807c188eb7371410252c7ed97ee563bb981a6b6a3d10d` |
| 6 | `theorem` | [span_induction](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/span-induction--9229aafce852706877e808bc.md) | 99 | `result-track:9229aafce852706877e808bcb5b74f158e7ddb15fffe66dae5aaa42c16286aff` |
| 7 | `def` | [map](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/map--12cfc98b956c38b4215fece1.md) | 123 | `declaration-track:12cfc98b956c38b4215fece12bd9dbbb49ec042dc4cff7aedb0e508334d1b60f` |
| 8 | `lemma` | [map_mono](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/map-mono--fdbcc5ae2780502501dd0661.md) | 126 | `result-track:fdbcc5ae2780502501dd0661bc4c0f55c8ad11a7789fb27491bba525f1bab0b9` |
| 9 | `def` | [comap](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/comap--76d6f69d7925edaad1e57011.md) | 135 | `declaration-track:76d6f69d7925edaad1e57011f29de288b9472592699bc7fa30fc126984e52d0c` |
| 10 | `lemma` | [comap_le_comap](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/comap-le-comap--85f64e1262dc5f369f7c917f.md) | 144 | `result-track:85f64e1262dc5f369f7c917f8dda46907725d973ddc4d8ef5fd7f76fe166f967` |
| 11 | `lemma` | [mem_comap](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/mem-comap--d08c47d15e97f4b81a2631d0.md) | 149 | `result-track:d08c47d15e97f4b81a2631d044d92eba76eafa24f5638c8562a1b1fbade0950d` |
| 12 | `def` | [_root_.GRWTSK.Algebra.Span.Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.RingEquiv.mapTwoSidedIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/root-grwtsk-algebra-span-variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985d--d02c394db8dec1abd91d9b1b.md) | 157 | `declaration-track:d02c394db8dec1abd91d9b1bedf48e5e65458f128041d045a1e6698d30f1481c` |
| 13 | `lemma` | [_root_.GRWTSK.Algebra.Span.Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.RingEquiv.mapTwoSidedIdeal_apply](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/root-grwtsk-algebra-span-variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985d--58e178d48b96457bb6e13280.md) | 161 | `result-track:58e178d48b96457bb6e132803e14b054633105f1566730184dc110cf8d55f144` |
| 14 | `lemma` | [_root_.GRWTSK.Algebra.Span.Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.RingEquiv.mapTwoSidedIdeal_symm](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/root-grwtsk-algebra-span-variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985d--8b78e3da6b18ac7567599600.md) | 164 | `result-track:8b78e3da6b18ac75675996001987169fb59e9bec76efe6751dd23118061d6a2a` |
| 15 | `lemma` | [comap_comap](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/comap-comap--08e802405229223495993459.md) | 174 | `result-track:08e802405229223495993459fea657b77c370c349c889ef6214622adaf2d58a7` |
| 16 | `lemma` | [mem_span_iff_mem_addSubgroup_closure_absorbing](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/mem-span-iff-mem-addsubgroup-closure-absorbing--dc1884b962e9fa5a263be714.md) | 187 | `result-track:dc1884b962e9fa5a263be714701af8fc5a0112f103ae7141b2013a58e2be0b16` |
| 17 | `lemma` | [set_mul_subset](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/set-mul-subset--b21f8f5f5f1e010d41d723f1.md) | 220 | `result-track:b21f8f5f5f1e010d41d723f140cd18d71de441e6056a10fbe7451e1887dca5d7` |
| 18 | `lemma` | [subset_mul_set](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/subset-mul-set--43fbe93b82e76251438d94f9.md) | 225 | `result-track:43fbe93b82e76251438d94f9437cdb7a607a9b75a72eb8b50a12f11600b5847d` |
| 19 | `lemma` | [mem_span_iff_mem_addSubgroup_closure_nonunital](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/mem-span-iff-mem-addsubgroup-closure-nonunital--e7592fbd843bdc54ebd27567.md) | 230 | `result-track:e7592fbd843bdc54ebd275676fb2f47de5b760be91e8b11bc70b1d4d2cc232d1` |
| 20 | `lemma` | [mem_span_iff_mem_addSubgroup_closure](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/mem-span-iff-mem-addsubgroup-closure--d285677e03f175b455cee401.md) | 262 | `result-track:d285677e03f175b455cee401ca83f2ba32ef920cb98f4004602015b18087255e` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/instance--29d37f839d46337ac72a8dd5.md) | 278 | `declaration-track:29d37f839d46337ac72a8dd52d56b31d15944da26255ecb72307594a4e6dffa5` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/instance--f663b9186c98645c6343cf57.md) | 280 | `declaration-track:f663b9186c98645c6343cf5721271a670ee2bdb002b4225324712fdd8bc25388` |
| 23 | `instance` | [leftModule](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/leftmodule--5a33b35b2f070d79a4cf319e.md) | 282 | `declaration-track:5a33b35b2f070d79a4cf319ee6613b9e97cb53222e89293e6f0203dadef19550` |
| 24 | `lemma` | [coe_smul](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/coe-smul--083caee2da42ab21550f05e1.md) | 286 | `result-track:083caee2da42ab21550f05e1cedc2773ac913941e8f06aea549a4dc431c2085a` |
| 25 | `instance` | [rightModule](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/rightmodule--8233e8baf26d51d0dd8fa4ff.md) | 288 | `declaration-track:8233e8baf26d51d0dd8fa4ff271e61910123883dfac28230ce0eabe77f86dd6b` |
| 26 | `lemma` | [coe_mop_smul](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/coe-mop-smul--cb4d1de9965a76a710a14c7a.md) | 292 | `result-track:cb4d1de9965a76a710a14c7ab23584dce132fabc6d94371b8ee84482e638b9b7` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/instance--186e8e97714a0ba9cd6fe187.md) | 294 | `declaration-track:186e8e97714a0ba9cd6fe18772eabaf691fb7775063655641296c02dca27f9af` |
| 28 | `def` | [subtype](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/subtype--c9fbb56e8dee8bc1acba5903.md) | 302 | `declaration-track:c9fbb56e8dee8bc1acba590350b2f071c6189fd071ede642bfed87dcf9d016d2` |
| 29 | `theorem` | [subtype_injective](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/subtype-injective--a91ba6109fcf4351bdcaee1c.md) | 307 | `result-track:a91ba6109fcf4351bdcaee1c2f5e0d455ecce75ab7cd90207324b6f36723aaf3` |
| 30 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/coe-subtype--cddadfa55c4a5df4e9fba051.md) | 311 | `result-track:cddadfa55c4a5df4e9fba051bc4264b9fb53c55042ced785bc8118319bc63be0` |
| 31 | `def` | [subtypeMop](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/subtypemop--3b673d727e4dba483780a6d8.md) | 319 | `declaration-track:3b673d727e4dba483780a6d85c54105fb9aecedb0326ef3ff9d8c54692a3fc1a` |
| 32 | `theorem` | [subtypeMop_injective](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/subtypemop-injective--001f5250a4ad5c49e3cae62a.md) | 324 | `result-track:001f5250a4ad5c49e3cae62a7a21c530fd6fe05a04882b3388365fb01f7a2301` |
| 33 | `def` | [fromIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/fromideal--9bb771da6d17df33ad96c294.md) | 328 | `declaration-track:9bb771da6d17df33ad96c2945e0a29458e368b39ad140dafc00d7479ab6e6dfd` |
| 34 | `lemma` | [mem_fromIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/mem-fromideal--a6ef35976615deef70ad98f5.md) | 333 | `result-track:a6ef35976615deef70ad98f5f44d596a6431b0b54ecb468b15e23146a9125f6b` |
| 35 | `def` | [asIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/asideal--9d3952485eed080fd5570806.md) | 337 | `declaration-track:9d3952485eed080fd55708061d4c0bb7df8b1fb989e0f1f8572668056b76f244` |
| 36 | `lemma` | [mem_asIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/mem-asideal--6ecbf9ce7ac8da1920f7ac9a.md) | 347 | `result-track:6ecbf9ce7ac8da1920f7ac9a18d02e29e3ff881cc0b311ede2111123408c3a70` |
| 37 | `lemma` | [gc](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/gc--08e065343f801c3c12f007e3.md) | 351 | `result-track:08e065343f801c3c12f007e34850c1f4ad6f755cade9d94321546006b2f5c000` |
| 38 | `lemma` | [coe_asIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/coe-asideal--eeb9838fc361f20038d92223.md) | 357 | `result-track:eeb9838fc361f20038d922237414d3fcb6480240ca98b796f8b6bba0eb4145a2` |
| 39 | `lemma` | [bot_asIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/bot-asideal--cc7cfb93cd857c9640342efa.md) | 359 | `result-track:cc7cfb93cd857c9640342efac942569ddfeba51dcf5e23f2dcb28cec80777efd` |
| 40 | `lemma` | [top_asIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/top-asideal--6135e7fda34297dd1e3c0eb6.md) | 361 | `result-track:6135e7fda34297dd1e3c0eb61bace8b265ff0c8af61d60d1fc39e4b068fde105` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/instance--cf8a8c578c11684255582de9.md) | 363 | `declaration-track:cf8a8c578c11684255582de933507dd342a9a17400723d27ec6835d7141bdcf2` |
| 42 | `def` | [asIdealOpposite](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/asidealopposite--8a06d7d660e8a8bcf728a0e5.md) | 367 | `declaration-track:8a06d7d660e8a8bcf728a0e5096eda92ac9658362825312d6d7cbd154c58da32` |
| 43 | `lemma` | [mem_asIdealOpposite](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/mem-asidealopposite--5666fa6371572860829ed657.md) | 373 | `result-track:5666fa6371572860829ed6576cf62f2f6a2649bd6ab9ee8d026284b5b67f26fa` |
| 44 | `def` | [orderIsoIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/orderisoideal--659904452f8f2198b74ed11f.md) | 387 | `declaration-track:659904452f8f2198b74ed11f9cd21db1da8b0efa5b052a6d1011bf9ffe6f30c8` |
| 45 | `def` | [toTwoSided](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/totwosided--4e76bd56fc7ffb18e7df9132.md) | 405 | `declaration-track:4e76bd56fc7ffb18e7df91321509aaf3bdf3c126168cf215a6bdea3b58879eb2` |
| 46 | `lemma` | [mem_toTwoSided](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/mem-totwosided--e81ef00efa029e31c267ab91.md) | 409 | `result-track:e81ef00efa029e31c267ab9109ec4bcae3cf232466ba16614cd0aefc37a8173b` |
| 47 | `lemma` | [coe_toTwoSided](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/coe-totwosided--f295cdef24e881460fdbbc61.md) | 414 | `result-track:f295cdef24e881460fdbbc61f93bda11cc08868e2a36cebcb0a691faa105affe` |
| 48 | `lemma` | [toTwoSided_asIdeal](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/totwosided-asideal--5fc2ea538d637807c36e6521.md) | 418 | `result-track:5fc2ea538d637807c36e652140a46f1122fac345d8532eb44730e973ba192eb4` |
| 49 | `lemma` | [asIdeal_toTwoSided](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/asideal-totwosided--188e788c4729ebdf3c05ee9d.md) | 421 | `result-track:188e788c4729ebdf3c05ee9d3688c67c2e3d68b6ac33370ae91b2cf3ea8cc791` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/instance--7af712065c21988b8312cadf.md) | 425 | `declaration-track:7af712065c21988b8312cadfa545a98286c5a83c30df25454c4ef52b400295ec` |
| 51 | `def` | [TwoSidedIdeal.orderIsoIsTwoSided](../../../../mathematics/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/declarations/twosidedideal-orderisoistwosided--1729a3adff9733e667a5ae2b.md) | 431 | `declaration-track:1729a3adff9733e667a5ae2b64a3e9f47969306621986704d2393da0a5f73fd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
