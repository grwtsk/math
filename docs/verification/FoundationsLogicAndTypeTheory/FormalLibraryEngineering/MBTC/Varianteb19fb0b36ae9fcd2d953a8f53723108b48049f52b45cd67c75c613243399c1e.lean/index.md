# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MBTC.Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2cd767734cf8fe555efc5775bd2fed6861562f8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2cd767734cf8fe555efc5775bd2fed6861562f8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.MBTC` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.ModelUtil` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Model` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.LinearM` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toRatValue?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/declarations/toratvalue--49a649d3a80215fbc271fbaf.md) | 16 | `declaration-track:49a649d3a80215fbc271fbafb0dbfa4361a7aa2d8b823d163519d21896c8dd96` |
| 2 | `def` | [getAssignmentExt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/declarations/getassignmentext--ad3222c82d23351928d829c0.md) | 32 | `declaration-track:ad3222c82d23351928d829c0d895c20a70117677c9590cfcb0497d3f9d9e7f1c` |
| 3 | `def` | [hasTheoryVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/declarations/hastheoryvar--a26073a1a1ae6d378dd05937.md) | 38 | `declaration-track:a26073a1a1ae6d378dd05937aeb36a03f31f9e4a3b80624a9581ff3112076c0d` |
| 4 | `def` | [isInterpreted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/declarations/isinterpreted--6726a47015c48bdf5f885ee9.md) | 41 | `declaration-track:6726a47015c48bdf5f885ee9ec31ae94f02d5107fdf8df43ee4f78c3eef2488e` |
| 5 | `def` | [eqAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/declarations/eqassignment--03e03d34f732792874ca35ac.md) | 46 | `declaration-track:03e03d34f732792874ca35ac976f6066627bdd80124adcffd539280dd3cadedb` |
| 6 | `def` | [mbtc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/declarations/mbtc--0dd3124485578d041768fe24.md) | 57 | `declaration-track:0dd3124485578d041768fe24cfaf559fa4d4d7d167c67c9e6066d80cf09ffa02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
