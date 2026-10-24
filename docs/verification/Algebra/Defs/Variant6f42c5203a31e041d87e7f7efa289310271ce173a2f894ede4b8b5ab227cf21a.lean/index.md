# Verification target: GRWTSK.Algebra.Defs.Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92ed6f5c8c226bf02fa8adbc6c83c2ebfa0b585e",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92ed6f5c8c226bf02fa8adbc6c83c2ebfa0b585e`.

Source path: `GRWTSK/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PosMulMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulmono--111ff4e1da35d61848615862.md) | 103 | `declaration-track:111ff4e1da35d6184861586294151ebe9ea3ff765921c14ba7e072da58f38df0` |
| 2 | `class` | [PosMulStrictMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulstrictmono--ae4f402469accc72d7b9193f.md) | 110 | `declaration-track:ae4f402469accc72d7b9193ff20fd83f74ccec2b976b6a7afa1374147cdeee56` |
| 3 | `class` | [PosMulReflectLT](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulreflectlt--04664e0f65a760f78cddeb37.md) | 117 | `declaration-track:04664e0f65a760f78cddeb377b1528b32a9dfb0717b3c57cf699d7ab3b880177` |
| 4 | `class` | [PosMulReflectLE](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulreflectle--204efb98ea7d7d8c4a582e35.md) | 124 | `declaration-track:204efb98ea7d7d8c4a582e35bc98494255f998908550ab3fbea66077a3b5f722` |
| 5 | `class` | [MulPosMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposmono--5df8280b3196bcd9354b5613.md) | 131 | `declaration-track:5df8280b3196bcd9354b5613c6ed24872c240e37f913a0bfa042b54d2ac19b95` |
| 6 | `class` | [MulPosStrictMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposstrictmono--1e0f7fc84cfc93477f3e46ba.md) | 138 | `declaration-track:1e0f7fc84cfc93477f3e46ba2043e7102450442ad5d9079428fbda3548a2dd09` |
| 7 | `class` | [MulPosReflectLT](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposreflectlt--69825e68bf1964b3342b411e.md) | 145 | `declaration-track:69825e68bf1964b3342b411ea07ca3db84fd57805fdf4646cb34ae6863ea617d` |
| 8 | `class` | [MulPosReflectLE](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposreflectle--fcb30cdd233f279d52cbd68a.md) | 152 | `declaration-track:fcb30cdd233f279d52cbd68a3b8b2dd65472b9ce75f82eb3a7c4f04ff3fcd204` |
| 9 | `instance` | [PosMulMono.to_covariantClass_pos_mul_le](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulmono-to-covariantclass-pos-mul-le--313ee083e97a71013fe596a8.md) | 163 | `declaration-track:313ee083e97a71013fe596a8ac540724005543f5622dce546ec3fee476404303` |
| 10 | `instance` | [MulPosMono.to_covariantClass_pos_mul_le](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposmono-to-covariantclass-pos-mul-le--119740f681a3acfa3ffe4eca.md) | 167 | `declaration-track:119740f681a3acfa3ffe4eca3e6e211163ca182139750e5acb649d78dd259fb0` |
| 11 | `instance` | [PosMulReflectLT.to_contravariantClass_pos_mul_lt](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulreflectlt-to-contravariantclass-pos-mul-lt--4b4aa85d0bbe490a93979693.md) | 171 | `declaration-track:4b4aa85d0bbe490a939796930c78a34d4b82f94b9f5244e444ae14ef85406c6f` |
| 12 | `instance` | [MulPosReflectLT.to_contravariantClass_pos_mul_lt](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposreflectlt-to-contravariantclass-pos-mul-lt--8ab4585e9f6dcfce5f09c9a3.md) | 175 | `declaration-track:8ab4585e9f6dcfce5f09c9a31ff90d089379dbe0f939a1413da06fea4ad4ffc6` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--050da095f557618da1823bc8.md) | 179 | `declaration-track:050da095f557618da1823bc85fb0a7468a9e6e1f36b3b83fa6a3dc8612700f45` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--59b4bd55c0ef3ad75f43ed6d.md) | 182 | `declaration-track:59b4bd55c0ef3ad75f43ed6d50641b4f821d67fc837f4cc6516d57962c0b1425` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--540250f2cc948a0847e4a30f.md) | 185 | `declaration-track:540250f2cc948a0847e4a30fbb13a4b429a07e60959965aae4efe3211b1171fd` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--ceba37eae1c86609eb85342f.md) | 188 | `declaration-track:ceba37eae1c86609eb85342fabc52d5c124d86052c2154ee82d8fc60e05a26b9` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--0827197171cf38dbfb6b2d31.md) | 191 | `declaration-track:0827197171cf38dbfb6b2d316e76985e1dd044245a2b7afdc0affdec1cc8d3f8` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--2382c7b613fb2df01ae95c9b.md) | 194 | `declaration-track:2382c7b613fb2df01ae95c9bd3d6f34f507246fb11240d0758ebc32f7f411ecf` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--7d07adbc557a1aa042794cd3.md) | 197 | `declaration-track:7d07adbc557a1aa042794cd3b87c31bb0183788952a2aaddd5f257303d4bc8e1` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--2db1d5a86bb162026d9bfe54.md) | 200 | `declaration-track:2db1d5a86bb162026d9bfe544af2c982c47e7f4c64cb17fb2ea1462f1518b460` |
| 21 | `theorem` | [mul_le_mul_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-le-mul-of-nonneg-left--c7a8b8d73e6696bc91b59256.md) | 204 | `result-track:c7a8b8d73e6696bc91b59256edac40ddc807fbbce3eaa3daf2f3c9263d0777ff` |
| 22 | `theorem` | [mul_le_mul_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-le-mul-of-nonneg-right--9794bd6f3fb5fc4a9057df5c.md) | 208 | `result-track:9794bd6f3fb5fc4a9057df5c656fe6a9ea17e983976cfe858f070bcbd4899b81` |
| 23 | `theorem` | [mul_lt_mul_of_pos_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-of-pos-left--e4cd532f1d37638a3105a0ef.md) | 212 | `result-track:e4cd532f1d37638a3105a0efc53c621f6b00be7b1251370dc3dadfb14420fd5b` |
| 24 | `theorem` | [mul_lt_mul_of_pos_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-of-pos-right--c0e1a0672c9e2dcf99786951.md) | 216 | `result-track:c0e1a0672c9e2dcf997869516c6f42b52a131aabf946625775b5ce51461d7bf1` |
| 25 | `theorem` | [lt_of_mul_lt_mul_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/lt-of-mul-lt-mul-left--44e6b8b579980361602e121c.md) | 219 | `result-track:44e6b8b579980361602e121cce2d407cbea01aaba4f4f56a1db5e997c719dda9` |
| 26 | `theorem` | [lt_of_mul_lt_mul_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/lt-of-mul-lt-mul-right--448cbb1f81605b96d776c3ae.md) | 222 | `result-track:448cbb1f81605b96d776c3aebe3d0cc373c4d6d01c72f98219c89a60ac7a9a46` |
| 27 | `theorem` | [le_of_mul_le_mul_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/le-of-mul-le-mul-left--eb0fbb78662e1ef17b0328dc.md) | 225 | `result-track:eb0fbb78662e1ef17b0328dc9869658b9a04d18be186b4a7ecd781c75de73533` |
| 28 | `theorem` | [le_of_mul_le_mul_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/le-of-mul-le-mul-right--0c1800439f9aec250fefd0e5.md) | 228 | `result-track:0c1800439f9aec250fefd0e54665c61aca6a2ef80c42689c570e405e6dc49b3c` |
| 29 | `theorem` | [mul_lt_mul_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-left--dd0b71060fed214a770e9984.md) | 237 | `result-track:dd0b71060fed214a770e99845c152cc2eefc506de1bd3d17c59ee271c64b02e9` |
| 30 | `theorem` | [mul_lt_mul_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-right--96b3ce0b4ab3c09f0dde624c.md) | 242 | `result-track:96b3ce0b4ab3c09f0dde624cc58f6f015f5dda6748e9574c6547d51fa51c66c9` |
| 31 | `theorem` | [mul_le_mul_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-le-mul-left--ef07b9dfc1c46b6a4a1c6527.md) | 247 | `result-track:ef07b9dfc1c46b6a4a1c65270da230618376babd011d0fafdbfbf2c7e86a71a2` |
| 32 | `theorem` | [mul_le_mul_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-le-mul-right--67c315a087f28fd4453b0784.md) | 251 | `result-track:67c315a087f28fd4453b0784d896871e5df93e6a34cdcc55ba4ed1bb18ac132f` |
| 33 | `theorem` | [mul_le_mul_of_nonneg](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-le-mul-of-nonneg--6a32e12f57e34c515c515604.md) | 259 | `result-track:6a32e12f57e34c515c515604c0c66b1324d1a3333ffabde7172a97dbf3b2492c` |
| 34 | `theorem` | [mul_le_mul_of_nonneg'](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-le-mul-of-nonneg--c1e339b2bc455e05d588d930.md) | 263 | `result-track:c1e339b2bc455e05d588d9300ac67e853bf347908d4a4da575935640e6adaed1` |
| 35 | `theorem` | [mul_lt_mul_of_le_of_lt_of_pos_of_nonneg](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-of-le-of-lt-of-pos-of-nonneg--acb7f4c743c131dfa3e03c9d.md) | 267 | `result-track:acb7f4c743c131dfa3e03c9d96da4b7972a39ea2bc476ce66242b23181e7a453` |
| 36 | `theorem` | [mul_lt_mul_of_le_of_lt_of_nonneg_of_pos](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-of-le-of-lt-of-nonneg-of-pos--2ce2c23bbc0291552dfb9f7f.md) | 273 | `result-track:2ce2c23bbc0291552dfb9f7f2ea006524a84df2d042edd63c60e704142d6da30` |
| 37 | `theorem` | [mul_lt_mul_of_lt_of_le_of_nonneg_of_pos](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-of-lt-of-le-of-nonneg-of-pos--d4dd704ae7c3d6e797cf94dd.md) | 279 | `result-track:d4dd704ae7c3d6e797cf94dd2b87d0a2554b0c251033b7231759ee3b0a1434d2` |
| 38 | `theorem` | [mul_lt_mul_of_lt_of_le_of_pos_of_nonneg](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-of-lt-of-le-of-pos-of-nonneg--fecb18ee96ad1a13fd80d353.md) | 285 | `result-track:fecb18ee96ad1a13fd80d353f7e29ac9c698c964a45e96c4af528b1d5c26779b` |
| 39 | `theorem` | [mul_lt_mul_of_pos](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-of-pos--a12f29dd62e225f134628da3.md) | 291 | `result-track:a12f29dd62e225f134628da32efb7592764def1662ae3b71688801b5192ffaeb` |
| 40 | `theorem` | [mul_lt_mul_of_pos'](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-mul-of-pos--9ba184487c78dd16d40a1b51.md) | 295 | `result-track:9ba184487c78dd16d40a1b51273e9ba91c79ca668daac0b5250732ba4d3f5e84` |
| 41 | `theorem` | [mul_le_of_mul_le_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-le-of-mul-le-of-nonneg-left--22eebf5b7ec6ffc334a7dd5f.md) | 306 | `result-track:22eebf5b7ec6ffc334a7dd5f216b314b0cd10d0ad5c0bc8c03e4d441932a7a93` |
| 42 | `theorem` | [mul_lt_of_mul_lt_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-of-mul-lt-of-nonneg-left--ea2901a5d6db675649f951a8.md) | 310 | `result-track:ea2901a5d6db675649f951a80d7545ac947d74a7eb5a00b3d7886d6137431d66` |
| 43 | `theorem` | [le_mul_of_le_mul_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/le-mul-of-le-mul-of-nonneg-left--8ee1caa6cfc1faef7db2b184.md) | 314 | `result-track:8ee1caa6cfc1faef7db2b1849c2aeac9466679f8e8a4eb3ebcfd227bfd3d6d4d` |
| 44 | `theorem` | [lt_mul_of_lt_mul_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/lt-mul-of-lt-mul-of-nonneg-left--e1d3bcda1baf756cec521cb8.md) | 318 | `result-track:e1d3bcda1baf756cec521cb88bc330817b0685f079607179e2caf8c8f43616d4` |
| 45 | `theorem` | [mul_le_of_mul_le_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-le-of-mul-le-of-nonneg-right--d9716ca910e8b49a82d14771.md) | 322 | `result-track:d9716ca910e8b49a82d14771bdeee8bc4e8c355c8b4b2c0f54cc982556d6667a` |
| 46 | `theorem` | [mul_lt_of_mul_lt_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mul-lt-of-mul-lt-of-nonneg-right--c767b98388c3e7d41655a040.md) | 326 | `result-track:c767b98388c3e7d41655a04092e93ea0f8b3e8587cdcd6604964c5f742a14e19` |
| 47 | `theorem` | [le_mul_of_le_mul_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/le-mul-of-le-mul-of-nonneg-right--3c429d7753a38e95e154af3a.md) | 330 | `result-track:3c429d7753a38e95e154af3aecbb7cf4ac4853c370d5d4b527f56774754fcf2c` |
| 48 | `theorem` | [lt_mul_of_lt_mul_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/lt-mul-of-lt-mul-of-nonneg-right--8a07bc121f511c109d6bdcb6.md) | 334 | `result-track:8a07bc121f511c109d6bdcb6c1dadde3a5f3a5aa8baa8446ca353f1b94d1fc49` |
| 49 | `theorem` | [posMulMono_iff_mulPosMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulmono-iff-mulposmono--d8eacee6c8ac7d17648503b8.md) | 340 | `result-track:d8eacee6c8ac7d17648503b81949e348c1097a51b12da25d3a3851942e2b42ea` |
| 50 | `theorem` | [PosMulMono.toMulPosMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulmono-tomulposmono--81de5cebc3532b0e62211654.md) | 343 | `result-track:81de5cebc3532b0e622116541a801a4f28c4252ff025d48b97647d13d1fda8c5` |
| 51 | `theorem` | [posMulStrictMono_iff_mulPosStrictMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulstrictmono-iff-mulposstrictmono--8a462d482c20c03d04584fa7.md) | 345 | `result-track:8a462d482c20c03d04584fa7bf85a9cc02333d18ef0a9bee14ac8595e0e4a157` |
| 52 | `theorem` | [PosMulStrictMono.toMulPosStrictMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulstrictmono-tomulposstrictmono--5ad575c69cfdf99d319eaeeb.md) | 348 | `result-track:5ad575c69cfdf99d319eaeeb609b1623b90844771ab6f71b09726e22914ec53d` |
| 53 | `theorem` | [posMulReflectLE_iff_mulPosReflectLE](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulreflectle-iff-mulposreflectle--74eeec1987faa89895426bf5.md) | 351 | `result-track:74eeec1987faa89895426bf58929e81f25c6406177a5245193acd616c9180d55` |
| 54 | `theorem` | [PosMulReflectLE.toMulPosReflectLE](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulreflectle-tomulposreflectle--172084916f789857c60f7d01.md) | 354 | `result-track:172084916f789857c60f7d016d43bd28f9a80877808082474eaf579074c4c48e` |
| 55 | `theorem` | [posMulReflectLT_iff_mulPosReflectLT](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulreflectlt-iff-mulposreflectlt--2f77179c5e94fec3860b899b.md) | 357 | `result-track:2f77179c5e94fec3860b899b3cfd3504d59bf2257b318859e5fc05aea639c880` |
| 56 | `theorem` | [PosMulReflectLT.toMulPosReflectLT](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulreflectlt-tomulposreflectlt--d9d3253fb8c705bd0b25c6a3.md) | 360 | `result-track:d9d3253fb8c705bd0b25c6a318add41a00a49c65f04a9f482b009b655b5e73d6` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--0789712aa3330d040a3c554f.md) | 370 | `declaration-track:0789712aa3330d040a3c554f2a1aa2d5aba35dd8c8d6cb450689ab7add0e1f08` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/instance--139df0388541bfc6ebfb9590.md) | 375 | `declaration-track:139df0388541bfc6ebfb9590f9707bb099d9c2cc80d09908472ace8901a6d8ae` |
| 59 | `theorem` | [PosMulReflectLE.toPosMulStrictMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulreflectle-toposmulstrictmono--eb92620dae3f1428ca91c6f7.md) | 379 | `result-track:eb92620dae3f1428ca91c6f74fba7c5d1aeeb266196ed57068783dc53b36a03f` |
| 60 | `theorem` | [MulPosReflectLE.toMulPosStrictMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposreflectle-tomulposstrictmono--264133542bc2521fd9049557.md) | 382 | `result-track:264133542bc2521fd9049557a3e2a0dfadaf2bbdc69966d6bedb4b565246afe3` |
| 61 | `theorem` | [posMulStrictMono_iff_posMulReflectLE](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulstrictmono-iff-posmulreflectle--02e61c4cf1d53a1fdef6c085.md) | 385 | `result-track:02e61c4cf1d53a1fdef6c08567f312236c79e6b34b2a34735b735c2b6d2bf591` |
| 62 | `theorem` | [mulPosStrictMono_iff_mulPosReflectLE](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposstrictmono-iff-mulposreflectle--a42726a924d69cbe81e4349c.md) | 388 | `result-track:a42726a924d69cbe81e4349c8b455a5e27d8aecb0f18eb60ee2b7c3f1e2b01d5` |
| 63 | `theorem` | [PosMulReflectLT.toPosMulMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulreflectlt-toposmulmono--9d5177418f02a885fbfbb7e5.md) | 391 | `result-track:9d5177418f02a885fbfbb7e5cb4d5450fe57dcf200e7585ad047b9c19cdc06fc` |
| 64 | `theorem` | [MulPosReflectLT.toMulPosMono](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposreflectlt-tomulposmono--f575f27f1584bd2584c8d172.md) | 394 | `result-track:f575f27f1584bd2584c8d1727d3901a91a14f209e44a10027a2186fb8e8cab71` |
| 65 | `theorem` | [PosMulMono.toPosMulReflectLT](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulmono-toposmulreflectlt--f9c696499117e024450a4b92.md) | 397 | `result-track:f9c696499117e024450a4b920de14b82db85abef410f0058f6a266a598e768d9` |
| 66 | `theorem` | [MulPosMono.toMulPosReflectLT](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposmono-tomulposreflectlt--337530e246bacbd1cd92b880.md) | 400 | `result-track:337530e246bacbd1cd92b88097cf18f083613a29e6fa4a5095b67363a89d2e06` |
| 67 | `theorem` | [posMulMono_iff_posMulReflectLT](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/posmulmono-iff-posmulreflectlt--ae160a00dbca902783d9e826.md) | 407 | `result-track:ae160a00dbca902783d9e826cf801f6aeca12c6f05bbafd016350759ce2bb222` |
| 68 | `theorem` | [mulPosMono_iff_mulPosReflectLT](../../../../mathematics/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/declarations/mulposmono-iff-mulposreflectlt--b7f0f3e9ee546290937f6eab.md) | 410 | `result-track:b7f0f3e9ee546290937f6eab2edd6f9531656477ed827226d67fa1ecb7994796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
