# Verification target: GRWTSK.Algebra.LinearAlgebra.Ker.Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b8b2f9e5b148a299e1792a678d2fea8d1b2248",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b8b2f9e5b148a299e1792a678d2fea8d1b2248`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Map` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker--e740710d1a808103adf331c7.md) | 65 | `declaration-track:e740710d1a808103adf331c7c58f5308a74e89e7ca5eb1f33c112e82d1412d9c` |
| 2 | `theorem` | [mem_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/mem-ker--6393289519ff9f770b30a817.md) | 69 | `result-track:6393289519ff9f770b30a817515169e81fb22cf13c1185f0f81160244558b0b3` |
| 3 | `theorem` | [ker_id](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-id--15cafcfa948b4ada973340fa.md) | 73 | `result-track:15cafcfa948b4ada973340fa8f2a588d79a50d1a18a926730b4c5100b5260e54` |
| 4 | `theorem` | [map_coe_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/map-coe-ker--923d5cc1c183dd6d17f01294.md) | 77 | `result-track:923d5cc1c183dd6d17f01294baa0cdef74998459aac1d0de3682a9e75944ea33` |
| 5 | `theorem` | [ker_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-toaddsubmonoid--1804277b705ec5dd39a2d0e4.md) | 80 | `result-track:1804277b705ec5dd39a2d0e4d3582c5dd9c1bf51d97173c8535fab8ef29f1dd4` |
| 6 | `theorem` | [le_ker_iff_comp_subtype_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/le-ker-iff-comp-subtype-eq-zero--60e3450c1bd8a306d1595bea.md) | 83 | `result-track:60e3450c1bd8a306d1595bea23c2e1dacdfb31cc54c55e970e9ae8384d8cdd68` |
| 7 | `theorem` | [comp_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/comp-ker-subtype--34746bc07ce1671f6b37549c.md) | 87 | `result-track:34746bc07ce1671f6b37549ccf7f710336ff863f7b89e76f01420ac877168c12` |
| 8 | `theorem` | [ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-comp--a1b512899749ac78808e3bf7.md) | 90 | `result-track:a1b512899749ac78808e3bf7972008b2273ea53d71e5a3cf76cb21a837328c23` |
| 9 | `theorem` | [ker_le_ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-le-ker-comp--a1540e3be04e3fe2abebbaea.md) | 94 | `result-track:a1540e3be04e3fe2abebbaea65d9354ab4c1d4020427a4908809e80456d31b07` |
| 10 | `theorem` | [ker_sup_ker_le_ker_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-sup-ker-le-ker-comp-of-commute--003afcdb92a1c347b331ab36.md) | 97 | `result-track:003afcdb92a1c347b331ab3654d3ec6e0d0bc7fdd2759bf2e1913933c3137abb` |
| 11 | `theorem` | [ker_le_comap](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-le-comap--d2ac320ce31995f92db76df2.md) | 104 | `result-track:d2ac320ce31995f92db76df28a2e5eda4eaa7efef45b23cd37234bb1baf04102` |
| 12 | `theorem` | [disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/disjoint-ker--a18bdd62941aaa2be9a21f28.md) | 108 | `result-track:a18bdd62941aaa2be9a21f28148e6a1297c0d851dc235e927a71938a3ba96fdf` |
| 13 | `theorem` | [ker_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-eq-bot--31810385c6d4f76dee1db136.md) | 112 | `result-track:31810385c6d4f76dee1db13618cdf8b92147b29064bb648cde23d35e3a394ae9` |
| 14 | `theorem` | [ker_eq_bot_of_inverse](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-eq-bot-of-inverse--23a0993e54f521c65a13aff7.md) | 115 | `result-track:23a0993e54f521c65a13aff788a8fb1311f3ed4748c26612d595db8a4eebe4aa` |
| 15 | `theorem` | [le_ker_iff_map](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/le-ker-iff-map--1dce7d550695b5406e5b06ea.md) | 119 | `result-track:1dce7d550695b5406e5b06ea969eb0beebe99ce3417b8909d72fd37c52777bb4` |
| 16 | `theorem` | [ker_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-codrestrict--5e1718e9ea6c28b1c37af6b4.md) | 122 | `result-track:5e1718e9ea6c28b1c37af6b4e6217c31ab58f8009d4e776ec2456ad3724ed61e` |
| 17 | `lemma` | [ker_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-domrestrict--27048f216b13a6a5f803910c.md) | 125 | `result-track:27048f216b13a6a5f803910c29af65189ee19d49d76ad980a713b251c1e18e19` |
| 18 | `theorem` | [ker_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-restrict--e95d2834b856555d7d544cc5.md) | 128 | `result-track:e95d2834b856555d7d544cc5059cd205972c19c3dbda1f3a9c916cd5dd628689` |
| 19 | `theorem` | [ker_zero](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-zero--12354b0e20c828fe7539a9bf.md) | 134 | `result-track:12354b0e20c828fe7539a9bf10680a307a0d483292ab7ee71a0e9e22db546641` |
| 20 | `theorem` | [ker_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-eq-top--89c8d50e8167d55eebbb3732.md) | 138 | `result-track:89c8d50e8167d55eebbb3732081d1d414009d2b01d2762ba675f96e75f222eed` |
| 21 | `theorem` | [exists_ne_zero_of_sSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/exists-ne-zero-of-ssup-eq-top--7afbc27a66a618801dd5b181.md) | 141 | `result-track:7afbc27a66a618801dd5b18125efd4e108399bbf742857e7661501983addc214` |
| 22 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Ker.Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.AddMonoidHom.coe_toIntLinearMap_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/root-grwtsk-algebra-linearalgebra-ker-variant4164e9080400337c2363013661e--6a26902acf46a48502efc475.md) | 148 | `result-track:6a26902acf46a48502efc47570970853d6475bbca286c166c6d7410c66f20dad` |
| 23 | `theorem` | [ker_eq_bot_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-eq-bot-of-injective--50db7b03cecc2dff5b2d94ee.md) | 151 | `result-track:50db7b03cecc2dff5b2d94eeb760af41024697df77421c10a875e57878adb7fd` |
| 24 | `def` | [iterateKer](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/iterateker--acde408c53945cd51f572017.md) | 159 | `declaration-track:acde408c53945cd51f572017086b019879f81cbe710691a07ad8751817d01ce0` |
| 25 | `theorem` | [ker_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-toaddsubgroup--8888c6af939d000dd77081ff.md) | 179 | `result-track:8888c6af939d000dd77081fff1d648fa74d371f89ce8ca9297f674875c1b36a1` |
| 26 | `theorem` | [sub_mem_ker_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/sub-mem-ker-iff--24ce9966e5f6170d5cb1fec0.md) | 182 | `result-track:24ce9966e5f6170d5cb1fec0cb9808e0eb242ef65ed4570e9a3de0de0ff2e4fa` |
| 27 | `theorem` | [disjoint_ker'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/disjoint-ker--68ce2f06b31a03338f1df09c.md) | 184 | `result-track:68ce2f06b31a03338f1df09c16c57c013c682931ff85e0a01b522c32434bfd4a` |
| 28 | `theorem` | [injOn_of_disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/injon-of-disjoint-ker--642ff236b6e872ae58a95dd0.md) | 190 | `result-track:642ff236b6e872ae58a95dd0ace1f8b63388beb9c873cf0c635a8ace9408a86c` |
| 29 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Ker.Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.LinearMapClass.ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/root-grwtsk-algebra-linearalgebra-ker-variant4164e9080400337c2363013661e--7cddc6f4f17d1e89a35656f9.md) | 195 | `result-track:7cddc6f4f17d1e89a35656f90cc000758ef76ea11bb8fb01982e6fe1b8dbd177` |
| 30 | `theorem` | [ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-eq-bot--c814bb9d8558a119a177f1a6.md) | 198 | `result-track:c814bb9d8558a119a177f1a650949d3a2dbf5f0ce976559ab624b429bc1d059d` |
| 31 | `lemma` | [injective_domRestrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/injective-domrestrict-iff--0e9b2c6cdafd4cd617204fdf.md) | 201 | `result-track:0e9b2c6cdafd4cd617204fdfabcae5426d52dfe5ea42bec031b3626ecc3a6dce` |
| 32 | `theorem` | [injective_restrict_iff_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/injective-restrict-iff-disjoint--df81491952f659b7f52c86e6.md) | 214 | `result-track:df81491952f659b7f52c86e6b248bf4abb3df069c362b2fc113ba64137c2a3bd` |
| 33 | `theorem` | [ker_smul](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-smul--31bb6a6bd32efbcc1dc60504.md) | 228 | `result-track:31bb6a6bd32efbcc1dc6050485884ea7619d2456bbcd769314346157f0204fc7` |
| 34 | `theorem` | [ker_smul'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-smul--fd6ffa4370a19b87d81a9a84.md) | 231 | `result-track:fd6ffa4370a19b87d81a9a842a66ff1cb041e63a8590a8e91ec370923df0b48c` |
| 35 | `theorem` | [comap_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/comap-bot--9dcffc664230f39311574d90.md) | 251 | `result-track:9dcffc664230f39311574d902c93ee34c14beb423c9703ee1e85dac36a99cad4` |
| 36 | `theorem` | [ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-subtype--edd4df9d61465f08e2941e3f.md) | 255 | `result-track:edd4df9d61465f08e2941e3fc1a84219dd776ece26c8a90a19af091e86ea419a` |
| 37 | `theorem` | [ker_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-inclusion--315c3f693c85f00c37c267e0.md) | 259 | `result-track:315c3f693c85f00c37c267e016e4733c01f1bad375f0a4026600e23143b38b08` |
| 38 | `theorem` | [ker_comp_of_ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-comp-of-ker-eq-bot--2e2bce70c26d7822549587c8.md) | 276 | `result-track:2e2bce70c26d7822549587c890ab88a251d5c5eb2192f23dd320c7494d1e0f06` |
| 39 | `theorem` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker--fc0009eef70b7626adce27e3.md) | 303 | `result-track:fc0009eef70b7626adce27e3f539fb7e1017681b557865a01cdd1b610d3564e8` |
| 40 | `theorem` | [ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant84b19496c03bd44961a70ac49ec857314a63325f46d979cd7f413b665b2f2bc7.lean/declarations/ker-comp--5c19dfd1093eec692f53d354.md) | 307 | `result-track:5c19dfd1093eec692f53d3540c314aa10c1feb8948eeba7b29f33f920936a81c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
