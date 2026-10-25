# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SynthInstance.Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e11b45292ed7c68b509c28a5bdc22821afd045ae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e11b45292ed7c68b509c28a5bdc22821afd045ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.SynthInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [builtinInsts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/declarations/builtininsts--beec4e2cb3ae8237f8b5248a.md) | 20 | `declaration-track:beec4e2cb3ae8237f8b5248a88b69f91fb5ea2bcf0a1a71e70fb061d0100ecdd` |
| 2 | `def` | [getBuiltinInstance?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/declarations/getbuiltininstance--da33b819eea70fb1517aa526.md) | 50 | `declaration-track:da33b819eea70fb1517aa526a06bf415b3151e05e77777aa788737dd22db108c` |
| 3 | `def` | [synthInstanceMeta?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/declarations/synthinstancemeta--76bd6a439302743dedbb4ede.md) | 53 | `declaration-track:76bd6a439302743dedbb4edec0b5aa1bc455a9ea2f1721db0a35b9e587005231` |
| 4 | `def` | [registerInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/declarations/registerinstance--db17cb4ba00a7ad661f50b52.md) | 66 | `declaration-track:db17cb4ba00a7ad661f50b52761c8920ff92b530f242070d20ecf10df34b495e` |
| 5 | `def` | [synthInstance?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/declarations/synthinstance--1374905dc275670093ba2266.md) | 69 | `declaration-track:1374905dc275670093ba226639929d876fbbc4e2c1e6b8c472f78cfcc98eab84` |
| 6 | `def` | [synthInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/declarations/synthinstance--0bc5427bf2e83c2ceb134025.md) | 74 | `declaration-track:0bc5427bf2e83c2ceb13402559eb93d86227b62ef2477fb1bb9e9bb3f1b7fa62` |
| 7 | `def` | [synthInstanceAndAssign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant538076ddd8f8761827b5e7863d70b5f8eb0a7500ba36f434a12cb157b88e3421.lean/declarations/synthinstanceandassign--0849741aa6e5e1d7a6305190.md) | 83 | `declaration-track:0849741aa6e5e1d7a6305190070ca9e24b1018597d5aca29f2f2865280b1ce43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
