# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Transport.Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff1720aa885febfa3a104a4d43f54e00c0e758c6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff1720aa885febfa3a104a4d43f54e00c0e758c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Fiber.Bundle` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.Path` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransportSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d.lean/declarations/transportsystem--513c781e7e800c0fe2520e11.md) | 22 | `declaration-track:513c781e7e800c0fe2520e1190f6ca846eb3f199c8a7abb9153d02f1e27fae0a` |
| 2 | `def` | [transportPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d.lean/declarations/transportpath--37d80196d191fbb5b2d97dce.md) | 29 | `declaration-track:37d80196d191fbb5b2d97dce777125d7b5c09e8e07196f39bb29f14f04e86271` |
| 3 | `theorem` | [transportPath_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d.lean/declarations/transportpath-nil--d6de6d5596ec8a4813e31670.md) | 40 | `result-track:d6de6d5596ec8a4813e316700c4a6315ae7451d39aad30dc9a86237686443f94` |
| 4 | `theorem` | [transportPath_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant7d25a64756b298cd4a443ebf6fdcd220a0b5d63f0f0740e90b36eb4d6b21dc4d.lean/declarations/transportpath-append--e5a26e62665d9eb7c11c61b6.md) | 50 | `result-track:e5a26e62665d9eb7c11c61b6298fd2bd72ef03ca4dad09b5eb8dbfe10a09bfe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
