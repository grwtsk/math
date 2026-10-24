# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Estimator.Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0bec0058611c66f299e89e63f4cbe4babf3f1d6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0bec0058611c66f299e89e63f4cbe4babf3f1d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Heyting.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Thunk` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EstimatorData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/estimatordata--f69d1a690d51acfae5f9dea5.md) | 52 | `declaration-track:f69d1a690d51acfae5f9dea5e785666b4cebe9862eddb7d606fba05ba116fb5b` |
| 2 | `class` | [Estimator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/estimator--0fe31f8c3403e7522eb4e2a2.md) | 64 | `declaration-track:0fe31f8c3403e7522eb4e2a2ad694532e998e37fdb9d7011ab09fc28b6be3a33` |
| 3 | `abbrev` | [Estimator.trivial.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/estimator-trivial--16c913b0770dfae2e1fb648d.md) | 80 | `declaration-track:16c913b0770dfae2e1fb648dec7eff11010d107ae2cf4f07b4743d07b53af851` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/instance--a8f50d7915c80fd6fc9eada0.md) | 82 | `declaration-track:a8f50d7915c80fd6fc9eada0b36bc9769b2c406cb82b63277c248835178cf905` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/instance--5d529fc161e1e4355f7d05d2.md) | 84 | `declaration-track:5d529fc161e1e4355f7d05d2cfac4abd9fea20431b1a1e16a6b6b243e3df63b5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/instance--a092821f20353f38f37d465e.md) | 87 | `declaration-track:a092821f20353f38f37d465e1c972cef3dfc124978f3345f4bbe1c7dabc09feb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/instance--fa92c226acea47b7dcd5f6c1.md) | 92 | `declaration-track:fa92c226acea47b7dcd5f6c1aed870c3528a1bb30201e74815a09961409e4226` |
| 8 | `def` | [Estimator.improveUntilAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/estimator-improveuntilaux--4b61cabc1a92e572dad52aed.md) | 106 | `declaration-track:4b61cabc1a92e572dad52aed048047373bfb46ad10564386dbcb0e91c018f2b1` |
| 9 | `def` | [Estimator.improveUntil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/estimator-improveuntil--244f2ea412cd72be05ad2ea3.md) | 123 | `declaration-track:244f2ea412cd72be05ad2ea3bb9c5ba64909b56067efcc9a0ee3d5261b2b2b00` |
| 10 | `theorem` | [Estimator.improveUntilAux_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/estimator-improveuntilaux-spec--33a1b42d75383da612adf95a.md) | 133 | `result-track:33a1b42d75383da612adf95abc49a4832a610b1a0fb038c7c04d1c433ae02421` |
| 11 | `theorem` | [Estimator.improveUntil_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/estimator-improveuntil-spec--4d225e576c5ee7aaacf43645.md) | 155 | `result-track:4d225e576c5ee7aaacf43645295595013ff999a8fb214141686ee4b07cd345fd` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/instance--e5a4a68a0808b2769de22541.md) | 170 | `declaration-track:e5a4a68a0808b2769de2254116ba9b45f1600a0c09b5ac25ab86d5a596d14df3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/instance--559bd2808d24adc43b59f04c.md) | 179 | `declaration-track:559bd2808d24adc43b59f04c16a9bfbe8434656031b717c729521920705bb61f` |
| 14 | `structure` | [Estimator.fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/estimator-fst--52ef0832afe9c0fb5b9f6630.md) | 205 | `declaration-track:52ef0832afe9c0fb5b9f6630b55db929a5e090b57bb4db728655eb8e81a67ad3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/instance--c1fa453ee5a4f8f687f006e8.md) | 213 | `declaration-track:c1fa453ee5a4f8f687f006e87b852d94146a541ff64ebb303fb7c0d9ac86250d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/instance--329ee85e3be138a2208c8a78.md) | 218 | `declaration-track:329ee85e3be138a2208c8a78677e3460888304bab12855a4f534144aa3870f46` |
| 17 | `def` | [Estimator.fstInst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/declarations/estimator-fstinst--8033d90fd5ebd50057ed1dc7.md) | 230 | `declaration-track:8033d90fd5ebd50057ed1dc733945a6e8fccb278f06fae604999fd627924a25c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
