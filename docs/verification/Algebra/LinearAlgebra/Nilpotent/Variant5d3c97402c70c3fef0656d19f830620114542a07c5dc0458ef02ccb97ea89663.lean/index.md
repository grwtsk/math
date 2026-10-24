# Verification target: GRWTSK.Algebra.LinearAlgebra.Nilpotent.Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c45a67598656435e169c1eeb2d328a7d111769e8",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c45a67598656435e169c1eeb2d328a7d111769e8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Sum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.ZeroDivisors` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent--ee979384e46f05becc2944c4.md) | 39 | `declaration-track:ee979384e46f05becc2944c413359f6f2cdbcc945c81d76ccc355f8f8636a1f5` |
| 2 | `theorem` | [IsNilpotent.mk](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-mk--fd95b2af2e65347a1770d2ee.md) | 43 | `result-track:fd95b2af2e65347a1770d2ee5588ffeb38d6560f5c2b77b79824e4691c29d7d3` |
| 3 | `theorem` | [IsNilpotent.zero](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-zero--faa7f8dd7c8076834b2f76e2.md) | 47 | `result-track:faa7f8dd7c8076834b2f76e2e387e219c64a0fda0c286198cb81c2bffd059e42` |
| 4 | `theorem` | [IsNilpotent.neg](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-neg--a5dbe0bfca6f3f591b523c69.md) | 51 | `result-track:a5dbe0bfca6f3f591b523c699074aea770dbe9b860ac117bcb5f0a0b6f6b9866` |
| 5 | `theorem` | [isNilpotent_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-neg-iff--24ede25e045de90582a0abbf.md) | 58 | `result-track:24ede25e045de90582a0abbf5a459ed3844e103860b41c5517405856f9f87386` |
| 6 | `theorem` | [IsNilpotent.map](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-map--785968a28d5fb2bedbbaf84f.md) | 62 | `result-track:785968a28d5fb2bedbbaf84f880b59c0be6d2293f4954e29f2f6656d0f56eb84` |
| 7 | `theorem` | [IsNilpotent.sub_one_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-sub-one-isunit--e1bbf4c672a9f1576c4502ff.md) | 68 | `result-track:e1bbf4c672a9f1576c4502fff35684a67b4d0ce441d4385293cf1bcc54802b1b` |
| 8 | `theorem` | [Commute.IsNilpotent.add_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/commute-isnilpotent-add-isunit--20e8d14f2b8c85b6823551a7.md) | 76 | `result-track:20e8d14f2b8c85b6823551a73a0501c3f42c21cd1267bb45244929b38970b023` |
| 9 | `class` | [IsReduced](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isreduced--9915fb3d79ad02e146251ce1.md) | 87 | `declaration-track:9915fb3d79ad02e146251ce1fd9919fc8f82e9ff61bebb0fd975f761f9e18091` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/instance--39e7f5c7bbc7ba9baaacb3ed.md) | 92 | `declaration-track:39e7f5c7bbc7ba9baaacb3edce95dd630f6d6634c6f990504db3c3f6a3327060` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/instance--f3b5930d97e6975aa6381eee.md) | 97 | `declaration-track:f3b5930d97e6975aa6381eee9a05a54fa4a038fe11b66c0ef725c9fc581bde0a` |
| 12 | `theorem` | [IsNilpotent.eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-eq-zero--aa48eac977c09c0821794783.md) | 102 | `result-track:aa48eac977c09c082179478304b14b60e8d779ddfb2dcc3a5f38f784ee84232d` |
| 13 | `theorem` | [isNilpotent_iff_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-iff-eq-zero--adf19fd5e5a9fcc114931a9b.md) | 107 | `result-track:adf19fd5e5a9fcc114931a9b78b2271c2ed4fe9caa3cb9acbbe2e4ac4c83882e` |
| 14 | `theorem` | [isReduced_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isreduced-of-injective--4c3944306dcb4bfbf9aadf17.md) | 111 | `result-track:4c3944306dcb4bfbf9aadf17a8e1080498f836d6a88e610c903562b58da9ad74` |
| 15 | `theorem` | [RingHom.ker_isRadical_iff_reduced_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/ringhom-ker-isradical-iff-reduced-of-surjective--c462f8638a30877e2d0398b6.md) | 121 | `result-track:c462f8638a30877e2d0398b6de051a689d99ed36e98129230ea6d8b737674f4a` |
| 16 | `def` | [IsRadical](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isradical--48cb516db7569f7a47ee3745.md) | 130 | `declaration-track:48cb516db7569f7a47ee37454bf69e710147b63aab772b9af27f3728f592ac04` |
| 17 | `theorem` | [zero_isRadical_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/zero-isradical-iff--73e946f3f8f86d09191b2ea2.md) | 134 | `result-track:73e946f3f8f86d09191b2ea25719374343001f8a4b16980c0f6f6458234493cb` |
| 18 | `theorem` | [isRadical_iff_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isradical-iff-span-singleton--de6cc623fd8dbd595c52c3ca.md) | 139 | `result-track:de6cc623fd8dbd595c52c3caaf899d93b9c5bc6cc0cc3d935c3e117b18918903` |
| 19 | `theorem` | [isRadical_iff_pow_one_lt](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isradical-iff-pow-one-lt--1ac1e51708b13be23e12118c.md) | 145 | `result-track:1ac1e51708b13be23e12118cf931d10a0f89a43ee2a035562c7e0dff03bd7fb4` |
| 20 | `theorem` | [isReduced_iff_pow_one_lt](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isreduced-iff-pow-one-lt--5c2f7ace17466cf62b11b58f.md) | 152 | `result-track:5c2f7ace17466cf62b11b58ffee9f28a19a3237b43e1457db0952f8189f7d5a0` |
| 21 | `theorem` | [isNilpotent_add](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-add--a666db66eddcc579e19d7145.md) | 163 | `result-track:a666db66eddcc579e19d714575df6c60a3d24a015ed7383b12b9ffdda81f9be8` |
| 22 | `lemma` | [isNilpotent_sum](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-sum--d241c654fd50fb5dbac57c0c.md) | 176 | `result-track:d241c654fd50fb5dbac57c0c1ee86eb9a484337143ea54d2d8e51e6ee1135396` |
| 23 | `theorem` | [isNilpotent_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-mul-left--3fef310087a301b24238a1d0.md) | 188 | `result-track:3fef310087a301b24238a1d07ce5f437881d72ff1f09c4c7aa83d1ed4e5d7c84` |
| 24 | `lemma` | [isNilpotent_mul_left_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-mul-left-iff--349f06358cfcee628001074c.md) | 194 | `result-track:349f06358cfcee628001074c6a7b7f10f86afedc7c98dcd735c160f23dca944d` |
| 25 | `theorem` | [isNilpotent_mul_right](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-mul-right--6c71cca6f38518bd7647466c.md) | 201 | `result-track:6c71cca6f38518bd7647466cd65c3666aa537a9f9caeb78d1a263cd06b00bc5b` |
| 26 | `lemma` | [isNilpotent_mul_right_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-mul-right-iff--2df0209c145ab1c80bbcd09a.md) | 206 | `result-track:2df0209c145ab1c80bbcd09a0a1c1d4f5604d6dd3b8767d4b58a5d85c4d15b69` |
| 27 | `theorem` | [isNilpotent_sub](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-sub--ddf74cab6d5a77001d5aa8b9.md) | 219 | `result-track:ddf74cab6d5a77001d5aa8b905db1e6699c36e6306b1fb0ecd98075804d99826` |
| 28 | `lemma` | [isNilpotent_sum](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-sum--af266ecdf90ea991a8ef76f8.md) | 234 | `result-track:af266ecdf90ea991a8ef76f859c4c286287b7b9e84cd434000dc5268733e6a42` |
| 29 | `def` | [nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/nilradical--aa06d00f83ed3d1df9a85f79.md) | 240 | `declaration-track:aa06d00f83ed3d1df9a85f7901f0b60c4518b36f5bc63fc97f33b3300cb38f1d` |
| 30 | `theorem` | [mem_nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/mem-nilradical--29b47066c7bebb63396f6879.md) | 244 | `result-track:29b47066c7bebb63396f6879b681941509f718552e581716ab9a67167742e9f7` |
| 31 | `theorem` | [nilradical_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/nilradical-eq-sinf--b465a9b54101c8ce89f356a4.md) | 248 | `result-track:b465a9b54101c8ce89f356a4c689e3adc01ebb97c0d9023481b3e3bac640ce1f` |
| 32 | `theorem` | [nilpotent_iff_mem_prime](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/nilpotent-iff-mem-prime--564d24e1a12b188318b6b80b.md) | 253 | `result-track:564d24e1a12b188318b6b80b588e9372784d9b2963682845b04f7b583ceb95c4` |
| 33 | `theorem` | [nilradical_le_prime](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/nilradical-le-prime--173beae13b12d5b40f8466c8.md) | 258 | `result-track:173beae13b12d5b40f8466c87fe87de0ab36b877bdafa3543833752e33745bbf` |
| 34 | `theorem` | [nilradical_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/nilradical-eq-zero--eeab4fb1cdd8aabdb45eb001.md) | 263 | `result-track:eeab4fb1cdd8aabdb45eb0019da82459563fda32c19ed6c386d1571df0801e1e` |
| 35 | `theorem` | [isNilpotent_mulLeft_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-mulleft-iff--52d603b877b2e26fec8f87d3.md) | 274 | `result-track:52d603b877b2e26fec8f87d32590e5b2abc034a10ebea29ce35c17e4d6f0e662` |
| 36 | `theorem` | [isNilpotent_mulRight_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-mulright-iff--322804f81aea9cdde8ff76aa.md) | 281 | `result-track:322804f81aea9cdde8ff76aa0f69de9170789ca08a8f256840fd4885bd6fcd53` |
| 37 | `theorem` | [IsNilpotent.mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/declarations/isnilpotent-mapq--b1ffe43ed483c2ab0f3793a8.md) | 295 | `result-track:b1ffe43ed483c2ab0f3793a844429dbccfe8d50d7aef99b658a793b041da0da1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
