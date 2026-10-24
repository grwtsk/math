# Verification target: GRWTSK.Algebra.LinearAlgebra.SingularLinearSolver.Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ec6901a856dbfff934b333f5aa01d78707740ba",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ec6901a856dbfff934b333f5aa01d78707740ba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceRange` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearRangeFactorization](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean/declarations/linearrangefactorization--3fdf7759114a3bb672be3f1a.md) | 40 | `declaration-track:3fdf7759114a3bb672be3f1afe8a12d78f1c031474e3b10ab568a2f0f30b1281` |
| 2 | `def` | [ofRangeLe](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean/declarations/ofrangele--71f37c25a2506b68666e0f0c.md) | 49 | `declaration-track:71f37c25a2506b68666e0f0ccf2b989c2a3c8340b796f2e497ae09ae3af51946` |
| 3 | `theorem` | [factor_apply](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean/declarations/factor-apply--4801f4ce6d4c7917108227a9.md) | 70 | `result-track:4801f4ce6d4c7917108227a9515b5c3b1d02291aa8103dc63cd7cfe8529829b0` |
| 4 | `def` | [singularProvenanceFactorization](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean/declarations/singularprovenancefactorization--15199d6a0dd03e6b7f0d7402.md) | 81 | `declaration-track:15199d6a0dd03e6b7f0d7402274814e310771c2d7fb60b62d67e76990ff1bad5` |
| 5 | `theorem` | [singularProvenanceFactorization_apply](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean/declarations/singularprovenancefactorization-apply--d44e4795a8fdfa4a0ee461e2.md) | 97 | `result-track:d44e4795a8fdfa4a0ee461e288fd58cc8f0783bafe240a10da661ed8336a917e` |
| 6 | `def` | [singularBlockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean/declarations/singularblockschursolver--b2244aa44f039b6f83938512.md) | 113 | `declaration-track:b2244aa44f039b6f8393851210b34e6f437e38c2e70c1d5cdcc9eaf8b9b6d0b7` |
| 7 | `theorem` | [singular_schur_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean/declarations/singular-schur-nonnegative--5a07cd7e8f8a0d9f5d00adc5.md) | 148 | `result-track:5a07cd7e8f8a0d9f5d00adc5316b4acdd464927ef8e37dd63271363201de0179` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
