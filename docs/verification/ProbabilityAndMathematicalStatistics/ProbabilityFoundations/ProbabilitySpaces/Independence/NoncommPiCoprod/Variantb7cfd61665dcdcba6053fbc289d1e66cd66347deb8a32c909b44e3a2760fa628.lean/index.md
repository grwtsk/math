# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.NoncommPiCoprod.Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "969d03bb0764b7f983e73ecef3278aee6e08a2c9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `969d03bb0764b7f983e73ecef3278aee6e08a2c9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.OrderOfElement` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NoncommProd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.BigOperators` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_one_of_noncommProd_eq_one_of_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/eq-one-of-noncommprod-eq-one-of-independent--b72e2891f80fe8730f6ac46f.md) | 65 | `result-track:b72e2891f80fe8730f6ac46f93b19a3f68ebcbfc175877a586e17cda40ac379c` |
| 2 | `def` | [noncommPiCoprod](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/noncommpicoprod--efb895aa4ce0fe4c48bb05f0.md) | 118 | `declaration-track:efb895aa4ce0fe4c48bb05f018f6240b02082d37c3213d7f4698bbff4bea9290` |
| 3 | `theorem` | [noncommPiCoprod_mulSingle](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/noncommpicoprod-mulsingle--e89168207bec49aea288d13b.md) | 137 | `result-track:e89168207bec49aea288d13b73dd2abf873b8d27bf77827343cf186685481c55` |
| 4 | `def` | [noncommPiCoprodEquiv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/noncommpicoprodequiv--8f32cce4b69ffe2654129e4b.md) | 155 | `declaration-track:8f32cce4b69ffe2654129e4b943fbb8f65f530749659e3c3a0ea793f58b8cfaa` |
| 5 | `theorem` | [noncommPiCoprod_mrange](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/noncommpicoprod-mrange--3f08a4f3fa3de7a1565b15f1.md) | 170 | `result-track:3f08a4f3fa3de7a1565b15f1ebd41f61a57bd8380a62efd5e4c0ca7ef1c44656` |
| 6 | `theorem` | [noncommPiCoprod_range](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/noncommpicoprod-range--cf1d4cc70f97482c868feb64.md) | 208 | `result-track:cf1d4cc70f97482c868feb6419b2f6faea9cb8c941661d1acd6501e5cfee5b41` |
| 7 | `theorem` | [injective_noncommPiCoprod_of_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/injective-noncommpicoprod-of-independent--5007e928c641199ff38c15cd.md) | 224 | `result-track:5007e928c641199ff38c15cd2bfb46f4995586faddc9e4a42914a15a1de073ab` |
| 8 | `theorem` | [independent_range_of_coprime_order](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/independent-range-of-coprime-order--c3207c955824a596c50eda50.md) | 243 | `result-track:c3207c955824a596c50eda5071db0dc1edbed4f57517757382dc94b38f613545` |
| 9 | `theorem` | [commute_subtype_of_commute](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/commute-subtype-of-commute--ad29ae910928793c6171e90a.md) | 300 | `result-track:ad29ae910928793c6171e90a662d35e0aa6ff749d2a63448c42fbb64d58a6dde` |
| 10 | `def` | [noncommPiCoprod](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/noncommpicoprod--d9d06d2913e2ce67d046823b.md) | 311 | `declaration-track:d9d06d2913e2ce67d046823b86d6fb2ce96c5bdfdce578e9d192cc0fe6050dba` |
| 11 | `theorem` | [noncommPiCoprod_mulSingle](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/noncommpicoprod-mulsingle--3f6ef46ecd0ccc33495cb1d3.md) | 319 | `result-track:3f6ef46ecd0ccc33495cb1d30094e60937d422f943ebd53d6d72f0de859d2f4b` |
| 12 | `theorem` | [noncommPiCoprod_range](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/noncommpicoprod-range--d053642deee3f4cf9006798f.md) | 325 | `result-track:d053642deee3f4cf9006798fe4f8a0144d8136f2b303169ae97cfe0cbf1887f2` |
| 13 | `theorem` | [injective_noncommPiCoprod_of_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/injective-noncommpicoprod-of-independent--3e893f646fa367995ad52609.md) | 331 | `result-track:3e893f646fa367995ad526098d88e3aa8aab303ade31bf3943f8860994e1d5da` |
| 14 | `theorem` | [independent_of_coprime_order](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/declarations/independent-of-coprime-order--2d83f064a82f558f7a716290.md) | 343 | `result-track:2d83f064a82f558f7a716290b61d6c66d74a9ba03e3ea29bf0595aeaaf7d07a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
