# Verification target: GRWTSK.Algebra.LinearAlgebra.Inner.Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fe2247fd071bdca9c772b370f9fdeaaa8670532",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fe2247fd071bdca9c772b370f9fdeaaa8670532`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wInner](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner--c4bb23ed402a584bef932213.md) | 36 | `declaration-track:c4bb23ed402a584bef932213c69b81ac3c1f7e695f664068f400e2b04a63f85c` |
| 2 | `abbrev` | [cWeight](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/cweight--e8b2fbc988d90532e3c5b4ea.md) | 39 | `declaration-track:e8b2fbc988d90532e3c5b4eab5ac8fb2c01c51503611b85d04850a6ffd0d9c70` |
| 3 | `lemma` | [wInner_cWeight_eq_smul_wInner_one](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-cweight-eq-smul-winner-one--96baba5a266a478e16fd8d4e.md) | 49 | `result-track:96baba5a266a478e16fd8d4e24637abc4a1dff4b47efc978e99d342b2779e6cf` |
| 4 | `lemma` | [conj_wInner_symm](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/conj-winner-symm--41e3d71d5e8dd8f96195ece3.md) | 53 | `result-track:41e3d71d5e8dd8f96195ece37e2c30c8de3b0d6a0e113b52f483bc06e4f7fcf8` |
| 5 | `lemma` | [wInner_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-zero-left--532740a42737d8f5dda250b9.md) | 57 | `result-track:532740a42737d8f5dda250b9a0afa8cc6e7c8082bb3dbadeff1b883211bca543` |
| 6 | `lemma` | [wInner_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-zero-right--1d3257cd247933888f3a1758.md) | 58 | `result-track:1d3257cd247933888f3a17581fa5137ff2500faa3aec45317dc6a8a0c34e713c` |
| 7 | `lemma` | [wInner_add_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-add-left--4da31721992bf782a02635f5.md) | 60 | `result-track:4da31721992bf782a02635f52a97e4be5d291a16d0bb70c30b0b3686eea9be67` |
| 8 | `lemma` | [wInner_add_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-add-right--317d4bcf9b63a9f455491db1.md) | 64 | `result-track:317d4bcf9b63a9f455491db13333ee43e4c010555c6ccb3d4d5c6e633ed6cad4` |
| 9 | `lemma` | [wInner_neg_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-neg-left--cc1fb1b10e26a74c0653de6d.md) | 68 | `result-track:cc1fb1b10e26a74c0653de6d9b307cbe4296aa518b7e7a974344dabdc2880fc3` |
| 10 | `lemma` | [wInner_neg_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-neg-right--ac3eb84a198bee3182e86349.md) | 71 | `result-track:ac3eb84a198bee3182e863492837b2358e0aa947750be9cca43ee1b1c2743a93` |
| 11 | `lemma` | [wInner_sub_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-sub-left--c30ea5e10f37be717e607097.md) | 74 | `result-track:c30ea5e10f37be717e607097641daa2a0de0f45cd5cfc6143c4bf495135e7e66` |
| 12 | `lemma` | [wInner_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-sub-right--b91de524211e5bb9592aa05e.md) | 78 | `result-track:b91de524211e5bb9592aa05e5ec9ecb7994f46526d026c418371e2f9134e9d63` |
| 13 | `lemma` | [wInner_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-of-isempty--28ca9d44831061b21d8b9c8a.md) | 82 | `result-track:28ca9d44831061b21d8b9c8acc469be06e308f3baec4540b855d1c055b1edd4a` |
| 14 | `lemma` | [wInner_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-smul-left--459110e546ac1f0b1331a17a.md) | 85 | `result-track:459110e546ac1f0b1331a17aac10a129b3e279fd78e5b832aa1feb55eaf9851a` |
| 15 | `lemma` | [wInner_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-smul-right--03b27675b312d6fa69ebfc03.md) | 91 | `result-track:03b27675b312d6fa69ebfc0352f69c11096a9873f967e8bed54d3eb973d34f27` |
| 16 | `lemma` | [mul_wInner_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/mul-winner-left--eb9918c9f8e4b3a67f1379ad.md) | 96 | `result-track:eb9918c9f8e4b3a67f1379ad590fc8d9c81ae2958b2a9e3ddb8114a9cc1bfec6` |
| 17 | `lemma` | [wInner_one_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-one-eq-sum--ba7f539c037dafad2da702b3.md) | 99 | `result-track:ba7f539c037dafad2da702b386a6d1f83ffe607d3efea779a0ff344a77086cbe` |
| 18 | `lemma` | [wInner_cWeight_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-cweight-eq-expect--b900a59d5a61c3a5a5f4fa06.md) | 100 | `result-track:b900a59d5a61c3a5a5f4fa062e15f13c0fcb3216dfe0db0eac85fe05aa49323e` |
| 19 | `lemma` | [wInner_const_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-const-left--764913f86065993898608812.md) | 108 | `result-track:764913f860659938986088120bfdcdedca6c4b7b63c0ac9b6e7033709377f2aa` |
| 20 | `lemma` | [wInner_const_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-const-right--3c6484f43805f33750c91d34.md) | 111 | `result-track:3c6484f43805f33750c91d340bc254a438fe1e3bdc82b4041110b6e55b942a7d` |
| 21 | `lemma` | [wInner_one_const_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-one-const-left--569ff6f09ecde59e7a959010.md) | 114 | `result-track:569ff6f09ecde59e7a9590100178ef551723178dc7f42767cfbe62627b16bd6d` |
| 22 | `lemma` | [wInner_one_const_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-one-const-right--9787ac72d2de29867aaf2a57.md) | 117 | `result-track:9787ac72d2de29867aaf2a57c9e7703944e64589e0cc225bcd0b09364e76fa40` |
| 23 | `lemma` | [wInner_cWeight_const_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-cweight-const-left--abac33d65431afeeaa5d62e7.md) | 120 | `result-track:abac33d65431afeeaa5d62e789ad13b81b72c56ad7e91413b4e7550ca5689928` |
| 24 | `lemma` | [wInner_cWeight_const_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-cweight-const-right--e0a64c23b8d5cb14fbaaad55.md) | 123 | `result-track:e0a64c23b8d5cb14fbaaad55e52c30733f1d8a12b70b7a0ce49e0f3b6aa1cec6` |
| 25 | `lemma` | [wInner_one_eq_inner](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-one-eq-inner--095ead39fcb05a1ab2168c8e.md) | 126 | `result-track:095ead39fcb05a1ab2168c8e589d65383ea9caec6e0a5ded2369069767cd5be4` |
| 26 | `lemma` | [inner_eq_wInner_one](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/inner-eq-winner-one--8b5ec0a668aa635b41d15c29.md) | 130 | `result-track:8b5ec0a668aa635b41d15c297003cb6b52329021bfa62b09e844f27f19b4f51c` |
| 27 | `lemma` | [linearIndependent_of_ne_zero_of_wInner_one_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/linearindependent-of-ne-zero-of-winner-one-eq-zero--b41b574b5777952ef5411086.md) | 133 | `result-track:b41b574b5777952ef54110863af9896c86dd809872923735cb19903caabfd1a6` |
| 28 | `lemma` | [linearIndependent_of_ne_zero_of_wInner_cWeight_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/linearindependent-of-ne-zero-of-winner-cweight-eq-zero--f270fc2afbe08f3a380d6cd0.md) | 139 | `result-track:f270fc2afbe08f3a380d6cd024d1a89ecb5601f860b935dd1e7939f0ceda28f5` |
| 29 | `lemma` | [wInner_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/winner-nonneg--2e8b7c8d0a692c3bb295b720.md) | 147 | `result-track:2e8b7c8d0a692c3bb295b720b7632bada2e329d9461e95b43e5309ea4226bb3e` |
| 30 | `lemma` | [norm_wInner_le](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/norm-winner-le--d4eed571f5ba7968eeebf33d.md) | 150 | `result-track:d4eed571f5ba7968eeebf33d4b2dc8bf1a91a8a2666ca1d4ff369a0f1a666f34` |
| 31 | `lemma` | [abs_wInner_le](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/declarations/abs-winner-le--b99d99b0394b50b5f6f7791e.md) | 159 | `result-track:b99d99b0394b50b5f6f7791e70492f2d15406a0add7a1aa5f7e24aaae63a019c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
