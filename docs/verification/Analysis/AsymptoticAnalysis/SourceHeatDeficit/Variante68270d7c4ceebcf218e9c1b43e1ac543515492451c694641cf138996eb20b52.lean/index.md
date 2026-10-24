# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SourceHeatDeficit.Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db09836ce6a072dbda91a379961acd0b6eb8f6ed",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db09836ce6a072dbda91a379961acd0b6eb8f6ed`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/gaussianterm--d7e8d364636540795abfbedf.md) | 37 | `declaration-track:d7e8d364636540795abfbedfc40ee1823ce02d4a7fcd03a8e7d048a751eb2c59` |
| 2 | `def` | [deficitTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/deficitterm--758f4a7c0491ba154d1936be.md) | 41 | `declaration-track:758f4a7c0491ba154d1936bed67c09ca975f23ee44324c7e821a16baaa928e71` |
| 3 | `def` | [detectionThreshold](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/detectionthreshold--0c78de9b6029833b5127fbf4.md) | 45 | `declaration-track:0c78de9b6029833b5127fbf4c33331f9dc46e3ea8ac947cdd3cf0f6d7ac7acd1` |
| 4 | `theorem` | [gaussianTerm_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/gaussianterm-nonneg--b09ae4548355dcaf8b15c0f0.md) | 48 | `result-track:b09ae4548355dcaf8b15c0f0a900ef50dc942872a98a04248e01ed175079d35f` |
| 5 | `theorem` | [deficitTerm_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/deficitterm-nonneg--319f6ff77c3ad6dc9b7fe190.md) | 53 | `result-track:319f6ff77c3ad6dc9b7fe19035b0a1284571da8f818f1e28abdb08fe8603aab6` |
| 6 | `theorem` | [detectionThreshold_le_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/detectionthreshold-le-term--758bd6f3a70f32476d525c71.md) | 60 | `result-track:758bd6f3a70f32476d525c7190aeefc35a865009dc2a280a2b8de626691b23a2` |
| 7 | `theorem` | [one_sub_exp_neg_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/one-sub-exp-neg-le--21b23863aea81d2e89729923.md) | 86 | `result-track:21b23863aea81d2e897299230ec1ded2ac047127194a9843214b16a645489841` |
| 8 | `theorem` | [deficitTerm_le_quarter_gaussian](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/deficitterm-le-quarter-gaussian--70255505bf699cdd25abf2cb.md) | 91 | `result-track:70255505bf699cdd25abf2cb6e8b68bae54ea0a0e4811ebc6ec262bc0877bd10` |
| 9 | `def` | [heatDeficit](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/heatdeficit--00acb128c1812e073e0e3ad2.md) | 112 | `declaration-track:00acb128c1812e073e0e3ad23682d384dcd8f0522e111568b68de5e92fbda6f2` |
| 10 | `def` | [gaussianMass](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/gaussianmass--ffd73777b9da7eabf6ab8e28.md) | 116 | `declaration-track:ffd73777b9da7eabf6ab8e282eda84e05024b83cc87bf02985b7373b2ed3bfb4` |
| 11 | `theorem` | [deficit_summable_of_gaussian](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/deficit-summable-of-gaussian--9232268515327c865fcac499.md) | 120 | `result-track:9232268515327c865fcac4996c44de886c37cf8ff7cc50b8f6affe7605ceebf2` |
| 12 | `theorem` | [excludes_closed_region](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/excludes-closed-region--b1c5a67625b2730712646338.md) | 131 | `result-track:b1c5a67625b2730712646338e02add940c13fe7ca42d9ad6e310d5c5f773033c` |
| 13 | `theorem` | [heatDeficit_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/heatdeficit-bounds--52629c6c7f452444e305e121.md) | 145 | `result-track:52629c6c7f452444e305e121830a5672db5b7bfd48fcff906c6953698cf9ad1b` |
| 14 | `theorem` | [region_coverage_of_limits](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/region-coverage-of-limits--46a2036d60e745ba11065073.md) | 162 | `result-track:46a2036d60e745ba11065073cec434b244ba5771fd0926caf8ee3338f22149c8` |
| 15 | `theorem` | [all_displacements_zero_of_exhausting_certificates](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/declarations/all-displacements-zero-of-exhausting-certificates--8d895354b4b2ea8e58c561a1.md) | 176 | `result-track:8d895354b4b2ea8e58c561a19a1ab24f588f3704dc3448cca9042f64936be454` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
