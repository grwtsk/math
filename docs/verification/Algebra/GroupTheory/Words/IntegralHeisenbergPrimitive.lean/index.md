# Verification target: GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0e8da0cb242646f7c8b2a5d97a7d9ebf3f7d6b0",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GroupTheory/Words/IntegralHeisenbergPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0e8da0cb242646f7c8b2a5d97a7d9ebf3f7d6b0`.

Source path: `GRWTSK/GroupTheory/Words/IntegralHeisenbergPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GroupTheory/Words/IntegralHeisenbergPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive`](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.GroupTheory.Abelianization.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ext` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntegralHeisenberg](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/integralheisenberg--54654472d1d9efaf83181b83.md) | 40 | `declaration-track:54654472d1d9efaf83181b83e3dc66d8737e74a89095689c218c909aec2bdd70` |
| 2 | `def` | [multiply](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/multiply--1d515dad0240379e11a7fdce.md) | 49 | `declaration-track:1d515dad0240379e11a7fdce0cc82c5e81799b47cf88ac4286cc321f10924094` |
| 3 | `def` | [invert](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/invert--ff2e462811b22c3dd3a29021.md) | 53 | `declaration-track:ff2e462811b22c3dd3a2902123526ed50431c73b9d519ea726f3bd5b7c904196` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/instance--656025246db5b156eea3efbd.md) | 56 | `declaration-track:656025246db5b156eea3efbdc78b7617a9ef98e9bca2c45673443d4b7316a427` |
| 5 | `theorem` | [mul_x](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/mul-x--669dc8773604bd76ea82505b.md) | 77 | `result-track:669dc8773604bd76ea82505b2e58acd9c4bfa204b04ba56939241a2af25fedef` |
| 6 | `theorem` | [mul_y](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/mul-y--cb51ae8069917cd77b7c1d98.md) | 80 | `result-track:cb51ae8069917cd77b7c1d98fa4db886bc16ec2fe3e1af586db266eebe23274a` |
| 7 | `theorem` | [mul_z](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/mul-z--c23e943e0c634e6ca05312d3.md) | 83 | `result-track:c23e943e0c634e6ca05312d3da05eb8cff1bd06f46d062481c537df6ecf7cc7e` |
| 8 | `theorem` | [one_x](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/one-x--18d3ae4958746b300ec51b9c.md) | 86 | `result-track:18d3ae4958746b300ec51b9c253e42200f926e6d9ad0e69b58e860e1967411a0` |
| 9 | `theorem` | [one_y](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/one-y--a7551c69005d757ee2f885e7.md) | 87 | `result-track:a7551c69005d757ee2f885e78a1a858679181fb6542d6ba87b8cb629ffe57cbc` |
| 10 | `theorem` | [one_z](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/one-z--5d4ab0035cf714a743ece9ba.md) | 88 | `result-track:5d4ab0035cf714a743ece9ba4392de6107cb43ae4cb17a850b28d28858419a36` |
| 11 | `def` | [X](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/x--1757945bc0f39986e3ca76c4.md) | 91 | `declaration-track:1757945bc0f39986e3ca76c4e42e87f9b977979a7aeba1345c7e1da502db0875` |
| 12 | `def` | [Y](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/y--28dbf88b44b098951e8adee0.md) | 94 | `declaration-track:28dbf88b44b098951e8adee073c9af5d374a9378b8fa382f206ce9b545d952f7` |
| 13 | `def` | [Z](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/z--88f04c46e01433314d14d514.md) | 97 | `declaration-track:88f04c46e01433314d14d514bee42bbe379c08f0cdf4eb3eeb8a3829c92a6e0e` |
| 14 | `def` | [wordCommutator](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/wordcommutator--fc3b6ac2b3eddde85c4c588c.md) | 105 | `declaration-track:fc3b6ac2b3eddde85c4c588cd53eb3834e35b858004b07c6565cba87f8d6a75e` |
| 15 | `theorem` | [map_wordCommutator](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/map-wordcommutator--01f7c9d5bc3ea78955f6dc5d.md) | 109 | `result-track:01f7c9d5bc3ea78955f6dc5d3dd75767d1410225742f8a4e0cb80cf741100a23` |
| 16 | `theorem` | [comm_X_Y](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/comm-x-y--e701f1a8ff74ec9dca73e386.md) | 117 | `result-track:e701f1a8ff74ec9dca73e38641aeaf586e6db496e0ca0cca8c01ff77d2d6e161` |
| 17 | `theorem` | [comm_X_Y_inv](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/comm-x-y-inv--bc108757b556092bb3a3058f.md) | 121 | `result-track:bc108757b556092bb3a3058f9911370d0a98a183aac94348a8f4564ea00ce8c3` |
| 18 | `theorem` | [genusTwo_relation](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/genustwo-relation--ad03373bb0b738d1c2382ace.md) | 126 | `result-track:ad03373bb0b738d1c2382acee846b5137df89ba5a9f9114c996548cc5874ab27` |
| 19 | `theorem` | [Z_ne_one](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/z-ne-one--8f1f4ae1e2b7cecd4629bc54.md) | 132 | `result-track:8f1f4ae1e2b7cecd4629bc5472da8a35738bebdd83e8eff1987f2d39fafba5bc` |
| 20 | `theorem` | [pow_x](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/pow-x--6a658fecac8fa5090012858c.md) | 138 | `result-track:6a658fecac8fa5090012858cd55c20902cd297638f09c485e11f915bd142abb8` |
| 21 | `theorem` | [pow_y](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/pow-y--0ee3fffeec19ea79ff4881ac.md) | 148 | `result-track:0ee3fffeec19ea79ff4881ac4d94f5e610f2b8d37161aa3d98ca6d3e6e851ba0` |
| 22 | `theorem` | [pow_z_of_xy_zero](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/pow-z-of-xy-zero--081ba4813875876e1b9647ba.md) | 159 | `result-track:081ba4813875876e1b9647bacf04fd6669d2f686a149e1bd285aa2a709afa7d0` |
| 23 | `theorem` | [Z_not_properPower](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/z-not-properpower--334f28af95c98a5a1d2b5b96.md) | 172 | `result-track:334f28af95c98a5a1d2b5b963295931028e1fe8a8a54b538898f8815f734b713` |
| 24 | `theorem` | [Z_primitive](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/z-primitive--bf589db0578820396cd27282.md) | 195 | `result-track:bf589db0578820396cd27282f032f78a6a7f36f43bc66cb0b9ca29cc9e82d3fd` |
| 25 | `theorem` | [Z_abelianization_eq_one](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/z-abelianization-eq-one--183b7dcd4b64e4a73f38a0eb.md) | 200 | `result-track:183b7dcd4b64e4a73f38a0eb813c234b38f85dede18ab9b08b52f60aa53b3613` |
| 26 | `theorem` | [Z_integerCharacter_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/z-integercharacter-eq-zero--eaab6adcff4498a3c425f675.md) | 207 | `result-track:eaab6adcff4498a3c425f675e26562aad6cd52353238e17a4c7fa3f5cde0d1db` |
| 27 | `theorem` | [primitive_of_hom_maps_to_Z](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/declarations/primitive-of-hom-maps-to-z--3951dff6a65ffdb05ce21d85.md) | 218 | `result-track:3951dff6a65ffdb05ce21d85e6f44174861a85028fa715361d652888e9a4acac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
