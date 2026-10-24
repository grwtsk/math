# Verification target: GRWTSK.Algebra.Basic.Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f49616cb348e9d111ff6d5c3856eb2f26fbd99e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f49616cb348e9d111ff6d5c3856eb2f26fbd99e`.

Source path: `GRWTSK/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Stability` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FaithfullyFlat](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/faithfullyflat--51aa7924703bbf7d895b2e76.md) | 60 | `declaration-track:51aa7924703bbf7d895b2e764ab50341f4c405da521cc193a374363d59bbaabc` |
| 2 | `instance` | [self](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/self--ee0a67b5167515e696eb7a70.md) | 64 | `declaration-track:ee0a67b5167515e696eb7a70242374133a22f005855d2e399ab947c1e60ea5b4` |
| 3 | `lemma` | [iff_flat_and_proper_ideal](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-flat-and-proper-ideal--1d7b03c3942dd85678f6f1c7.md) | 70 | `result-track:1d7b03c3942dd85678f6f1c76e4f2a36a33befe5dfb1e8f6398167620ac0dbad` |
| 4 | `lemma` | [iff_flat_and_ideal_smul_eq_top](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-flat-and-ideal-smul-eq-top--e98150e26e22be6d65811ee9.md) | 78 | `result-track:e98150e26e22be6d65811ee91c7f5d3278ccad52f2f28cbdc4e27d17ad020f4f` |
| 5 | `instance` | [rTensor_nontrivial](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/rtensor-nontrivial--7a79ea2f9f355dd6d0606caf.md) | 88 | `declaration-track:7a79ea2f9f355dd6d0606caf18a00781bda25ada5de899d1c5327e280d1cb962` |
| 6 | `instance` | [lTensor_nontrivial](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/ltensor-nontrivial--ac3ccb2310e6a4f269911f95.md) | 112 | `declaration-track:ac3ccb2310e6a4f269911f95e561429047ba259aad5ee2f6937bd161ad54f5f8` |
| 7 | `lemma` | [rTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/rtensor-reflects-triviality--9ce624c208cc4d0f316dda47.md) | 117 | `result-track:9ce624c208cc4d0f316dda474c86df014a857ea230d50c84b5484806736e59d8` |
| 8 | `lemma` | [lTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/ltensor-reflects-triviality--7bed230d74a0f30166d5b5c6.md) | 125 | `result-track:7bed230d74a0f30166d5b5c6bdd8c98d0ef4f645c5a3b0f2f4f5722703c7d024` |
| 9 | `lemma` | [iff_flat_and_rTensor_faithful](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-flat-and-rtensor-faithful--e04f17ae551e9c55cf6426b9.md) | 133 | `result-track:e04f17ae551e9c55cf6426b9231faa534416637d75fa7ec26041280c3613679b` |
| 10 | `lemma` | [iff_flat_and_rTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-flat-and-rtensor-reflects-triviality--071295dbbcbdab1bf7486e2b.md) | 150 | `result-track:071295dbbcbdab1bf7486e2b401a069c55a57e59155ce6f811cb5b4d8a6a2a36` |
| 11 | `lemma` | [iff_flat_and_lTensor_faithful](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-flat-and-ltensor-faithful--c230a4775069eef637309216.md) | 159 | `result-track:c230a4775069eef637309216326cc68365665352fc2f57cef1d401b530f1dc83` |
| 12 | `lemma` | [iff_flat_and_lTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-flat-and-ltensor-reflects-triviality--3935b14ffa5a7f700c6995cd.md) | 170 | `result-track:3935b14ffa5a7f700c6995cd89726a4817bb187fd9dd7bd7fd78f385d4a153bb` |
| 13 | `lemma` | [of_linearEquiv](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/of-linearequiv--9539e0de047c1094d1cb64b0.md) | 183 | `result-track:9539e0de047c1094d1cb64b0120c36cd968fd85d2903e8a7fe1a3490afff84fe` |
| 14 | `instance` | [directSum](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/directsum--c4984382f85a208c8cfaba4c.md) | 192 | `declaration-track:c4984382f85a208c8cfaba4c97801f0fd3a4106c17dc6b7e09480cc149c1051d` |
| 15 | `instance` | [finsupp](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/finsupp--e2dbfb90c1de06f2b8e97f3f.md) | 204 | `declaration-track:e2dbfb90c1de06f2b8e97f3f6b050e7119bc9700b25b60b25024f383109a511f` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/instance--9193a018e7a2b44efa3ce004.md) | 210 | `declaration-track:9193a018e7a2b44efa3ce004f890b3837d108518e03892dd4fd1c16c93d6a812` |
| 17 | `lemma` | [subsingleton_tensorProduct_iff_right](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/subsingleton-tensorproduct-iff-right--690efce9fc1639ce03d197fe.md) | 218 | `result-track:690efce9fc1639ce03d197febd563e8a8e75febcf6521461f9ff2ba95a6440c8` |
| 18 | `lemma` | [subsingleton_tensorProduct_iff_left](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/subsingleton-tensorproduct-iff-left--e80366ceef2fd0c8d052071b.md) | 223 | `result-track:e80366ceef2fd0c8d052071b3decd7dc98f6a5933439b4a4131bad83f85bceb5` |
| 19 | `lemma` | [nontrivial_tensorProduct_iff_right](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/nontrivial-tensorproduct-iff-right--e17c2f2d514e48d098f755c6.md) | 228 | `result-track:e17c2f2d514e48d098f755c692740d9f5e5ccfb16708733ae6bb20be709be02c` |
| 20 | `lemma` | [nontrivial_tensorProduct_iff_left](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/nontrivial-tensorproduct-iff-left--a5021c3ff41cb37931b62250.md) | 233 | `result-track:a5021c3ff41cb37931b6225088bfe6250bb2ff6e8228c02d1621fa078ab2972e` |
| 21 | `lemma` | [range_le_ker_of_exact_rTensor](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/range-le-ker-of-exact-rtensor--dbaf732bb8d4a2901f05d609.md) | 276 | `result-track:dbaf732bb8d4a2901f05d609cb0a05e6f17f6ec25802cdff819e38ba7e5afc08` |
| 22 | `lemma` | [rTensor_reflects_exact](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/rtensor-reflects-exact--ed1496e499d44e7b15ca28f4.md) | 320 | `result-track:ed1496e499d44e7b15ca28f4148cf35ba0a8ac5922a4789113869fd99fbadfa8` |
| 23 | `lemma` | [lTensor_reflects_exact](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/ltensor-reflects-exact--6825ec45546754cc68acd7f8.md) | 366 | `result-track:6825ec45546754cc68acd7f810ae027154eb97444bf5aba439be78745f7835b0` |
| 24 | `lemma` | [rTensor_exact_iff_exact](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/rtensor-exact-iff-exact--95b6db532f3fcd3095b49a07.md) | 374 | `result-track:95b6db532f3fcd3095b49a072dae624fde74f0c132eabf6e8b2793ec9ba923af` |
| 25 | `lemma` | [lTensor_exact_iff_exact](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/ltensor-exact-iff-exact--616c2cff68e98e4bf8f52a21.md) | 379 | `result-track:616c2cff68e98e4bf8f52a211bd506e77a41b05f626c41d55b2e25efea47fb90` |
| 26 | `lemma` | [lTensor_injective_iff_injective](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/ltensor-injective-iff-injective--f71e091c7169a9010b616b30.md) | 389 | `result-track:f71e091c7169a9010b616b305fd75fed835d7c6156c40f3759139a270f6c131b` |
| 27 | `lemma` | [lTensor_surjective_iff_surjective](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/ltensor-surjective-iff-surjective--35add7ad880f2ea7590dd67b.md) | 396 | `result-track:35add7ad880f2ea7590dd67bb44f01450ae29ac9dd47b27a1e0c33c741d2ea8e` |
| 28 | `lemma` | [iff_exact_iff_rTensor_exact](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-exact-iff-rtensor-exact--f37e5639cdcaeb0547475c8f.md) | 409 | `result-track:f37e5639cdcaeb0547475c8fd80b07c2c4b4636e701dc605b79156b3029672a5` |
| 29 | `lemma` | [iff_exact_iff_lTensor_exact](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-exact-iff-ltensor-exact--7f28984d872a1e7fcc0fed48.md) | 423 | `result-track:7f28984d872a1e7fcc0fed48275de52e31be2365501c046b058ee89a740646eb` |
| 30 | `lemma` | [zero_iff_lTensor_zero](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/zero-iff-ltensor-zero--56957c6f5ff769080f187473.md) | 453 | `result-track:56957c6f5ff769080f187473ad6211ca20a75e97fbe0baeae33ff80c3f2f5d62` |
| 31 | `lemma` | [zero_iff_rTensor_zero](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/zero-iff-rtensor-zero--5e60e61cb7f4ff52529c51a3.md) | 468 | `result-track:5e60e61cb7f4ff52529c51a303feaebf3f583c74648c8acf5f8cda942675487d` |
| 32 | `theorem` | [one_tmul_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/one-tmul-eq-zero-iff--ec51c2db45c9bfb95e9a7a24.md) | 481 | `result-track:ec51c2db45c9bfb95e9a7a24800c75b67762e8e7e3e77379324e5823e681f15f` |
| 33 | `lemma` | [iff_zero_iff_lTensor_zero](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-zero-iff-ltensor-zero--617813b7919ec753bbbcd6a7.md) | 501 | `result-track:617813b7919ec753bbbcd6a7cd4126b95328750769333471ab79d41aebdaf006` |
| 34 | `lemma` | [iff_zero_iff_rTensor_zero](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/iff-zero-iff-rtensor-zero--79ab06e3c40611b25abfb0ab.md) | 516 | `result-track:79ab06e3c40611b25abfb0ab8337d42584db92c39b9a5214f5f2e5aaa910954b` |
| 35 | `theorem` | [trans](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/trans--56002d1ab9291282e1207992.md) | 544 | `result-track:56002d1ab9291282e1207992bac92153a01ae39e61716a0811e219e018484049` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/instance--0da9f593d2774c877d337605.md) | 560 | `declaration-track:0da9f593d2774c877d337605a42a8d1eec174e4a9b4ca19d1350c36b2d75b8a8` |
| 37 | `lemma` | [Flat.of_flat_tensorProduct](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/flat-of-flat-tensorproduct--3f53a4799eede4fe0f1f9e4f.md) | 572 | `result-track:3f53a4799eede4fe0f1f9e4f830d4019bf81657b40e6a0dbc7833b7f9c8060fc` |
| 38 | `lemma` | [Flat.iff_flat_tensorProduct](../../../../mathematics/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/declarations/flat-iff-flat-tensorproduct--223e2b911221d3f39f7dc27b.md) | 585 | `result-track:223e2b911221d3f39f7dc27b17640065cb1e200a8b521262b0c589ae5b520cff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
