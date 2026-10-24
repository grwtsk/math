# Verification target: GRWTSK.Algebra.LinearAlgebra.Determinant.Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aff1ad9a1eb61142160cf8e8650afec8caabfb6",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aff1ad9a1eb61142160cf8e8650afec8caabfb6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Determinant/Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Determinant/Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_conjAe](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424.lean/declarations/det-conjae--5e9c36b7479cc16fccfb603b.md) | 22 | `result-track:5e9c36b7479cc16fccfb603b0d23db14fe5a5a33f967d49368eafdc513729166` |
| 2 | `theorem` | [linearEquiv_det_conjAe](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424.lean/declarations/linearequiv-det-conjae--a944001c6e7d26fab4461c87.md) | 28 | `result-track:a944001c6e7d26fab4461c87386c1b2a3d5e20ccf2d55d6088e1505f3519ce0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
