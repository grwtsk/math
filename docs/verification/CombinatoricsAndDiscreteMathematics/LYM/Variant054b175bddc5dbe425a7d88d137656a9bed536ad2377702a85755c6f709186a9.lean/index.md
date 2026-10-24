# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LYM.Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13eeb7f335e51a45cb7c43c065042eeed2781dfc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13eeb7f335e51a45cb7c43c065042eeed2781dfc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.DoubleCounting` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SetFamily.Shadow` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Order` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_mul_le_card_shadow_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/card-mul-le-card-shadow-mul--a33c275f11ed32391e942cea.md) | 72 | `result-track:a33c275f11ed32391e942cea24bcae3746fce22e4d9b4d7310409eace15cffcf` |
| 2 | `theorem` | [card_div_choose_le_card_shadow_div_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/card-div-choose-le-card-shadow-div-choose--e7fd220e8a706edb06f731af.md) | 99 | `result-track:e7fd220e8a706edb06f731af7eaa31c8fa8b1cb19adf8ef0499c0d32cca86364` |
| 3 | `def` | [falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/falling--75b6163d7d6166f5d7d2c957.md) | 133 | `declaration-track:75b6163d7d6166f5d7d2c95759fa9877904132915ead7c11542a6079b3d7bef3` |
| 4 | `theorem` | [mem_falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/mem-falling--34f816d1535113747df7f6e0.md) | 139 | `result-track:34f816d1535113747df7f6e0e6c1e02cccc90867a2488191dbbdb7bad16241c0` |
| 5 | `theorem` | [sized_falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/sized-falling--457bd1d6c00e969d5e380023.md) | 146 | `result-track:457bd1d6c00e969d5e380023ea54cb42c58ee9d44bbc032320b5913f6cf0a75d` |
| 6 | `theorem` | [slice_subset_falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/slice-subset-falling--9ed657350f3cd211a100f9d2.md) | 149 | `result-track:9ed657350f3cd211a100f9d23cebf4efdd4f793d74db1251a29b3b637a89e97f` |
| 7 | `theorem` | [falling_zero_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/falling-zero-subset--1ad16fbe76739f2793b71358.md) | 153 | `result-track:1ad16fbe76739f2793b713588f2bee2872aadf42a4eaf39908a848810f533a61` |
| 8 | `theorem` | [slice_union_shadow_falling_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/slice-union-shadow-falling-succ--57e7dcf5ae3d8c6cde696f69.md) | 157 | `result-track:57e7dcf5ae3d8c6cde696f69e820ffa612697b7748608950b9e76f1884f1b2d7` |
| 9 | `theorem` | [IsAntichain.disjoint_slice_shadow_falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/isantichain-disjoint-slice-shadow-falling--7edbd1a7cd9ca8377c0c9e00.md) | 178 | `result-track:7edbd1a7cd9ca8377c0c9e00eef7f74e096d3533b48753328cdfc3be2165ff36` |
| 10 | `theorem` | [le_card_falling_div_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/le-card-falling-div-choose--131ea4799b45608a30be4fa1.md) | 189 | `result-track:131ea4799b45608a30be4fa1b03d486beaaf8ffa9d29b4d6de37e6c67f682ec1` |
| 11 | `theorem` | [sum_card_slice_div_choose_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/sum-card-slice-div-choose-le-one--72f2d4c9b25f10ba40f23b96.md) | 217 | `result-track:72f2d4c9b25f10ba40f23b9688c4d835580a2631223a3ce6eabf86c0a467ee27` |
| 12 | `theorem` | [IsAntichain.sperner](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/declarations/isantichain-sperner--957052047abc1877450ee0eb.md) | 237 | `result-track:957052047abc1877450ee0eb84c5e0162c0e6c84acdffa66badd3959106734de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
