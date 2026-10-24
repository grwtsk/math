# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualCurvatureFiniteReadoutAttempt02.Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d1f9c221a52c711d70aa6274047f93947d6671b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d1f9c221a52c711d70aa6274047f93947d6671b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureResolution` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gridPoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/gridpoint--18ff2748c0f426f270144b8b.md) | 16 | `declaration-track:18ff2748c0f426f270144b8be87b3c63ce44120cb3ac5016a3cff7bccfbdb1bb` |
| 2 | `theorem` | [gridPoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/gridpoint-zero--e8c0204cad9e867e4afa63c2.md) | 18 | `result-track:e8c0204cad9e867e4afa63c2453877163596e71305e2a660e5ae0134ded65248` |
| 3 | `theorem` | [gridPoint_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/gridpoint-upper--4f0729458bf53a5df83abcee.md) | 21 | `result-track:4f0729458bf53a5df83abceed7c393d937d906b68b50d3233f9b99bb483ec45a` |
| 4 | `theorem` | [gridPoint_step_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/gridpoint-step-pos--ee09c5db384ab726cbd19fb6.md) | 26 | `result-track:ee09c5db384ab726cbd19fb6bd7614410f6bdc4b8630060c0838d0140db926d7` |
| 5 | `theorem` | [leftGridSample_eq_on_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/leftgridsample-eq-on-cell--a96b5e636c28701715994bca.md) | 34 | `result-track:a96b5e636c28701715994bcab0b789141814b698832595fa69093d40d6a870a7` |
| 6 | `theorem` | [actual_curvature_cell_FTC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/actual-curvature-cell-ftc--654962f3fb2b1b60590a4f79.md) | 55 | `result-track:654962f3fb2b1b60590a4f7958e2b0b4cad7d72aa6d713925c98b823a62a8708` |
| 7 | `theorem` | [actual_grid_cell_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/actual-grid-cell-integral--42cf5900395e02f114c9daee.md) | 60 | `result-track:42cf5900395e02f114c9daee40aca9bf6639e5bc3c2c8596d34dd6785781aa82` |
| 8 | `theorem` | [sampled_grid_cell_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/sampled-grid-cell-intervalintegrable--0d5775fea87ee8a275df2b6f.md) | 77 | `result-track:0d5775fea87ee8a275df2b6f4067e5f0c57fee484a9781f43e20eff2311c9bcb` |
| 9 | `def` | [finiteCurvatureReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/finitecurvaturereadout--8a956491912a17f8e76c4dd9.md) | 91 | `declaration-track:8a956491912a17f8e76c4dd9a8b22bbe605c0ccea22d8bf4c94ec6b7fbc45aeb` |
| 10 | `theorem` | [sampled_grid_eq_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variantd5eafd32480202de7b8a678a268f03181c73656644583d149e8a03f43bfb1a88.lean/declarations/sampled-grid-eq-finite--6d54fb097b67b85459d298e0.md) | 97 | `result-track:6d54fb097b67b85459d298e00c54972b2406b1954eca1edf8697a0a02e18ab2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
