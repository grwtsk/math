# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinRange.Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6d815747a97543fdc7ea3fd5e4c7c2602cf59f9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6d815747a97543fdc7ea3fd5e4c7c2602cf59f9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.OfFn` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean/declarations/finrange--6e8937c03af729d9d7a02a29.md) | 31 | `declaration-track:6e8937c03af729d9d7a02a29e1e5cfd47a37d63f192b3742ba29327d5a9f16b0` |
| 2 | `theorem` | [getElem_finRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean/declarations/getelem-finrange--8b5e2d11afa3ac251c75c098.md) | 33 | `result-track:8b5e2d11afa3ac251c75c0989b11f7741990893a577ab80327148d7c55ee5fc0` |
| 3 | `theorem` | [finRange_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean/declarations/finrange-zero--ede64d823d1cc98b6262076b.md) | 37 | `result-track:ede64d823d1cc98b6262076b16c4d0f0f8c8302458c96389bc1842008699b17e` |
| 4 | `theorem` | [finRange_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean/declarations/finrange-succ--ec222f5101d62d885fe836a4.md) | 39 | `result-track:ec222f5101d62d885fe836a48a5c794a97ed7dbf2b79ddf5dbdf51dabb1c6bd4` |
| 5 | `theorem` | [finRange_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean/declarations/finrange-succ-last--d1d7c4564214dd03a38ab739.md) | 46 | `result-track:d1d7c4564214dd03a38ab7392a6a996b12686f1997ed7870aaa76711e4918a82` |
| 6 | `theorem` | [finRange_reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c.lean/declarations/finrange-reverse--e8ee8f2092b2a0cfdeb71b7b.md) | 56 | `result-track:e8ee8f2092b2a0cfdeb71b7b00e92ca9d560b9e6cf4a301a3a0ff118e144a654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
