# Verification target: GRWTSK.Algebra.LinearAlgebra.Chain.Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59ee2edeade04c28abb7620e5857f6fda667c14b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59ee2edeade04c28abb7620e5857f6fda667c14b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Finite.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.G2` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrdConnectedLinear` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [setOf_root_add_zsmul_eq_Icc_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/setof-root-add-zsmul-eq-icc-of-linearindependent--ca78f137f298593e0fd86886.md) | 42 | `result-track:ca78f137f298593e0fd86886c83c8a9bfb6b2728e650ba3d026c633d012b93f2` |
| 2 | `def` | [chainTopCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaintopcoeff--6494ea6efe3c4cc216c679a8.md) | 102 | `declaration-track:6494ea6efe3c4cc216c679a8e320cd205c8917d07189ba9fbad93e77b65bad05` |
| 3 | `def` | [chainBotCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff--311fd60521c02206af27dc98.md) | 112 | `declaration-track:311fd60521c02206af27dc98c3b822282b824955dd067b2c2420724a30b7f5df` |
| 4 | `lemma` | [chainTopCoeff_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaintopcoeff-of-not-linearindependent--bb0cbda3be40642dc355af7e.md) | 119 | `result-track:bb0cbda3be40642dc355af7ea402827abb9848e4d6a305c4cdb9754d1949db67` |
| 5 | `lemma` | [chainBotCoeff_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-of-not-linearindependent--bd5b9c58e93e4f6e3f00f606.md) | 123 | `result-track:bd5b9c58e93e4f6e3f00f606d707cd190c47c00948d42d857d425aa31ecc35e6` |
| 6 | `lemma` | [root_add_nsmul_mem_range_iff_le_chainTopCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/root-add-nsmul-mem-range-iff-le-chaintopcoeff--7e0dcbb8e4b6000c12b3d011.md) | 130 | `result-track:7e0dcbb8e4b6000c12b3d011947f18f3ed8a682fae000e21a38c13494421ac3b` |
| 7 | `lemma` | [root_sub_nsmul_mem_range_iff_le_chainBotCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/root-sub-nsmul-mem-range-iff-le-chainbotcoeff--5e309b55399d83234673abcd.md) | 144 | `result-track:5e309b55399d83234673abcdd0e2b5547d12869fea780b59e70722d84617db91` |
| 8 | `lemma` | [one_le_chainTopCoeff_of_root_add_mem](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/one-le-chaintopcoeff-of-root-add-mem--dd496b98fedfbac93a0e9f65.md) | 158 | `result-track:dd496b98fedfbac93a0e9f659cc6119fea2a57e6ee4158ef58c463b9412ae5ba` |
| 9 | `lemma` | [one_le_chainBotCoeff_of_root_add_mem](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/one-le-chainbotcoeff-of-root-add-mem--57eed0b3af49a7274681eb1e.md) | 164 | `result-track:57eed0b3af49a7274681eb1ee85f61c0efddb3be993360bd7519590f07285ce3` |
| 10 | `lemma` | [root_add_zsmul_mem_range_iff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/root-add-zsmul-mem-range-iff--a019f7cb92e8d8c64b1e0af9.md) | 170 | `result-track:a019f7cb92e8d8c64b1e0af9d553288412dc492992a0be91c93a95298dd24e5f` |
| 11 | `lemma` | [root_sub_zsmul_mem_range_iff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/root-sub-zsmul-mem-range-iff--c3f756919636a82097d084b3.md) | 177 | `result-track:c3f756919636a82097d084b3f6ecd25a13063c7a1709295650c1756ecad91872` |
| 12 | `lemma` | [chainCoeff_reflection_perm_left_aux](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaincoeff-reflection-perm-left-aux--c36ddcd97dfe4b04e4af8e75.md) | 185 | `result-track:c36ddcd97dfe4b04e4af8e756288f9586e026edfb239fdd9f935cc0258dc41ef` |
| 13 | `lemma` | [chainCoeff_reflection_perm_right_aux](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaincoeff-reflection-perm-right-aux--d55e5efc3d0ece77c2490ebe.md) | 200 | `result-track:d55e5efc3d0ece77c2490ebe16ca20ad84178eb6d9ccc007b797210c028a90c6` |
| 14 | `lemma` | [chainTopCoeff_reflection_perm_left](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaintopcoeff-reflection-perm-left--a2bfd01668862d142a0bd815.md) | 216 | `result-track:a2bfd01668862d142a0bd81555c11e96d5bce20e9454720495d0e849ffc6355f` |
| 15 | `lemma` | [chainBotCoeff_reflection_perm_left](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-reflection-perm-left--5ca1cfc9882510355709460b.md) | 227 | `result-track:5ca1cfc9882510355709460bd408ba7ae4dc8eba24bab99d63f522922cb50c18` |
| 16 | `lemma` | [chainTopCoeff_reflection_perm_right](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaintopcoeff-reflection-perm-right--75390273b63ed13c2a621e14.md) | 238 | `result-track:75390273b63ed13c2a621e143a509edb00b9a37aa8fdb3172be74e01aa69073b` |
| 17 | `lemma` | [chainBotCoeff_reflection_perm_right](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-reflection-perm-right--57eda8ed9e9ba7e8e4741cf9.md) | 249 | `result-track:57eda8ed9e9ba7e8e4741cf98cd3a98009ab8fb71ab5855d3555408826a11b90` |
| 18 | `def` | [chainTopIdx](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaintopidx--49baa86a09dd1abf231a1f5d.md) | 266 | `declaration-track:49baa86a09dd1abf231a1f5d10ab39421f3319713ae0a5c7ecf0080ae3939970` |
| 19 | `def` | [chainBotIdx](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotidx--2233649d93196eb11f2f6fcd.md) | 277 | `declaration-track:2233649d93196eb11f2f6fcdb91f03cb2cd12dc95397f458e43706bd71f58e6c` |
| 20 | `lemma` | [root_chainTopIdx](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/root-chaintopidx--dbb63c1a6ac5053f7e0067b7.md) | 286 | `result-track:dbb63c1a6ac5053f7e0067b7a00bd5fc3eb0436a7b724331aff56de0dc60d522` |
| 21 | `lemma` | [root_chainBotIdx](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/root-chainbotidx--ef335655cb222ea4ae40677d.md) | 295 | `result-track:ef335655cb222ea4ae40677d556c40769464ba6ff3f58c00d6fe067c96e5bab1` |
| 22 | `lemma` | [chainBotCoeff_sub_chainTopCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-sub-chaintopcoeff--350862406c130ce763bc483a.md) | 305 | `result-track:350862406c130ce763bc483aae92fe7320b49157e2fe12b35bab1726c36731ba` |
| 23 | `lemma` | [chainTopCoeff_sub_chainBotCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaintopcoeff-sub-chainbotcoeff--bd1b02e8e8d1ec9b0bbcdb45.md) | 325 | `result-track:bd1b02e8e8d1ec9b0bbcdb45b7e4d514d9e24edafb3412ce0373447f9ae67edd` |
| 24 | `lemma` | [chainCoeff_chainTopIdx_aux](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaincoeff-chaintopidx-aux--895fd4a00e931fb933cff9b9.md) | 331 | `result-track:895fd4a00e931fb933cff9b994b99778713ff251b2e513c23e6c7ccf8b7a91ed` |
| 25 | `lemma` | [chainBotCoeff_chainTopIdx](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-chaintopidx--f4ee36e9d542999f26e6d159.md) | 355 | `result-track:f4ee36e9d542999f26e6d1596e05bbce47358c3ccc79a6ba579cf94cd0cbb362` |
| 26 | `lemma` | [chainTopCoeff_chainTopIdx](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaintopcoeff-chaintopidx--570d8549484f79e6519760ea.md) | 360 | `result-track:570d8549484f79e6519760ea5527020b013760d6a479519f94ff75a17950f343` |
| 27 | `lemma` | [chainBotCoeff_add_chainTopCoeff_eq_pairingIn_chainTopIdx](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-add-chaintopcoeff-eq-pairingin-chaintopidx--c801d42fdcdb47ec544a499b.md) | 365 | `result-track:c801d42fdcdb47ec544a499b82e30d82b08b8a0cae399ed49dc7e4cac44b0014` |
| 28 | `lemma` | [chainBotCoeff_add_chainTopCoeff_le_three](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-add-chaintopcoeff-le-three--60cfed8faed8efe2bef66009.md) | 375 | `result-track:60cfed8faed8efe2bef660090199d01a1724117fb6137dd470ec7b50f82dd568` |
| 29 | `lemma` | [chainBotCoeff_add_chainTopCoeff_le_two](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-add-chaintopcoeff-le-two--014e5ad8bf1ea78f4e68def2.md) | 385 | `result-track:014e5ad8bf1ea78f4e68def2f2ba4259e6968e5f44bc60b9207c2b08a3c77af5` |
| 30 | `lemma` | [pairingIn_le_zero_of_root_add_mem](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/pairingin-le-zero-of-root-add-mem--a2e5b81e51c453881533ff43.md) | 405 | `result-track:a2e5b81e51c453881533ff432628a46bc40ab70c6f2e9fcb7d01d9a3c5d7d0f5` |
| 31 | `lemma` | [zero_le_pairingIn_of_root_sub_mem](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/zero-le-pairingin-of-root-sub-mem--836fb2c0970172070af4f5c4.md) | 414 | `result-track:836fb2c0970172070af4f5c46abe8bf304e22960eab9f9a6922df380f6236ab1` |
| 32 | `lemma` | [chainBotCoeff_if_one_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-if-one-zero--bcbc189096019ef5c91e1ca2.md) | 426 | `result-track:bcbc189096019ef5c91e1ca29a9adb02a6cb113cdb3e5b2b950ee7262eabf0de` |
| 33 | `lemma` | [chainTopCoeff_if_one_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chaintopcoeff-if-one-zero--1c68b24e5b3fa36521ad43d8.md) | 437 | `result-track:1c68b24e5b3fa36521ad43d8062a62c1438dd87b2842ee33d7565c5d34225e46` |
| 34 | `lemma` | [chainBotCoeff_mul_chainTopCoeff.aux_0](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-mul-chaintopcoeff-aux-0--c26ff9e6b09bbedf1059e181.md) | 456 | `result-track:c26ff9e6b09bbedf1059e18137c443cce5724a396eced112891816b5c6051ce2` |
| 35 | `lemma` | [chainBotCoeff_mul_chainTopCoeff.aux_1](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-mul-chaintopcoeff-aux-1--ac9af98dd096247e170e2956.md) | 467 | `result-track:ac9af98dd096247e170e29566ff81c5ad239257618f428c2a666fae75787022e` |
| 36 | `lemma` | [chainBotCoeff_mul_chainTopCoeff.aux_2](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-mul-chaintopcoeff-aux-2--e973d5dbf5190043058d75c3.md) | 528 | `result-track:e973d5dbf5190043058d75c3b20eac341d57bd47fd262cb16c9bcd2cad00e6dd` |
| 37 | `lemma` | [chainBotCoeff_mul_chainTopCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/declarations/chainbotcoeff-mul-chaintopcoeff--fb745e4c3e9900a8c5d2f06f.md) | 595 | `result-track:fb745e4c3e9900a8c5d2f06f8439f71357fff860070e423764911f512d0fe7df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
