# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3ce2590cee1202ca4632f63733132bc85095475",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3ce2590cee1202ca4632f63733132bc85095475`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Fin` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [graph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/graph--0895a6448c9c02dac610380e.md) | 37 | `declaration-track:0895a6448c9c02dac610380eb8d4c0aba4e8c5863470c2fb1670612de9c7abbb` |
| 2 | `def` | [graph.proj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/graph-proj--ed5baca16fc10bd2d1b51be7.md) | 43 | `declaration-track:ed5baca16fc10bd2d1b51be7a7c199c3f2bdbb02513824a94073887d35803c23` |
| 3 | `theorem` | [graph.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/graph-card--cac7fc1f78572d61c2c12a4d.md) | 46 | `result-track:cac7fc1f78572d61c2c12a4da5a5c6c5d917a19e75efa3962a300697552123de` |
| 4 | `def` | [graphEquiv₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/graphequiv--cd18c851adac2343370cf19e.md) | 56 | `declaration-track:cd18c851adac2343370cf19e2673f4c5e9e74dc829c990eea880b6c8ee86dfb3` |
| 5 | `theorem` | [proj_equiv₁'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/proj-equiv--d8713f1a00d8514efab7fc71.md) | 68 | `result-track:d8713f1a00d8514efab7fc7108d43effa352d4684ee9917116c39d7621918e24` |
| 6 | `def` | [graphEquiv₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/graphequiv--1dbf7003aa2725ae058e0148.md) | 73 | `declaration-track:1dbf7003aa2725ae058e0148824ceaf939d87662a3a717c40822ed8763baf251` |
| 7 | `def` | [sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/sort--5cfc4a634890454fc37e309b.md) | 77 | `declaration-track:5cfc4a634890454fc37e309baf6aa934b4e1bf56ae40816dcc8ce5a28a9b0c54` |
| 8 | `theorem` | [graphEquiv₂_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/graphequiv-apply--759ea3045ca20a9b57ef322e.md) | 80 | `result-track:759ea3045ca20a9b57ef322e0874d0a1ff994d8223c94a7063346477225692be` |
| 9 | `theorem` | [self_comp_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/self-comp-sort--f6e1b646f0bc3d51e544db50.md) | 84 | `result-track:f6e1b646f0bc3d51e544db50f5b4e3cae69023484df101ae5c986a0bb24366ba` |
| 10 | `theorem` | [monotone_proj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/monotone-proj--f92b30e04eac3073c4dc12cb.md) | 87 | `result-track:f92b30e04eac3073c4dc12cb0b9382689724f695015062d0cd1b0134cc969fdb` |
| 11 | `theorem` | [monotone_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/monotone-sort--71faa2ca8ad9a86a6e5d2e45.md) | 92 | `result-track:71faa2ca8ad9a86a6e5d2e4556cec74bbdc8e727bb32cb2fd928beafd1abaf65` |
| 12 | `theorem` | [lt_card_le_iff_apply_le_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/lt-card-le-iff-apply-le-of-monotone--ea2f565aef44a30632ad7c58.md) | 106 | `result-track:ea2f565aef44a30632ad7c58d355b46e3351c80ef684b2db9f57a1d1c3751c37` |
| 13 | `theorem` | [lt_card_ge_iff_apply_ge_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/lt-card-ge-iff-apply-ge-of-antitone--e3f9dcc6fbf4c414afdf0ce6.md) | 133 | `result-track:e3f9dcc6fbf4c414afdf0ce6291e866db7fb853c49df39756fb170ed0439cf27` |
| 14 | `theorem` | [unique_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/unique-monotone--eb7eada4c655d795f447d88b.md) | 139 | `result-track:eb7eada4c655d795f447d88b5c3739d6727af971f5a2835199181421d6932de9` |
| 15 | `theorem` | [unique_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/unique-antitone--63d78729b8c7a640504ffc4f.md) | 146 | `result-track:63d78729b8c7a640504ffc4f5bce4367ebc340a85530b448d9de24e6aa41c9d4` |
| 16 | `theorem` | [eq_sort_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/eq-sort-iff--0a339f692309e46cf2adab35.md) | 156 | `result-track:0a339f692309e46cf2adab350fb38fc8414363e7f2ffe867d7b03302f0179fdb` |
| 17 | `theorem` | [eq_sort_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/eq-sort-iff--57d00578219094746d65b580.md) | 167 | `result-track:57d00578219094746d65b5800ec71102c138c712c7b77533d68d819d867e77d8` |
| 18 | `theorem` | [sort_eq_refl_iff_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/sort-eq-refl-iff-monotone--f9e8c221a2927ab8776113c9.md) | 176 | `result-track:f9e8c221a2927ab8776113c96488db73b8329f0ab4393f52cd1f54daa2c0e4c3` |
| 19 | `theorem` | [comp_sort_eq_comp_iff_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/comp-sort-eq-comp-iff-monotone--de369ac9a98ef08247490464.md) | 182 | `result-track:de369ac9a98ef0824749046474d05ff07f3ac3a970a6076ab5caf1f3768e8f44` |
| 20 | `theorem` | [comp_perm_comp_sort_eq_comp_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/comp-perm-comp-sort-eq-comp-sort--257fcdb888c3221429714fa2.md) | 186 | `result-track:257fcdb888c3221429714fa2defcb52e4efcbade37351346603913ab757928bb` |
| 21 | `theorem` | [antitone_pair_of_not_sorted'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/antitone-pair-of-not-sorted--14de6a7cd9a6837b44bc17d2.md) | 192 | `result-track:14de6a7cd9a6837b44bc17d295981dd7647dead81ca08788624bf6cbfab17e8f` |
| 22 | `theorem` | [antitone_pair_of_not_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean/declarations/antitone-pair-of-not-sorted--b6c5ebbfa6c66d97d43b8dea.md) | 199 | `result-track:b6c5ebbfa6c66d97d43b8dea314567bf4a02ad491b64f6801e1ffac5228b9055` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
