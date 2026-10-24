# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Attempt02.Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6e2b97ab22a316d9eda486dcf349db207dbadd8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6e2b97ab22a316d9eda486dcf349db207dbadd8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPsiComplexMellin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean/declarations/actualpsicomplexmellin--db0482b424dc1ca3a29a6f58.md) | 27 | `declaration-track:db0482b424dc1ca3a29a6f5889d3a27423ac83cb553b60d140ca1bb9af5698a4` |
| 2 | `theorem` | [psi_eq_closed_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean/declarations/psi-eq-closed-sum--b3d7ee0be0d40c96b3b8cc52.md) | 30 | `result-track:b3d7ee0be0d40c96b3b8cc527a85c3ceec88026bb5505ba20e62de7e615f9318` |
| 3 | `theorem` | [actual_vonMangoldt_prefix_bigO](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean/declarations/actual-vonmangoldt-prefix-bigo--5de2ab2de7314d8f441bf447.md) | 36 | `result-track:5de2ab2de7314d8f441bf4479d58160ecfe03c406fdffedc663d73fe823861b1` |
| 4 | `theorem` | [actual_psi_measurable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean/declarations/actual-psi-measurable--0decd7b2cba9b46b33a3ad16.md) | 47 | `result-track:0decd7b2cba9b46b33a3ad16a9505f41b4fd046e6455ea641fbd1d6efbc87191` |
| 5 | `theorem` | [actualPsiComplexMellin_integrableOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean/declarations/actualpsicomplexmellin-integrableon--360f232d3143efe1de1a8753.md) | 57 | `result-track:360f232d3143efe1de1a87538917b70cc060169c025d01db398752a1e2e4d846` |
| 6 | `theorem` | [actualPsiComplexMellin_mul_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean/declarations/actualpsicomplexmellin-mul-eq-lseries--cfad236130a60020bdf11963.md) | 87 | `result-track:cfad236130a60020bdf1196312406a0b585b37d69dcc1e7c1a9d3e45084e1467` |
| 7 | `theorem` | [actualPsiComplexMellin_mul_eq_neg_zeta_deriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variant9e071d3cd60aae427de636b1ab5e8a1296c603fccdca696a54c14308b95261e2.lean/declarations/actualpsicomplexmellin-mul-eq-neg-zeta-deriv--f52c667799943ad670384d50.md) | 102 | `result-track:f52c667799943ad670384d50d3020b915f777ace308b2eff3d5e4ebaf2ddc18a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
