# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt6.Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57fe5849842564e487dee24edb38c68886c16e7f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57fe5849842564e487dee24edb38c68886c16e7f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaProfile` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.FrullaniIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dividedDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/divideddifference--48e4df7ae31bc230cd01f9ea.md) | 29 | `declaration-track:48e4df7ae31bc230cd01f9eaeb456efef666abfe631e1f4e2bc6565f86bd49ad` |
| 2 | `theorem` | [dividedDifference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/divideddifference-bound--2bf02b9fe863065994e5c9e4.md) | 32 | `result-track:2bf02b9fe863065994e5c9e40a05fb107553cd93f73cb3837fdfb561541b6811` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/divideddifference-integrable--bb87588b86e64ad03f3c08a8.md) | 52 | `result-track:bb87588b86e64ad03f3c08a8098bf5237a2562358148a26f303376faa3976756` |
| 4 | `theorem` | [dividedDifference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/divideddifference-integral--16a8b5a2748041e792ca818b.md) | 63 | `result-track:16a8b5a2748041e792ca818b252b0c69f93943e4d6ba6d490a46d72715511a94` |
| 5 | `def` | [physicalRate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/physicalrate--24c2cf4d4cc244dd1312780f.md) | 75 | `declaration-track:24c2cf4d4cc244dd1312780f6e1ab2eb362274539e3ba9769ffc1626b9396a46` |
| 6 | `def` | [compensatedTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/compensatedterm--d70290f709bab2dde497a1f9.md) | 77 | `declaration-track:d70290f709bab2dde497a1f99f01fa4905d2f9af9de4cf17dd8070a7691fd8af` |
| 7 | `theorem` | [physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/physicalrate-pos--f6ce50702ffabdf5017cfbef.md) | 80 | `result-track:f6ce50702ffabdf5017cfbef5401e6c152165fe0a0ffbaffad6ed71ec1301b48` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/shifted-physicalrate-pos--2c475352dbbbc5b1a898c839.md) | 82 | `result-track:2c475352dbbbc5b1a898c839f9c53e0904da7ddae0e3fcb05c2cbeb18d0f7259` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/compensatedterm-nonneg--32ae3a33c7acc2f5ceb3a41c.md) | 87 | `result-track:32ae3a33c7acc2f5ceb3a41cce892f394e98ebc2ec8f4b5116214dafa58e2a48` |
| 10 | `theorem` | [compensatedTerm_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/compensatedterm-split--f3bee1cb17d1c66fe5d778ad.md) | 93 | `result-track:f3bee1cb17d1c66fe5d778ad9d14682b64d30e1e64f5c2a825a66827b238f285` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/compensatedterm-integrable--89322b6c4e98f775fb9f1425.md) | 105 | `result-track:89322b6c4e98f775fb9f14254ab603dd3ea92f2d70aa42c9cc4e055aec973949` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt6/Variant2547b74caf1c1d5846ca0c7bc09ac7166ac96dcf1108bae44a9257e3ad2e4c28.lean/declarations/compensatedterm-integral--8172b3d9fe0d05cfe7abe9a3.md) | 114 | `result-track:8172b3d9fe0d05cfe7abe9a3edabb3831cbeb75cd4a6dc13a2c9edc9716580a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
