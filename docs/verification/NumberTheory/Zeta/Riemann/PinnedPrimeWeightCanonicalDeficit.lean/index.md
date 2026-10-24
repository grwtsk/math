# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCanonicalDeficit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54246d554313b3a74a0544460a4ca51da1cdec7b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54246d554313b3a74a0544460a4ca51da1cdec7b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightFeatureNorm`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedPrimeWeightResponseMagnitude](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightresponsemagnitude--b7e4e621144938d8b322fc18.md) | 43 | `declaration-track:b7e4e621144938d8b322fc1896a5222bf9171b571f3dedbdbe4d7d0f3ca46bae` |
| 2 | `def` | [pinnedPrimeWeightCanonicalDeficit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightcanonicaldeficit--cc2264913b702847ab296b09.md) | 50 | `declaration-track:cc2264913b702847ab296b0935c79e105fcf88ea74b63ba5c8c8f4a24268b2e7` |
| 3 | `theorem` | [pinnedPrimeWeightResponseMagnitude_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightresponsemagnitude-nonnegative--bc8514d4c97ba6330f4d4df0.md) | 58 | `result-track:bc8514d4c97ba6330f4d4df02fb10ca4e868f8c20dfbcf7f8c3316f49949374c` |
| 4 | `theorem` | [pinnedPrimeWeightCanonicalDeficit_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightcanonicaldeficit-nonnegative--a210270642b06bad32411ab4.md) | 65 | `result-track:a210270642b06bad32411ab42ca353d99c19aaaba20c0fcb06b98d3439a87552` |
| 5 | `theorem` | [pinnedPrimeWeightCanonicalDeficit_majorizes](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightcanonicaldeficit-majorizes--fc92c59bb7223d78cc00638f.md) | 73 | `result-track:fc92c59bb7223d78cc00638f0bc601d04583cbaf9208104b75f584b5f2e6f469` |
| 6 | `theorem` | [pinnedPrimeWeightCanonicalDeficit_le_of_majorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightcanonicaldeficit-le-of-majorant--8ed4d853d12a2ad9fa6ad4fd.md) | 87 | `result-track:8ed4d853d12a2ad9fa6ad4fddb7a69254e5f261ab0f760cd81af55a93afb961a` |
| 7 | `theorem` | [pinnedPrimeWeightCanonicalDeficit_eq_zero_of_exact_fit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightcanonicaldeficit-eq-zero-of-exact-fit--0813a28a8483eb64eb7d228b.md) | 101 | `result-track:0813a28a8483eb64eb7d228bb11f02a56e7f4b388e8f4a6e4bd385b14c397ca4` |
| 8 | `structure` | [PinnedPrimeWeightCoefficientRule](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightcoefficientrule--dbfaeebd24abd54a6bc5dadb.md) | 114 | `declaration-track:dbfaeebd24abd54a6bc5dadb3079847ce2d2ffe7ed86c168ac1906487e720b3e` |
| 9 | `def` | [pinnedPrimeWeightNextOctave](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightnextoctave--f32992d3fd2ec7d487ecfbc0.md) | 121 | `declaration-track:f32992d3fd2ec7d487ecfbc04e777de3b1adba6a8649ef5a41e3ebb4777a4509` |
| 10 | `def` | [PinnedPrimeWeightRuleResidualCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruleresidualcriterionat--3781f398b5c1d6dfc6f0a5b7.md) | 128 | `declaration-track:3781f398b5c1d6dfc6f0a5b734ffd6ed0e397c4655f7260df0f5b6c10d88656b` |
| 11 | `def` | [PinnedPrimeWeightRuleDeficitCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruledeficitcriterionat--fd5c6798d8337b7cd3f513d1.md) | 152 | `declaration-track:fd5c6798d8337b7cd3f513d1697b695925fda4725c48d7f48cb4c90f291c9ab5` |
| 12 | `theorem` | [pinnedPrimeWeightRuleResidualCriterion_to_deficitCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruleresidualcriterion-to-deficitcriterion--76674ed0f42a203d43ea19ea.md) | 169 | `result-track:76674ed0f42a203d43ea19ea4eaefc6f69d73dd21fd78990b4d73d25eb139a66` |
| 13 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_residualCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruledeficitcriterion-to-residualcriterion--e14ad27525685f1313277884.md) | 190 | `result-track:e14ad27525685f1313277884d6b14bcb732d7d49642fcc692bb2eca6163441eb` |
| 14 | `theorem` | [pinnedPrimeWeightRuleResidualCriterion_iff_deficitCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruleresidualcriterion-iff-deficitcriterion--03646f672db794ff3919357a.md) | 218 | `result-track:03646f672db794ff3919357a91d8ba04bcd488f03b738d08269338292f475495` |
| 15 | `theorem` | [pinnedPrimeWeightRuleResidualCriterion_to_pinnedCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruleresidualcriterion-to-pinnedcriterion--788efe72c561910d7cb8e5a4.md) | 228 | `result-track:788efe72c561910d7cb8e5a4edb31ae22f2437539beb78e131a7dbb5ec2d2b3b` |
| 16 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_pinnedCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruledeficitcriterion-to-pinnedcriterion--ed99228803e47678ccbf3688.md) | 255 | `result-track:ed99228803e47678ccbf368873548350890fea05894c428a915c9311c85d8a35` |
| 17 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_featureNormCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruledeficitcriterion-to-featurenormcriterion--15a241b5dc430f3929acfc59.md) | 265 | `result-track:15a241b5dc430f3929acfc59f75cf843f2b9226922e0312d6c3a8fb932e8ba74` |
| 18 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruledeficitcriterion-to-recurrence--bdd11885ecd9c4fb3ed60391.md) | 275 | `result-track:bdd11885ecd9c4fb3ed60391b39447ae5781cdf7dcc945fb655042fcbb40030f` |
| 19 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/declarations/pinnedprimeweightruledeficitcriterion-to-descent--57628b52d1c8134e90b0938e.md) | 285 | `result-track:57628b52d1c8134e90b0938e29cfd3ea0a20b2c0aaeb7bee2058ff99870b17bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
