# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.FactorizationRebuild.Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "603a253c234e91b9692867891ccb1c567066641c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `603a253c234e91b9692867891ccb1c567066641c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.Factorization` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.NumberTheory.FundamentalTheorem` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_reconstructs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13.lean/declarations/factorization-reconstructs--b373740fa737b0fec0866726.md) | 16 | `result-track:b373740fa737b0fec0866726d8bb1e8a1461e86d9d74013652b5b1db089cb672` |
| 2 | `theorem` | [factorization_support_prime_checked](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13.lean/declarations/factorization-support-prime-checked--ac577c4fc6e333af9bda6644.md) | 21 | `result-track:ac577c4fc6e333af9bda6644f6296227f3bfaa65d41b48ef94f7e2692c087ef9` |
| 3 | `theorem` | [no_prime_support_of_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13.lean/declarations/no-prime-support-of-one--ddb73ecfd3e1e3b1a76289c7.md) | 28 | `result-track:ddb73ecfd3e1e3b1a76289c7a4ecb25d4caaf2214fbf85bcee7a999ce1411a97` |
| 4 | `theorem` | [exists_prime_support_of_gt_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13.lean/declarations/exists-prime-support-of-gt-one--de732ae46378641f00db3020.md) | 39 | `result-track:de732ae46378641f00db302022f43f96960dacdf999fd53becc135ec5c3e0651` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
