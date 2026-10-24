# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletLSeries.Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "110bdfb26f239bda5757ddb342f083ee00973ae1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `110bdfb26f239bda5757ddb342f083ee00973ae1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.EulerProduct.ExpLog` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [riemannZetaSummandHom](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/riemannzetasummandhom--177ac7a1f0343e1e17e3b642.md) | 31 | `declaration-track:177ac7a1f0343e1e17e3b64227bfac1a7f1d28483fd6d36baa01257753487fd1` |
| 2 | `def` | [dirichletSummandHom](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/dirichletsummandhom--c685e2a2a213adca87798ccd.md) | 42 | `declaration-track:c685e2a2a213adca87798ccd347dc74a81d8c8146e0f240c8709a39b01c889ef` |
| 3 | `lemma` | [summable_riemannZetaSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/summable-riemannzetasummand--f2099e28feaf6047c6071b18.md) | 53 | `result-track:f2099e28feaf6047c6071b182d135096ef3cdebb0333b1fd5526e84eae536888` |
| 4 | `lemma` | [tsum_riemannZetaSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/tsum-riemannzetasummand--9489cd912ecf91fb71b187bd.md) | 61 | `result-track:9489cd912ecf91fb71b187bd2b5ff4ea2c6684951800184b7a1eccf7fe4d6be0` |
| 5 | `lemma` | [summable_dirichletSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/summable-dirichletsummand--5af9b3ed10f31f67038d9289.md) | 69 | `result-track:5af9b3ed10f31f67038d92897e0161a115508d606070773481888d239dc28d36` |
| 6 | `lemma` | [tsum_dirichletSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/tsum-dirichletsummand--752c863508b812c8ed4ec515.md) | 76 | `result-track:752c863508b812c8ed4ec515c5e1c6c772f0eedcc8582e976b591c8fda64aa31` |
| 7 | `theorem` | [riemannZeta_eulerProduct_hasProd](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/riemannzeta-eulerproduct-hasprod--a8c0550acdd630b866398069.md) | 85 | `result-track:a8c0550acdd630b866398069e071d36950f3db041a470dfa329c0b2c36cc6d53` |
| 8 | `theorem` | [riemannZeta_eulerProduct_tprod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/riemannzeta-eulerproduct-tprod--d3084fb35bd55026b91c196b.md) | 92 | `result-track:d3084fb35bd55026b91c196b4454682849fd13aaf1ad5e7d44674e78cbf1bec7` |
| 9 | `theorem` | [riemannZeta_eulerProduct](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/riemannzeta-eulerproduct--2792e8f0c4c4bcc8de546107.md) | 98 | `result-track:2792e8f0c4c4bcc8de546107828ed0654301a70fe43c2309c8746a9a877a8b32` |
| 10 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_hasProd](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/dirichletcharacter-lseries-eulerproduct-hasprod--a255c065176afbbe79c96a3d.md) | 108 | `result-track:a255c065176afbbe79c96a3d4ba0a12d773cd27e4a2a9fc51ef50ad43bb3b8b8` |
| 11 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_tprod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/dirichletcharacter-lseries-eulerproduct-tprod--625409ae6fa4469518818621.md) | 119 | `result-track:625409ae6fa4469518818621784cb9153e4fc04fd34310c80d48dff381c7a9c8` |
| 12 | `theorem` | [DirichletCharacter.LSeries_eulerProduct](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/dirichletcharacter-lseries-eulerproduct--f4e5faec461deb36307fae74.md) | 129 | `result-track:f4e5faec461deb36307fae749c674a4b2b2a8177ba042a5e5e434ebc40c3558d` |
| 13 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_exp_log](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/dirichletcharacter-lseries-eulerproduct-exp-log--402ffd92c9c78ad73cc424d9.md) | 142 | `result-track:402ffd92c9c78ad73cc424d971847c359a193c0c416e43617ea6b38d594b4a91` |
| 14 | `theorem` | [ArithmeticFunction.LSeries_zeta_eulerProduct_exp_log](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/arithmeticfunction-lseries-zeta-eulerproduct-exp-log--106681cd5c33d695d2ca92cf.md) | 157 | `result-track:106681cd5c33d695d2ca92cf0f8abe2aaae8f76242fd4dca212d62761ad30120` |
| 15 | `theorem` | [riemannZeta_eulerProduct_exp_log](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/riemannzeta-eulerproduct-exp-log--9e04c774859ee24873e3d5d2.md) | 164 | `result-track:9e04c774859ee24873e3d5d22d8d80f320c700d93e7b443927dc315c864133b7` |
| 16 | `lemma` | [DirichletCharacter.LSeries_changeLevel](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/declarations/dirichletcharacter-lseries-changelevel--33892b7c1dc545e325546dda.md) | 175 | `result-track:33892b7c1dc545e325546dda1deeec07c96b00e285c822fb820d2890aee4e740` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
