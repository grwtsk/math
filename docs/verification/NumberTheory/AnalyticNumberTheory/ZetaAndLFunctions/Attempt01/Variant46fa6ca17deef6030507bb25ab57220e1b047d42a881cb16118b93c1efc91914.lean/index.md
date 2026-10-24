# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Attempt01.Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9d9ec4ac6baaad4322212f28d003726e3809c2e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9d9ec4ac6baaad4322212f28d003726e3809c2e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean.json)

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
| 1 | `def` | [actualPsiComplexMellin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean/declarations/actualpsicomplexmellin--a9b5ce28a0437eb69115cb6f.md) | 27 | `declaration-track:a9b5ce28a0437eb69115cb6fb41c66c952b0aedf5d02c891cdbdba45535dd624` |
| 2 | `theorem` | [psi_eq_closed_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean/declarations/psi-eq-closed-sum--2f5649dcc41198aceb3bf5de.md) | 30 | `result-track:2f5649dcc41198aceb3bf5de574e8234215659823e45f158137c2e809aa2e71b` |
| 3 | `theorem` | [actual_vonMangoldt_prefix_bigO](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean/declarations/actual-vonmangoldt-prefix-bigo--6ea5f97262d2e55c69eb0933.md) | 38 | `result-track:6ea5f97262d2e55c69eb0933ba67c090f77798d9418340f6b192950b532d2353` |
| 4 | `theorem` | [actual_psi_measurable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean/declarations/actual-psi-measurable--22ce2da3d2d776b5595c1f5b.md) | 49 | `result-track:22ce2da3d2d776b5595c1f5bc4514d6a5d789ade45d0bf6dc49d9769680adaab` |
| 5 | `theorem` | [actualPsiComplexMellin_integrableOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean/declarations/actualpsicomplexmellin-integrableon--ac14063070110c180721b45b.md) | 59 | `result-track:ac14063070110c180721b45bd8d100beb1bdaa5e0a193855ccd5d0457532ed06` |
| 6 | `theorem` | [actualPsiComplexMellin_mul_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean/declarations/actualpsicomplexmellin-mul-eq-lseries--bb0d68bbad3ab002f56aebc7.md) | 88 | `result-track:bb0d68bbad3ab002f56aebc7bee28009bd9715591b25bb0fe321ff8f3fd72e2f` |
| 7 | `theorem` | [actualPsiComplexMellin_mul_eq_neg_zeta_deriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variant46fa6ca17deef6030507bb25ab57220e1b047d42a881cb16118b93c1efc91914.lean/declarations/actualpsicomplexmellin-mul-eq-neg-zeta-deriv--fc3ddd985ab1432231331048.md) | 102 | `result-track:fc3ddd985ab1432231331048f5481f196b80df71de10f44c4eaa0c1e365463d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
