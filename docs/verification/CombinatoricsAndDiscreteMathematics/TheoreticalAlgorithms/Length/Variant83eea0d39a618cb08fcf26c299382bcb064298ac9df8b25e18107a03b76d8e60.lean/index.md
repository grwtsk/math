# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a8c79a8634113899359674f1028b71702cef5b7",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a8c79a8634113899359674f1028b71702cef5b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coxeter.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_word_with_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/exists-word-with-prod--5713d1dae0708cb9b7b3e669.md) | 65 | `result-track:5713d1dae0708cb9b7b3e66909c15d4a1b522fd50b277c1d4964c5ecea2b2fe7` |
| 2 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length--fba77d2176de9d8bc0928c4d.md) | 72 | `declaration-track:fba77d2176de9d8bc0928c4d754f7f75b0633edad37444e004d6a448bbd26885` |
| 3 | `theorem` | [exists_reduced_word](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/exists-reduced-word--ff8857461255b6d8781368a9.md) | 76 | `result-track:ff8857461255b6d8781368a9c7b10f8e25af60608bcdd699e7af5102671144d5` |
| 4 | `theorem` | [length_wordProd_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-wordprod-le--6a5b2870dabdcf173adcf5f4.md) | 82 | `result-track:6a5b2870dabdcf173adcf5f47ea840455c5a0d77d82ee1e82c7961a326135ce7` |
| 5 | `theorem` | [length_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-one--a40a2db6600d34823d8b80d0.md) | 85 | `result-track:a40a2db6600d34823d8b80d09b941d92b713a91966db4fe456b1d8532ca3b33c` |
| 6 | `theorem` | [length_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-eq-zero-iff--e04d54962a4c18bf47f78bb8.md) | 88 | `result-track:e04d54962a4c18bf47f78bb8e9320a579571ded9e88396fa00c493fc78841247` |
| 7 | `theorem` | [length_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-inv--3e9e2096f230c8656dd0bdc9.md) | 98 | `result-track:3e9e2096f230c8656dd0bdc9f5c2476d0bafc23da06d9a8d25d0419f7aa240e8` |
| 8 | `theorem` | [length_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-mul-le--3ff6411305235988851807ce.md) | 107 | `result-track:3ff6411305235988851807cec5e1d4f0ab9b6563b9368858724fb2fbe1ebd1f8` |
| 9 | `theorem` | [length_mul_ge_length_sub_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-mul-ge-length-sub-length--729d11f45a565ab3a77da4c7.md) | 114 | `result-track:729d11f45a565ab3a77da4c76f3627362e343aaa001e0ddedc8f7f142e8152ff` |
| 10 | `theorem` | [length_mul_ge_length_sub_length'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-mul-ge-length-sub-length--ed7e1a19176d0d68bc11381e.md) | 118 | `result-track:ed7e1a19176d0d68bc11381e4d3592c13b1351b286dea38e3e82528829e7a9c5` |
| 11 | `theorem` | [length_mul_ge_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-mul-ge-max--cbc7737a539f64227943d6ae.md) | 122 | `result-track:cbc7737a539f64227943d6ae4dc62cc16b43bf93aa10a40afcd9ff1306822a3d` |
| 12 | `def` | [lengthParity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/lengthparity--216058d6bf3b43655a7116cb.md) | 128 | `declaration-track:216058d6bf3b43655a7116cb6b155953c62a74261c7a81d371fcd193fc1c7289` |
| 13 | `theorem` | [lengthParity_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/lengthparity-simple--57837d8d79bfd9f506e2348f.md) | 132 | `result-track:57837d8d79bfd9f506e2348f99463f73f08e9f5b575fcc7d5e5a52776570a5a0` |
| 14 | `theorem` | [lengthParity_comp_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/lengthparity-comp-simple--bb9050fb49b8b8251f46e32b.md) | 135 | `result-track:bb9050fb49b8b8251f46e32bfdd70477d5a2cfc2f341519a66bc8950c8c77fb6` |
| 15 | `theorem` | [lengthParity_eq_ofAdd_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/lengthparity-eq-ofadd-length--d8cc8578596b9622f75c6fb7.md) | 138 | `result-track:d8cc8578596b9622f75c6fb7f6e2cbb138e60e1f35f514a26ccd59697d412200` |
| 16 | `theorem` | [length_mul_mod_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-mul-mod-two--ea4e266d543ff9e09872cb99.md) | 144 | `result-track:ea4e266d543ff9e09872cb998f8614154d11da49b083281ac31cb6c13d31aa69` |
| 17 | `theorem` | [length_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-simple--7ae18778db1db0affdf6ca62.md) | 149 | `result-track:7ae18778db1db0affdf6ca62127ce0da99b5957a283f59c6e2d0ca20b39066c0` |
| 18 | `theorem` | [length_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-eq-one-iff--000a2f00d1773e8057b76920.md) | 159 | `result-track:000a2f00d1773e8057b76920053447a163631c6f655cb5cb6a7cba2ab35cd226` |
| 19 | `theorem` | [length_mul_simple_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-mul-simple-ne--c579f7d23951a3078e54503d.md) | 168 | `result-track:c579f7d23951a3078e54503d17ba1ed53d35523756b2f84d4087e4b3ff0d17f2` |
| 20 | `theorem` | [length_simple_mul_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-simple-mul-ne--667150c49a3285e4caa77704.md) | 178 | `result-track:667150c49a3285e4caa7770459c1d761695fa1f7ac4726fa662a139744a9fafe` |
| 21 | `theorem` | [length_mul_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-mul-simple--0fe9c1bbaa37f3d16af48756.md) | 184 | `result-track:0fe9c1bbaa37f3d16af487562e8b41080baa716791af6f3b86bf0ce5026e1175` |
| 22 | `theorem` | [length_simple_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/length-simple-mul--51fa86c6047a30b6de9c57cf.md) | 200 | `result-track:51fa86c6047a30b6de9c57cfd70b3e4d1523f493fcae3a0269b892810c13dcd9` |
| 23 | `def` | [IsReduced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isreduced--644f4f18d263b560d0aa86e0.md) | 209 | `declaration-track:644f4f18d263b560d0aa86e0cddbcf12f2ca91dd4b2995794907816a274de91b` |
| 24 | `theorem` | [isReduced_reverse_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isreduced-reverse-iff--cbdd42131baee06778fca5f1.md) | 212 | `result-track:cbdd42131baee06778fca5f137df48a4c9349e7f0ec8a20d8004cf92ba6e5e1b` |
| 25 | `theorem` | [IsReduced.reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isreduced-reverse--10ab14d14faae4ff4bc5ef44.md) | 215 | `result-track:10ab14d14faae4ff4bc5ef448cf0d6c7f4ca750d8d14dbc2e2cac82aec2dddeb` |
| 26 | `theorem` | [exists_reduced_word'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/exists-reduced-word--dd853567303bf6f1b91e38fb.md) | 219 | `result-track:dd853567303bf6f1b91e38fb61a3e0e646a7a1d39dedcaacb6bb23a5b6aa6ed9` |
| 27 | `theorem` | [isReduced_take_and_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isreduced-take-and-drop--dc9864bbef7290ee13dd144b.md) | 224 | `result-track:dc9864bbef7290ee13dd144b1760cd6f4c6a30feb563aba1cf6cd59985eda4dc` |
| 28 | `theorem` | [IsReduced.take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isreduced-take--20f80d0ef2c50053eed3989c.md) | 237 | `result-track:20f80d0ef2c50053eed3989c09d048a0e7ef3dcd0c60986e5762054aba9fdf8a` |
| 29 | `theorem` | [IsReduced.drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isreduced-drop--6430bf1c94d8156c61472a6a.md) | 241 | `result-track:6430bf1c94d8156c61472a6a229f36debd6a43ad5250937e4bffd6169caa750d` |
| 30 | `theorem` | [not_isReduced_alternatingWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/not-isreduced-alternatingword--1d1462ff7c6efee353829e4b.md) | 245 | `result-track:1d1462ff7c6efee353829e4bb3addce861dd483dcc863bb9a36e47bf52db425a` |
| 31 | `def` | [IsLeftDescent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isleftdescent--7baba4a6664fa036da005b99.md) | 272 | `declaration-track:7baba4a6664fa036da005b9900053fabd2cc23cd3dfb7d3a74359fa8dc9c33c9` |
| 32 | `def` | [IsRightDescent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isrightdescent--d5d1f837045f3a04de82b70d.md) | 275 | `declaration-track:d5d1f837045f3a04de82b70d56acf2f27c19e9c84cbf376b5f422f897ddb2d45` |
| 33 | `theorem` | [not_isLeftDescent_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/not-isleftdescent-one--2521c260f4980f423873fedc.md) | 277 | `result-track:2521c260f4980f423873fedcb8d44c8fff44af4421d70fb1adf788c504a30344` |
| 34 | `theorem` | [not_isRightDescent_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/not-isrightdescent-one--2adfc248d1b1ca3c0105772e.md) | 279 | `result-track:2adfc248d1b1ca3c0105772e1f40021d3e064636e4cfa94cdd8ea43884a59153` |
| 35 | `theorem` | [isLeftDescent_inv_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isleftdescent-inv-iff--e6aca29217fddd758af2e15c.md) | 281 | `result-track:e6aca29217fddd758af2e15ceb91a0f7e7b241f499c9bc61073dc39822e877d1` |
| 36 | `theorem` | [isRightDescent_inv_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isrightdescent-inv-iff--94376d70d9c220a09cb89108.md) | 287 | `result-track:94376d70d9c220a09cb89108a04ab866e25fb6d8d9f38a9ce1f376edec6a538f` |
| 37 | `theorem` | [exists_leftDescent_of_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/exists-leftdescent-of-ne-one--ea4f48bd83c8c0aca839760c.md) | 291 | `result-track:ea4f48bd83c8c0aca839760c26f6fd2643db31fa3f3c9e5df191aa2c0ac627ef` |
| 38 | `theorem` | [exists_rightDescent_of_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/exists-rightdescent-of-ne-one--aec22e965407420f156f57ce.md) | 301 | `result-track:aec22e965407420f156f57ceb7fc269a2c77b2a2179238081727a98177c321ec` |
| 39 | `theorem` | [isLeftDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isleftdescent-iff--dacdfcb3a678b4d4d5e79964.md) | 306 | `result-track:dacdfcb3a678b4d4d5e7996409a8a6d7f00c30f44473ff651601ab474f58fecf` |
| 40 | `theorem` | [not_isLeftDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/not-isleftdescent-iff--f78d09f5b3fd1a3459aab64e.md) | 314 | `result-track:f78d09f5b3fd1a3459aab64e70c7bcfabcc6174eee7f004a18fbff9c2495d76f` |
| 41 | `theorem` | [isRightDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isrightdescent-iff--78e971dac53aa8a520ad27a4.md) | 322 | `result-track:78e971dac53aa8a520ad27a4f2be041da0e44a4c734d1a3111e63acdcf026287` |
| 42 | `theorem` | [not_isRightDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/not-isrightdescent-iff--10ce6218fa86de15a8ca3afb.md) | 330 | `result-track:10ce6218fa86de15a8ca3afb0c24afd64f292d302c7db7e9b63d32e58ba36053` |
| 43 | `theorem` | [isLeftDescent_iff_not_isLeftDescent_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isleftdescent-iff-not-isleftdescent-mul--0c3bcd10548e5a1e15c1c99d.md) | 338 | `result-track:0c3bcd10548e5a1e15c1c99dbb62c6d6d8ba4fcf26d77f7eb20ad15cc3c8d0ef` |
| 44 | `theorem` | [isRightDescent_iff_not_isRightDescent_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/declarations/isrightdescent-iff-not-isrightdescent-mul--315ddf8a8593d136365f7636.md) | 343 | `result-track:315ddf8a8593d136365f763609db96f582d2858af1aa4bca83a51d9de7c98e41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
