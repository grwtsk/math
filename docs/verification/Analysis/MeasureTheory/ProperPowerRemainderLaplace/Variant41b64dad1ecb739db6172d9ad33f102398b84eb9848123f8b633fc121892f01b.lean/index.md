# Verification target: GRWTSK.Analysis.MeasureTheory.ProperPowerRemainderLaplace.Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b84e60cfcc63318ed1dab7bbdba510dd024b2be3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b84e60cfcc63318ed1dab7bbdba510dd024b2be3`.

Source path: `GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceParameterMeasurability` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [properPrimePowerContribution_measurable](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/declarations/properprimepowercontribution-measurable--e4a842286a4cce05139db2c1.md) | 31 | `result-track:e4a842286a4cce05139db2c154306e910cc19a661d9577601e4eec7696dc89e6` |
| 2 | `theorem` | [sourcePowerRemainder_eq_finite_source](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/declarations/sourcepowerremainder-eq-finite-source--665e92dcf1cb5bc9d05b92ad.md) | 61 | `result-track:665e92dcf1cb5bc9d05b92add5ba0647ffcd7a75ce05ec0f2b659da1d9bbda61` |
| 3 | `theorem` | [sourcePowerRemainder_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/declarations/sourcepowerremainder-aestronglymeasurable--dba507f6a0366f5d80e59e3a.md) | 68 | `result-track:dba507f6a0366f5d80e59e3a0b25f637482b426c010f403f3cb768dabbbe4991` |
| 4 | `theorem` | [weighted_sourcePowerRemainder_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/declarations/weighted-sourcepowerremainder-aestronglymeasurable--c74c5cb9b5fb85a233b65aa5.md) | 79 | `result-track:c74c5cb9b5fb85a233b65aa5332fb7d9cfb90c6710e8ad14e9fcaeacad1f2e2c` |
| 5 | `theorem` | [weighted_sourcePowerRemainder_bound](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/declarations/weighted-sourcepowerremainder-bound--d1ed17b487dee67ecd492cb1.md) | 91 | `result-track:d1ed17b487dee67ecd492cb1d9b383702d2a6622b80d544ffd40f93f14fc71be` |
| 6 | `theorem` | [sourcePowerRemainder_all_positive_rates](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/declarations/sourcepowerremainder-all-positive-rates--af125e8f3281311d38d96070.md) | 104 | `result-track:af125e8f3281311d38d960709e804ef4b34d7eea4ce36ba7ea94d65ba35799d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
