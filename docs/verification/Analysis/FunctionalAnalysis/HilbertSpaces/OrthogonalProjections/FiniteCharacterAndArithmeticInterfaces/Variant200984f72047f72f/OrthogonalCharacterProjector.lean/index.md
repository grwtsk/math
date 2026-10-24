# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.OrthogonalProjections.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.OrthogonalCharacterProjector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3db1c06485b240ba7f6cceadba441518726200e4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3db1c06485b240ba7f6cceadba441518726200e4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 26; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.FiniteCharacterCoordinatesAndRegularAverage`](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/index.md) — import line 27; pinned internal source present.
- [`GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.NormalizedCharacterVector`](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/index.md) — import line 28; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [conj_character_inv_mul](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/conj-character-inv-mul--0ddfa714bc0bc4e918ef677f.md) | 52 | `result-track:0ddfa714bc0bc4e918ef677fdd529722c543f903701933edbbbbe8fa9c5f2c82` |
| 2 | `theorem` | [characterRegularAverageMatrix_apply](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/characterregularaveragematrix-apply--e03a82c40aadd861be12f121.md) | 68 | `result-track:e03a82c40aadd861be12f1215f355365bfff7b4dec4e85647d0fd4e4dc88707c` |
| 3 | `theorem` | [characterRegularAverageMatrix_eq_outer](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/characterregularaveragematrix-eq-outer--c8f3d74bdedee5ed927c2ed4.md) | 97 | `result-track:c8f3d74bdedee5ed927c2ed40e0c243803bd02d13c8b4e6e57f8d6ebe73c53b1` |
| 4 | `def` | [characterProjector](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/characterprojector--4bb91d29d2d080ab83fbfbf3.md) | 120 | `declaration-track:4bb91d29d2d080ab83fbfbf3dd5a26428f73369c054199ad931d6d9c20bc8cfe` |
| 5 | `theorem` | [characterProjector_eq_regularAverage](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/characterprojector-eq-regularaverage--ed1636d0a0707c44c9aad248.md) | 126 | `result-track:ed1636d0a0707c44c9aad248a4968e084c0826520f46c7d75c267cd8c1e78da7` |
| 6 | `theorem` | [characterProjector_idempotent](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/characterprojector-idempotent--104e82bd8c70ef3be8f7cae6.md) | 143 | `result-track:104e82bd8c70ef3be8f7cae6da5d9c7c16e083f1c929f5281844ba131e9f8f5e` |
| 7 | `theorem` | [characterProjector_selfAdjoint](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/characterprojector-selfadjoint--5652287ad5318e07d70261bf.md) | 148 | `result-track:5652287ad5318e07d70261bf42c26851967f4e28ecca66b15ed29b6ee44dab27` |
| 8 | `theorem` | [characterProjector_orthogonal](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/characterprojector-orthogonal--bdda0992bd24f27dcd8f6576.md) | 153 | `result-track:bdda0992bd24f27dcd8f657658552b84378574c250dd89bed42eed6764fc5a80` |
| 9 | `structure` | [CharacterProjector](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/characterprojector--86f9cb57a87c4b16180ffd72.md) | 160 | `declaration-track:86f9cb57a87c4b16180ffd7293dae0f857e0fb23a9c9b89ce59a8e1f351f16a0` |
| 10 | `def` | [canonicalCharacterProjector](../../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/declarations/canonicalcharacterprojector--e1de27689ef69bdb3bebb18f.md) | 165 | `declaration-track:e1de27689ef69bdb3bebb18f946296b61e5cade967f3d1e2810286c3bc5d68d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
