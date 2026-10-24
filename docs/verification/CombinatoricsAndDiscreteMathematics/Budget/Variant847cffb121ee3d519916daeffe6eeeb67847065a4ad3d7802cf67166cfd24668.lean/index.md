# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Budget.Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21ce43ce58291e94407c5f83ddb2f6b25711fc35",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21ce43ce58291e94407c5f83ddb2f6b25711fc35`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.ModePlan` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TraversalBudget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/traversalbudget--19999271883b0389881a7441.md) | 13 | `declaration-track:19999271883b0389881a74412efb6fa1b51b4ef8f075180785cdbf872aea1352` |
| 2 | `structure` | [TraversalUsage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/traversalusage--2fdffdb25fceedd53c022040.md) | 23 | `declaration-track:2fdffdb25fceedd53c022040179961cd25726ed8edd9a72a0bb977d2b026537b` |
| 3 | `def` | [TraversalUsage.zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/traversalusage-zero--7602810cc26bbd4b63ccfc04.md) | 33 | `declaration-track:7602810cc26bbd4b63ccfc0408d700b7f06cad70d96057bc1c63eaee9a0913b6` |
| 4 | `def` | [WithinBudget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/withinbudget--0ab70b63701f69c861f27669.md) | 42 | `declaration-track:0ab70b63701f69c861f276698bca8ebbe699286f35a931b85c7b7d899a6cfb56` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/instance--46647e67f7365990eab378e2.md) | 54 | `declaration-track:46647e67f7365990eab378e28ea924d49fa6c40693a0ddd0b917288ee1ba2425` |
| 6 | `inductive` | [BudgetDimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/budgetdimension--3db151cee119d86e32270deb.md) | 62 | `declaration-track:3db151cee119d86e32270debea96d12ec011a05cb582b5e47639f8bd9d7393d8` |
| 7 | `def` | [BudgetDimension.exceeded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/budgetdimension-exceeded--590cc10c76f1d18f99511a36.md) | 72 | `declaration-track:590cc10c76f1d18f99511a36b97df784542443369beccd8f9c665de0dbf0bd9e` |
| 8 | `def` | [exceededDimensions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/exceededdimensions--987b10c9933d3550226d6a49.md) | 101 | `declaration-track:987b10c9933d3550226d6a49832bc14b97ae7b51a936ddd0c2ba02eca5e1a605` |
| 9 | `theorem` | [withinBudget_iff_no_exceeded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/withinbudget-iff-no-exceeded--a75e3b6ccfbbe82f3a12c061.md) | 108 | `result-track:a75e3b6ccfbbe82f3a12c0619d8cc41b9af716af0b48c6a9ba510c2d9c2baade` |
| 10 | `def` | [UsageMonotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668.lean/declarations/usagemonotone--9953150e7ed2f9973a928e3d.md) | 164 | `declaration-track:9953150e7ed2f9973a928e3d9f2ad654691a8e5cef53a0821077e45ca7cd5133` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
