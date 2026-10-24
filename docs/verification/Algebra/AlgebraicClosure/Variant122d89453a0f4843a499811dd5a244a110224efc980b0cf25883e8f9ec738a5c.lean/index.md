# Verification target: GRWTSK.Algebra.AlgebraicClosure.Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e0e3eb613feaa25cce09f3a7685ee70a1daaa38",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e0e3eb613feaa25cce09f3a7685ee70a1daaa38`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean.json)

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
| 1 | `def` | [algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/algebraicclosure--1603bd11aaa1d20027d4a825.md) | 39 | `declaration-track:1603bd11aaa1d20027d4a8258269ea10604c3027605aafa848100a7ba3bf1b77` |
| 2 | `theorem` | [algebraicClosure_toSubalgebra](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/algebraicclosure-tosubalgebra--2fea55887168b1c010e04b6e.md) | 44 | `result-track:2fea55887168b1c010e04b6e909559dce28768688c1eccf1037ab73dc7741e1a` |
| 3 | `theorem` | [mem_algebraicClosure_iff'](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/mem-algebraicclosure-iff--32641b0b02dafd8f5f9303eb.md) | 49 | `result-track:32641b0b02dafd8f5f9303ebad1a39446e935a8bb3999972d2cb3ceadc61600e` |
| 4 | `theorem` | [mem_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/mem-algebraicclosure-iff--33010284e9406d5b919414fc.md) | 54 | `result-track:33010284e9406d5b919414fc14169c287bcad91dc2dbb50d134f071692daf569` |
| 5 | `theorem` | [map_mem_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/map-mem-algebraicclosure-iff--d64c03c3afe40bc63e5a1626.md) | 59 | `result-track:d64c03c3afe40bc63e5a1626488694a6d8224a6890f80349034082e420e338c1` |
| 6 | `theorem` | [comap_eq_of_algHom](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/comap-eq-of-alghom--fc960362b9b2c50ee5c99f4c.md) | 67 | `result-track:fc960362b9b2c50ee5c99f4c71c809cf5963a65f6724d949bb52075664c7a19a` |
| 7 | `theorem` | [map_le_of_algHom](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/map-le-of-alghom--18140d245f6c8f561a794981.md) | 74 | `result-track:18140d245f6c8f561a7949811de2247f2a5360eeda74b720f52e8a644695b1bb` |
| 8 | `theorem` | [map_eq_of_algebraicClosure_eq_bot](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/map-eq-of-algebraicclosure-eq-bot--eb1914cddd611e78ae2aee37.md) | 82 | `result-track:eb1914cddd611e78ae2aee370e16fb0333d33203301f98e7ce0db5d62e8107b3` |
| 9 | `theorem` | [map_eq_of_algEquiv](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/map-eq-of-algequiv--4a077300071a041b8b62086f.md) | 92 | `result-track:4a077300071a041b8b62086f7971e70bdf269fe7aff6fa154ab389b5a0897368` |
| 10 | `def` | [algEquivOfAlgEquiv](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/algequivofalgequiv--328a072c890f597371df91c4.md) | 99 | `declaration-track:328a072c890f597371df91c47e3c419d7764ab922320ebbb0d7c22dccc737a54` |
| 11 | `instance` | [isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/isalgebraic--99e6151422ab514d5145abfd.md) | 108 | `declaration-track:99e6151422ab514d5145abfd25289583f1c77e18a2c822ccd50110c4ce50f044` |
| 12 | `instance` | [isIntegralClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/isintegralclosure--7797ab1b61a3d9792640c365.md) | 112 | `declaration-track:7797ab1b61a3d9792640c36520995251e29d6a4948d683ebd304a51b23f9612b` |
| 13 | `theorem` | [Transcendental.algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/transcendental-algebraicclosure--004c079bb6059d7cf9353575.md) | 117 | `result-track:004c079bb6059d7cf93535759ca2abec5bc40c2b7cfeae1c737ec6fcf6f309b7` |
| 14 | `theorem` | [le_algebraicClosure'](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/le-algebraicclosure--362cc4be384833700366c3a8.md) | 125 | `result-track:362cc4be384833700366c3a882f721156909fb9570bb41d33477b3d1b27c4d6f` |
| 15 | `theorem` | [le_algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/le-algebraicclosure--62c03f627eee0567d17d3471.md) | 132 | `result-track:62c03f627eee0567d17d34712233dce475ceb65ca26020537345c4a948734645` |
| 16 | `theorem` | [le_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/le-algebraicclosure-iff--3c35f0a7e51ec353ef80025b.md) | 137 | `result-track:3c35f0a7e51ec353ef80025be4ee748f53349ebe53c66bd31691a1ff84cdeae6` |
| 17 | `theorem` | [algebraicClosure_eq_bot](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/algebraicclosure-eq-bot--e297b5d7c90e4045e7fe03b9.md) | 147 | `result-track:e297b5d7c90e4045e7fe03b9e127cb5b616e83584c24108bf61cb644e35b4bdc` |
| 18 | `theorem` | [normalClosure_eq_self](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/normalclosure-eq-self--e00a2d30ef8ac09bd17f13d7.md) | 153 | `result-track:e00a2d30ef8ac09bd17f13d77a728e8f3e44eb3a7d4950937060bc9bc7642f38` |
| 19 | `theorem` | [IsAlgClosed.algebraicClosure_eq_bot_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/isalgclosed-algebraicclosure-eq-bot-iff--34528e26d4e2d78e2b0bcccb.md) | 163 | `result-track:34528e26d4e2d78e2b0bcccbbd9ad274dd13d88ae0e72b62304a10a0904eb674` |
| 20 | `theorem` | [IntermediateField.isAlgebraic_adjoin_iff_isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/intermediatefield-isalgebraic-adjoin-iff-isalgebraic--baee1d0871ec4bc735bc2dd8.md) | 174 | `result-track:baee1d0871ec4bc735bc2dd8423ce9f9bacb49f7f23ac37b891ac91da7e2684c` |
| 21 | `instance` | [isAlgClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/isalgclosure--ec7043f4334e5ca990506239.md) | 183 | `declaration-track:ec7043f4334e5ca99050623977737fb44149b6e2ce2238209e045411b7c8ac8e` |
| 22 | `theorem` | [eq_top_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/eq-top-iff--97ef96a0f966f12a52ca6fdb.md) | 189 | `result-track:97ef96a0f966f12a52ca6fdb93804df091033baada67decf44cb468b187eebc9` |
| 23 | `theorem` | [le_restrictScalars](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/le-restrictscalars--f4a6d0dd934dd4fd299bef3d.md) | 195 | `result-track:f4a6d0dd934dd4fd299bef3d65c6a646fcc384f3a55f760cb566fb374d1aa63b` |
| 24 | `theorem` | [eq_restrictScalars_of_isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/eq-restrictscalars-of-isalgebraic--25ec61007923b25d46c771f7.md) | 201 | `result-track:25ec61007923b25d46c771f7729d20e7bac851de2e6d44448bfa37d75e3a2196` |
| 25 | `theorem` | [adjoin_le](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/adjoin-le--fc635da6cc40a50fdbdb6a88.md) | 208 | `result-track:fc635da6cc40a50fdbdb6a88ad1a20ab4a94d0fcac899f6196d22e08a5280eaf` |
| 26 | `theorem` | [Splits.algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/declarations/splits-algebraicclosure--382bf2230560624b64fcabc9.md) | 219 | `result-track:382bf2230560624b64fcabc987e7495ef033ab682d2dbae9cfdbf8a898b2938d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
