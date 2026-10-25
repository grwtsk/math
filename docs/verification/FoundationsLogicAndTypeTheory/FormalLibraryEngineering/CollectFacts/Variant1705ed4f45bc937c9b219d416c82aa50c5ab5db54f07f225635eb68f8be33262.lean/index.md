# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectFacts.Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8b25aadbf45240ac99a5a9ca5e668b77058a21f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8b25aadbf45240ac99a5a9ca5e668b77058a21f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Qq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AtomicFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/declarations/atomicfact--437c580676a0b3efc2a5a46f.md) | 28 | `declaration-track:437c580676a0b3efc2a5a46f754f3045e20ab5732c3f89f679ff88d48607dd0f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/declarations/instance--6f644351203d462740f0c771.md) | 38 | `declaration-track:6f644351203d462740f0c771f767af8cfdf4c3970cf945b1ecdb4262608cdef1` |
| 3 | `abbrev` | [CollectFactsState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/declarations/collectfactsstate--a3c6965c199debeea32711db.md) | 50 | `declaration-track:a3c6965c199debeea32711db45537231d137a43062e14d29bf8366b0226b123b` |
| 4 | `abbrev` | [CollectFactsM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/declarations/collectfactsm--0058faa6ec76276e76c78e24.md) | 53 | `declaration-track:0058faa6ec76276e76c78e24f719d4fcd5b74bf17c7c1c6efbfea4e5e0f4058b` |
| 5 | `def` | [addAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/declarations/addatom--6f070947382f6369f6e3ec6b.md) | 56 | `declaration-track:6f070947382f6369f6e3ec6be8e6108966d6cbc5e91b5855b8eb1bf4de754126` |
| 6 | `def` | [addFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/declarations/addfact--a1598ee487787e3ef9d4037a.md) | 69 | `declaration-track:a1598ee487787e3ef9d4037a4897a3a20ccb4b3d9a5490516c4a0c13507deff0` |
| 7 | `def` | [collectFactsImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/declarations/collectfactsimp--b65bbb559ec4ffe75048b393.md) | 75 | `declaration-track:b65bbb559ec4ffe75048b3932faebafeb8930b3e7931341405166f82fbff07e2` |
| 8 | `def` | [collectFacts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/declarations/collectfacts--21a7c27eeac0c0b0f82b71fb.md) | 125 | `declaration-track:21a7c27eeac0c0b0f82b71fb72cd9d4c956d8d03bcbccfe4ce9c9dc5e32ac1c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
