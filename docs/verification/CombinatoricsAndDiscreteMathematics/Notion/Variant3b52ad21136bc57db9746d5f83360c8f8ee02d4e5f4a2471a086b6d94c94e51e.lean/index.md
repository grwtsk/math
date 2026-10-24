# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Notion.Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "348096950286c06f1fa5d9fced13347b41f388df",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `348096950286c06f1fa5d9fced13347b41f388df`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ObservationPolicy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/observationpolicy--e5a3023dbd4d9b85c8105a99.md) | 15 | `declaration-track:e5a3023dbd4d9b85c8105a99c14d3917335133e7dbd17a30452ca0ae19d5567a` |
| 2 | `def` | [ObservationallyEquivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/observationallyequivalent--8613ff4772e427a630bc66ac.md) | 22 | `declaration-track:8613ff4772e427a630bc66ac2a3d5333abfac816aa794bd723e651d88c8d9b63` |
| 3 | `def` | [notionSetoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/notionsetoid--93e47f5a62f8480756cf4e7d.md) | 27 | `declaration-track:93e47f5a62f8480756cf4e7da78925ddf7139e97e5173ad1e3342d43e997fc76` |
| 4 | `def` | [notionQuotient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/notionquotient--ffef432933e62fef619378b7.md) | 34 | `declaration-track:ffef432933e62fef619378b704bc414e695d0e29c8baa4a43e1dec5186411a26` |
| 5 | `theorem` | [observationallyEquivalent_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/observationallyequivalent-of-budget-le--9950e36f00fe7d3565a633c3.md) | 39 | `result-track:9950e36f00fe7d3565a633c3b0cb1aa2e36ad25faf0f3f93c2c9fd268bdd77ed` |
| 6 | `structure` | [FiniteNotion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/finitenotion--de36f4c1eb30769b4bd08580.md) | 46 | `declaration-track:de36f4c1eb30769b4bd08580fd13421db5f3e07ebc3398f164303c3641a7c123` |
| 7 | `def` | [FiniteNotion.Equivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/finitenotion-equivalent--a09a1be7011d1b10392c9b09.md) | 55 | `declaration-track:a09a1be7011d1b10392c9b093fa481c215da26b9c3df076df6d2c2138ac2dd2c` |
| 8 | `def` | [FiniteNotion.setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/finitenotion-setoid--49402f98d422a812106ef4ec.md) | 61 | `declaration-track:49402f98d422a812106ef4ecc0088924192fcdf8666b5110c614bd9b6014c374` |
| 9 | `def` | [FiniteNotion.compare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/finitenotion-compare--d78444823b8c382c5ac4a087.md) | 68 | `declaration-track:d78444823b8c382c5ac4a087cb735461be55a64b56c5ab4d40f611dc0035efb4` |
| 10 | `theorem` | [FiniteNotion.compare_eq_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/finitenotion-compare-eq-true--ebe87ad95615d51723cffa1f.md) | 74 | `result-track:ebe87ad95615d51723cffa1fc43fa899d3671d7e3253debce469704a99562ee5` |
| 11 | `theorem` | [FiniteNotion.equivalent_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/finitenotion-equivalent-of-budget-le--51f05b8b1dd6bad3aaff4aa7.md) | 81 | `result-track:51f05b8b1dd6bad3aaff4aa7b0bc81053f99cecfbe1ea1d2d97b221d228cd722` |
| 12 | `theorem` | [FiniteNotion.equivalent_of_semantic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/declarations/finitenotion-equivalent-of-semantic--fa6c329520bc0071e6650b3b.md) | 88 | `result-track:fa6c329520bc0071e6650b3b9d891237ec61993791cff8c476b727c07c8641be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
