# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Estimator.Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4da7a2e53bd9f2b502ce86cbf1c94e739db8af9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4da7a2e53bd9f2b502ce86cbf1c94e739db8af9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelClasses` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Thunk` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EstimatorData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/estimatordata--407e2cfec051b1f8f03127e6.md) | 43 | `declaration-track:407e2cfec051b1f8f03127e6b95ebf8af41d62abde8c061400d91344b41b1af4` |
| 2 | `class` | [Estimator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/estimator--edc8a1415a32518fb48bac6e.md) | 55 | `declaration-track:edc8a1415a32518fb48bac6e6d52ba25cceaaa35430f863f7eeafd7577f7f660` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/instance--bfad66869e3b67e706cb453f.md) | 69 | `declaration-track:bfad66869e3b67e706cb453fff0d7516e59f414dbea6f1fe54018dbc55927bd3` |
| 4 | `def` | [Estimator.improveUntilAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/estimator-improveuntilaux--39247662fa3f769304e864b8.md) | 77 | `declaration-track:39247662fa3f769304e864b8b406a46e3f7c9218b4006ccdb919a0e6446a4f31` |
| 5 | `def` | [Estimator.improveUntil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/estimator-improveuntil--360f1af815277ad09b789e80.md) | 94 | `declaration-track:360f1af815277ad09b789e805ce61a35a62f26635b7184a64f23eaebd2f68d98` |
| 6 | `theorem` | [Estimator.improveUntilAux_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/estimator-improveuntilaux-spec--066c7f5b86c094746b285395.md) | 106 | `result-track:066c7f5b86c094746b285395f44b30a6fb26d1ea08b74d1ecd2de81085616467` |
| 7 | `theorem` | [Estimator.improveUntil_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/estimator-improveuntil-spec--02a5e22fe94077be0240437f.md) | 128 | `result-track:02a5e22fe94077be0240437fbbc76eb92f948721cf444e860b63acda84fbc180` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/instance--a930a973c6a6124b00f54f96.md) | 137 | `declaration-track:a930a973c6a6124b00f54f969e9d62eba84b1e18ea6bbb1525b57c1ffaf696ec` |
| 9 | `structure` | [Estimator.fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/estimator-fst--75107d0d89f4e1d724423728.md) | 147 | `declaration-track:75107d0d89f4e1d7244237286ad9ee7ff04004cf78a9cebcd2815cc6eb876e9d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/instance--6170ec02bc88cc108f22416c.md) | 153 | `declaration-track:6170ec02bc88cc108f22416c3ca32a957252670ce1f4e9aef561c907e899ce8d` |
| 11 | `def` | [Estimator.fstInst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantd547b2371a2dd5bb0c1d76d1b6dc7909920369dcae12e61ada2fae4039388108.lean/declarations/estimator-fstinst--0f41c5a5c8c1ab348d289174.md) | 165 | `declaration-track:0f41c5a5c8c1ab348d289174ff7249f2cf97560f5b0cc24477252d6590e29787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
