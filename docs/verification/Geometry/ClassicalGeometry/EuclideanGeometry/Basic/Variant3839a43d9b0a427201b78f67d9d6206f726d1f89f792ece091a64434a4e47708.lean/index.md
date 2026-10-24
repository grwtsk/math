# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Basic.Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdb7b451bef76e5da93740471c43ffa2237b62fe",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdb7b451bef76e5da93740471c43ffa2237b62fe`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Subspace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle--dd1c2fc303e070686cdf11da.md) | 41 | `declaration-track:dd1c2fc303e070686cdf11dad7406588ea5366c523fc791f157577fe6dfa0f4e` |
| 2 | `theorem` | [continuousAt_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/continuousat-angle--304448b219fa3244500e5cb7.md) | 44 | `result-track:304448b219fa3244500e5cb7ef3438ecd47e5be841e77e90efcf859dcc4ebee0` |
| 3 | `theorem` | [angle_smul_smul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-smul-smul--a999a5b6776d023607a6532d.md) | 49 | `result-track:a999a5b6776d023607a6532dc9b807214cbb05d3982bb90436eb1778fde2d759` |
| 4 | `theorem` | [_root_.LinearIsometry.angle_map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/root-linearisometry-angle-map--51e012a4e16df2b4eee79d38.md) | 55 | `result-track:51e012a4e16df2b4eee79d384a26970d729e683e63ffff0b34180e99ab54d5e6` |
| 5 | `theorem` | [_root_.Submodule.angle_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/root-submodule-angle-coe--c5abac98aa6227fb1f7de0ed.md) | 61 | `result-track:c5abac98aa6227fb1f7de0ed130f17eae89cfafa37950b327fcbb1d5c7652e80` |
| 6 | `theorem` | [cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/cos-angle--fc10a72643c6af6f0ac9ff12.md) | 66 | `result-track:fc10a72643c6af6f0ac9ff122148e4c1cd150ec05a3ccd14b58d7580e7876313` |
| 7 | `theorem` | [angle_comm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-comm--6687d69c1c563be43fc4bb6f.md) | 71 | `result-track:6687d69c1c563be43fc4bb6f3764debedbc5239e72f430d2735435778fcea6a0` |
| 8 | `theorem` | [angle_neg_neg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-neg-neg--17d8daba9444693441cdb17c.md) | 77 | `result-track:17d8daba9444693441cdb17cea8d4342849a48808798b0119cb8129e46327204` |
| 9 | `theorem` | [angle_nonneg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-nonneg--91db359331410a5383cc59d8.md) | 82 | `result-track:91db359331410a5383cc59d80b69a625c4e3e99980c920e60d3630fe0ea925b1` |
| 10 | `theorem` | [angle_le_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-le-pi--7827f7d9acba58679014b60d.md) | 86 | `result-track:7827f7d9acba58679014b60d0508ca6830755a0bd723a1671c314c969b890955` |
| 11 | `theorem` | [sin_angle_nonneg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/sin-angle-nonneg--a5a8c2427044966641538b69.md) | 90 | `result-track:a5a8c2427044966641538b69e0b150c59e7e8883e5bb56651443e428a0e747aa` |
| 12 | `theorem` | [angle_neg_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-neg-right--0764bb7aa3338e4d844c8c85.md) | 94 | `result-track:0764bb7aa3338e4d844c8c8537fc0b58d97d3e49e22471bb68de849220d650ef` |
| 13 | `theorem` | [angle_neg_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-neg-left--6aaab3869b546f3e681a0714.md) | 99 | `result-track:6aaab3869b546f3e681a0714edd752d2de174047c82fb703e9f147eea0aa2ed2` |
| 14 | `theorem` | [angle_zero_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-zero-left--6f72291c6587dc0d442b93fe.md) | 106 | `result-track:6f72291c6587dc0d442b93fe4b5611c4696d31ee3875f9b7db302db4b66118f9` |
| 15 | `theorem` | [angle_zero_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-zero-right--df6090fd8693d47c45eeca59.md) | 112 | `result-track:df6090fd8693d47c45eeca59d16380fcbc8f9b62aeb3c2e969a8466dac85cedd` |
| 16 | `theorem` | [angle_self](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-self--a061f066d478f2e2d708805c.md) | 118 | `result-track:a061f066d478f2e2d708805c33e3f4d42ec9e7c5f58b707b1f07907db507c428` |
| 17 | `theorem` | [angle_self_neg_of_nonzero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-self-neg-of-nonzero--65f80bc2d409a89df4ed76c1.md) | 125 | `result-track:65f80bc2d409a89df4ed76c1a4fc8b6d1d7c7826a81b470cc013a4f0d7932c9c` |
| 18 | `theorem` | [angle_neg_self_of_nonzero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-neg-self-of-nonzero--1c9e46a91474dc330059d0ee.md) | 131 | `result-track:1c9e46a91474dc330059d0ee5aa4498bfab82967886d22aa4b5ea19028028bdc` |
| 19 | `theorem` | [angle_smul_right_of_pos](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-smul-right-of-pos--4a026660ca9bea3e90d4f69b.md) | 136 | `result-track:4a026660ca9bea3e90d4f69b1c6edb666c4f74038de9b15a0415d88d7aca9d86` |
| 20 | `theorem` | [angle_smul_left_of_pos](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-smul-left-of-pos--23d3ad42b16274695e5c308d.md) | 143 | `result-track:23d3ad42b16274695e5c308d80951616299520d972c290dfaf58c29ea9fc7533` |
| 21 | `theorem` | [angle_smul_right_of_neg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-smul-right-of-neg--0d0e39224e47588366338504.md) | 148 | `result-track:0d0e39224e4758836633850442222a08bba77b30f86b58ca60fb9e0e240469df` |
| 22 | `theorem` | [angle_smul_left_of_neg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-smul-left-of-neg--90d4918875941b8f36521199.md) | 155 | `result-track:90d4918875941b8f36521199c639dcf4be90a99cefe0526f489eb8bf7bca81c1` |
| 23 | `theorem` | [cos_angle_mul_norm_mul_norm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/cos-angle-mul-norm-mul-norm--ee1656a0eed3eafb7cae2c06.md) | 160 | `result-track:ee1656a0eed3eafb7cae2c069c8acfb06d7d22655f898576839452c47520cf81` |
| 24 | `theorem` | [sin_angle_mul_norm_mul_norm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/sin-angle-mul-norm-mul-norm--8b3b25d2e8bcda5cfb909a5b.md) | 166 | `result-track:8b3b25d2e8bcda5cfb909a5b5e7e8f299d1572ee4b56f33e063780b8c94fad8e` |
| 25 | `theorem` | [angle_eq_zero_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-eq-zero-iff--ffccc5b82cd256f467c7069d.md) | 187 | `result-track:ffccc5b82cd256f467c7069d2340eba98c641ee602bc89a8007919970238d9a4` |
| 26 | `theorem` | [angle_eq_pi_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-eq-pi-iff--a6cdc5e7d5405e1270db2612.md) | 194 | `result-track:a6cdc5e7d5405e1270db2612fce8c316c05cf427425b2f917c580d40deff20a5` |
| 27 | `theorem` | [angle_add_angle_eq_pi_of_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/angle-add-angle-eq-pi-of-angle-eq-pi--d65e9255c63bf7f5fd4c1f29.md) | 200 | `result-track:d65e9255c63bf7f5fd4c1f292823b83cbc1c5d8e76195fc5e789f2fb43d3feff` |
| 28 | `theorem` | [inner_eq_zero_iff_angle_eq_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/inner-eq-zero-iff-angle-eq-pi-div-two--67c8f8ca5ef5752ad5441814.md) | 207 | `result-track:67c8f8ca5ef5752ad54418145b353d4436c7960199391e2580fb97aef56fad73` |
| 29 | `theorem` | [inner_eq_neg_mul_norm_of_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/inner-eq-neg-mul-norm-of-angle-eq-pi--85d673458aabb797e45242ea.md) | 212 | `result-track:85d673458aabb797e45242ea16755064b3b50c4549f890982532beec6dac6977` |
| 30 | `theorem` | [inner_eq_mul_norm_of_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/inner-eq-mul-norm-of-angle-eq-zero--0c50f2d973242ce9d3f46ace.md) | 217 | `result-track:0c50f2d973242ce9d3f46acef644de7af896ca9ccda4135ff8c13c8baf191730` |
| 31 | `theorem` | [inner_eq_neg_mul_norm_iff_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/inner-eq-neg-mul-norm-iff-angle-eq-pi--57a1dcf30e8c6482bc98c474.md) | 222 | `result-track:57a1dcf30e8c6482bc98c474e59159185529fc03eabff0c42e7ee7b035e538a4` |
| 32 | `theorem` | [inner_eq_mul_norm_iff_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/inner-eq-mul-norm-iff-angle-eq-zero--991b9d1a4c56ebbb147c47e2.md) | 230 | `result-track:991b9d1a4c56ebbb147c47e264dd39370e14d04ef9b2972e8d49b6ce86aeff8f` |
| 33 | `theorem` | [norm_sub_eq_add_norm_of_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/norm-sub-eq-add-norm-of-angle-eq-pi--c0ba5c7a945f4ca31033ae31.md) | 238 | `result-track:c0ba5c7a945f4ca31033ae31ac0c8a1b41ab3fe255909db2bfd47468e532e51b` |
| 34 | `theorem` | [norm_add_eq_add_norm_of_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/norm-add-eq-add-norm-of-angle-eq-zero--c093289553ac80bdcd87ff73.md) | 246 | `result-track:c093289553ac80bdcd87ff73a346ed2fca66e83d00bcfaef07d58109f8a01bc9` |
| 35 | `theorem` | [norm_sub_eq_abs_sub_norm_of_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/norm-sub-eq-abs-sub-norm-of-angle-eq-zero--3a35a5e5e2f2ec9a5ada08f7.md) | 254 | `result-track:3a35a5e5e2f2ec9a5ada08f7d4db6499059ec7056b6d7b718404c59d81ef40ce` |
| 36 | `theorem` | [norm_sub_eq_add_norm_iff_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/norm-sub-eq-add-norm-iff-angle-eq-pi--dae195ae15eba3dd55deaa9d.md) | 262 | `result-track:dae195ae15eba3dd55deaa9d28e551b2edba423510d1f38da7ee799c949e0ff7` |
| 37 | `theorem` | [norm_add_eq_add_norm_iff_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/norm-add-eq-add-norm-iff-angle-eq-zero--c08dcd7ddff3364c9f0a8ed7.md) | 274 | `result-track:c08dcd7ddff3364c9f0a8ed72fae5f6769d701e513c04c6f806310a53db83bdf` |
| 38 | `theorem` | [norm_sub_eq_abs_sub_norm_iff_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/norm-sub-eq-abs-sub-norm-iff-angle-eq-zero--6abec9b339193997157bf49a.md) | 286 | `result-track:6abec9b339193997157bf49a0713bf344f864d5d2125c1b5c8ee1028173058d3` |
| 39 | `theorem` | [norm_add_eq_norm_sub_iff_angle_eq_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/norm-add-eq-norm-sub-iff-angle-eq-pi-div-two--680e2d50383eeb9281cbd8ae.md) | 300 | `result-track:680e2d50383eeb9281cbd8ae182c5654a85b5ec1631188fae3c24e11728072f5` |
| 40 | `theorem` | [cos_eq_one_iff_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/cos-eq-one-iff-angle-eq-zero--b4a03b8571de8436d07f4882.md) | 307 | `result-track:b4a03b8571de8436d07f48823a3b35f6185812aec7506cacb758aba797fdb00c` |
| 41 | `theorem` | [cos_eq_zero_iff_angle_eq_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/cos-eq-zero-iff-angle-eq-pi-div-two--5811babb751beed9a7457c30.md) | 312 | `result-track:5811babb751beed9a7457c30052152b02721fbb9479c40502ac8eb810ea228b6` |
| 42 | `theorem` | [cos_eq_neg_one_iff_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/cos-eq-neg-one-iff-angle-eq-pi--9507ee3260187ed590ae7c79.md) | 318 | `result-track:9507ee3260187ed590ae7c79492829831f99cb190eb9d7038d1f851e43a8c060` |
| 43 | `theorem` | [sin_eq_zero_iff_angle_eq_zero_or_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/sin-eq-zero-iff-angle-eq-zero-or-angle-eq-pi--1429698ad60f4091011cb594.md) | 323 | `result-track:1429698ad60f4091011cb594c21e55c5bec50e47b2fdb46cdfbbfde594e854d1` |
| 44 | `theorem` | [sin_eq_one_iff_angle_eq_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean/declarations/sin-eq-one-iff-angle-eq-pi-div-two--5035bbddb0d89e6afba2ab15.md) | 328 | `result-track:5035bbddb0d89e6afba2ab15fad81cf4014d54021048adaa5394be45da09ca23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
