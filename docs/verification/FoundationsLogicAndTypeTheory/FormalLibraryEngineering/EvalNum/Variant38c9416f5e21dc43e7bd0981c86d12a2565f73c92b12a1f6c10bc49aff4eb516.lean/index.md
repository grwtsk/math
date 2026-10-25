# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalNum.Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f5ed8a74ac65d2bac5945db25c7a7a720a81f01",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f5ed8a74ac65d2bac5945db25c7a7a720a81f01`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.IntInstTesters` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean/declarations/checkexp--ebf2e8c7c5046476ef3464bf.md) | 23 | `declaration-track:ebf2e8c7c5046476ef3464bf333c972103b914bac957aba9f886cb7ef92e26c3` |
| 2 | `def` | [evalNatCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean/declarations/evalnatcore--e547490985fb31081c636cca.md) | 33 | `declaration-track:e547490985fb31081c636cca9c57524b1c0093d03b03f86f8b9012f4d753a23d` |
| 3 | `def` | [evalIntCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean/declarations/evalintcore--5bc30fe5946decd637e41346.md) | 61 | `declaration-track:5bc30fe5946decd637e41346392a3b465224e9bba34033334abe69ad892f63ce` |
| 4 | `def` | [evalNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean/declarations/evalnat--ba799625f1e1108675084596.md) | 89 | `declaration-track:ba799625f1e1108675084596f5b85ce75f5dd39a391d580fd9e967cc09c18874` |
| 5 | `def` | [evalInt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant38c9416f5e21dc43e7bd0981c86d12a2565f73c92b12a1f6c10bc49aff4eb516.lean/declarations/evalint--dad626c0d5818851303f00f4.md) | 92 | `declaration-track:dad626c0d5818851303f00f43f0718a6893991120db614683b4aab61d13c0754` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
