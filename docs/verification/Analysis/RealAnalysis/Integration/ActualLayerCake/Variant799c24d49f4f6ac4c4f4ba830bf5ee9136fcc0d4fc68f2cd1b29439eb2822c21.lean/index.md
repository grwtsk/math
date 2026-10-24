# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualLayerCake.Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "071047e19e2ccf471739af1dae3abb109c8bea98",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `071047e19e2ccf471739af1dae3abb109c8bea98`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceZeroTail` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DyadicOccurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/dyadicoccurrence--8aa72eb1f3684dab0e88e675.md) | 25 | `declaration-track:8aa72eb1f3684dab0e88e675d478a08677724551157ce38e8601cc41e234735c` |
| 2 | `theorem` | [dyadicOccurrence_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/dyadicoccurrence-finite--6f64a95f232044e1cbf13fbb.md) | 28 | `result-track:6f64a95f232044e1cbf13fbb90e75fd305943f2ef9af41f67107a74c3826ad01` |
| 3 | `instance` | [dyadicOccurrence_fintype](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/dyadicoccurrence-fintype--7d7f7c66a3070ba7dea99c39.md) | 38 | `declaration-track:7d7f7c66a3070ba7dea99c39fef66194650235a0cbe9714e230448709ffe58c1` |
| 4 | `def` | [beta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/beta--dd3058bff92cdf2a0fa746d5.md) | 43 | `declaration-track:dd3058bff92cdf2a0fa746d58441960f026633011ccf7f0bc6f149c258e68d34` |
| 5 | `theorem` | [beta_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/beta-lt-one--c161489fa1b91aed9564eed2.md) | 45 | `result-track:c161489fa1b91aed9564eed274fd74a20123cceb6b14a7ad6944c48e3c38f7e8` |
| 6 | `def` | [nT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/nt--43c369e91f352e236c2f5fd1.md) | 49 | `declaration-track:43c369e91f352e236c2f5fd1c4267e28d5a93b173b1c100b64ea6fa492201d3d` |
| 7 | `theorem` | [nT_eq_card](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/nt-eq-card--28319206e0dcbca9cff77e3e.md) | 52 | `result-track:28319206e0dcbca9cff77e3e0a4c3cc3cfadfb4acad3556c982720ba62d63115` |
| 8 | `def` | [countWindowEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/countwindowequiv--c3c9799aa255fc1403ec8967.md) | 59 | `declaration-track:c3c9799aa255fc1403ec8967fc6aad24103abdf2296647f8c6aaf9a52c3ff5dc` |
| 9 | `theorem` | [nT_eq_actual_count](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/nt-eq-actual-count--4c69b271fbfbb9c743cc6b26.md) | 69 | `result-track:4c69b271fbfbb9c743cc6b26a518495a8976008bb1d030aa6d81e894e166d15f` |
| 10 | `theorem` | [nT_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/nt-nonneg--373d28387fc277a697a9d290.md) | 75 | `result-track:373d28387fc277a697a9d290011b5909503d2c8277602b5c0c98669768ff3a6a` |
| 11 | `theorem` | [nT_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/nt-antitone--7cd409f9867695664464f9c0.md) | 79 | `result-track:7cd409f9867695664464f9c0033490597a1a67a1d7dbcca8beb87fdb4d247163` |
| 12 | `def` | [densityWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/densityweight--9e9c586a4db3ba34bd1d39cb.md) | 91 | `declaration-track:9e9c586a4db3ba34bd1d39cb52f898a5ca457dafdfa2a487c2ec94d52f171b83` |
| 13 | `theorem` | [densityWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/densityweight-nonneg--e721b87500fe1e4b5c2897af.md) | 93 | `result-track:e721b87500fe1e4b5c2897af38d72ee8369c8186d3ab5b6792bfc51b94bd0cb5` |
| 14 | `theorem` | [densityWeight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/densityweight-continuous--fa678591fe0cdb0277ed472f.md) | 97 | `result-track:fa678591fe0cdb0277ed472fa05cceb1f846ad1a5ecf4227706013c26b3a7abd` |
| 15 | `theorem` | [densityWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/densityweight-integrable--4441853a56d3d5537771ac21.md) | 101 | `result-track:4441853a56d3d5537771ac215cf071554dfd3a598e2a68c986673628e67fc04f` |
| 16 | `theorem` | [strict_indicator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/strict-indicator-integrable--d9e16f334510e876d61b227c.md) | 105 | `result-track:d9e16f334510e876d61b227cf09328505662b524db02436bcc39329d05270849` |
| 17 | `theorem` | [strict_indicator_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/strict-indicator-integral--949ed070073f93a292302e7f.md) | 113 | `result-track:949ed070073f93a292302e7f81100183e97e1db4a73b8bd01d1663f95b94d8a5` |
| 18 | `theorem` | [exp_weight_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/exp-weight-primitive--0af35fef86b61617db434b3b.md) | 125 | `result-track:0af35fef86b61617db434b3b37de982402544f010f6a78cdae5bb4eef72918b8` |
| 19 | `theorem` | [per_occurrence_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/per-occurrence-integral--28a4e46e2187f3fe904cae5f.md) | 136 | `result-track:28a4e46e2187f3fe904cae5f22ee4fcdaa58ab134dc7c38f977ef52ce6111bdb` |
| 20 | `theorem` | [nT_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/nt-measurable--6aba931531740906f8e1ef17.md) | 150 | `result-track:6aba931531740906f8e1ef17769da310b0e3fb5f788b5301ed56953cc6edd6c7` |
| 21 | `theorem` | [weighted_count_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/weighted-count-integrable--ceda7da612d4d28caf9c67c5.md) | 158 | `result-track:ceda7da612d4d28caf9c67c5885c8276fb41d419da2bc8ec1b224a7fe9f26491` |
| 22 | `theorem` | [actual_layer_cake](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/declarations/actual-layer-cake--a046b31ce305aadddad06975.md) | 175 | `result-track:a046b31ce305aadddad06975b3b30d85a27f704b2b391a0f5fbf3625744fba9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
