# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMellinDilationAttempt02.Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "957207ec7b0be3d573b3f496b67abc8e9b53064e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `957207ec7b0be3d573b3f496b67abc8e9b53064e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `UnnormalizedDilation` — import line 1; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mellinConvergent_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/mellinconvergent-unnormalized--bdb53d5eb7834a36bdfd18c0.md) | 14 | `result-track:bdb53d5eb7834a36bdfd18c05ce3e00a5825bc259b751c47db7cee14367e9962` |
| 2 | `theorem` | [mellinConvergent_normalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/mellinconvergent-normalized--8fcee11ac6274965697d7547.md) | 29 | `result-track:8fcee11ac6274965697d75478442669258c542d854d4d08e28d55930c4e219a5` |
| 3 | `theorem` | [sqrt_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/sqrt-cpow--af6d22c1180ad1245ecbed5c.md) | 34 | `result-track:af6d22c1180ad1245ecbed5cea561e84cda8b05a2d9415ce53aaf4a86642e84d` |
| 4 | `theorem` | [mellin_normalized_func](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/mellin-normalized-func--41bb3c77a2b4469d90b503e0.md) | 39 | `result-track:41bb3c77a2b4469d90b503e053065c183b465aab6f46ad258fca55d315586d62` |
| 5 | `theorem` | [actual_unnormalized_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/actual-unnormalized-mellinconvergent--cadcb68739af16cbad48c83d.md) | 46 | `result-track:cadcb68739af16cbad48c83d6aa213e5c35da6602532f9d8aaff8dcfffadae7b` |
| 6 | `theorem` | [actual_normalized_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/actual-normalized-mellinconvergent--d54019bcbd1751fcea4c15af.md) | 51 | `result-track:d54019bcbd1751fcea4c15afa4820ab3e08c8c80f690c9f4f1cfbd5a81d015c9` |
| 7 | `theorem` | [actual_unnormalized_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/actual-unnormalized-mellin--42b7c5e615c46a49a4361981.md) | 56 | `result-track:42b7c5e615c46a49a4361981d354ef3ab4252328c92400e5463a33d2883a3b2d` |
| 8 | `theorem` | [actual_normalized_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/actual-normalized-mellin--2a12754819bbf685b5b65ab8.md) | 61 | `result-track:2a12754819bbf685b5b65ab81f1acad54a98dd0c9677835d10783ecee4d7b0e0` |
| 9 | `theorem` | [actual_dilated_class_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/actual-dilated-class-mellinconvergent--1cb48e81b753fd39c8455b21.md) | 66 | `result-track:1cb48e81b753fd39c8455b21c8e91100cd6e48b7349a8226ab7054c42b8da307` |
| 10 | `theorem` | [actual_dilated_class_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/actual-dilated-class-mellin--b2fb6b3fc3daea2e19d00cb9.md) | 73 | `result-track:b2fb6b3fc3daea2e19d00cb9ab686d04c47f9f3ce61ecbcbe0f86a9f626cebee` |
| 11 | `theorem` | [actual_integer_class_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/declarations/actual-integer-class-mellin--a12dd050ff53f1745c712edc.md) | 82 | `result-track:a12dd050ff53f1745c712edcb620061347aa3ddcf1c250f3c311249687da9a53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
