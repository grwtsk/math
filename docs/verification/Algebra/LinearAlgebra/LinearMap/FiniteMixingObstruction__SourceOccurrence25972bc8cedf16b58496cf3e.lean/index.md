# Verification target: GRWTSK.LinearAlgebra.LinearMap.FiniteMixingObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64628d3e27638a1eec8c1abb350e8ed8e05938dd",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence25972bc8cedf16b58496cf3e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence25972bc8cedf16b58496cf3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64628d3e27638a1eec8c1abb350e8ed8e05938dd`.

Source path: `GRWTSK/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [synthesis_eq_of_basis_realization](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence25972bc8cedf16b58496cf3e.lean/declarations/synthesis-eq-of-basis-realization--1f1bda5d84ff8a0ea936c69b.md) | 34 | `result-track:1f1bda5d84ff8a0ea936c69be06b3895f6568b539c35dd0d8b1171f0f7cba544` |
| 2 | `theorem` | [independent_linear_mix_requires_independent_input](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence25972bc8cedf16b58496cf3e.lean/declarations/independent-linear-mix-requires-independent-input--1ae1f7f81118742a8d1b912a.md) | 50 | `result-track:1ae1f7f81118742a8d1b912a858e42aa79827a68f68d73a173677ab7430e91b0` |
| 3 | `theorem` | [zero_coordinate_no_independent_linear_mix](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence25972bc8cedf16b58496cf3e.lean/declarations/zero-coordinate-no-independent-linear-mix--036c70d59b64bb6ae44c65b9.md) | 75 | `result-track:036c70d59b64bb6ae44c65b9aa1f675a4a834f76c2d2f4a5cb56a680dd11464c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
