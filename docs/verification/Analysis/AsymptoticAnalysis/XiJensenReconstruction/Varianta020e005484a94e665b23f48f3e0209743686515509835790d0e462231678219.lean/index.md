# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.XiJensenReconstruction.Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74887238ae4b4f342c7c8994aaccea6667f19843",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74887238ae4b4f342c7c8994aaccea6667f19843`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiJensenWeights` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jensenSection](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/jensensection--871a0938b472dc6a1b22273d.md) | 27 | `declaration-track:871a0938b472dc6a1b22273dc32fe6406dfd27d43fbd661cf1f5ec795001e116` |
| 2 | `theorem` | [jensenSection_index_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/jensensection-index-zero--2e90537a28d923aca42bc535.md) | 31 | `result-track:2e90537a28d923aca42bc5358edf3c68ca2bcc25a3d067130842452e2f011342` |
| 3 | `theorem` | [jensenSection_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/jensensection-zero--d8551c3e084c712eda6d9606.md) | 35 | `result-track:d8551c3e084c712eda6d9606de2305e1edb2eaefcb487221f5f08db3d4498c94` |
| 4 | `theorem` | [jensenSection_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/jensensection-eq-tsum--77c5cf6b2d20c0eee7df591a.md) | 44 | `result-track:77c5cf6b2d20c0eee7df591ae9a1a90eee97250be3387dd8bef49b9d2a55b3d6` |
| 5 | `theorem` | [summable_coefficient_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/summable-coefficient-radius--ea325982878ff2fa28e741bb.md) | 56 | `result-track:ea325982878ff2fa28e741bbb82354a1bbc2e35d026295e4ac3511f1739b6e9d` |
| 6 | `lemma` | [quadratic_factor_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/quadratic-factor-nonneg--853bd520065c9b38d667d4cc.md) | 64 | `result-track:853bd520065c9b38d667d4cc0270c512f00bb253560e4c22ee593e9bd6063ad3` |
| 7 | `lemma` | [quadratic_factor_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/quadratic-factor-le--1693544fee422ddf80e8f024.md) | 72 | `result-track:1693544fee422ddf80e8f024a1976e3ce44aeb40daa214d9669da739a51860c8` |
| 8 | `theorem` | [summable_error_majorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/summable-error-majorant--d555c80e2c0e7fb121ed1870.md) | 80 | `result-track:d555c80e2c0e7fb121ed1870071199f621dd4974699b0fbe4bb5e2784dd4ade4` |
| 9 | `lemma` | [error_term_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/error-term-norm--ea45e8c59623141859235a87.md) | 93 | `result-track:ea45e8c59623141859235a87b052104b8888459275780cafe7cc435fec3a6b39` |
| 10 | `lemma` | [summable_jensen_terms](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/summable-jensen-terms--23ab37c70cf48d96f8327482.md) | 106 | `result-track:23ab37c70cf48d96f832748254ccffc048ffcdf1f5998373fe70699e1b92fc88` |
| 11 | `theorem` | [jensenSection_error_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/jensensection-error-le--d607a04382409ef3920668bb.md) | 120 | `result-track:d607a04382409ef3920668bb9dbb351480b41b7a2dc472ffc88856d499a30934` |
| 12 | `theorem` | [jensenSection_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/jensensection-uniform--3e1fee7af0c8368b7d115219.md) | 152 | `result-track:3e1fee7af0c8368b7d115219d07f5d8d721b59964271dcb73c422c89de7d45dc` |
| 13 | `theorem` | [jensenSection_locallyUniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/declarations/jensensection-locallyuniform--dc44607ea2c5a4e2c891b11e.md) | 167 | `result-track:dc44607ea2c5a4e2c891b11e7b26c07251cbf7d35cc723af18b816455a792ada` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
