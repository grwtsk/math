# Verification target: GRWTSK.Algebra.LinearAlgebra.SingularLinearSolver.Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "760a9dfb99dbd8b1c6799fa62fd4bf4dcaa2ac7d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `760a9dfb99dbd8b1c6799fa62fd4bf4dcaa2ac7d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean.json)

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
| 1 | `structure` | [LinearRangeFactorization](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/declarations/linearrangefactorization--61fe603b34c1d0e145642a25.md) | 32 | `declaration-track:61fe603b34c1d0e145642a256aa89c105203cee533c9704377a21b7d2a2bd5d6` |
| 2 | `def` | [ofRangeLe](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/declarations/ofrangele--2669562cf6d8b10329fcea87.md) | 41 | `declaration-track:2669562cf6d8b10329fcea87bda3a1fba506abf26e95d2e06e9bd5b5f54a5f5b` |
| 3 | `theorem` | [factor_apply](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/declarations/factor-apply--a279f087757efd2b14e7c5b7.md) | 62 | `result-track:a279f087757efd2b14e7c5b7836678840fe3e321543ec83db3dab0d59d12a115` |
| 4 | `def` | [singularProvenanceFactorization](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/declarations/singularprovenancefactorization--69e856764bfae1184bdb0f8e.md) | 73 | `declaration-track:69e856764bfae1184bdb0f8e26e3b9826a5113e5258df805a3c669bf2653b930` |
| 5 | `theorem` | [singularProvenanceFactorization_apply](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/declarations/singularprovenancefactorization-apply--e61631322909c0850d255e2b.md) | 89 | `result-track:e61631322909c0850d255e2bd90124fd063c53f2bbee54b5ac74a0edb22af35e` |
| 6 | `def` | [singularBlockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/declarations/singularblockschursolver--6e762713c58179905a21a88e.md) | 105 | `declaration-track:6e762713c58179905a21a88e503309344c82c6e90439d49fd525ce6c56cf8841` |
| 7 | `theorem` | [singular_schur_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/declarations/singular-schur-nonnegative--a72998babec0f362d3a0a247.md) | 140 | `result-track:a72998babec0f362d3a0a24763620b7a3219241809e24e819091c306dce92fff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
