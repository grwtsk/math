# Verification target: GRWTSK.Algebra.LinearAlgebra.ThetaJacobiRecurrence.Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa61d530af43b55638a986e9524f5812aece71c1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa61d530af43b55638a986e9524f5812aece71c1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaJacobiUnitary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplicationMap](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/multiplicationmap--9a2d83760fbd4ec127782f3e.md) | 32 | `declaration-track:9a2d83760fbd4ec127782f3eace1c4268007d63475b25b789a25f9b6d7c4b116` |
| 2 | `theorem` | [multiplicationMap_formalAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/multiplicationmap-formaladjoint--1aee56dd6ea2c967e8d61560.md) | 37 | `result-track:1aee56dd6ea2c967e8d61560151b3129dd18faf76fe4033edb7361f4f8e26684` |
| 3 | `theorem` | [multiplicationMap_powerVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/multiplicationmap-powervector--8d9ddfdb60276941cf9be654.md) | 44 | `result-track:8d9ddfdb60276941cf9be6547b221ddafa201e33a47ba878c6ae34b6ae725cfa` |
| 4 | `def` | [polynomialFlag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/polynomialflag--bcb9bde9872f92c333b127d1.md) | 49 | `declaration-track:bcb9bde9872f92c333b127d13af6c6bc1838840ba4aa6471c4277396e6ac3e75` |
| 5 | `theorem` | [polynomialFlag_le_domain](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/polynomialflag-le-domain--f5ea6f2fb52053aa1c3bd2fc.md) | 54 | `result-track:f5ea6f2fb52053aa1c3bd2fc8ad46b69d8af75cd8c660238c135dd2d4653bbcf` |
| 6 | `def` | [monicVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/monicvector--99eff7c2ff0d26fe1627e6a4.md) | 61 | `declaration-track:99eff7c2ff0d26fe1627e6a4043a88de31ac0611706f97a01183cbf2217570ff` |
| 7 | `theorem` | [monicVector_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/monicvector-ne-zero--b8c7bb24643eaef17eec6d5a.md) | 65 | `result-track:b8c7bb24643eaef17eec6d5a1c4b1131b476d0d9100524c5bcf6eb525d1337d5` |
| 8 | `theorem` | [monicVector_norm_pos](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/monicvector-norm-pos--e695f560a6ecabd598bfcf9f.md) | 70 | `result-track:e695f560a6ecabd598bfcf9fb51f7e99f78736197d2f6fc5cbea2ee8b9caccef` |
| 9 | `theorem` | [monicVector_mem_flag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/monicvector-mem-flag--a568f08e1fd0e353360ed358.md) | 74 | `result-track:a568f08e1fd0e353360ed358eef446f72f34a699a978f82e9487a6ae5d5d3a7f` |
| 10 | `theorem` | [orthogonalPolynomial_mem_flag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/orthogonalpolynomial-mem-flag--b32cf39ca35b57126bc81829.md) | 79 | `result-track:b32cf39ca35b57126bc8182931c1158870de93daae62f8ba854dec657e3efb3e` |
| 11 | `theorem` | [orthogonalPolynomial_mem_domain](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/orthogonalpolynomial-mem-domain--ca6efc98126504005b90b750.md) | 84 | `result-track:ca6efc98126504005b90b7505a9a8223ccc67eb3fc677fd89127477602422f37` |
| 12 | `theorem` | [monicVector_inner_flag_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/monicvector-inner-flag-eq-zero--2ecb9d0ef6ca402d5f7efcf9.md) | 89 | `result-track:2ecb9d0ef6ca402d5f7efcf92e53ffacb50a89bf414f09454bb49811147d6bc9` |
| 13 | `theorem` | [orthogonalPolynomial_inner_flag_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/orthogonalpolynomial-inner-flag-eq-zero--ad6683cb2a3d0c84501553c4.md) | 99 | `result-track:ad6683cb2a3d0c84501553c4521de37c556bc4caecf0a1d9629c5b5f6c262cbe` |
| 14 | `def` | [domainFlag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/domainflag--cf259a01f3a07728cad8967c.md) | 106 | `declaration-track:cf259a01f3a07728cad8967ca8495d2f7abdae2d0a32e2e516718d8b44ea01df` |
| 15 | `theorem` | [domainFlag_map_subtype](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/domainflag-map-subtype--ccbe311bd6ab7fcc51fe4be8.md) | 111 | `result-track:ccbe311bd6ab7fcc51fe4be8e0c091152b6f85f332655dc6c9b811ba6d5aa3ca` |
| 16 | `theorem` | [multiplication_flag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/multiplication-flag--a88dbac3f03301d212479d60.md) | 118 | `result-track:a88dbac3f03301d212479d60a23c1f22c3b087df3740be82fcf6a366f11afa23` |
| 17 | `def` | [basisDomainVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/basisdomainvector--8ebaec90901f556d15fae707.md) | 138 | `declaration-track:8ebaec90901f556d15fae707fe022460e53a0d5b88c9e91e586039a4e789b137` |
| 18 | `theorem` | [upper_band_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/upper-band-zero--8b43919ae47e716ff0a93e69.md) | 142 | `result-track:8b43919ae47e716ff0a93e69ab72f191febce259cad020c292777108212fa01f` |
| 19 | `theorem` | [lower_band_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/lower-band-zero--63a9af639d7b5edb1ffbc43c.md) | 149 | `result-track:63a9af639d7b5edb1ffbc43caf74f9626023da2bb6bf77ac8f3d34c252e46794` |
| 20 | `def` | [monicDomainVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/monicdomainvector--191bbbaf051ae0d04d6d519a.md) | 158 | `declaration-track:191bbbaf051ae0d04d6d519aecfcb279a2397961ebd36587f0b5604a1b3fcdbb` |
| 21 | `theorem` | [monicVector_inner_power](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/monicvector-inner-power--7a9dd1fcaaed2d7d0f3a9bdd.md) | 162 | `result-track:7a9dd1fcaaed2d7d0f3a9bddf4dac97868e9fb5c61ccac59aefb36a41f81c18f` |
| 22 | `theorem` | [powerDomain_monic_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/powerdomain-monic-decomposition--6de6cb0fe3f154c2b30bf6c5.md) | 187 | `result-track:6de6cb0fe3f154c2b30bf6c5dda533ad0af41eca087a14c71842b7d5bade42d8` |
| 23 | `theorem` | [monicVector_inner_multiplication](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/monicvector-inner-multiplication--d4ba09ab1fa1cdf359bebf72.md) | 198 | `result-track:d4ba09ab1fa1cdf359bebf727277427ad1ae637330b9f371ce9e073c7d881d73` |
| 24 | `def` | [hopping](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/hopping--6116cb97fe82bf1fc368fc52.md) | 220 | `declaration-track:6116cb97fe82bf1fc368fc52797ed36e1bc297d1d62aced9618381b976496e36` |
| 25 | `theorem` | [hopping_positive](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/hopping-positive--2464878f9aea38b222ef60f6.md) | 224 | `result-track:2464878f9aea38b222ef60f6947430ae6645cc99c93bce970a30908fb84c2af9` |
| 26 | `theorem` | [upper_hopping_coefficient](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/upper-hopping-coefficient--238c7f51e107c4b94ddc7f57.md) | 228 | `result-track:238c7f51e107c4b94ddc7f57e5ecfcb81bbf2a691af630316a2a7b7478e8dece` |
| 27 | `theorem` | [lower_hopping_coefficient](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/lower-hopping-coefficient--42dd9ed42b9b989f7048def7.md) | 247 | `result-track:42dd9ed42b9b989f7048def725d6c36b3f3c92dbdee54b4ed4a98a6ba45a8690` |
| 28 | `def` | [diagonal](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/diagonal--e5269524356f2e9417dad1d8.md) | 259 | `declaration-track:e5269524356f2e9417dad1d87a292d8a34ec803f2560abc7b34b5fe1b2af3ef6` |
| 29 | `theorem` | [diagonal_coefficient](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/diagonal-coefficient--bb41938a27630b346df116da.md) | 264 | `result-track:bb41938a27630b346df116da420ad7226e93c8361b2eb7b55d299573210ec56c` |
| 30 | `theorem` | [multiplication_basis_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/multiplication-basis-zero--5040cf8a3b7f57b6f2ea7820.md) | 280 | `result-track:5040cf8a3b7f57b6f2ea78204687734b52175e093b350fb4c5dfa7212032006a` |
| 31 | `theorem` | [multiplication_basis_succ](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/multiplication-basis-succ--4c668cedba1cb1f8aa9e3f5b.md) | 302 | `result-track:4c668cedba1cb1f8aa9e3f5b050285bcc29b962b9d09f38e00c2597f29e100a6` |
| 32 | `theorem` | [standardVector_mem_jacobiDomain](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/standardvector-mem-jacobidomain--8459ca34e6c143aa88eaa773.md) | 332 | `result-track:8459ca34e6c143aa88eaa773da236a25f3673890103a1573813d386cdbf5e7c4` |
| 33 | `def` | [standardDomainVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/standarddomainvector--39f9331228d3f042a9fd3aca.md) | 338 | `declaration-track:39f9331228d3f042a9fd3acaaf69e13e7cb5ef89b4da3339fe7b8582e7104f8c` |
| 34 | `theorem` | [domainUnitary_standardVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/domainunitary-standardvector--54ad9c2fec36ae04dfd3a2f4.md) | 342 | `result-track:54ad9c2fec36ae04dfd3a2f44f6304316bc970766a606239ce263acce99af226` |
| 35 | `theorem` | [jacobiOperator_standard_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/jacobioperator-standard-zero--08808009868e0c698e37dbbe.md) | 348 | `result-track:08808009868e0c698e37dbbec7e42cba0d0d3e6160dfeee6cd182a5e12f72ed2` |
| 36 | `theorem` | [jacobiOperator_standard_succ](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/declarations/jacobioperator-standard-succ--ed0abd94a5636ae778885ed3.md) | 358 | `result-track:ed0abd94a5636ae778885ed38e035cb06c9931158db6004b1f6f14f0ff0f6fbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
