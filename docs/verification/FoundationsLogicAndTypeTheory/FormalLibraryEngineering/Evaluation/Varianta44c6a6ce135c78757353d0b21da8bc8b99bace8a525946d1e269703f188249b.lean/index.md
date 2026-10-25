# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Evaluation.Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55a8308e522737d3bb10c93f74c0367f29ab2cfc",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55a8308e522737d3bb10c93f74c0367f29ab2cfc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Formula.Carrier` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval--9ddc874bafe2c62749f6b224.md) | 17 | `declaration-track:9ddc874bafe2c62749f6b224ae032f1c4a267973cbbb6cb5cc794aee7ddcdb5c` |
| 2 | `theorem` | [eval_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-var--0eb00a17e4017d270a9dc784.md) | 27 | `result-track:0eb00a17e4017d270a9dc784d88c7c1f3b30a543ee6c63c12ec94209762419cb` |
| 3 | `theorem` | [eval_falsum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-falsum--096cbbae3e477fe0b7ce0377.md) | 30 | `result-track:096cbbae3e477fe0b7ce03776203873a22fa615c136b538884032596d231a2b4` |
| 4 | `theorem` | [eval_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-truth--67d0eb04f268dd75d1d5d4e0.md) | 33 | `result-track:67d0eb04f268dd75d1d5d4e017bdd79a067471fcc631de5cb2cb5f69be6670ba` |
| 5 | `theorem` | [eval_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-neg--f701658213dd29970cece604.md) | 36 | `result-track:f701658213dd29970cece6044363e3ba2ab0278bfbe662fa8257f5b05788f3ad` |
| 6 | `theorem` | [eval_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-conj--82539eb807d4c01b21ad57cf.md) | 39 | `result-track:82539eb807d4c01b21ad57cf04a39d7e8ade93f81d9a7a7f6c7ef5218ff0a385` |
| 7 | `theorem` | [eval_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-disj--263d5b3adf46d9be6f2feb63.md) | 42 | `result-track:263d5b3adf46d9be6f2feb630ff9574ff56b8a09331d122601a542bb9389dc2b` |
| 8 | `theorem` | [eval_impl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-impl--828ee903ea60e0d6aba92987.md) | 45 | `result-track:828ee903ea60e0d6aba92987eb4aadbb7d9633e95e2f37d59509fd62aa67b344` |
| 9 | `theorem` | [eval_eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-eqv--e1472448971b763d0b1b7c94.md) | 48 | `result-track:e1472448971b763d0b1b7c94d79f899f5f2393068e861ea43a80641564ca2785` |
| 10 | `theorem` | [eval_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-const--58d53f1a17d68d80a7ecde95.md) | 51 | `result-track:58d53f1a17d68d80a7ecde953d1348acd30a5d879a094ab469772b32fbb050bc` |
| 11 | `theorem` | [eval_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean/declarations/eval-congr--f4c2e584c02e09b416866e19.md) | 56 | `result-track:f4c2e584c02e09b416866e19312e110464e19d0e9e38de3af20f05b2c7084e1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
