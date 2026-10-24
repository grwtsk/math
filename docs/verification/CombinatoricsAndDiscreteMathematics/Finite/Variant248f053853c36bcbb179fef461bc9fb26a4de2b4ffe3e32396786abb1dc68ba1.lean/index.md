# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "558f65fd18ca2c0f82765bdf522753c820b56b44",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `558f65fd18ca2c0f82765bdf522753c820b56b44`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/instance--671ebcc9cc585f59855e0af9.md) | 28 | `declaration-track:671ebcc9cc585f59855e0af944e44b480282ef4a799f1628e9e7f753caf3c8e1` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/instance--cb42926d35f16938f5f14455.md) | 32 | `declaration-track:cb42926d35f16938f5f144555b47bd0cef4144efd23876e94d22e3cec60edbdf` |
| 3 | `theorem` | [list_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/list-prod-mem--5e9c667fcf77f17e4f46ba49.md) | 48 | `result-track:5e9c667fcf77f17e4f46ba49a01d89ea496b3b1990147452c1e3d3a9a5875599` |
| 4 | `theorem` | [multiset_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/multiset-prod-mem--c78c0b32a773f881ec8d023c.md) | 54 | `result-track:c78c0b32a773f881ec8d023c9b0793c592a27fe1e5aa124a5e3a17b9f54e3511` |
| 5 | `theorem` | [multiset_noncommProd_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/multiset-noncommprod-mem--2b591a38fa93213ae6373037.md) | 59 | `result-track:2b591a38fa93213ae637303705970f0f2d5330307675904b1d78efe040399bca` |
| 6 | `theorem` | [prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/prod-mem--c6698b05c120058d572e189b.md) | 67 | `result-track:c6698b05c120058d572e189be5ebb06c4be05b40edb3226645ba42f2236d8b01` |
| 7 | `theorem` | [noncommProd_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/noncommprod-mem--3bba0c60cec6a4964db21e63.md) | 72 | `result-track:3bba0c60cec6a4964db21e63b933fa6747052a213c2c1d47887b977c5dcec90c` |
| 8 | `theorem` | [val_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/val-list-prod--80d65fbaa34855db36fb93c1.md) | 77 | `result-track:80d65fbaa34855db36fb93c15de4b3e92035669d62ebe4d326e4e5c3b99c6498` |
| 9 | `theorem` | [val_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/val-multiset-prod--bb3cd682f9147aff1aa936be.md) | 81 | `result-track:bb3cd682f9147aff1aa936bec12efc5e110a4a3ca68b01bb79aeb3435b05052d` |
| 10 | `theorem` | [val_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/val-finset-prod--4248765ff3d50cada53bde42.md) | 86 | `result-track:4248765ff3d50cada53bde42046ddd71d7f2374dbab7a1f18f4e6b3d0f95659b` |
| 11 | `instance` | [fintypeBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/fintypebot--334c038f02f970abf1234bbd.md) | 91 | `declaration-track:334c038f02f970abf1234bbd03a1fec539ec03458473b6ff9c8e7a9510dbc306` |
| 12 | `theorem` | [card_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/card-bot--1ef73877f89afe3a6b62b369.md) | 97 | `result-track:1ef73877f89afe3a6b62b369289cd6c3711c4596aee3fc4ec7840893700fa17c` |
| 13 | `theorem` | [card_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/card-top--55b5812f064ab218a869ab0f.md) | 100 | `result-track:55b5812f064ab218a869ab0fc341d519de27d00393c0c212e227384f9953f8fb` |
| 14 | `theorem` | [eq_of_le_of_card_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/eq-of-le-of-card-ge--92b514d4ee997eb52227a523.md) | 104 | `result-track:92b514d4ee997eb52227a523f68d14a925bf201cebaca8781e3b92065f5e4a76` |
| 15 | `theorem` | [eq_top_of_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/eq-top-of-le-card--28a2150421122c2f6067d692.md) | 110 | `result-track:28a2150421122c2f6067d692eeabfdaf04943c0de07551789f0fc8432b780012` |
| 16 | `theorem` | [eq_top_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/eq-top-of-card-eq--1cc73778cdf661c470dd69e9.md) | 114 | `result-track:1cc73778cdf661c470dd69e999ab84e8c840aed98aaafbdf3956c51d25435c6f` |
| 17 | `theorem` | [card_eq_iff_eq_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/card-eq-iff-eq-top--82ba2f166f1aaafc9f25d678.md) | 119 | `result-track:82ba2f166f1aaafc9f25d67827d9deeac76b59c0dd6cec001c5b22e3a0783abe` |
| 18 | `theorem` | [eq_bot_of_card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/eq-bot-of-card-le--37bb5aeff00946347acc5527.md) | 123 | `result-track:37bb5aeff00946347acc5527f8a118a1a35175c29bfd501ef4614e8d514f4c3e` |
| 19 | `theorem` | [eq_bot_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/eq-bot-of-card-eq--be86c684721ab10178d4e867.md) | 128 | `result-track:be86c684721ab10178d4e867fbc758e059a0c93dad53f769a43052dfc6e28983` |
| 20 | `theorem` | [card_le_one_iff_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/card-le-one-iff-eq-bot--648ce82bd96b8e72d51c2d69.md) | 133 | `result-track:648ce82bd96b8e72d51c2d69388e2605d2135547631dfc31c7b4d7a57f0efd69` |
| 21 | `lemma` | [eq_bot_iff_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/eq-bot-iff-card--461caa8fc36a08eaff03349f.md) | 136 | `result-track:461caa8fc36a08eaff03349f16ac3a2532c6a252dc8957b8d79d406262b78027` |
| 22 | `theorem` | [one_lt_card_iff_ne_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/one-lt-card-iff-ne-bot--5dd0d6baaa60d440b5f1b044.md) | 140 | `result-track:5dd0d6baaa60d440b5f1b044f4b942f2fa8046eef9451a600830dfcaf579de71` |
| 23 | `theorem` | [card_le_card_group](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/card-le-card-group--a2920518e62ad4ce28d43912.md) | 144 | `result-track:a2920518e62ad4ce28d439124e4525456135ab5dd83774ae1a759893e7672731` |
| 24 | `theorem` | [card_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/card-le-of-le--cb4645f3c9ff49a2de60baf2.md) | 148 | `result-track:cb4645f3c9ff49a2de60baf2df44460933fa731246c3b3f0ce804fe3386c61f7` |
| 25 | `theorem` | [card_map_of_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/card-map-of-injective--3d557bca5ac190ba653dd069.md) | 152 | `result-track:3d557bca5ac190ba653dd0697f718dbcb9e916970db1db74411178a572680e3a` |
| 26 | `theorem` | [card_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/card-subtype--ed0175621f4e4233253766e1.md) | 158 | `result-track:ed0175621f4e4233253766e14ac9803b8e17965ccc8d729d1d804ecbb9efd9ee` |
| 27 | `theorem` | [pi_mem_of_mulSingle_mem_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/pi-mem-of-mulsingle-mem-aux--a45da8142b6434e9f59cb095.md) | 173 | `result-track:a45da8142b6434e9f59cb095011ddb3263f44456c1a77178dcc89c0acad9548f` |
| 28 | `theorem` | [pi_mem_of_mulSingle_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/pi-mem-of-mulsingle-mem--b289d36f9842ea11ae6c327a.md) | 209 | `result-track:b289d36f9842ea11ae6c327a07ca712fca0ad2a381c6e0eb9e81d4760be870c4` |
| 29 | `theorem` | [pi_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/pi-le-iff--7741628a3af2b96d7ea2c5c3.md) | 217 | `result-track:7741628a3af2b96d7ea2c5c3081abeffe674eaa3c8d45704232f1bbaf3961bb8` |
| 30 | `theorem` | [mem_normalizer_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/mem-normalizer-fintype--1b3b9687338b5e3d4e98c18b.md) | 233 | `result-track:1b3b9687338b5e3d4e98c18bcd758b875ae7a0ba04d846be038d7612745538af` |
| 31 | `instance` | [decidableMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/decidablememrange--99587a19c1ba4f68494d3cf9.md) | 257 | `declaration-track:99587a19c1ba4f68494d3cf9e61379d8b61a86b2f2e8c1a12cfd65e8c87525e1` |
| 32 | `instance` | [fintypeMrange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/fintypemrange--ad414ecd5bc414d23f042209.md) | 270 | `declaration-track:ad414ecd5bc414d23f04220956670cdaf955dd3b61f377ec12842f732933a90e` |
| 33 | `instance` | [fintypeRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/fintyperange--e7b7cd89be36b8b28c7445fb.md) | 282 | `declaration-track:e7b7cd89be36b8b28c7445fb44dd8718f7197e11b5924946a3dd3074bd5cde13` |
| 34 | `lemma` | [_root_.Fintype.card_coeSort_mrange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/root-fintype-card-coesort-mrange--c3abceb8676bd7c8fb284cdb.md) | 285 | `result-track:c3abceb8676bd7c8fb284cdbc9210e329c435098301e6f9204c1b94853a0aa1e` |
| 35 | `lemma` | [_root_.Fintype.card_coeSort_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/declarations/root-fintype-card-coesort-range--c5b4b95fcd8cf7756f1ec132.md) | 290 | `result-track:c5b4b95fcd8cf7756f1ec132733423a82f8282ecd2493f6726ff2dfe5f8027c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
