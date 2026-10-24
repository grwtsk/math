# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "954c092fa406183e18b75f3517beff7b8c160e0f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `954c092fa406183e18b75f3517beff7b8c160e0f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Insert` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Range` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range--a91e27e2783290616806c8f2.md) | 57 | `declaration-track:a91e27e2783290616806c8f2701f8261ca741818253cb5cb7a24d1524ab08e01` |
| 2 | `theorem` | [range_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range-val--6102ed3e8c9f13d92d4bee03.md) | 61 | `result-track:6102ed3e8c9f13d92d4bee03fc554d4af22772a8398b8a463642e411ad1f13d7` |
| 3 | `theorem` | [mem_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/mem-range--86b673d6ace9a564e0341b8a.md) | 65 | `result-track:86b673d6ace9a564e0341b8a1b9dea319c8029a1e9817e0834ccc283a6c61721` |
| 4 | `theorem` | [coe_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/coe-range--bc74a298c216ae3579f3b25d.md) | 69 | `result-track:bc74a298c216ae3579f3b25d07922004671202ca5c7a735e2d5ee7985afba29a` |
| 5 | `theorem` | [range_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range-zero--a8d911d06b6b9420b0479aa3.md) | 73 | `result-track:a8d911d06b6b9420b0479aa3dd5b00485f475b16a6a900e322176d2c70c56d05` |
| 6 | `theorem` | [range_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range-one--441d0d7b558536cebceb2093.md) | 77 | `result-track:441d0d7b558536cebceb2093c3e31e9ad4e44b295913a5c81ab141c817c909e0` |
| 7 | `theorem` | [range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range-succ--14094bb4eb1f416d08384131.md) | 80 | `result-track:14094bb4eb1f416d083841311832d6d12eb20c55d6dcc9d0a6ed0fed33a261a8` |
| 8 | `theorem` | [range_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range-add-one--a1bad8548c3d15179ad6dde6.md) | 83 | `result-track:a1bad8548c3d15179ad6dde68574d3ed42fa38ce2ba4d8afa3617bb3f05d7c13` |
| 9 | `theorem` | [notMem_range_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/notmem-range-self--6ca079683343eea910f2e472.md) | 86 | `result-track:6ca079683343eea910f2e47254eb2c550db7bee88e045200b0b2704e5917cde3` |
| 10 | `theorem` | [self_mem_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/self-mem-range-succ--94caf01b810e1a0b238f4041.md) | 91 | `result-track:94caf01b810e1a0b238f40413ac9068e303915d1787402953ba105a74100d8c6` |
| 11 | `theorem` | [range_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range-subset--ab88f2f2620957aa56fbd12f.md) | 95 | `result-track:ab88f2f2620957aa56fbd12fae6c88641328071a6f659ecf241ba4a3787101b2` |
| 12 | `theorem` | [range_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range-mono--bc5c20eb30dd48bb89c959d4.md) | 98 | `result-track:bc5c20eb30dd48bb89c959d47645deb238455005a4f1c86c8f1ac0053ee783fd` |
| 13 | `theorem` | [mem_range_succ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/mem-range-succ-iff--dfd29281b1d8339e2d2cd32e.md) | 102 | `result-track:dfd29281b1d8339e2d2cd32e0b6e96de11ad50b08f7e547bf6b6af38f7c3a22a` |
| 14 | `theorem` | [mem_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/mem-range-le--ac072c977bb9c57686bf1e53.md) | 105 | `result-track:ac072c977bb9c57686bf1e53ef820e8426ef3847f187a797caab0b9f9f543806` |
| 15 | `theorem` | [mem_range_sub_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/mem-range-sub-ne-zero--41aaf676bd9a96e1cec88b39.md) | 108 | `result-track:41aaf676bd9a96e1cec88b39681adf268049e2c5b201ec7adcfcc59e72458f8a` |
| 16 | `theorem` | [nonempty_range_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/nonempty-range-iff--c4d8185e8b5125faba94f293.md) | 112 | `result-track:c4d8185e8b5125faba94f293848c7bad51f6926e9889d17885936386e918cadb` |
| 17 | `theorem` | [range_eq_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range-eq-empty-iff--0a60f66efeb0c6405656da6b.md) | 120 | `result-track:0a60f66efeb0c6405656da6b5f83ae03086a1067fe278d625fb7084a0ddf4da0` |
| 18 | `theorem` | [nonempty_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/nonempty-range-succ--0dcea67af351e15b07af7ce6.md) | 124 | `result-track:0dcea67af351e15b07af7ce6c1b03978f5e3866c3df13398dc1a8531afb570b5` |
| 19 | `lemma` | [range_nontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/range-nontrivial--e412ec609c04e4ffb6d9e5b6.md) | 127 | `result-track:e412ec609c04e4ffb6d9e5b6521265afe9016e083c2f2237945a42cab01487c1` |
| 20 | `theorem` | [exists_nat_subset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/exists-nat-subset-range--ef0b84283aca7c2ef83e5dfa.md) | 131 | `result-track:ef0b84283aca7c2ef83e5dfacb428dab72fb26fe508c930e11c70b77f538649f` |
| 21 | `def` | [notMemRangeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/notmemrangeequiv--dbed00d7d1f6b4480b0c04f5.md) | 140 | `declaration-track:dbed00d7d1f6b4480b0c04f5d9501661ece306242a697da66e0b08cf84fafef4` |
| 22 | `theorem` | [coe_notMemRangeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/coe-notmemrangeequiv--810ff99f72de3653cdda33b6.md) | 150 | `result-track:810ff99f72de3653cdda33b6a82b378ac2375c1c1b4537e7528e08756c3c6156` |
| 23 | `theorem` | [coe_notMemRangeEquiv_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean/declarations/coe-notmemrangeequiv-symm--502758eea81f8222100b380d.md) | 155 | `result-track:502758eea81f8222100b380d694700ef9b4196f371cfab6739b3d802b5c61efa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
