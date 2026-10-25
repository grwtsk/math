# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Random.Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f409d1ccfb95d06783a7f0e1182224443d801307",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f409d1ccfb95d06783a7f0e1182224443d801307`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Algebra.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Order` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Control.ULiftable` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ULift` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RandG](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/randg--7a56e2f0c66b9b849b520b70.md) | 41 | `declaration-track:7a56e2f0c66b9b849b520b708b4e1e8081fcca7d93ee11d3640d58bc099d513f` |
| 2 | `abbrev` | [Rand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/rand--895c77761cfde958ac6335c4.md) | 44 | `declaration-track:895c77761cfde958ac6335c458ffc6a1eca97331aa8069282364fc050d944634` |
| 3 | `class` | [Random](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/random--d518f0ee55195ae398294b29.md) | 47 | `declaration-track:d518f0ee55195ae398294b29cb4222b0274703eff46624d0097e0e5d9856ca18` |
| 4 | `class` | [BoundedRandom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/boundedrandom--ba4c3bdc502d63a273d55984.md) | 51 | `declaration-track:ba4c3bdc502d63a273d55984fad883c643c8eabadaa0cf5bb5f05f134c5e1443` |
| 5 | `def` | [next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/next--a56860a5fb257e4df838542e.md) | 56 | `declaration-track:a56860a5fb257e4df838542e59d39b907e9f0d0e1011e46c8c3076b081385974` |
| 6 | `def` | [split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/split--155f1926b3b468c8b6067988.md) | 63 | `declaration-track:155f1926b3b468c8b60679883892e1c9feeed77f6bc2f534fb7d13bd30894097` |
| 7 | `def` | [range](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/range--209dc982a3fbee6c950bedfb.md) | 70 | `declaration-track:209dc982a3fbee6c950bedfbee3c76389e6246f5566f68aff64e7249a23a945e` |
| 8 | `def` | [rand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/rand--d826c8eb3e49ca7775fe24db.md) | 80 | `declaration-track:d826c8eb3e49ca7775fe24db7ac86bed805d21e0c1df0960f097d9297c542164` |
| 9 | `def` | [randBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/randbound--aa0d3488377d9b406adf9904.md) | 83 | `declaration-track:aa0d3488377d9b406adf9904b063e3f5fb2aa8cd977feb5fbe4ae980f47e9ffe` |
| 10 | `def` | [randFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/randfin--3fa42b7e7951b9d99bc81005.md) | 87 | `declaration-track:3fa42b7e7951b9d99bc81005c136bab87fbcfc7440d08e3c79e7f936972e4c1b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/instance--ecea42c4115c97cd1f8d768a.md) | 90 | `declaration-track:ecea42c4115c97cd1f8d768a5b66fc64d158e84eecbe1d580243ca97cb346e3b` |
| 12 | `def` | [randBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/randbool--35e94d695370f7be142ba28c.md) | 93 | `declaration-track:35e94d695370f7be142ba28cf4d5fdd16a1bcc9cacf3668e9c49cfe9e1e0a323` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/instance--1585d00542cb424016b4b62f.md) | 96 | `declaration-track:1585d00542cb424016b4b62f5cb38ec4dc94183fa34bc29f2be0e3bc2359d6e2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/instance--4d9cf66a85dbffbfd982850d.md) | 99 | `declaration-track:4d9cf66a85dbffbfd982850dca413d4d39694179487b10a9e4c66f59e912499e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/instance--fc74231f0428409329474cf8.md) | 102 | `declaration-track:fc74231f0428409329474cf8c27ec651d7cf62d076ff0bf9005681fb5afc0908` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/instance--743671596a36715c32737d63.md) | 110 | `declaration-track:743671596a36715c32737d631d6b0a457700129bee490c543759b5ec14dc1609` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/instance--d02c6fe84251a13ea86703de.md) | 120 | `declaration-track:d02c6fe84251a13ea86703de9fbbb55af4ef2e4ae27cf7e2391a821fdf9800c8` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/instance--c5fdbfad83a9fd73f10290d4.md) | 125 | `declaration-track:c5fdbfad83a9fd73f10290d4f6401d916337ef63580b884dd6aed39db962e4fb` |
| 19 | `def` | [IO.runRand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/io-runrand--0cba41afcd374f0590663dda.md) | 140 | `declaration-track:0cba41afcd374f0590663dda41c407ac903050189f21a89ca7db5aac613e8aba` |
| 20 | `def` | [IO.runRandWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant0cfa73b509bc89e4e8d23e1452d9ae073c99dd893b6487c6fe5220811d7014ed.lean/declarations/io-runrandwith--a2cf449319e07f4bf9ec42ea.md) | 147 | `declaration-track:a2cf449319e07f4bf9ec42ea00aed4bb7c2b81423ee753b848e87116878871dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
