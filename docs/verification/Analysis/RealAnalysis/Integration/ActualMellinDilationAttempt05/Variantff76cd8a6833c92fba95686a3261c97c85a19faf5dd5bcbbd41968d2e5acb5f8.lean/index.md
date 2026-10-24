# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMellinDilationAttempt05.Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b01feeb780b6d7a53e2a7d63e2383ae5d1b2638e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b01feeb780b6d7a53e2a7d63e2383ae5d1b2638e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `UnnormalizedDilation` — import line 6; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mellinConvergent_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/mellinconvergent-unnormalized--21c7145a449882b461a0b2e4.md) | 22 | `result-track:21c7145a449882b461a0b2e46b0b370d7957a194ba518dd9078b726da9921829` |
| 2 | `theorem` | [mellinConvergent_normalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/mellinconvergent-normalized--dec16837522d84eafdae2e3b.md) | 40 | `result-track:dec16837522d84eafdae2e3bc3288b76d0ba5f9e31fc7b0fafd66560a73d1227` |
| 3 | `theorem` | [sqrt_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/sqrt-cpow--326aa14e90cc5035e5efd8bb.md) | 45 | `result-track:326aa14e90cc5035e5efd8bb76e35a2b5aa57a5d946cb5b498761a09c87200b3` |
| 4 | `theorem` | [mellin_normalized_func](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/mellin-normalized-func--0be1798579048cc0beb4223d.md) | 50 | `result-track:0be1798579048cc0beb4223d83f15e3e5ac51a5d089b705fd725901dc84bc5d9` |
| 5 | `theorem` | [actual_unnormalized_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/actual-unnormalized-mellinconvergent--cee52d803a4ecf76dcc8628e.md) | 57 | `result-track:cee52d803a4ecf76dcc8628ee10151d59af3bf34141ef6f48715a2a094ed73c2` |
| 6 | `theorem` | [actual_normalized_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/actual-normalized-mellinconvergent--fe401fe7a6ac6c727e965cc1.md) | 62 | `result-track:fe401fe7a6ac6c727e965cc11c5480a79a6d5ae3f2ba189a15acfdb450be0451` |
| 7 | `theorem` | [actual_unnormalized_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/actual-unnormalized-mellin--c80977ed5520468bddeabb47.md) | 67 | `result-track:c80977ed5520468bddeabb47a9d2c2ddc4fd03e13b039063ba643000aa53d10d` |
| 8 | `theorem` | [actual_normalized_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/actual-normalized-mellin--52adbc020ac2542e51a472d7.md) | 72 | `result-track:52adbc020ac2542e51a472d7dba86469b38ad41cff3bc97ce7cffd1e1bc3647f` |
| 9 | `theorem` | [actual_dilated_class_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/actual-dilated-class-mellinconvergent--fc6ad55f4896288c052093db.md) | 77 | `result-track:fc6ad55f4896288c052093dbfa05d593b2b34fced9f8e981a3196240192960c4` |
| 10 | `theorem` | [actual_dilated_class_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/actual-dilated-class-mellin--c737f456f401100363d355dc.md) | 84 | `result-track:c737f456f401100363d355dc6757784be71f39fed92d0acb9dc540586e9742d5` |
| 11 | `theorem` | [actual_integer_class_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/declarations/actual-integer-class-mellin--f41880c2783c1882b5ce6d42.md) | 93 | `result-track:f41880c2783c1882b5ce6d424afd6531619d4b6be5f80a5fbe3c563a16881420` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
