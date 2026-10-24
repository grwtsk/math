# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Bounds.Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67249c993116ef51d3a0ed575dc72ebad795d60a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67249c993116ef51d3a0ed575dc72ebad795d60a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bddAbove_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/bddabove-inv--7d72910de6b35bfe0598b2a7.md) | 32 | `result-track:7d72910de6b35bfe0598b2a7c54ac1093dd8f4fa8eb992fd73bc8cae4a83ccec` |
| 2 | `theorem` | [bddBelow_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/bddbelow-inv--5b779d4c16f1bba3be11037b.md) | 38 | `result-track:5b779d4c16f1bba3be11037bb12a06eb91084b0c3265a5c990b2714c00f2ea2e` |
| 3 | `theorem` | [BddAbove.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/bddabove-inv--ffe8a9e35920a7d1ff42f32d.md) | 44 | `result-track:ffe8a9e35920a7d1ff42f32d003ae798bf57e492394680970d78d2b8d7c43b5c` |
| 4 | `theorem` | [BddBelow.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/bddbelow-inv--cdf2a399d9b2829e9e4ee70a.md) | 50 | `result-track:cdf2a399d9b2829e9e4ee70a3fb8d7f4c5d549ee9921c25837f7ed02c7eaca8f` |
| 5 | `theorem` | [isLUB_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/islub-inv--46f94d5b33a4b61049cb1fad.md) | 56 | `result-track:46f94d5b33a4b61049cb1fad4709820569a2fd3aa5fb5fa961c64dbebcd1d233` |
| 6 | `theorem` | [isLUB_inv'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/islub-inv--7afde7376efcfcd849d492e6.md) | 62 | `result-track:7afde7376efcfcd849d492e6582770adfdf71a9be1cf8c38e8501f6d262276cb` |
| 7 | `theorem` | [IsGLB.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/isglb-inv--ba7800de67d4c2ff1d474992.md) | 68 | `result-track:ba7800de67d4c2ff1d4749928bc31bb99c1beceb7482538d6131c6776e50c09f` |
| 8 | `theorem` | [isGLB_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/isglb-inv--f1735f37d3cc1b14c14932ca.md) | 74 | `result-track:f1735f37d3cc1b14c14932cae04cbea69e4d73f6af7a137d47685c8fea242a20` |
| 9 | `theorem` | [isGLB_inv'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/isglb-inv--208dfb9889df4028946b59e5.md) | 80 | `result-track:208dfb9889df4028946b59e5dfae1717fcb2b5e308ac3f59b3a189cd97c18c83` |
| 10 | `theorem` | [IsLUB.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/islub-inv--a314eeeb27eb248dc6d878f8.md) | 86 | `result-track:a314eeeb27eb248dc6d878f8d3fdb73e4c4482c94e68afb04ad7c498f6b73f12` |
| 11 | `theorem` | [mul_mem_upperBounds_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/mul-mem-upperbounds-mul--919f854b9402f48e14b75199.md) | 99 | `result-track:919f854b9402f48e14b751997b37c8a56cfa760bfe0f52ada62f12da57e0847f` |
| 12 | `theorem` | [subset_upperBounds_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/subset-upperbounds-mul--4c676cd1ee30c79baad1cd6c.md) | 106 | `result-track:4c676cd1ee30c79baad1cd6c045ba18e3282cc85b30ba2b71bf9d8bcae2907da` |
| 13 | `theorem` | [mul_mem_lowerBounds_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/mul-mem-lowerbounds-mul--5ba17aaa86bb758ddd38fbac.md) | 113 | `result-track:5ba17aaa86bb758ddd38fbacb6fd58a896ba19759f71abc62cdda53621bc2f07` |
| 14 | `theorem` | [subset_lowerBounds_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/subset-lowerbounds-mul--66a6b726113eec308d9dcaf0.md) | 120 | `result-track:66a6b726113eec308d9dcaf0333fac50d7ff07f3b93a8846f7c88a1ae5ac43d3` |
| 15 | `theorem` | [BddAbove.mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/bddabove-mul--9d6f14dd7295c1a60a6084fb.md) | 127 | `result-track:9d6f14dd7295c1a60a6084fb6333e3e70558486018cfb329afaf84cb4ee77767` |
| 16 | `theorem` | [BddBelow.mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/bddbelow-mul--fe220fbec4003ed9919e6d7a.md) | 133 | `result-track:fe220fbec4003ed9919e6d7a1e47e3848faa73018666f8f49387013b882f7c1a` |
| 17 | `theorem` | [ciSup_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/cisup-mul--a5779001f8f5e42928a79817.md) | 148 | `result-track:a5779001f8f5e42928a79817038e27b23248bd06a1b25c7189796f2a45db0b5a` |
| 18 | `theorem` | [ciSup_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/cisup-div--ed03685a854ccd8cd055fc4f.md) | 154 | `result-track:ed03685a854ccd8cd055fc4fece84915da871c31dfa6dd0553dd6d70060eb588` |
| 19 | `theorem` | [mul_ciSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Varianta4a1f93c8428e55a2131386e383214082901a8c019aaa6be92ad52dc14dd39ba.lean/declarations/mul-cisup--3010124f8ef0895ed3bdc9f8.md) | 167 | `result-track:3010124f8ef0895ed3bdc9f86e3a538301f303e92397ff2275724b1a4eeb5d1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
