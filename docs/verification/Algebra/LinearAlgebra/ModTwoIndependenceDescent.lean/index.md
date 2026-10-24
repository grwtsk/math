# Verification target: GRWTSK.LinearAlgebra.ModTwoIndependenceDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ebbda4394deb18a86815feb686e476bcb14cf8f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/ModTwoIndependenceDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/ModTwoIndependenceDescent.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/ModTwoIndependenceDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ebbda4394deb18a86815feb686e476bcb14cf8f`.

Source path: `GRWTSK/LinearAlgebra/ModTwoIndependenceDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/ModTwoIndependenceDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMass](../../../../mathematics/Algebra/LinearAlgebra/ModTwoIndependenceDescent.lean/declarations/coefficientmass--4fc0d6efda445ea197b963c2.md) | 35 | `declaration-track:4fc0d6efda445ea197b963c2c7d47fccaa613a74aefd3e74175d81f3a5231277` |
| 2 | `theorem` | [coefficientMass_double](../../../../mathematics/Algebra/LinearAlgebra/ModTwoIndependenceDescent.lean/declarations/coefficientmass-double--13ec9994ac6805759bb08491.md) | 39 | `result-track:13ec9994ac6805759bb084915f08d68a11102e5f861303c64a8691724633faeb` |
| 3 | `theorem` | [linearIndependent_of_even_relations](../../../../mathematics/Algebra/LinearAlgebra/ModTwoIndependenceDescent.lean/declarations/linearindependent-of-even-relations--398b72e512a12e38aa168623.md) | 57 | `result-track:398b72e512a12e38aa1686230a91fdbd546f1bc6b68ea86698b9a6e5a60351b8` |
| 4 | `theorem` | [doubling_counterexample](../../../../mathematics/Algebra/LinearAlgebra/ModTwoIndependenceDescent.lean/declarations/doubling-counterexample--287b2a0ce4bdf76f214051a0.md) | 110 | `result-track:287b2a0ce4bdf76f214051a0ea877e4c5fbdcb1b5110957eae5adb91dfd764c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
