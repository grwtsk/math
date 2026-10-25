# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fold.Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1734354b02af7ea275ad0ee081417f0ebb2285d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1734354b02af7ea275ad0ee081417f0ebb2285d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/declarations/fold--bfc92af04b17fa982a98ef0e.md) | 23 | `declaration-track:bfc92af04b17fa982a98ef0e4aff08d46a98a37ae92bee5c090a144e48e24cee` |
| 2 | `theorem` | [fold.go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/declarations/fold-go-le-size--1b7bf433f4024f6d6c39fceb.md) | 46 | `result-track:1b7bf433f4024f6d6c39fceb638686f8d92cb3f709cf0673cc575f16386aac35` |
| 3 | `theorem` | [fold_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/declarations/fold-le-size--d57d98e703af58fa88164765.md) | 58 | `result-track:d57d98e703af58fa8816476545517e0867c3540092add11bb519bb7c7565e598` |
| 4 | `theorem` | [fold.go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/declarations/fold-go-decl-eq--8727e9848392597fe9c20f49.md) | 66 | `result-track:8727e9848392597fe9c20f49546682813cdc216093d84fe8794f896601835d09` |
| 5 | `theorem` | [fold_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/declarations/fold-decl-eq--a57dc47be24e6a3ca1d23189.md) | 85 | `result-track:a57dc47be24e6a3ca1d23189615702883cdbc73d9271c7794cb2616ffbea08d4` |
| 6 | `theorem` | [fold_lt_size_of_lt_aig_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/declarations/fold-lt-size-of-lt-aig-size--e7b895845bc1f318ba8d8f46.md) | 95 | `result-track:e7b895845bc1f318ba8d8f4644a7b38bbdf38bc99a4b00cbb4b94e9d33e690b0` |
| 7 | `theorem` | [fold_le_size_of_le_aig_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/declarations/fold-le-size-of-le-aig-size--d7a59f981b879aab3b2f0787.md) | 103 | `result-track:d7a59f981b879aab3b2f07876747bf4ce1ecdf3c9cff0fe2de5acd1ef038828c` |
| 8 | `theorem` | [denote_go_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/declarations/denote-go-and--1fbd5d3d0b0348eae796c184.md) | 113 | `result-track:1fbd5d3d0b0348eae796c18472a657bec702e7b53e6296fdfd62ae976d9ecc2f` |
| 9 | `theorem` | [denote_fold_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/declarations/denote-fold-and--8bda582ffd192d6742f68dcb.md) | 167 | `result-track:8bda582ffd192d6742f68dcb2acd2a5b2921e8e5f8bc14e143f1c968e1d75764` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
