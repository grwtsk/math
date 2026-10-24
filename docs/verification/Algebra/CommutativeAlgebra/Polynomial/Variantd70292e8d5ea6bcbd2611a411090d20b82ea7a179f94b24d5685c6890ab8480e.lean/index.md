# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e5faca769f987ee3a9d4367a6eece1cefc877f3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e5faca769f987ee3a9d4367a6eece1cefc877f3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Rolle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_roots_toFinset_le_card_roots_derivative_diff_roots_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean/declarations/card-roots-tofinset-le-card-roots-derivative-diff-roots-succ--36e02ea278233b2a6f0bc917.md) | 34 | `result-track:36e02ea278233b2a6f0bc917551a1267d36817a58009c80f58eed618cec03299` |
| 2 | `theorem` | [card_roots_toFinset_le_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean/declarations/card-roots-tofinset-le-derivative--5044c563760ec63c240121cb.md) | 48 | `result-track:5044c563760ec63c240121cbabddf7294c9194cd14200422c6f518f1a5c6abf7` |
| 3 | `theorem` | [card_roots_le_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean/declarations/card-roots-le-derivative--72d9d21b6d9e535b58e84393.md) | 55 | `result-track:72d9d21b6d9e535b58e84393b2daff80636380164e4abe8779ae1ea49c731e64` |
| 4 | `theorem` | [card_rootSet_le_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean/declarations/card-rootset-le-derivative--8e07076174d2bfba85ebcca1.md) | 86 | `result-track:8e07076174d2bfba85ebcca158a18c04e315770e1c5e7f1c6a995294f3d45029` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
