# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dvd.Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "996481d2e08458e4484f0b34480376711b7fb5dd",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `996481d2e08458e4484f0b34480376711b7fb5dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-refl--f5293cb8d39a63b40d673293.md) | 19 | `result-track:f5293cb8d39a63b40d673293e61bbbf61cc934c45e9509157e2962a1cabce676` |
| 2 | `theorem` | [dvd_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-zero--2cf60b81acda7eebedf2c021.md) | 21 | `result-track:2cf60b81acda7eebedf2c02183dace17d2fa57208eec26c6a29b028e001bea39` |
| 3 | `theorem` | [dvd_mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-mul-left--d49d56d8d96633a54c06dae9.md) | 23 | `result-track:d49d56d8d96633a54c06dae93cfac4245b4a11bcc341e37d7061ed4492ef5393` |
| 4 | `theorem` | [dvd_mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-mul-right--308e4dedf5f9ec10c6cce362.md) | 24 | `result-track:308e4dedf5f9ec10c6cce362dda0497b0a939459d1823ecb6414cc1f719601fc` |
| 5 | `theorem` | [dvd_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-trans--379670e35ac6050890d626dc.md) | 26 | `result-track:379670e35ac6050890d626dc243817251f6cdc65f61e15538bd3e26b09699353` |
| 6 | `theorem` | [dvd_mul_left_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-mul-left-of-dvd--0e42f7f53cef6c518352c05e.md) | 31 | `result-track:0e42f7f53cef6c518352c05e347b44aaac1924df470d73eb66275760ae490ce7` |
| 7 | `theorem` | [dvd_mul_right_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-mul-right-of-dvd--35ff30d5f28498e2dd7cabb8.md) | 37 | `result-track:35ff30d5f28498e2dd7cabb8073f99442a9bceace5bc17c2724df602769a086d` |
| 8 | `theorem` | [eq_zero_of_zero_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/eq-zero-of-zero-dvd--2ea9bd414ad0a686c1edcfdd.md) | 43 | `result-track:2ea9bd414ad0a686c1edcfddaa57dd7cff5a323f9a5235983e5966749bde37fe` |
| 9 | `theorem` | [zero_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/zero-dvd--cb2f9c017d9ff050d547fb91.md) | 46 | `result-track:cb2f9c017d9ff050d547fb91c52aa4708e08efb029e946e7077a1cc07df89e27` |
| 10 | `theorem` | [dvd_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-add--a272d96b7d7dff70c5c1a04a.md) | 49 | `result-track:a272d96b7d7dff70c5c1a04a6a33a242eaa1c2e48127de363cc32bae62a06ebb` |
| 11 | `theorem` | [dvd_add_iff_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-add-iff-right--ac445b4d57d36d91c2637e7e.md) | 52 | `result-track:ac445b4d57d36d91c2637e7eb237a9e069bfbba54f9adde4c963e3ee7608e230` |
| 12 | `theorem` | [dvd_add_iff_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-add-iff-left--13e2bbd5492e3874833b8629.md) | 58 | `result-track:13e2bbd5492e3874833b862966b8d15ced942e13a66ee5eac49e27bf880b84e8` |
| 13 | `theorem` | [dvd_mod_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-mod-iff--6ac47ff8fa3b258b8466cb21.md) | 61 | `result-track:6ac47ff8fa3b258b8466cb2105008023a6abe49a7fadf45b69118a484e0bc45c` |
| 14 | `theorem` | [le_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/le-of-dvd--3c659e52a2c28010b1b13d74.md) | 65 | `result-track:3c659e52a2c28010b1b13d74b344821a54bcf52ddd4b1ba8f894795954fcb53f` |
| 15 | `theorem` | [dvd_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-antisymm--4d618686d0901b6e310f556e.md) | 76 | `result-track:4d618686d0901b6e310f556e1ee20abc4cd26388259920046bcbb7b30c3f7d44` |
| 16 | `theorem` | [pos_of_dvd_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/pos-of-dvd-of-pos--3149508a9df438860263b31b.md) | 81 | `result-track:3149508a9df438860263b31b7640ec53bd5c4e0b718ed9d0b481ffd43672afbb` |
| 17 | `theorem` | [one_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/one-dvd--86e0e70420c0e28b27c68acf.md) | 84 | `result-track:86e0e70420c0e28b27c68acf06c00812b701c5423f53bb604cb834eaeadf159f` |
| 18 | `theorem` | [eq_one_of_dvd_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/eq-one-of-dvd-one--51a56c5128b509d60057c71b.md) | 86 | `result-track:51a56c5128b509d60057c71ba02e1904590bd97b782e2ddbaec5e877f1a67426` |
| 19 | `theorem` | [mod_eq_zero_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/mod-eq-zero-of-dvd--ef0490553b8564ae34fdf900.md) | 88 | `result-track:ef0490553b8564ae34fdf900b49cdd1a66972c7076cbd5eff4bbd52e5924ccc1` |
| 20 | `theorem` | [dvd_of_mod_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-of-mod-eq-zero--8557cefc981d7fe6ed2a2396.md) | 91 | `result-track:8557cefc981d7fe6ed2a239638b6d7952aebbbe927957703fb9678dbd65aab7b` |
| 21 | `theorem` | [dvd_iff_mod_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-iff-mod-eq-zero--167e20b3c683b5ed3e9335b4.md) | 96 | `result-track:167e20b3c683b5ed3e9335b4b0519ee729b1c23fe08ce0938aa90860600b5b83` |
| 22 | `instance` | [decidable_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/decidable-dvd--dd8a1bfb152edd2fc920da93.md) | 99 | `declaration-track:dd8a1bfb152edd2fc920da9343ae539f2088915fb8e25436b106859e1ca17963` |
| 23 | `theorem` | [emod_pos_of_not_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/emod-pos-of-not-dvd--fecb2beba703440da3a9ed95.md) | 102 | `result-track:fecb2beba703440da3a9ed9567d67103b8236a49cec0bdeaa783f2fe4fac72b8` |
| 24 | `theorem` | [mul_div_cancel'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/mul-div-cancel--839a9141be8eb7240e61c20a.md) | 106 | `result-track:839a9141be8eb7240e61c20af964d7a857816e8a85f0c3dceb5d828263bc3be0` |
| 25 | `theorem` | [div_mul_cancel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/div-mul-cancel--5460435082e1fcdcf23b58a6.md) | 110 | `result-track:5460435082e1fcdcf23b58a62237bda58c3f3cb8e1e1b40ea71335c19d205d8f` |
| 26 | `theorem` | [mod_mod_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/mod-mod-of-dvd--1c8ff4591c13622df3b8df36.md) | 113 | `result-track:1c8ff4591c13622df3b8df3616a0156d8e540db3445c7bfdacdda500fbcd534a` |
| 27 | `theorem` | [dvd_of_mul_dvd_mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-of-mul-dvd-mul-left--d1685f53584765b7dfa5f52d.md) | 119 | `result-track:d1685f53584765b7dfa5f52d8c0c4ddfc3faa9776d1455ae127258e76683dc82` |
| 28 | `theorem` | [dvd_of_mul_dvd_mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-of-mul-dvd-mul-right--bb672dc924e747221cd1282c.md) | 125 | `result-track:bb672dc924e747221cd1282ca2ba8c07fa336f51516e4c1293f9cf8f71943605` |
| 29 | `theorem` | [dvd_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-sub--d21796f48a35bea619b4fe7a.md) | 128 | `result-track:d21796f48a35bea619b4fe7a47faba21f2feaf2cd398ee799d1cbc4e8e73c64b` |
| 30 | `theorem` | [dvd_sub_iff_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-sub-iff-right--2dfc00b52861242c9dfe8a53.md) | 134 | `result-track:2dfc00b52861242c9dfe8a5308b5f6ab0de966f2c96e88852c7f360baffba693` |
| 31 | `theorem` | [dvd_sub_iff_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-sub-iff-left--9a7ed6892980acdd28262a3e.md) | 145 | `result-track:9a7ed6892980acdd28262a3ed041c5d78da65749ad02f78755617ca7e21b7e92` |
| 32 | `theorem` | [mul_dvd_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/mul-dvd-mul--80aa4edde08e6a71ba9849b6.md) | 149 | `result-track:80aa4edde08e6a71ba9849b6478a0628b72a1c955176b29e19894c021fb638c8` |
| 33 | `theorem` | [mul_dvd_mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/mul-dvd-mul-left--c069b618f2194f8ae8013f2e.md) | 153 | `result-track:c069b618f2194f8ae8013f2ee513c1bbe433208c01f39fce9ac13a54627fc43d` |
| 34 | `theorem` | [mul_dvd_mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/mul-dvd-mul-right--2edadc2944341c461ebf4879.md) | 156 | `result-track:2edadc2944341c461ebf48799a21257a003b231e59b7554b9a88e397cb1330f3` |
| 35 | `theorem` | [dvd_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-one--4c746fffd1862a13a1e46d68.md) | 159 | `result-track:4c746fffd1862a13a1e46d68707df7c43d52f16536c0856c6a9922190d7485a4` |
| 36 | `theorem` | [mul_div_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/mul-div-assoc--41534f2b73b9a6e353bcf652.md) | 162 | `result-track:41534f2b73b9a6e353bcf652a10c790746aa1b65a6e17a8f0c9960cfbc02ec13` |
| 37 | `theorem` | [dvd_eq_true_of_mod_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-eq-true-of-mod-eq-zero--7d66c2926c4a3c7cac67d84e.md) | 171 | `result-track:7d66c2926c4a3c7cac67d84e5b779aae22926a384af181a14d9fa8b3f7d0261f` |
| 38 | `theorem` | [dvd_eq_false_of_mod_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant12cd37a3909fddc05c1f5541662d1a099c083aa1084777ded9d583c7a6780f96.lean/declarations/dvd-eq-false-of-mod-ne-zero--8fe64914eebd82ddd34fef1e.md) | 174 | `result-track:8fe64914eebd82ddd34fef1ee5ed98c060dd2fceb63d5187e194bf1dc2e63f28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
