# Verification target: GRWTSK.LinearAlgebra.WeightedPermutationIntegral

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd45eb8b24716469e41e61eaa54842e41f273f2c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/WeightedPermutationIntegral.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd45eb8b24716469e41e61eaa54842e41f273f2c`.

Source path: `GRWTSK/LinearAlgebra/WeightedPermutationIntegral.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/WeightedPermutationIntegral.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transport](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/declarations/transport--796e7b349c99316884c53801.md) | 24 | `declaration-track:796e7b349c99316884c53801a6b810a2f1ad7af385141bc2ea1f659dd0903f3c` |
| 2 | `theorem` | [transport_at](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/declarations/transport-at--6fb65e5f4cf7f7b510f91775.md) | 32 | `result-track:6fb65e5f4cf7f7b510f917755ce30d5fe5b4ec977ad5d0d8515c0685b8150261` |
| 3 | `theorem` | [image_iff](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/declarations/image-iff--95df840ec92a427a3c191feb.md) | 36 | `result-track:95df840ec92a427a3c191febf4684477d838833622742b1389466d659d723868` |
| 4 | `theorem` | [transport_injective](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/declarations/transport-injective--d0944c88f3f28594665b6347.md) | 50 | `result-track:d0944c88f3f28594665b634776008535e6f856c4eb2c2dd27af52c136071c172` |
| 5 | `theorem` | [uniformClearing_iff](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/declarations/uniformclearing-iff--4612d4b1cbc67d746db09e1f.md) | 59 | `result-track:4612d4b1cbc67d746db09e1f266de96e638d4dddfe72987ccc700913df036bf8` |
| 6 | `theorem` | [surjective_iff](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/declarations/surjective-iff--d1f03e3b8a055f5646095245.md) | 78 | `result-track:d1f03e3b8a055f5646095245b8e0fc31d1017efb3990029e63a8567a45e8c627` |
| 7 | `theorem` | [target_not_in_image](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/declarations/target-not-in-image--55e217b2698d206ca3341737.md) | 83 | `result-track:55e217b2698d206ca334173784a95a2f80b39028e3271338d9505796cf20ce52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
