# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Attempt02.Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "052def51559967c6b086b7f7eeb92e5764cbb7d4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `052def51559967c6b086b7f7eeb92e5764cbb7d4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPsiComplexMellin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/declarations/actualpsicomplexmellin--88da83e340934958fbed84ad.md) | 19 | `declaration-track:88da83e340934958fbed84adf4d2e4fb5f3c3d8062979182409e776bceb8b7fd` |
| 2 | `theorem` | [psi_eq_closed_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/declarations/psi-eq-closed-sum--b6805fecb72936e0f458ce61.md) | 22 | `result-track:b6805fecb72936e0f458ce6139d7c28203b573ec25b3083989c053559aac4968` |
| 3 | `theorem` | [actual_vonMangoldt_prefix_bigO](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/declarations/actual-vonmangoldt-prefix-bigo--0d9cdf9360e8b016043042e5.md) | 28 | `result-track:0d9cdf9360e8b016043042e5e1172750721b696809929e6f3b5ba588530ef5de` |
| 4 | `theorem` | [actual_psi_measurable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/declarations/actual-psi-measurable--269950af8775c8f278ee8995.md) | 39 | `result-track:269950af8775c8f278ee89950918c836666711fa83cf29eef80a2f2d43b4e23c` |
| 5 | `theorem` | [actualPsiComplexMellin_integrableOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/declarations/actualpsicomplexmellin-integrableon--d956d00aa0c60fc2ec51ce3d.md) | 49 | `result-track:d956d00aa0c60fc2ec51ce3dfe4f70911f706f4d43f96fc96977c517cd0841da` |
| 6 | `theorem` | [actualPsiComplexMellin_mul_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/declarations/actualpsicomplexmellin-mul-eq-lseries--37967e9feecfd08aceb6624b.md) | 79 | `result-track:37967e9feecfd08aceb6624b2362e2b1c23ad68307e8ea2616787e5cc6da1b89` |
| 7 | `theorem` | [actualPsiComplexMellin_mul_eq_neg_zeta_deriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/declarations/actualpsicomplexmellin-mul-eq-neg-zeta-deriv--b62e0dce8587f34ba2dd2f71.md) | 94 | `result-track:b62e0dce8587f34ba2dd2f7165252c14e7c2c73999fa6165b06f427f2b48f6f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
