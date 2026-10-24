# Verification target: GRWTSK.Algebra.GroupTheory.Embedding.Variantfc37be8dc31cffe139dd3c4b12b1a57aeafb905dafe28825148b685937288dd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "862d30ac2b2708dc1c075081a42ddcddae5fbe73",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Embedding/Variantfc37be8dc31cffe139dd3c4b12b1a57aeafb905dafe28825148b685937288dd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantfc37be8dc31cffe139dd3c4b12b1a57aeafb905dafe28825148b685937288dd1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantfc37be8dc31cffe139dd3c4b12b1a57aeafb905dafe28825148b685937288dd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `862d30ac2b2708dc1c075081a42ddcddae5fbe73`.

Source path: `GRWTSK/Algebra/GroupTheory/Embedding/Variantfc37be8dc31cffe139dd3c4b12b1a57aeafb905dafe28825148b685937288dd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Embedding/Variantfc37be8dc31cffe139dd3c4b12b1a57aeafb905dafe28825148b685937288dd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Embedding.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeftEmbedding](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantfc37be8dc31cffe139dd3c4b12b1a57aeafb905dafe28825148b685937288dd1.lean/declarations/mulleftembedding--7832b8114a29ee2a937785d7.md) | 32 | `declaration-track:7832b8114a29ee2a937785d774deecc6f07eff33b61cc935333039096679c719` |
| 2 | `def` | [mulRightEmbedding](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantfc37be8dc31cffe139dd3c4b12b1a57aeafb905dafe28825148b685937288dd1.lean/declarations/mulrightembedding--3156edce70feec63ccc7f362.md) | 41 | `declaration-track:3156edce70feec63ccc7f362a46fc1a6f8d477f8f358c0f01e7de690a00cc666` |
| 3 | `theorem` | [mulLeftEmbedding_eq_mulRightEmbedding](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantfc37be8dc31cffe139dd3c4b12b1a57aeafb905dafe28825148b685937288dd1.lean/declarations/mulleftembedding-eq-mulrightembedding--503a17b14b6e299d988cde34.md) | 46 | `result-track:503a17b14b6e299d988cde346ff63c7f8f8be0ad715b5dc58db0300650b4b106` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
