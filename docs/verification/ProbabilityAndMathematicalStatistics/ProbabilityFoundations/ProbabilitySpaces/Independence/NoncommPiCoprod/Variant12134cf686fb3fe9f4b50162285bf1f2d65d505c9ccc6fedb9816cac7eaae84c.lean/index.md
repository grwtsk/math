# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.NoncommPiCoprod.Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bec1f196e3583436e814144165a09a420e500458",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bec1f196e3583436e814144165a09a420e500458`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.OrderOfElement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NoncommProd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_one_of_noncommProd_eq_one_of_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/eq-one-of-noncommprod-eq-one-of-independent--92df96d983e64a58cb4e8db9.md) | 57 | `result-track:92df96d983e64a58cb4e8db929f569813acf79a95dc8f0c507c3c9d4c10815c0` |
| 2 | `def` | [noncommPiCoprod](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/noncommpicoprod--8cb5d8db6fe7e8a361aa372c.md) | 110 | `declaration-track:8cb5d8db6fe7e8a361aa372c9a121349b1f7eba6da615b79b1cb821cc1f72b88` |
| 3 | `theorem` | [noncommPiCoprod_mulSingle](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/noncommpicoprod-mulsingle--e65271fd4171041972f92f10.md) | 129 | `result-track:e65271fd4171041972f92f10fcaddf81125dd9578cb48a0a88ad138e503d8bce` |
| 4 | `def` | [noncommPiCoprodEquiv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/noncommpicoprodequiv--580d6ab25cdefe475d10c5a6.md) | 147 | `declaration-track:580d6ab25cdefe475d10c5a69173db4db94337efe82b34deda84cff0e27824ba` |
| 5 | `theorem` | [noncommPiCoprod_mrange](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/noncommpicoprod-mrange--ccce07b5c46f2d0a22607640.md) | 162 | `result-track:ccce07b5c46f2d0a2260764056fba5df39a0f9ee553555f9e1b83f534591ccd1` |
| 6 | `theorem` | [noncommPiCoprod_range](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/noncommpicoprod-range--023c28a26c006e42448c122b.md) | 200 | `result-track:023c28a26c006e42448c122b1837c1361c4887e986f77bc9f8db5bf792bafcce` |
| 7 | `theorem` | [injective_noncommPiCoprod_of_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/injective-noncommpicoprod-of-independent--74d0b3d628e425275739c5e4.md) | 216 | `result-track:74d0b3d628e425275739c5e4a5a73517f9cc523156e620e65152e0eb13903ce1` |
| 8 | `theorem` | [independent_range_of_coprime_order](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/independent-range-of-coprime-order--d2b796afb0deae5a6357f0b2.md) | 235 | `result-track:d2b796afb0deae5a6357f0b2d72b0ab5513718cd81cbe4570f5ad1c27b66bbf2` |
| 9 | `theorem` | [commute_subtype_of_commute](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/commute-subtype-of-commute--383168f5436f2db657c5e701.md) | 292 | `result-track:383168f5436f2db657c5e701ff2bd0b644da454108279997df14ea85480fe676` |
| 10 | `def` | [noncommPiCoprod](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/noncommpicoprod--52ab8e8461217810a36f53b2.md) | 303 | `declaration-track:52ab8e8461217810a36f53b20651757cf8210bc9c967d4216483e4b7901614f0` |
| 11 | `theorem` | [noncommPiCoprod_mulSingle](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/noncommpicoprod-mulsingle--2d6a4fc158c1230095f87821.md) | 311 | `result-track:2d6a4fc158c1230095f878218654d6bdee9933eda6e708a0daf7d995f8009eb5` |
| 12 | `theorem` | [noncommPiCoprod_range](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/noncommpicoprod-range--131fc8cdfb3ce69c852fd63b.md) | 317 | `result-track:131fc8cdfb3ce69c852fd63b833d5e7ecb01d22a1b811245573cfc6302cd3c79` |
| 13 | `theorem` | [injective_noncommPiCoprod_of_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/injective-noncommpicoprod-of-independent--035a3608137d299aeb82ea6c.md) | 323 | `result-track:035a3608137d299aeb82ea6cba7cd213111eca90ff6e4507316952abf5e6632b` |
| 14 | `theorem` | [independent_of_coprime_order](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/declarations/independent-of-coprime-order--b8703ee08131738cad55da67.md) | 335 | `result-track:b8703ee08131738cad55da6710316b838f4892f337541efe8be5cb0972bb1a83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
