# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ConditionalProbability.Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f516936773a1ba9dd112fc8d64f7cebba33d94ed",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f516936773a1ba9dd112fc8d64f7cebba33d94ed`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cond](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond--17c61eb427611e81da44b572.md) | 80 | `declaration-track:17c61eb427611e81da44b5728c61d77ea35f7d88c2aba8e755b938df06d14c7b` |
| 2 | `theorem` | [cond_isProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-isprobabilitymeasure--33405a5ffeb1772892ecbfc5.md) | 91 | `result-track:33405a5ffeb1772892ecbfc5ae4f2a9ace2f6cac373f3dc5ede3fd34d3d691e8` |
| 3 | `theorem` | [cond_empty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-empty--338f7111c66348c09fe3898a.md) | 101 | `result-track:338f7111c66348c09fe3898ab1285ab444d7445ac591fc6c5b4640555dc307a3` |
| 4 | `theorem` | [cond_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-univ--206d82f654033651e841c9d8.md) | 105 | `result-track:206d82f654033651e841c9d8f7aabfdc2257f10817e21a8eb400ed0c48233808` |
| 5 | `theorem` | [cond_apply](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-apply--d2b7894126f1688db73470e0.md) | 110 | `result-track:d2b7894126f1688db73470e0c1974757726c0a2e23a95cf8548460f95f0db7f4` |
| 6 | `theorem` | [cond_inter_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-inter-self--7bc9d72c90f27f279cddebdf.md) | 114 | `result-track:7bc9d72c90f27f279cddebdf186130320d53530f9cd73086fad1db14890c655b` |
| 7 | `theorem` | [inter_pos_of_cond_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/inter-pos-of-cond-ne-zero--491826b657b6ceacbafda219.md) | 118 | `result-track:491826b657b6ceacbafda219c86b0bf631c6721891d5b9222f360c94406878b4` |
| 8 | `theorem` | [cond_pos_of_inter_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-pos-of-inter-ne-zero--5281cb17cdff1c8ed1a5104e.md) | 125 | `result-track:5281cb17cdff1c8ed1a5104e9fc625537d959a00a3044400549d1d1e6c772d48` |
| 9 | `theorem` | [cond_cond_eq_cond_inter'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-cond-eq-cond-inter--be9e3d1791fa22c16e51ea65.md) | 132 | `result-track:be9e3d1791fa22c16e51ea652506db360f65c41c3cad5eb4d4f6609a4e024850` |
| 10 | `theorem` | [cond_cond_eq_cond_inter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-cond-eq-cond-inter--6e17ad3427274e56737f182f.md) | 143 | `result-track:6e17ad3427274e56737f182ff60522c2a8f1f4b22da423af08af8f5e00b14879` |
| 11 | `theorem` | [cond_mul_eq_inter'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-mul-eq-inter--77a1bf7bb739d710852079ea.md) | 148 | `result-track:77a1bf7bb739d710852079ea9984b65fa1d19ad83b71da28ae2003f699e5ff1a` |
| 12 | `theorem` | [cond_mul_eq_inter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-mul-eq-inter--73f5ca0cb4521af0fef11d56.md) | 153 | `result-track:73f5ca0cb4521af0fef11d56337fb89c0e9f3a87307a59211f1e37c861abe519` |
| 13 | `theorem` | [cond_add_cond_compl_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-add-cond-compl-eq--1a2b07964862a35fea8cd7c6.md) | 159 | `result-track:1a2b07964862a35fea8cd7c6e2b64439b61ecc843f2627c83d153556e0405db9` |
| 14 | `theorem` | [cond_eq_inv_mul_cond_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/declarations/cond-eq-inv-mul-cond-mul--b2d7201e4c77dfc93bd332be.md) | 167 | `result-track:b2d7201e4c77dfc93bd332be987489b859642adda2b0ba4af55d9dd7c648ce0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
