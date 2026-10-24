# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Abel.Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3894725686f394a5344ae96e8bcbe08eeb43dcfe",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3894725686f394a5344ae96e8bcbe08eeb43dcfe`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Chebyshev` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KM](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/km--0e3d3531799259a5a66d4980.md) | 37 | `declaration-track:0e3d3531799259a5a66d4980d22078a2f0d9132e523fa2ec3c3a9c0677452382` |
| 2 | `lemma` | [KM_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/km-pos--d9945d627089a8058f16cbf3.md) | 39 | `result-track:d9945d627089a8058f16cbf3837b378ccb8967a9581f4cce67f6774a1609712a` |
| 3 | `lemma` | [KM_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/km-nonneg--554c37f5270bc255c6c4d4b6.md) | 40 | `result-track:554c37f5270bc255c6c4d4b6f7962439c057e9a17ecdea4a1ce66d44b3146ded` |
| 4 | `def` | [Mfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/mfun--294f65772f97e6eef18a8e93.md) | 43 | `declaration-track:294f65772f97e6eef18a8e93a34f4c7d4c49cd5ec3da94bd41ba0b4af2b0cd83` |
| 5 | `lemma` | [sum_Icc_eq_sum_Ioc'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/sum-icc-eq-sum-ioc--d065160a2467e21d58d10f5f.md) | 45 | `result-track:d065160a2467e21d58d10f5f69a2ce45176c30c7a2e9a5359e38893fefc4cc5d` |
| 6 | `lemma` | [Mfun_eq_Ioc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/mfun-eq-ioc--07eec7d0684b6bb48f806f83.md) | 49 | `result-track:07eec7d0684b6bb48f806f834dc979092acb0d05db2aebf47e1d6dc3baa7b9f2` |
| 7 | `lemma` | [Mfun_mono](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/mfun-mono--a606145a44140f0321e08edf.md) | 52 | `result-track:a606145a44140f0321e08edf4ebd7e3392c13a6d4c49c2b8ba9312c5d371834e` |
| 8 | `lemma` | [Mfun_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/mfun-nonneg--da8e3f412dc4b2f34467ae09.md) | 56 | `result-track:da8e3f412dc4b2f34467ae093740523866ae6da54e7589a88ae5db5a5347d281` |
| 9 | `lemma` | [abs_Mfun_sub_log_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/abs-mfun-sub-log-le--1102cb7a2b0c58c2dc79c06b.md) | 59 | `result-track:1102cb7a2b0c58c2dc79c06b26b6bf75809a798b192d09ef54970a55e1ccb0d6` |
| 10 | `theorem` | [abel_mertens_t](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/abel-mertens-t--78a86d64486c27a317f0d9c7.md) | 64 | `result-track:78a86d64486c27a317f0d9c708f9413087b52742efac854fd370d9120a1acf42` |
| 11 | `theorem` | [mertens_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/declarations/mertens-step--90c36eff52101d8c2db86565.md) | 148 | `result-track:90c36eff52101d8c2db8656596d60f5b9dfcb9d9d85d01fa0c0073522247fb49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
