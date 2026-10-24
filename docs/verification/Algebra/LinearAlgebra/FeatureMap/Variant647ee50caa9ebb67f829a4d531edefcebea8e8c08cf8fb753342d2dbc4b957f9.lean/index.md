# Verification target: GRWTSK.Algebra.LinearAlgebra.FeatureMap.Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dcaf8a73cdaadc299ea5825acf17b7ac1eaae9d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dcaf8a73cdaadc299ea5825acf17b7ac1eaae9d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Completion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rhetoricalVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/rhetoricalvector--4a420569bb37eb5a5cbde12f.md) | 21 | `declaration-track:4a420569bb37eb5a5cbde12f18a77da4c8226b9f77deffb11b2ccea9c427a9f2` |
| 2 | `def` | [rawToRhetorical](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/rawtorhetorical--4e88fac38890384452e4ba8b.md) | 28 | `declaration-track:4e88fac38890384452e4ba8bf942c38ad91c56e655c5d9fdb79a5aef665e59e4` |
| 3 | `theorem` | [rawToRhetorical_basisVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/rawtorhetorical-basisvector--dd89a3204da54bf2c8416542.md) | 33 | `result-track:dd89a3204da54bf2c841654257b6c9e1b61bfe7db7d71d4c89e6e31fae46f095` |
| 4 | `theorem` | [inner_rawToRhetorical](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/inner-rawtorhetorical--6a79029653e0b059de42a5eb.md) | 40 | `result-track:6a79029653e0b059de42a5ebe903c1d889b1e5e363c0c67e07e5a928c8aaf550` |
| 5 | `theorem` | [inner_rhetoricalVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/inner-rhetoricalvector--8d43223d01917cec168dcbe1.md) | 51 | `result-track:8d43223d01917cec168dcbe102cd14b918382d41bffe990513ca48ffe4e631d9` |
| 6 | `theorem` | [norm_rhetoricalVector_sq](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/norm-rhetoricalvector-sq--d99454f34b45148801531f42.md) | 60 | `result-track:d99454f34b45148801531f428fd96d7f9da38b2d2524e1b0c743f646821265c7` |
| 7 | `def` | [rhetoricalSpan](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/rhetoricalspan--3844e4973ec5f76dadf93c81.md) | 67 | `declaration-track:3844e4973ec5f76dadf93c81961a20afbe8890dc2f242b863aa738467d2fc22a` |
| 8 | `theorem` | [rawToRhetorical_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/rawtorhetorical-mem-span--0b78de2675c1d0940c7fb9e5.md) | 71 | `result-track:0b78de2675c1d0940c7fb9e5d4c933348ec127ea2df3f56548eec530b07d0d0c` |
| 9 | `theorem` | [rhetoricalVector_denseSpan](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/rhetoricalvector-densespan--6f02e9ccf3560ed5b70202a4.md) | 95 | `result-track:6f02e9ccf3560ed5b70202a46ca303f4049e7398390d291eb9c868beb676dcb2` |
| 10 | `def` | [roleVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/rolevector--013dcadf576b93faf0aeeafc.md) | 110 | `declaration-track:013dcadf576b93faf0aeeafc3ae224fc95765cd3c3a2cce85997779181a0fd49` |
| 11 | `def` | [conceptVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/conceptvector--99e859682bb8ff11b8383c3e.md) | 116 | `declaration-track:99e859682bb8ff11b8383c3e05db8fbadf87d15a3833257d7832ac0d74197480` |
| 12 | `def` | [premiseVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/premisevector--29295ee84f75f758f42c239b.md) | 120 | `declaration-track:29295ee84f75f758f42c239bb698404ebe3ad05e72bba150cace1d101c52323c` |
| 13 | `def` | [conclusionVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/conclusionvector--bb79b999e3e11928c39356de.md) | 124 | `declaration-track:bb79b999e3e11928c39356defc51e0480a3cf4fa0e806fc9a7ed2320a5ac61d9` |
| 14 | `def` | [positiveVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/positivevector--5c421af1b8ed621c93df106c.md) | 128 | `declaration-track:5c421af1b8ed621c93df106cc43940c30e12b1a5b0d050ad8463c1230f884dfb` |
| 15 | `def` | [negativeVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/negativevector--22d25a29cf99e4f02532b63f.md) | 132 | `declaration-track:22d25a29cf99e4f02532b63fe29109f88eb671512524f743393b874841121fa3` |
| 16 | `def` | [sourceVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/sourcevector--a58dca74f4b40edecf45d13a.md) | 136 | `declaration-track:a58dca74f4b40edecf45d13a8e1100210361119ca1f762c60dbac2de02727182` |
| 17 | `def` | [targetVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/targetvector--7a5ff5a19d365eed5a21f816.md) | 140 | `declaration-track:7a5ff5a19d365eed5a21f816766b029b0cac612884ec4ce434247cb60233db69` |
| 18 | `theorem` | [inner_roleVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant647ee50caa9ebb67f829a4d531edefcebea8e8c08cf8fb753342d2dbc4b957f9.lean/declarations/inner-rolevector--cc6aa7237f2a8019a37db56e.md) | 144 | `result-track:cc6aa7237f2a8019a37db56ee2d1885c62f9af6510f268f8bdfc3d30f05f59f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
