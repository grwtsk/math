# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Resolver.Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b461f8a8c792ab647243d538e627a3a6d6d2b365",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b461f8a8c792ab647243d538e627a3a6d6d2b365`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Core.Request` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Core.Receipt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GraphAccessResolution](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812.lean/declarations/graphaccessresolution--63de282122d6331c32cb5bb3.md) | 22 | `declaration-track:63de282122d6331c32cb5bb33219f8fb6b32858076723a7bd189f66c55617506` |
| 2 | `inductive` | [GraphAccessEvidence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812.lean/declarations/graphaccessevidence--60a579eeaa2e79eb29772563.md) | 33 | `declaration-track:60a579eeaa2e79eb29772563f1a998ff07eb258ca5db557b43ebd7e273301d74` |
| 3 | `def` | [resolveAccess](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812.lean/declarations/resolveaccess--84a3f48cef6f240539e7ea9b.md) | 44 | `declaration-track:84a3f48cef6f240539e7ea9b216c90282afcc8a7b9077a9e4ae97ec0b1c91233` |
| 4 | `theorem` | [access_resolver_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812.lean/declarations/access-resolver-total--aeaeaf3d65691d7acc2166c2.md) | 59 | `result-track:aeaeaf3d65691d7acc2166c2ff499033f0dab910bfa0c10ebd7bf3b72ad2a2db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
