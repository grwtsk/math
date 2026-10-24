# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PartialFractions.Variantfde399be00616ee3c63b16681c9adf3fe728a0fd96dfd264d54af7421d44adcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c3882287081e5d3301ce6bb011cb31cf6c2e371",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PartialFractions/Variantfde399be00616ee3c63b16681c9adf3fe728a0fd96dfd264d54af7421d44adcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PartialFractions/Variantfde399be00616ee3c63b16681c9adf3fe728a0fd96dfd264d54af7421d44adcd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PartialFractions/Variantfde399be00616ee3c63b16681c9adf3fe728a0fd96dfd264d54af7421d44adcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c3882287081e5d3301ce6bb011cb31cf6c2e371`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PartialFractions/Variantfde399be00616ee3c63b16681c9adf3fe728a0fd96dfd264d54af7421d44adcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PartialFractions/Variantfde399be00616ee3c63b16681c9adf3fe728a0fd96dfd264d54af7421d44adcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Div` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [div_eq_quo_add_rem_div_add_rem_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PartialFractions/Variantfde399be00616ee3c63b16681c9adf3fe728a0fd96dfd264d54af7421d44adcd.lean/declarations/div-eq-quo-add-rem-div-add-rem-div--ee1fe36df3db2f23842f79e2.md) | 71 | `result-track:ee1fe36df3db2f23842f79e2ba2b873ad6d2782afd78d34f50a84481921f7665` |
| 2 | `theorem` | [div_eq_quo_add_sum_rem_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PartialFractions/Variantfde399be00616ee3c63b16681c9adf3fe728a0fd96dfd264d54af7421d44adcd.lean/declarations/div-eq-quo-add-sum-rem-div--e43d86a2c75ad1ee0d309b7c.md) | 106 | `result-track:e43d86a2c75ad1ee0d309b7c5ad96163c51dd18a040f306fa7b7f330e402cf6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
