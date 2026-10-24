# Verification target: GRWTSK.Algebra.LinearAlgebra.Complex.Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "203c6e96a2f231b6005eb25794f13644ef69ae1e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `203c6e96a2f231b6005eb25794f13644ef69ae1e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isometryEquivSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean/declarations/isometryequivsumsquares--f0571b276747d51c08294a6b.md) | 36 | `declaration-track:f0571b276747d51c08294a6b5b3cef6e697a7a53da89e4e5ae31441c100f6394` |
| 2 | `def` | [isometryEquivSumSquaresUnits](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean/declarations/isometryequivsumsquaresunits--da9788414345b71978dbaccc.md) | 73 | `declaration-track:da9788414345b71978dbaccc1fbb85dfbb1cc58d99b9e7e60cf7fc1dff162c93` |
| 3 | `theorem` | [equivalent_sum_squares](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean/declarations/equivalent-sum-squares--bd76e51b0010ccb03b5286ae.md) | 79 | `result-track:bd76e51b0010ccb03b5286ae8d5bfa91bc4650034a81dbbe8caa7b05f9720492` |
| 4 | `theorem` | [complex_equivalent](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean/declarations/complex-equivalent--6a00494ed3652221580fe830.md) | 86 | `result-track:6a00494ed3652221580fe83071734491b59ea65c32d8de35511105394d6dfeaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
