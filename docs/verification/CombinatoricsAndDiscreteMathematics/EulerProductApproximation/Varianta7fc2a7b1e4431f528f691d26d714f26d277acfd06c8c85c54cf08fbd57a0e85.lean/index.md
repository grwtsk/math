# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EulerProductApproximation.Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a3aed17dfe8b6d77d7ea9dcde2eb59187a10e76",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a3aed17dfe8b6d77d7ea9dcde2eb59187a10e76`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ZetaRealHalfPlane` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.Exposition.ClassicalNumberTheoryIndex` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteZetaEulerFactorReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/declarations/finitezetaeulerfactorreal--8c8f75839c7937971e3bc729.md) | 21 | `declaration-track:8c8f75839c7937971e3bc7297f38629fff624c7b113fbb2b661048b6bd831c78` |
| 2 | `def` | [finiteZetaEulerProductReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/declarations/finitezetaeulerproductreal--2df8bee2e5e8b24db73efc8d.md) | 27 | `declaration-track:2df8bee2e5e8b24db73efc8d5d29216a1a7b87a5edd99ec71cbeff8cf9e6bc62` |
| 3 | `theorem` | [finiteZetaEulerFactorReal_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/declarations/finitezetaeulerfactorreal-pos--516f46646ee942a754a1c1c0.md) | 33 | `result-track:516f46646ee942a754a1c1c03a41cffc982ab876dc31093983b48e6e130c7597` |
| 4 | `theorem` | [finiteZetaEulerProductReal_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/declarations/finitezetaeulerproductreal-pos--e8cf60d21d3d133a6333f9db.md) | 44 | `result-track:e8cf60d21d3d133a6333f9db9166a7a1c3fb4606bf530ad30256921d2a8c1608` |
| 5 | `theorem` | [finiteZetaEulerFactorReal_ge_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/declarations/finitezetaeulerfactorreal-ge-one--939cdf4ca5883db1c0848db0.md) | 55 | `result-track:939cdf4ca5883db1c0848db09acf6f5187126ff702ad6629f67404777b55142c` |
| 6 | `theorem` | [finiteZetaEulerProductReal_ge_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/declarations/finitezetaeulerproductreal-ge-one--8a2a7c21f287157f916ef43a.md) | 71 | `result-track:8a2a7c21f287157f916ef43a9700ee374d6dd7f2d1aaf234b61d02dbd782affc` |
| 7 | `theorem` | [finiteZetaEulerFactor_geometric_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/declarations/finitezetaeulerfactor-geometric-identity--97a52662cdffef0eac1eb458.md) | 83 | `result-track:97a52662cdffef0eac1eb4588aefc586716e9cb1e87944e8e9707063cd91f4de` |
| 8 | `def` | [analyticEulerProductHalfPlaneAnchor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerProductApproximation/Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85.lean/declarations/analyticeulerproducthalfplaneanchor--b681f15ce648ca3ebafa75da.md) | 107 | `declaration-track:b681f15ce648ca3ebafa75dafcd7cd6ff9390e8966dc4d4e05a68f9529724478` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
