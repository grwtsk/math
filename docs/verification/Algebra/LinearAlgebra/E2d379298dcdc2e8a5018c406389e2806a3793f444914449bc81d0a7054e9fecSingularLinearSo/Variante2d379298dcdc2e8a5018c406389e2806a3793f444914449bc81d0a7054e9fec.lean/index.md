# Verification target: GRWTSK.Algebra.LinearAlgebra.E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo.Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "520951b60930e390eede4112b7bf1df787c3e4be",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `520951b60930e390eede4112b7bf1df787c3e4be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceRange` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearRangeFactorization](../../../../../mathematics/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean/declarations/linearrangefactorization--1a4b1bbf056906baad5f8467.md) | 32 | `declaration-track:1a4b1bbf056906baad5f84679446cc03d8c6cd1e660c4514be88067610ee00bd` |
| 2 | `def` | [ofRangeLe](../../../../../mathematics/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean/declarations/ofrangele--8fbf99a220dd211089cc0fda.md) | 41 | `declaration-track:8fbf99a220dd211089cc0fdac7bfa34422330ffc0941a53673714e64df1a33af` |
| 3 | `theorem` | [factor_apply](../../../../../mathematics/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean/declarations/factor-apply--95e58fefb105211b28c645d1.md) | 66 | `result-track:95e58fefb105211b28c645d143bdda6c1cf3796b51eeb9bdd450d53cd1bca763` |
| 4 | `def` | [singularProvenanceFactorization](../../../../../mathematics/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean/declarations/singularprovenancefactorization--220251f8295b21e3832aa9d8.md) | 77 | `declaration-track:220251f8295b21e3832aa9d8e38dc61dbfaf194a625a8d952a647d47d67c212c` |
| 5 | `theorem` | [singularProvenanceFactorization_apply](../../../../../mathematics/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean/declarations/singularprovenancefactorization-apply--d018815a3adb3a8cf0c5fb46.md) | 93 | `result-track:d018815a3adb3a8cf0c5fb4682669ea33a3b33739e79ee5a7d0fef3b5cb577b0` |
| 6 | `def` | [singularBlockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean/declarations/singularblockschursolver--c399fa06af2c42aebf6bd076.md) | 109 | `declaration-track:c399fa06af2c42aebf6bd0761584e32daff0d865918781eb542cb837b05e24a1` |
| 7 | `theorem` | [singular_schur_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variante2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fec.lean/declarations/singular-schur-nonnegative--82a540fc4dac05880d7714d4.md) | 144 | `result-track:82a540fc4dac05880d7714d465492427008ea64708cb8f1962028009fb95bfca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
