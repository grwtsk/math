# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pi.Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "555339fa39699f7503c522eadbcc58ca1539f484",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `555339fa39699f7503c522eadbcc58ca1539f484`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Pi.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneCompEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/declarations/conecompeval--f53898b38f4a11327d839a62.md) | 42 | `declaration-track:f53898b38f4a11327d839a6234e4d6772733d6c38e8dd7e3f2584dac1f8af0dd` |
| 2 | `def` | [coconeCompEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/declarations/coconecompeval--ee624e0b5f3747acfcb24361.md) | 51 | `declaration-track:ee624e0b5f3747acfcb24361a8f176170a99a9e675b7a02825ecc104fa54f6e4` |
| 3 | `def` | [coneOfConeCompEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/declarations/coneofconecompeval--982a17e8d2b04376dbac8e81.md) | 60 | `declaration-track:982a17e8d2b04376dbac8e81ff6165fa4f07893c5aa68a16bf720b901cf2be45` |
| 4 | `def` | [coconeOfCoconeCompEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/declarations/coconeofcoconecompeval--7035a5ac3409dfd9b3c4f22f.md) | 71 | `declaration-track:7035a5ac3409dfd9b3c4f22fc8c7394a96ecea876f383fb7f47bc05df557f975` |
| 5 | `def` | [coneOfConeEvalIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/declarations/coneofconeevalislimit--e0554b3cedaea77a2410ddf4.md) | 82 | `declaration-track:e0554b3cedaea77a2410ddf461e3275e76f6bf679efe961e98d17ee0d2fd285b` |
| 6 | `def` | [coconeOfCoconeEvalIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/declarations/coconeofcoconeevaliscolimit--a4cffb9f0fa92019ce3eb2d5.md) | 95 | `declaration-track:a4cffb9f0fa92019ce3eb2d5f0bde22064fe7c458e53ebb14a0806e41dedd08e` |
| 7 | `theorem` | [hasLimit_of_hasLimit_comp_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/declarations/haslimit-of-haslimit-comp-eval--e31b155db39c3de1d68a242e.md) | 113 | `result-track:e31b155db39c3de1d68a242edeb6eb21970586a902ef20e9027f058e52d3f32e` |
| 8 | `theorem` | [hasColimit_of_hasColimit_comp_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant40b156c63b0c08570f4d926408492524b2e602b73e3a1bdce6da5ac1a7a35ad5.lean/declarations/hascolimit-of-hascolimit-comp-eval--796a50dfa1b4b58372043607.md) | 128 | `result-track:796a50dfa1b4b583720436073e1c5103616900c034b97d3bb070a8c5d3a8c342` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
