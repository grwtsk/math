# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Propositional.ConstructiveDerivation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c69c33cfd8457d99ec78ccc048bb30db0948e9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c69c33cfd8457d99ec78ccc048bb30db0948e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Formula](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean/declarations/formula--04eb7cccb7c2ddddac765b73.md) | 14 | `declaration-track:04eb7cccb7c2ddddac765b73b3701d5b802ab18187265f67c045c055dd826c7c` |
| 2 | `def` | [Meaning](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean/declarations/meaning--90aef62dde11f77b158b90ee.md) | 22 | `declaration-track:90aef62dde11f77b158b90ee5489e619f80e3854d8f66675335d682b964a82f0` |
| 3 | `inductive` | [Derives](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean/declarations/derives--3a8c19857ce97eabea525f51.md) | 30 | `declaration-track:3a8c19857ce97eabea525f519d3c0486699068227988cb8a38c062e6e68b874e` |
| 4 | `theorem` | [sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean/declarations/sound--87ce7245d4f8f9761698b1b2.md) | 47 | `result-track:87ce7245d4f8f9761698b1b23031aaf929c5a3e8ba1c7adc79479ceedec9c760` |
| 5 | `theorem` | [closed_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean/declarations/closed-sound--e92cc08b0f53152b38bda181.md) | 82 | `result-track:e92cc08b0f53152b38bda181285b9ceba1cf1da47f0d78ac7d399c05a2dbb260` |
| 6 | `theorem` | [no_closed_falsity](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean/declarations/no-closed-falsity--efec4ccbb1be03c836d76096.md) | 86 | `result-track:efec4ccbb1be03c836d760960b2bc6d53ebd4c3fe2ad6087bd75551dd89e0107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
