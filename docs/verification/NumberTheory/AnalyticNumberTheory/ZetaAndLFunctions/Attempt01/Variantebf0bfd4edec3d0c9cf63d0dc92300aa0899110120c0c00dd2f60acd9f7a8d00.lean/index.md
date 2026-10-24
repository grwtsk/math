# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Attempt01.Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d667dbdb108d94582cd08445f3ecafd38eb8b9a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d667dbdb108d94582cd08445f3ecafd38eb8b9a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean.json)

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
| 1 | `def` | [actualPsiComplexMellin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/declarations/actualpsicomplexmellin--12cfd8d3ca4724af40893580.md) | 19 | `declaration-track:12cfd8d3ca4724af408935805155443fdbc182c1f6f5c6102bf6bdbfcc890f89` |
| 2 | `theorem` | [psi_eq_closed_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/declarations/psi-eq-closed-sum--1bc03c3a67c755fabf917e4d.md) | 22 | `result-track:1bc03c3a67c755fabf917e4d24a032e41ff3dcaf3c9e5d025ee8d6df293d5ed4` |
| 3 | `theorem` | [actual_vonMangoldt_prefix_bigO](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/declarations/actual-vonmangoldt-prefix-bigo--118e4602a6b01d808d28f319.md) | 30 | `result-track:118e4602a6b01d808d28f319086158815cfa8313bcaee5ffa06f75f8cccc1770` |
| 4 | `theorem` | [actual_psi_measurable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/declarations/actual-psi-measurable--8af0135f5c0ae663339ff621.md) | 41 | `result-track:8af0135f5c0ae663339ff62198663b495e6a22d6f7ec8c24e1429cce1f1be83b` |
| 5 | `theorem` | [actualPsiComplexMellin_integrableOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/declarations/actualpsicomplexmellin-integrableon--046d8bf1b110cd8539a221c7.md) | 51 | `result-track:046d8bf1b110cd8539a221c7d4ea22d3576a1861002a974ef9f6937ccced71b5` |
| 6 | `theorem` | [actualPsiComplexMellin_mul_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/declarations/actualpsicomplexmellin-mul-eq-lseries--d61a850dbbf02649d70495c1.md) | 80 | `result-track:d61a850dbbf02649d70495c15a775652240f671448c1c7470d3eabf535124792` |
| 7 | `theorem` | [actualPsiComplexMellin_mul_eq_neg_zeta_deriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt01/Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00.lean/declarations/actualpsicomplexmellin-mul-eq-neg-zeta-deriv--e9a02efa5d270742edb3835f.md) | 94 | `result-track:e9a02efa5d270742edb3835f24e401f3b849765c93615b3295de9d08cbeae0e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
