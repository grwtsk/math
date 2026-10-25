# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SOM.Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "706a16bccf9cf885f3aecdf20f96d46284bc4169",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `706a16bccf9cf885f3aecdf20f96d46284bc4169`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.BasicAux` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Prod` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Meta` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/expr--ddaebb8025ffe820a7bada2b.md) | 26 | `declaration-track:ddaebb8025ffe820a7bada2b7646aa43ef33eb1dc0cd93393f4a387ee3795800` |
| 2 | `abbrev` | [Expr.denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/expr-denote--0797ed5ffdf306725fe7b0ad.md) | 35 | `declaration-track:0797ed5ffdf306725fe7b0adc49919f3e0414ee5fedf18f041fa81979eafa431` |
| 3 | `abbrev` | [Mon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/mon--1117e486b90622e939c9b199.md) | 41 | `declaration-track:1117e486b90622e939c9b199b527acc6c73ae855adeead987bb0310e55983153` |
| 4 | `abbrev` | [Mon.denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/mon-denote--ff27a9a47b2bc0930e30b49a.md) | 43 | `declaration-track:ff27a9a47b2bc0930e30b49ae046f19b05b2c5a6d4ea67bc2d486bda4f70778c` |
| 5 | `def` | [Mon.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/mon-mul--fd28d2f87651d1de6b98b1af.md) | 49 | `declaration-track:fd28d2f87651d1de6b98b1af79809b4897a267d641b9920d313a4c76400da52c` |
| 6 | `abbrev` | [Poly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly--90910da14a37233765767c00.md) | 67 | `declaration-track:90910da14a37233765767c0081bad5342069294bb0b72db2f75bb9335e49458e` |
| 7 | `abbrev` | [Poly.denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-denote--3c3b9b6c359dcd7e2fd24a83.md) | 69 | `declaration-track:3c3b9b6c359dcd7e2fd24a83907bc7f88566ba4ca9d42dcb97fa06c60af9260f` |
| 8 | `def` | [Poly.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-add--081aa80ed3a0b87a355d1dec.md) | 75 | `declaration-track:081aa80ed3a0b87a355d1decdf604001c0c3d0ca7b79d98d3057945589dcb667` |
| 9 | `def` | [Poly.insertSorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-insertsorted--b0d1995a3c105aa142304ccb.md) | 95 | `declaration-track:b0d1995a3c105aa142304ccbf1a043377b1bff1fa3d7b7e8bd38ea1da5862e5e` |
| 10 | `def` | [Poly.mulMon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-mulmon--18200403abbef30579c30126.md) | 100 | `declaration-track:18200403abbef30579c30126762b35cc51a1badd847ac9bb23dd54e6f56db0d6` |
| 11 | `def` | [Poly.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-mul--19b5b96fe14e587284742c7d.md) | 108 | `declaration-track:19b5b96fe14e587284742c7d6bba1b7b71e5bd3fcb35bf6ad47aa492246956b5` |
| 12 | `def` | [Expr.toPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/expr-topoly--5b29a4a937dd2e225e93fae9.md) | 116 | `declaration-track:5b29a4a937dd2e225e93fae9fa4ec70a2cab6ccf4d14fd02e4cf16e01d8ff840` |
| 13 | `theorem` | [Mon.append_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/mon-append-denote--e905b42d82003c41e95e3666.md) | 122 | `result-track:e905b42d82003c41e95e3666909d11b7714f7a32826248de61857f0496c82aae` |
| 14 | `theorem` | [Mon.mul_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/mon-mul-denote--19050297fc00416ee4ae9a16.md) | 127 | `result-track:19050297fc00416ee4ae9a16d1503d5cfa77fa37c45e62fd3f3268113589e1b3` |
| 15 | `theorem` | [Poly.append_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-append-denote--4100325955d73e77f33add40.md) | 140 | `result-track:4100325955d73e77f33add40bddcf9d05da95b351430b1b63053513ab9d84891` |
| 16 | `theorem` | [Poly.add_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-add-denote--105f15a2b6a3281492b20c2d.md) | 145 | `result-track:105f15a2b6a3281492b20c2d070cbdb6f7e877f44be5657c60122a0e32e48f40` |
| 17 | `theorem` | [Poly.denote_insertSorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-denote-insertsorted--1ed1b65cc7db8f8c7ae47478.md) | 163 | `result-track:1ed1b65cc7db8f8c7ae47478a08aba50f30a55db37383aa2753d6342babba34a` |
| 18 | `theorem` | [Poly.mulMon_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-mulmon-denote--05a4e36c5e3acfe14066c42d.md) | 169 | `result-track:05a4e36c5e3acfe14066c42d964c9c21e2675814f9cc27f5f4787a251324e1b1` |
| 19 | `theorem` | [Poly.mul_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/poly-mul-denote--e35734a915ac092ffb05c8ee.md) | 178 | `result-track:e35734a915ac092ffb05c8ee76115263c58829d3737b1f1173b649caf89d0019` |
| 20 | `theorem` | [Expr.toPoly_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/expr-topoly-denote--575f39a2184bbf873ebcf2a3.md) | 189 | `result-track:575f39a2184bbf873ebcf2a319c64ff558a2e7160efaf1929428f035a0fcc74e` |
| 21 | `theorem` | [Expr.eq_of_toPoly_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/declarations/expr-eq-of-topoly-eq--219eb4a64ecf70d180f31951.md) | 198 | `result-track:219eb4a64ecf70d180f31951994d02655ca8bdc923e8d772e37274ccb21cb200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
