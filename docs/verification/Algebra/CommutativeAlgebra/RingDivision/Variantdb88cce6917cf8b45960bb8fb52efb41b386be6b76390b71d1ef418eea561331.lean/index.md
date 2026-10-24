# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RingDivision.Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1edf1bc113400d64ee9c2be4d6eee2916a55e6c1",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1edf1bc113400d64ee9c2be4d6eee2916a55e6c1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ComputeDegree` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_pos_of_aeval_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/natdegree-pos-of-aeval-root--af58c695f1e2aacaa6ed86b7.md) | 50 | `result-track:af58c695f1e2aacaa6ed86b7875417a7f600c94f0357270ab7a3d987b0bf0af5` |
| 2 | `theorem` | [degree_pos_of_aeval_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/degree-pos-of-aeval-root--5dca35048e518b858c17adee.md) | 54 | `result-track:5dca35048e518b858c17adee740350044d8dc35d11fec8202d69aa1af26fa946` |
| 3 | `theorem` | [smul_divByMonic_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/smul-divbymonic-modbymonic--d72bdb31c86a7dd5f0701650.md) | 60 | `result-track:d72bdb31c86a7dd5f07016501cf5be577ad0bc60faa8deb6cfef223bb0913ac9` |
| 4 | `theorem` | [smul_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/smul-divbymonic--7bc7a3743ffb3ca37e5a0c56.md) | 70 | `result-track:7bc7a3743ffb3ca37e5a0c56e4194f98cd02f4e7a7cec2fca2e2108529ff44ba` |
| 5 | `theorem` | [smul_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/smul-modbymonic--6551a0f5d191a1b87d7115aa.md) | 73 | `result-track:6551a0f5d191a1b87d7115aaca7a514b21bbd5bf11e9a95e56aea447c6f5d91a` |
| 6 | `def` | [divByMonicHom](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/divbymonichom--68525a6998abd06e88916f84.md) | 78 | `declaration-track:68525a6998abd06e88916f84d6ee1a00ac7a0b7888838cea6b5aad66d2e33e61` |
| 7 | `theorem` | [mem_ker_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/mem-ker-divbymonic--174797d4c89abf59627e6956.md) | 83 | `result-track:174797d4c89abf59627e69567dc988a5b1def010e44f41feba3eb3e2cd90a71c` |
| 8 | `def` | [modByMonicHom](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/modbymonichom--2e76dd2b03a2a05913642254.md) | 89 | `declaration-track:2e76dd2b03a2a05913642254a20e2da0a516f9faf1c2c0ea47d2a59bad1cee1f` |
| 9 | `theorem` | [mem_ker_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/mem-ker-modbymonic--577a5decb4fa3a015afbd069.md) | 94 | `result-track:577a5decb4fa3a015afbd069a5cce34f2d17c033c1cd47402fa87b4d9b18a6d3` |
| 10 | `theorem` | [aeval_modByMonic_eq_self_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/aeval-modbymonic-eq-self-of-root--df214c60aa48cb1844b63d43.md) | 102 | `result-track:df214c60aa48cb1844b63d439bf8739376b69f7528219893f7d47b8d9b183e1f` |
| 11 | `theorem` | [trailingDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/trailingdegree-mul--a6f79c44206f6f44cc90ebc9.md) | 115 | `result-track:a6f79c44206f6f44cc90ebc9305eec0d2124452a0e4e457300bedbf24c0087d6` |
| 12 | `theorem` | [rootMultiplicity_eq_rootMultiplicity](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-eq-rootmultiplicity--e59581809f0ad6c2a6392cf7.md) | 131 | `result-track:e59581809f0ad6c2a6392cf7d3d3c5f059c394aa2bfc449017b17d6a657a5429` |
| 13 | `theorem` | [rootMultiplicity_eq_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-eq-nattrailingdegree--d18566bd603cded71f3e8aa0.md) | 141 | `result-track:d18566bd603cded71f3e8aa0739a904628802cdbc4641bb1181ba8a3b5952300` |
| 14 | `theorem` | [Monic.mem_nonZeroDivisors](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/monic-mem-nonzerodivisors--f0e8309e611e1dffc23003f6.md) | 149 | `result-track:f0e8309e611e1dffc23003f632da68c3e5e9a5faf080d2a730a0e9f70f0e45fe` |
| 15 | `theorem` | [mem_nonZeroDivisors_of_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/mem-nonzerodivisors-of-leadingcoeff--cfdcf4272ca522229ef8a185.md) | 152 | `result-track:cfdcf4272ca522229ef8a1856994394593ff84663b32caf4b47be18f3efb0beb` |
| 16 | `theorem` | [mem_nonZeroDivisors_of_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/mem-nonzerodivisors-of-trailingcoeff--75e1dde27d6c6de33b63267f.md) | 155 | `result-track:75e1dde27d6c6de33b63267f7c9bcfcda9391736d3efba839ae6d8eda102ffa7` |
| 17 | `lemma` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.NatDegreePosOfAevalRoot.Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.Irreducible.aeval_ne_zero_of_natDegree_ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/root-grwtsk-algebra-commutativealgebra-natdegreeposofaevalroot-variantdf--6fb98f2e9ea1823c9d321b05.md) | 160 | `result-track:6fb98f2e9ea1823c9d321b05e0ab87cf0e38bfc187d9cd490d42783ce5416410` |
| 18 | `theorem` | [natDegree_pos_of_monic_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/natdegree-pos-of-monic-of-aeval-eq-zero--bbeb941a57012ce4277c9d27.md) | 168 | `result-track:bbeb941a57012ce4277c9d2719087fd0aff33c1faed082aff300863b425b9255` |
| 19 | `theorem` | [rootMultiplicity_mul_X_sub_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-mul-x-sub-c-pow--1532873fcfb9ae2d8e895540.md) | 174 | `result-track:1532873fcfb9ae2d8e895540e70193fb5b7069331437474d6a5b65c5eb3c188b` |
| 20 | `theorem` | [rootMultiplicity_X_sub_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-x-sub-c-pow--6dd83edd3d18372aab2c0f13.md) | 185 | `result-track:6dd83edd3d18372aab2c0f13f93fbb30013850802dd78a5682d7e0583d17217d` |
| 21 | `theorem` | [rootMultiplicity_X_sub_C_self](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-x-sub-c-self--37eea61207cd548ad7ee042f.md) | 190 | `result-track:37eea61207cd548ad7ee042f696b32445f87e03f079d003c9f600933a0124a22` |
| 22 | `theorem` | [rootMultiplicity_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-x-sub-c--775083ce70ecd707273e1de6.md) | 194 | `result-track:775083ce70ecd707273e1de67b4885e99af436d9a37c816d85efd5e5f0b69df2` |
| 23 | `theorem` | [rootMultiplicity_comp_C_mul_X_add_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-comp-c-mul-x-add-c-le--7202ade39f0f37e4ebc9739e.md) | 201 | `result-track:7202ade39f0f37e4ebc9739ebe2016d8898843fbe5b5647768cecd4086cb22a1` |
| 24 | `theorem` | [rootMultiplicity_comp_C_mul_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-comp-c-mul-x-add-c--d489c3f56ba6043239609779.md) | 211 | `result-track:d489c3f56ba60432396097795890ed040fa9d924ef47ceb7024e92c29eb5509b` |
| 25 | `theorem` | [rootMultiplicity_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-mul--a38d4061591e3f8a75efa2ed.md) | 219 | `result-track:a38d4061591e3f8a75efa2ed57984a00a8d6412ad50899cd587e2c58ae53ff23` |
| 26 | `theorem` | [Monic.neg_one_pow_natDegree_mul_comp_neg_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/monic-neg-one-pow-natdegree-mul-comp-neg-x--8ba186f2740b140ef593e05c.md) | 226 | `result-track:8ba186f2740b140ef593e05ce7526451a7c3dfaba2293f57a1e44d0e6bdc1a60` |
| 27 | `theorem` | [degree_eq_degree_of_associated](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/degree-eq-degree-of-associated--3010c6d00bb97520593c96a6.md) | 239 | `result-track:3010c6d00bb97520593c96a63726b2827170c694d3170ddfd9b7092502e4af8e` |
| 28 | `theorem` | [prime_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/prime-x-sub-c--c19c314a915f2d2e42f0a54e.md) | 243 | `result-track:c19c314a915f2d2e42f0a54eff464e8d5d0ff6aa0690600d9f4fc9fc3d9a4ea7` |
| 29 | `theorem` | [prime_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/prime-x--ab08ff0cc238ce80f9b2e310.md) | 248 | `result-track:ab08ff0cc238ce80f9b2e310e055e7443b04e65e3127f10f6c9d74fdec2bbed9` |
| 30 | `theorem` | [Monic.prime_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/monic-prime-of-degree-eq-one--3fd2ed243a7e6b48005d8110.md) | 252 | `result-track:3fd2ed243a7e6b48005d8110bd3634bf163cbb0ccb8ccce7a9834e0dca570778` |
| 31 | `theorem` | [irreducible_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/irreducible-x-sub-c--c540265707abb883898899c8.md) | 256 | `result-track:c540265707abb883898899c8ae6f6b1749e824a2cc2b7e3a7e02965515e95c18` |
| 32 | `theorem` | [irreducible_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/irreducible-x--3c9c501d9bb16cd13037cae0.md) | 259 | `result-track:3c9c501d9bb16cd13037cae019306db3e25f555ccb5d06b390246bb104c56ce2` |
| 33 | `theorem` | [Monic.irreducible_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/monic-irreducible-of-degree-eq-one--e9e066f00bc7a673ffd6aa85.md) | 262 | `result-track:e9e066f00bc7a673ffd6aa856c6347d7def83aea13afebf25e67d412a846ea27` |
| 34 | `theorem` | [irreducible_of_degree_eq_one_of_isRelPrime_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/irreducible-of-degree-eq-one-of-isrelprime-coeff--1827f6114f98188abfad83b5.md) | 267 | `result-track:1827f6114f98188abfad83b5ee03b4749de3df4ee156e989d6858fe5161941b0` |
| 35 | `theorem` | [irreducible_C_mul_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/irreducible-c-mul-x-add-c--6d58a7c062e88f774e42f62f.md) | 288 | `result-track:6d58a7c062e88f774e42f62f398df46458d7a21f642ea4dfe3f57f00ea4d414a` |
| 36 | `lemma` | [aeval_ne_zero_of_isCoprime](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/aeval-ne-zero-of-iscoprime--bc85dc51f2d87928a2fb6e9c.md) | 294 | `result-track:bc85dc51f2d87928a2fb6e9ca3b19585b44e662b255474f34c9bde1713509949` |
| 37 | `theorem` | [isCoprime_X_sub_C_of_isUnit_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/iscoprime-x-sub-c-of-isunit-sub--311df12b74742f8ab642a701.md) | 301 | `result-track:311df12b74742f8ab642a701ed9188341f15841f4a4d26378edc92323fbeebb7` |
| 38 | `theorem` | [pairwise_coprime_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/pairwise-coprime-x-sub-c--1e6ed71d4f03352d408d3373.md) | 310 | `result-track:1e6ed71d4f03352d408d337367e502e4a6584d15040f08ebb43e6edfe9c4033e` |
| 39 | `theorem` | [rootMultiplicity_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/rootmultiplicity-mul--4e2e93cea5edd6875aff38bd.md) | 314 | `result-track:4e2e93cea5edd6875aff38bd45e32467cb1a779020fe4992414089a447e7de62` |
| 40 | `theorem` | [exists_multiset_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/declarations/exists-multiset-roots--3140bd64bbbeb10ac29960f1.md) | 324 | `result-track:3140bd64bbbeb10ac29960f17d4b670c54a15136b70708ef0c210d438a6e477c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
