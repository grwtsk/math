# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff9c1b9a71851f921ec9933533a02c30dfc398dd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff9c1b9a71851f921ec9933533a02c30dfc398dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Multiset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/declarations/factorization--e1c802b0be67c70e3ef67685.md) | 36 | `declaration-track:e1c802b0be67c70e3ef67685764747b04b6e2f43fadda9703360ec05176e732b` |
| 2 | `theorem` | [factorization_eq_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/declarations/factorization-eq-count--d16fe31011e7873025a044f4.md) | 39 | `result-track:d16fe31011e7873025a044f4b645874eeac6cd287a5a425770eb35769e35c207` |
| 3 | `theorem` | [factorization_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/declarations/factorization-zero--944770bbb64a84fd9cf4a82f.md) | 43 | `result-track:944770bbb64a84fd9cf4a82f8a54d0125ff96154db8241fb34a9faf5c0b5338d` |
| 4 | `theorem` | [factorization_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/declarations/factorization-one--e273ea7869f198b94c87b050.md) | 46 | `result-track:e273ea7869f198b94c87b05017062ce7608460a3818fecef89181a05ccaa73d5` |
| 5 | `theorem` | [support_factorization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/declarations/support-factorization--142266bdd0b67c8a3d7f31c4.md) | 50 | `result-track:142266bdd0b67c8a3d7f31c4cf3b3827d799875654ce1f6fb9f40ed00665af9b` |
| 6 | `theorem` | [factorization_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/declarations/factorization-mul--695a9cbff7fc747ff1a5c77e.md) | 56 | `result-track:695a9cbff7fc747ff1a5c77e9f4713e617487299096c68947c00cf65354b2e0a` |
| 7 | `theorem` | [factorization_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/declarations/factorization-pow--fb40da240adbad37f5bfd00f.md) | 61 | `result-track:fb40da240adbad37f5bfd00fc786b8e9194ebab68f3c440a334fe851b708eeec` |
| 8 | `theorem` | [associated_of_factorization_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9.lean/declarations/associated-of-factorization-eq--6c881a852f4201e40b2ba4e6.md) | 65 | `result-track:6c881a852f4201e40b2ba4e61cb272a82ba015a13c274561bee301e1a1f6c2cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
