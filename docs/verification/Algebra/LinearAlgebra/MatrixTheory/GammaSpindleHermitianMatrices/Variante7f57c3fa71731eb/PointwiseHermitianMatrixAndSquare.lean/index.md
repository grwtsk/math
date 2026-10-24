# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.GammaSpindleHermitianMatrices.Variante7f57c3fa71731eb.PointwiseHermitianMatrixAndSquare

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0ef3cbc42dec04cce02c7f9a72ed3ee3252d1f4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0ef3cbc42dec04cce02c7f9a72ed3ee3252d1f4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Reflection` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 24; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.SpecialFunctions.ClassicalFunctions.GammaFunction.ConductorScaledGammaData.Variante7f57c3fa71731eb.GammaScalarsRotorsAndWholeCanonicalPackage`](../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/index.md) — import line 26; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GammaSpindleDirac](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean/declarations/gammaspindledirac--b42ac509d81921a92b72d60a.md) | 53 | `declaration-track:b42ac509d81921a92b72d60acc24e13c2c87e61a8e44953c21f0ec0e4be276c4` |
| 2 | `theorem` | [gammaSpindleDirac_selfAdjoint](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean/declarations/gammaspindledirac-selfadjoint--c33bc357891ffa678990ed10.md) | 60 | `result-track:c33bc357891ffa678990ed1089b5e67d772d7e18ce05a914a620961f829a0cf4` |
| 3 | `theorem` | [gammaSpindleDirac_characterConjugate](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean/declarations/gammaspindledirac-characterconjugate--5d254b9b33778e5e5d87e078.md) | 70 | `result-track:5d254b9b33778e5e5d87e078e305ab6512d75cb38bb00cdfc051a23e9a4156af` |
| 4 | `theorem` | [gammaSpindleDirac_sq](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean/declarations/gammaspindledirac-sq--487d58a5471df37f8a8bd333.md) | 76 | `result-track:487d58a5471df37f8a8bd333140886f2a94109e3882ad783a488107be06e3736` |
| 5 | `theorem` | [gammaSpindle_square_nonnegative](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean/declarations/gammaspindle-square-nonnegative--239a7e59f64ec512d52399dd.md) | 90 | `result-track:239a7e59f64ec512d52399ddc14bd961892fb7d1ce89880513f32290b6e08e18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
