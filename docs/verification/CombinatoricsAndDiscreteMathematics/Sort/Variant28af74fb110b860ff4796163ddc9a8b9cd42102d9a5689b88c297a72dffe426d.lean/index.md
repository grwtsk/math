# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7becda2d05824a3473757cabe5ab33f53cd1b611",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7becda2d05824a3473757cabe5ab33f53cd1b611`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [graph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/graph--26924fbe7ad7b2fcbf4e572c.md) | 47 | `declaration-track:26924fbe7ad7b2fcbf4e572c7dca0c6049919fe0a5419bbfb75d3e629df7378a` |
| 2 | `def` | [graph.proj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/graph-proj--e061091b36bd96e4aaf47877.md) | 54 | `declaration-track:e061091b36bd96e4aaf47877b5554f6e8a36036a8a9c8f1cb4ac7fdc814a2c7e` |
| 3 | `theorem` | [graph.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/graph-card--40cad81660cfde7c46e90bac.md) | 58 | `result-track:40cad81660cfde7c46e90bacaaa340c2d2547f76c7b3376cd882f946bd9735c7` |
| 4 | `def` | [graphEquiv₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/graphequiv--ae830fca6bde8987eee9f948.md) | 70 | `declaration-track:ae830fca6bde8987eee9f948cc5bf4e384fb6329cc8e83ed4e67aa7ac491defb` |
| 5 | `theorem` | [proj_equiv₁'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/proj-equiv--c6ee26203c3cb9bcbeaa7f4c.md) | 83 | `result-track:c6ee26203c3cb9bcbeaa7f4c3d5e94ac3bdc5edfb5cfd7f0e57a65dc78577840` |
| 6 | `def` | [graphEquiv₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/graphequiv--2ae6dad1d016963a8bdd4c69.md) | 89 | `declaration-track:2ae6dad1d016963a8bdd4c6954da3d6a757a37bd71d88be628d8f9bb0b941fef` |
| 7 | `def` | [sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/sort--ce0043ce041f5b00007d83c1.md) | 94 | `declaration-track:ce0043ce041f5b00007d83c1d73143afe3def056bf37a7d4448738c832c9b35a` |
| 8 | `theorem` | [graphEquiv₂_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/graphequiv-apply--971bbe5cec659754f67dd359.md) | 98 | `result-track:971bbe5cec659754f67dd3593bca2d31def430a0ac322bc2532a0e82ac9581b3` |
| 9 | `theorem` | [self_comp_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/self-comp-sort--45539920b836947d864afc9c.md) | 103 | `result-track:45539920b836947d864afc9c5d92a23db35685ba7e7cdbc707bcea8e19434fb5` |
| 10 | `theorem` | [monotone_proj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/monotone-proj--4ac269ae950e3c730e4da149.md) | 107 | `result-track:4ac269ae950e3c730e4da1491730b356951eb7df87a16a775e749c4323cdc319` |
| 11 | `theorem` | [monotone_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/monotone-sort--e4db3c1a2e1b92eb44c98a3f.md) | 113 | `result-track:e4db3c1a2e1b92eb44c98a3fea79d99b73ed6ed08f654b9215e6d63ca19b8efc` |
| 12 | `theorem` | [unique_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/unique-monotone--f30a37ca1adeea1f6c886f80.md) | 127 | `result-track:f30a37ca1adeea1f6c886f80119ffcff301425c04ef3e37de7518795d748bcfc` |
| 13 | `theorem` | [eq_sort_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/eq-sort-iff--b2c4ade3fcf21ea6f75a584b.md) | 138 | `result-track:b2c4ade3fcf21ea6f75a584b060775720e0a1ee845942364724abe377ab7058a` |
| 14 | `theorem` | [eq_sort_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/eq-sort-iff--d001ee20daa670a1718d4537.md) | 150 | `result-track:d001ee20daa670a1718d4537455e5d0b7642f994d984821fe5274b72b9260134` |
| 15 | `theorem` | [sort_eq_refl_iff_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/sort-eq-refl-iff-monotone--472eee0bf0cfc3f169d3a985.md) | 160 | `result-track:472eee0bf0cfc3f169d3a985b12529784808fb9491a4f4d93335f67699c5fb9f` |
| 16 | `theorem` | [comp_sort_eq_comp_iff_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/comp-sort-eq-comp-iff-monotone--9108102d71f0eb3810a3c9bb.md) | 167 | `result-track:9108102d71f0eb3810a3c9bb120ec1cb2e370917b4449249ad8d78e59b22e61b` |
| 17 | `theorem` | [comp_perm_comp_sort_eq_comp_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/comp-perm-comp-sort-eq-comp-sort--2b3b3e596f11ec59a5313d6a.md) | 172 | `result-track:2b3b3e596f11ec59a5313d6aa73544cd83f8ada871ed9c20cd653fedea97ecef` |
| 18 | `theorem` | [antitone_pair_of_not_sorted'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/antitone-pair-of-not-sorted--27e59045fa43f22da35aa806.md) | 179 | `result-track:27e59045fa43f22da35aa806326993b3f960d2af0fc2984ad687d40ffe8931a1` |
| 19 | `theorem` | [antitone_pair_of_not_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant28af74fb110b860ff4796163ddc9a8b9cd42102d9a5689b88c297a72dffe426d.lean/declarations/antitone-pair-of-not-sorted--2b4e7d7bc2047c85e48c0525.md) | 187 | `result-track:2b4e7d7bc2047c85e48c052597bd9e80e3e86007cd041f89e8323801d479ca97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
