# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Evaluation.Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddd8c438d332c2cca648f528476165594f09eb6f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddd8c438d332c2cca648f528476165594f09eb6f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Formula.Carrier` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval--6add65b0c350fcd40a1fb632.md) | 25 | `declaration-track:6add65b0c350fcd40a1fb63277b0688fac3f0b6b4fcf6be577b4dfcdfa3f74c3` |
| 2 | `theorem` | [eval_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-var--f5bc466820e007f5b0b06aed.md) | 35 | `result-track:f5bc466820e007f5b0b06aedd3ff095abd015b2b420ceff0e10c066d147f367a` |
| 3 | `theorem` | [eval_falsum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-falsum--ae48f85d72f6d2a04f451198.md) | 38 | `result-track:ae48f85d72f6d2a04f4511989f056fabe3ef51cb93f589bdf1b3b1b26ca2aebb` |
| 4 | `theorem` | [eval_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-truth--4f099fde188b1beee21df4f9.md) | 41 | `result-track:4f099fde188b1beee21df4f9c32a0b7d112e51a72f6c6582752cb56768ccaa11` |
| 5 | `theorem` | [eval_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-neg--c289bfc0764d1d188864b828.md) | 44 | `result-track:c289bfc0764d1d188864b828c5c65daad7c400dd974586852dc292f8f597c43c` |
| 6 | `theorem` | [eval_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-conj--2130d9ed3119df962c95df37.md) | 47 | `result-track:2130d9ed3119df962c95df37f76d04b4af62f7223a0cb2134a7234b7acf69cba` |
| 7 | `theorem` | [eval_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-disj--f611f009643fc2b107a875a8.md) | 50 | `result-track:f611f009643fc2b107a875a8f5b96498912ab1751619fdbb464a885045ece264` |
| 8 | `theorem` | [eval_impl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-impl--366ec4b17194e7ce440c5ddd.md) | 53 | `result-track:366ec4b17194e7ce440c5dddfce062e35a62271f8d34476995f33ff4776e1272` |
| 9 | `theorem` | [eval_eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-eqv--9ce59767bbcaf9e5f6cc2fec.md) | 56 | `result-track:9ce59767bbcaf9e5f6cc2fec25636353a0ca2666a3655721e4d09338b3678e2d` |
| 10 | `theorem` | [eval_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-const--6747a1844f47416542ad0dc6.md) | 59 | `result-track:6747a1844f47416542ad0dc6b04bc3b1aadb4c39dcaef31e1d891b2a9ba7da74` |
| 11 | `theorem` | [eval_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980.lean/declarations/eval-congr--c1df3f2430ab3f544d793921.md) | 64 | `result-track:c1df3f2430ab3f544d793921a42a5ceea2216a6572f2f7fc3d3320b549f5aa6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
