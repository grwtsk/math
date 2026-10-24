# Verification target: GRWTSK.Analysis.SpecialFunctions.FiveModeGammaConstant.Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5168f744ff03c8c7a3a0c684799a4ec81ed17152",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5168f744ff03c8c7a3a0c684799a4ec81ed17152`.

Source path: `GRWTSK/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.Analysis.DigammaSeries` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quarter_digamma_le_one_sub_three](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean/declarations/quarter-digamma-le-one-sub-three--9ba6b0b21b9045881745e6e7.md) | 24 | `result-track:9ba6b0b21b9045881745e6e73fa63559be419d634318fdbdc2781bdc598e4b6e` |
| 2 | `theorem` | [actual_archimedeanConstant_gt_four](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean/declarations/actual-archimedeanconstant-gt-four--d9d34128c7846bffbbbe827d.md) | 61 | `result-track:d9d34128c7846bffbbbe827d239e7979d3e99899d6215e4427b7c60b021a70cd` |
| 3 | `theorem` | [actual_gamma_constant_lt_neg_four](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean/declarations/actual-gamma-constant-lt-neg-four--d8990f45e52a67299a79228f.md) | 72 | `result-track:d8990f45e52a67299a79228f7fef87179ef76dbfcffc7c14b81511c201aada7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
