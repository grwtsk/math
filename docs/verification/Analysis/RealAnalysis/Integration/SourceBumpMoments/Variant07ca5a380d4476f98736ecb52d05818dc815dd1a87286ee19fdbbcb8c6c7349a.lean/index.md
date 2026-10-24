# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceBumpMoments.Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddeb2632213492d7685d4cc45817086b58ab4c4e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddeb2632213492d7685d4cc45817086b58ab4c4e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean/declarations/bumpmoment--ddbc1762500100c5499e8e44.md) | 29 | `declaration-track:ddbc1762500100c5499e8e44a2721ac22caa1cd020645136a52e23bed04e1cc6` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean/declarations/bumpmoment-intervalintegrable--d401f686ce4294744edfa3a3.md) | 34 | `result-track:d401f686ce4294744edfa3a32f75777e76e434c95d7aa00e153cbde1d9357161` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean/declarations/bumpmoment-zero-eq-source--34cc88d30ca4041848782843.md) | 41 | `result-track:34cc88d30ca404184878284330d0b01291ae047a75506f03148ece4524f5971c` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean/declarations/bumpmoment-zero-zero--073b5994a5da723270219748.md) | 54 | `result-track:073b5994a5da723270219748d8e8b64e174c98cd2e087e000fd8c33397da46a7` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean/declarations/bumpflux-hasderivat--3a0d7715968707dc5d9930af.md) | 64 | `result-track:3a0d7715968707dc5d9930afb3cfb2a4f7f15d1d16dc6dce77516d41d905e672` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean/declarations/bumpmoment-equation--323add31bcb3026ba0199a41.md) | 75 | `result-track:323add31bcb3026ba0199a41f6bee0c35b6aaa3051018e9c3b5eff0f2c360243` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant07ca5a380d4476f98736ecb52d05818dc815dd1a87286ee19fdbbcb8c6c7349a.lean/declarations/re-eq-zero-of-weighted-energy--8e93206e35b00e44fe45cd83.md) | 110 | `result-track:8e93206e35b00e44fe45cd83b2e71ee4ede6f09a267b4dee3f0e9515c95aa855` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
