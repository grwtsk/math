# Verification target: GRWTSK.Algebra.GroupTheory.Embedding.Variant052b551cf45cc207b34e3cfe3dca693c568fe2c186b8c61ba8dcdfc09a3171e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5be10ad9531a9a8b7c601320fb8ea60b5146c99c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Embedding/Variant052b551cf45cc207b34e3cfe3dca693c568fe2c186b8c61ba8dcdfc09a3171e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant052b551cf45cc207b34e3cfe3dca693c568fe2c186b8c61ba8dcdfc09a3171e8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant052b551cf45cc207b34e3cfe3dca693c568fe2c186b8c61ba8dcdfc09a3171e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5be10ad9531a9a8b7c601320fb8ea60b5146c99c`.

Source path: `GRWTSK/Algebra/GroupTheory/Embedding/Variant052b551cf45cc207b34e3cfe3dca693c568fe2c186b8c61ba8dcdfc09a3171e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Embedding/Variant052b551cf45cc207b34e3cfe3dca693c568fe2c186b8c61ba8dcdfc09a3171e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeftEmbedding](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant052b551cf45cc207b34e3cfe3dca693c568fe2c186b8c61ba8dcdfc09a3171e8.lean/declarations/mulleftembedding--b3628d10b599391c446c0102.md) | 34 | `declaration-track:b3628d10b599391c446c01028c1ec7aeac7774aadcf704edd04791a383577182` |
| 2 | `def` | [mulRightEmbedding](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant052b551cf45cc207b34e3cfe3dca693c568fe2c186b8c61ba8dcdfc09a3171e8.lean/declarations/mulrightembedding--fddda39081e281f0430060e4.md) | 48 | `declaration-track:fddda39081e281f0430060e41579eec481aad57b4ce8f05d577af23e00e9a992` |
| 3 | `theorem` | [mul_left_embedding_eq_mul_right_embedding](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant052b551cf45cc207b34e3cfe3dca693c568fe2c186b8c61ba8dcdfc09a3171e8.lean/declarations/mul-left-embedding-eq-mul-right-embedding--f14ef0204f90beb1b6e162d4.md) | 57 | `result-track:f14ef0204f90beb1b6e162d459d2ccd26b81b785cbce22348d29a9f4e9657a3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
