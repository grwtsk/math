# Verification target: GRWTSK.Analysis.Inequalities.AdaptiveResidualBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "721dbf722972911c9ca48bcf006d5da294ed7fcc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/AdaptiveResidualBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `721dbf722972911c9ca48bcf006d5da294ed7fcc`.

Source path: `GRWTSK/Analysis/Inequalities/AdaptiveResidualBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/AdaptiveResidualBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quantile_interior](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/quantile-interior--25db991827df7b5109a91149.md) | 19 | `result-track:25db991827df7b5109a91149fa39dfabccc39d248481d5d1250d728f9aeee5a4` |
| 2 | `theorem` | [add_last_background](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/add-last-background--afb4e398d7d31352adcf0b08.md) | 27 | `result-track:afb4e398d7d31352adcf0b082104de3b58a2b77600c5a7b45be4d92aa23851b9` |
| 3 | `theorem` | [rational_padding](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/rational-padding--bd09c0e4cbea6b27c8b4edf5.md) | 32 | `result-track:bd09c0e4cbea6b27c8b4edf53d2f1068a1a87134639c502124d6118229c177e7` |
| 4 | `theorem` | [padded_fine_budget](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/padded-fine-budget--2ea6ffd16cf01807ff7f9f3e.md) | 37 | `result-track:2ea6ffd16cf01807ff7f9f3eb7b2de9dae2cd0f85aefdd8c79947d439ed2bf34` |
| 5 | `theorem` | [complete_linear_budget](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/complete-linear-budget--34b15410878309974a19cb1d.md) | 47 | `result-track:34b15410878309974a19cb1d9da71b0856e25ff0f67bc169591511edb8e770d4` |
| 6 | `theorem` | [rational_linear_budget](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/rational-linear-budget--78d234f6b46f86f0d45056a8.md) | 56 | `result-track:78d234f6b46f86f0d45056a8e027520df3975515fde1d32d44dc13c4d56df938` |
| 7 | `theorem` | [residual_lower](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/residual-lower--cd7c6b275136f39b0d4f9f8d.md) | 65 | `result-track:cd7c6b275136f39b0d4f9f8de04670369cdbce5c93f8429ae658f2f88fddf55e` |
| 8 | `theorem` | [residual_upper](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/residual-upper--90ab121c1ff427cdb6c56b14.md) | 67 | `result-track:90ab121c1ff427cdb6c56b143208f40d021c05ceaa825e89cb57161d00d6199e` |
| 9 | `theorem` | [zero_mass_nonzero_pair](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/zero-mass-nonzero-pair--36bc2357163884ef94045c8b.md) | 70 | `result-track:36bc2357163884ef94045c8b4db7fdbd6998fb8aad2d018cb3f515855b0c098d` |
| 10 | `theorem` | [partition_independent_residual](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/partition-independent-residual--cb6e9920311a0a44ca416d8d.md) | 74 | `result-track:cb6e9920311a0a44ca416d8da69bef1194a4809c8c9430602a704271fe69a009` |
| 11 | `theorem` | [canonical_linear_budget](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/canonical-linear-budget--cd0b7188d3b48eaffce67c73.md) | 79 | `result-track:cd0b7188d3b48eaffce67c7371a0871ef8b0291b3c5b0b6672ed209fe0b29ee0` |
| 12 | `theorem` | [canonical_rational_budget](../../../../mathematics/Analysis/Inequalities/AdaptiveResidualBudget.lean/declarations/canonical-rational-budget--994bcdc8c0bb1e25801868d3.md) | 87 | `result-track:994bcdc8c0bb1e25801868d3f2b479169b48043957bafcb62fb3967ff6e27b30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
