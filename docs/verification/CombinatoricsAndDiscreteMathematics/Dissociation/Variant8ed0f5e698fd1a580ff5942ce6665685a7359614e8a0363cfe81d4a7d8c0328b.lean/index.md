# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Dissociation.Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9faa55897188696dceaad7b57ab2e57276d0b664",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9faa55897188696dceaad7b57ab2e57276d0b664`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulDissociated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/muldissociated--66b12d205c828b1c644ed8a5.md) | 41 | `declaration-track:66b12d205c828b1c644ed8a5d4747c617febe22cb02a99243429e4329f113e5a` |
| 2 | `lemma` | [mulDissociated_iff_sum_eq_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/muldissociated-iff-sum-eq-subsingleton--dc85583acbb2b3d0130d52bf.md) | 43 | `result-track:dc85583acbb2b3d0130d52bf5c693e954776de89809b94ae74304a489f3e4706` |
| 3 | `lemma` | [MulDissociated.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/muldissociated-subset--63056b44fafdfc4a2e60aba8.md) | 48 | `result-track:63056b44fafdfc4a2e60aba84db14550dd657e1a172e4dcac1d468cdba1a7faf` |
| 4 | `lemma` | [mulDissociated_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/muldissociated-empty--a197d1c7e428d3f87bfb4b21.md) | 51 | `result-track:a197d1c7e428d3f87bfb4b214de363fa0439b0f39dbbd8641d21268ed276d6a2` |
| 5 | `lemma` | [mulDissociated_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/muldissociated-singleton--c56c16a8895d3a40f28268dc.md) | 55 | `result-track:c56c16a8895d3a40f28268dcb0df71690cb3ee1018c8b53317a9f49250f3e130` |
| 6 | `lemma` | [not_mulDissociated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/not-muldissociated--16a6cad9f1b3b1a5c0d41e3e.md) | 60 | `result-track:16a6cad9f1b3b1a5c0d41e3e0d977e2bb03382f53cfe318699378c0b13020307` |
| 7 | `lemma` | [not_mulDissociated_iff_exists_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/not-muldissociated-iff-exists-disjoint--ba14ed550630f4f8936441cc.md) | 66 | `result-track:ba14ed550630f4f8936441cc1d486792ccc390042b87cb99bd794f0bada8ceb7` |
| 8 | `lemma` | [MulEquiv.mulDissociated_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/mulequiv-muldissociated-preimage--66c2235b5f05aa3d5cc0584c.md) | 76 | `result-track:66c2235b5f05aa3d5cc0584cfeba69e65ad3a0e10807729e7715026fc7e10b86` |
| 9 | `lemma` | [mulDissociated_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/muldissociated-inv--6ac02d7ac7c4d8e61858eeb5.md) | 81 | `result-track:6ac02d7ac7c4d8e61858eeb58378b96b132b7d1058e91528e28a53ce0697bd9c` |
| 10 | `def` | [mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/mulspan--981db91929517474ff99f73b.md) | 101 | `declaration-track:981db91929517474ff99f73b9ffe8e68920bc4f610d64b56679a9d429f4f694b` |
| 11 | `lemma` | [mem_mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/mem-mulspan--b19ada29b7c00b90727ac873.md) | 105 | `result-track:b19ada29b7c00b90727ac873346694d4f275167835ef5ff5fc3ab0c0394360ac` |
| 12 | `lemma` | [subset_mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/subset-mulspan--eb248d728bc5acb2c47000cd.md) | 110 | `result-track:eb248d728bc5acb2c47000cda0fec045617534648917a31a14facc4f94323243` |
| 13 | `lemma` | [prod_div_prod_mem_mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/prod-div-prod-mem-mulspan--12034e290206871a41c38a1e.md) | 115 | `result-track:12034e290206871a41c38a1eccb65753aec8b4353af08eacadced41b9782db41` |
| 14 | `lemma` | [exists_subset_mulSpan_card_le_of_forall_mulDissociated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/declarations/exists-subset-mulspan-card-le-of-forall-muldissociated--6622b67bad32419b9af08289.md) | 131 | `result-track:6622b67bad32419b9af082898de41746f08f8d655114dedddc3827a4d98bb226` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
