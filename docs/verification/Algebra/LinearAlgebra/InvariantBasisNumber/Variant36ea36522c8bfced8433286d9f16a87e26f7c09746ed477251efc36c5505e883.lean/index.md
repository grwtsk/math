# Verification target: GRWTSK.Algebra.LinearAlgebra.InvariantBasisNumber.Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bb6fb868699b025d01282dfeef5864f3ede0fb5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bb6fb868699b025d01282dfeef5864f3ede0fb5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvariantBasisNumber/Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SemiringInverse` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.InvariantBasisNumber` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Matrix.square_of_invertible](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883.lean/declarations/matrix-square-of-invertible--491f1ef337420800f5767ad3.md) | 19 | `result-track:491f1ef337420800f5767ad373e80c0fefe33d077e84549ccba8eafe65d07abb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883.lean/declarations/instance--14713a83ba84c557f70f366e.md) | 28 | `declaration-track:14713a83ba84c557f70f366e1e6d3a7afc656731afd33bd337843c161449eb41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
