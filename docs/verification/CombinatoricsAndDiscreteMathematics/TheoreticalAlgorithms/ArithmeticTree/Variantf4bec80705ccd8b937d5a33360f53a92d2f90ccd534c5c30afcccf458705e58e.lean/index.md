# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArithmeticTree.Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8acbc1a7250948cbf2a77fbac1c7ddeb86929115",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8acbc1a7250948cbf2a77fbac1c7ddeb86929115`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.PrimePower` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CellularArithmeticTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean/declarations/cellulararithmetictree--aff44f66cc753bca1aa78b95.md) | 26 | `declaration-track:aff44f66cc753bca1aa78b95c046b9f47677106f299219bda32342faf74ef50c` |
| 2 | `def` | [decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean/declarations/decode--d974eb9e84c947843ecccf6d.md) | 31 | `declaration-track:d974eb9e84c947843ecccf6d98acd9b60ceb116e2c8a2a4181c637ce29349835` |
| 3 | `def` | [PrimeStrictlyIncreasing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean/declarations/primestrictlyincreasing--d1e9dfcffcc6f60207f48cf0.md) | 34 | `declaration-track:d1e9dfcffcc6f60207f48cf0cb6bcb2f9aabcd373910ee3723d47d369a52c578` |
| 4 | `def` | [Canonical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean/declarations/canonical--503ff89f0b72ac217dd163cb.md) | 38 | `declaration-track:503ff89f0b72ac217dd163cb9551481e72ef24c54b13b3646fda7600679e9b2d` |
| 5 | `theorem` | [decode_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean/declarations/decode-empty--07d0baa429eae641a85935ff.md) | 43 | `result-track:07d0baa429eae641a85935ff075407d9676917f51acff509a62f83922d75fdfd` |
| 6 | `theorem` | [decode_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e.lean/declarations/decode-cons--d122dde392dd001aed7c0b68.md) | 47 | `result-track:d122dde392dd001aed7c0b68e32a56e2e36530f17eaf57b8c0b5a3980cfc892e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
