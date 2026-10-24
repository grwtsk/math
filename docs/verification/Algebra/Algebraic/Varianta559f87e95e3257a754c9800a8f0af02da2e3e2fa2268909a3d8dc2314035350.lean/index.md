# Verification target: GRWTSK.Algebra.Algebraic.Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "018a1223267835ca45d23b5cc9f0b3125ebd3006",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `018a1223267835ca45d23b5cc9f0b3125ebd3006`.

Source path: `GRWTSK/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.IntegralNormalization` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAlgebraic](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic--a937fdd4f5eb707365b88a40.md) | 32 | `declaration-track:a937fdd4f5eb707365b88a40a732f35dfcd493387d51881c31a85cfe776ae494` |
| 2 | `def` | [Transcendental](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/transcendental--8dc89f127bb7414c4e6cc577.md) | 37 | `declaration-track:8dc89f127bb7414c4e6cc577328005b2b5bf0de2cc66ae90cecac6d30d5dd9aa` |
| 3 | `theorem` | [is_transcendental_of_subsingleton](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/is-transcendental-of-subsingleton--36ffc56a1696609becc7ae22.md) | 41 | `result-track:36ffc56a1696609becc7ae221ac19045585258ee7de29864f875106a3d334cf8` |
| 4 | `def` | [Subalgebra.IsAlgebraic](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/subalgebra-isalgebraic--d318aa0e89fd1acd4a078ad0.md) | 49 | `declaration-track:d318aa0e89fd1acd4a078ad0745e73bf413df1415a77321df969e2ef4fc86512` |
| 5 | `def` | [Algebra.IsAlgebraic](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algebra-isalgebraic--7be3cb488d1029c7e47406c8.md) | 57 | `declaration-track:7be3cb488d1029c7e47406c84eddfd8958f06d3962f905f75a6d12c51c106199` |
| 6 | `theorem` | [Subalgebra.isAlgebraic_iff](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/subalgebra-isalgebraic-iff--0f5c73c7c98d70d179e465d9.md) | 64 | `result-track:0f5c73c7c98d70d179e465d997cfa90ecf2196a79dd7041a2f19285f32388022` |
| 7 | `theorem` | [Algebra.isAlgebraic_iff](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algebra-isalgebraic-iff--963cd6a4992a5ad1639aa247.md) | 75 | `result-track:963cd6a4992a5ad1639aa2474326b2ea2b43cd3d3ce0e47b0d75fca1a8fac03a` |
| 8 | `theorem` | [isAlgebraic_iff_not_injective](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-iff-not-injective--e23fe00081b0340ef9c8df4c.md) | 80 | `result-track:e23fe00081b0340ef9c8df4c93cde98210b5036d38bbfbf41fcb594846e12ce6` |
| 9 | `theorem` | [IsIntegral.isAlgebraic](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isintegral-isalgebraic--2459e9c9048a3b65428c05e1.md) | 96 | `result-track:2459e9c9048a3b65428c05e1cbff0c4a10f89ef3653ece3cd747d2aca36e6c16` |
| 10 | `theorem` | [isAlgebraic_zero](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-zero--e383ff57b9e99ca7efba05b8.md) | 102 | `result-track:e383ff57b9e99ca7efba05b8c3a575d63dafb73d3293feb6510e17ecb399de78` |
| 11 | `theorem` | [isAlgebraic_algebraMap](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-algebramap--988d0efdbd9cf80f2e4db587.md) | 107 | `result-track:988d0efdbd9cf80f2e4db5878df59f6e7e37843aa534acd10e9953afd615e64b` |
| 12 | `theorem` | [isAlgebraic_one](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-one--d374cca0cfcb170bb0cf1cd9.md) | 111 | `result-track:d374cca0cfcb170bb0cf1cd95886d123493fd90b1d8855b9e48a80c446a9275e` |
| 13 | `theorem` | [isAlgebraic_nat](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-nat--0a0ac7f9a1984c98d423994a.md) | 116 | `result-track:0a0ac7f9a1984c98d423994aa617b713a4f754075eaabf018942a2406612c719` |
| 14 | `theorem` | [isAlgebraic_int](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-int--ad3cfebcee9f3e4bec0fbdfe.md) | 121 | `result-track:ad3cfebcee9f3e4bec0fbdfe69389c95acc5cca31c2061906c2ca94c25512357` |
| 15 | `theorem` | [isAlgebraic_rat](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-rat--a1bd659678ef6bff12f9c2e5.md) | 126 | `result-track:a1bd659678ef6bff12f9c2e5ee84eab44bfec697087efd135e0700049b5468c1` |
| 16 | `theorem` | [isAlgebraic_of_mem_rootSet](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-of-mem-rootset--7eebf436517a5c98093b3121.md) | 132 | `result-track:7eebf436517a5c98093b312166ed21df86bee253fe9d3c54782ca458b7708f09` |
| 17 | `theorem` | [isAlgebraic_algebraMap_of_isAlgebraic](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-algebramap-of-isalgebraic--f7392d298fb96841bb3ded67.md) | 139 | `result-track:f7392d298fb96841bb3ded676b90ac4d03b902be2e72f4db3c96a2c07b142db6` |
| 18 | `theorem` | [isAlgebraic_algHom_of_isAlgebraic](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-alghom-of-isalgebraic--4851d253889fd3604f9982ae.md) | 146 | `result-track:4851d253889fd3604f9982aeeea376c8864acfdc03a7e9a1a12b2303658b2fa5` |
| 19 | `theorem` | [AlgEquiv.isAlgebraic](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algequiv-isalgebraic--828ead024367af61930f80b0.md) | 153 | `result-track:828ead024367af61930f80b0b9e353218e3901447a00bad550ba8a42c584b549` |
| 20 | `theorem` | [AlgEquiv.isAlgebraic_iff](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algequiv-isalgebraic-iff--6eaf97be4371262d779e26d1.md) | 158 | `result-track:6eaf97be4371262d779e26d1beb5ab62dd3a36cceec3c0758e4cf65142eb25bf` |
| 21 | `theorem` | [isAlgebraic_algebraMap_iff](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-algebramap-iff--5e8b3f238a3dea958ca1c803.md) | 163 | `result-track:5e8b3f238a3dea958ca1c803811a79696db81cfe6a4943913ce9e0999fab65f4` |
| 22 | `theorem` | [isAlgebraic_of_pow](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-of-pow--b99e63e37f2a311fc2790e0d.md) | 169 | `result-track:b99e63e37f2a311fc2790e0dc50b4333159afd0557696243ab7f1431175d9125` |
| 23 | `theorem` | [Transcendental.pow](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/transcendental-pow--d9f55b9bc6466001eb5e4055.md) | 177 | `result-track:d9f55b9bc6466001eb5e4055c52ffee14d933b5efc42d096952abdebf5d0f6c4` |
| 24 | `theorem` | [isAlgebraic_iff_isIntegral](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-iff-isintegral--749eb74c7acb56e760e82596.md) | 188 | `result-track:749eb74c7acb56e760e825963469496199f20826620897179ff194d6857046ce` |
| 25 | `theorem` | [Algebra.isAlgebraic_iff_isIntegral](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algebra-isalgebraic-iff-isintegral--ac23736f8b0f601336347593.md) | 195 | `result-track:ac23736f8b0f6013363475936747d97b81ffce701265a9ea8db890f6d9080dd2` |
| 26 | `theorem` | [isAlgebraic_of_larger_base_of_injective](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-of-larger-base-of-injective--e94f84b0aaa52bca14d9dfab.md) | 216 | `result-track:e94f84b0aaa52bca14d9dfabda09edb798d3d1ea09f2b9973d843c375d30da21` |
| 27 | `theorem` | [Algebra.isAlgebraic_of_larger_base_of_injective](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algebra-isalgebraic-of-larger-base-of-injective--15a808489eb1f75b46576270.md) | 226 | `result-track:15a808489eb1f75b465762705bed0f26677e1da79f5d03ec6b4d138e979fd4ee` |
| 28 | `theorem` | [isAlgebraic_of_larger_base](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-of-larger-base--9abf0d952bf0445f883a6acd.md) | 242 | `result-track:9abf0d952bf0445f883a6acd82cf84406e26a001931b6e91e04e0bd856bec257` |
| 29 | `theorem` | [Algebra.isAlgebraic_of_larger_base](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algebra-isalgebraic-of-larger-base--f2fc61921d85a6c62c29c450.md) | 248 | `result-track:f2fc61921d85a6c62c29c450e4c72d1cdd39fc6afbe4e1fc6ff12cd4ccab9994` |
| 30 | `theorem` | [isAlgebraic_of_finite](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isalgebraic-of-finite--063699dba80df77f17cfc968.md) | 254 | `result-track:063699dba80df77f17cfc9688d6701efa23d25aac89375d29f2a6505b9bbb1e0` |
| 31 | `theorem` | [Algebra.isAlgebraic_of_finite](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algebra-isalgebraic-of-finite--be41931d5d492e8374a4fd2f.md) | 260 | `result-track:be41931d5d492e8374a4fd2f8e481e43f7f412e03ca27d8e7837889e7eff747a` |
| 32 | `theorem` | [Algebra.isAlgebraic_trans](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algebra-isalgebraic-trans--2193cda57b355f657658a304.md) | 276 | `result-track:2193cda57b355f657658a304dc92919e1ed6512be91572c4926a2a351d491801` |
| 33 | `theorem` | [Algebra.IsAlgebraic.algHom_bijective](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algebra-isalgebraic-alghom-bijective--6046499c8d3446caed030a95.md) | 290 | `result-track:6046499c8d3446caed030a9591e9d7ffd6a7e9dd60591c111833779033e7a389` |
| 34 | `theorem` | [AlgHom.bijective](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/alghom-bijective--deb4cd14573cf5d32b569ca8.md) | 302 | `result-track:deb4cd14573cf5d32b569ca8869005aa3dd7599b2e765e0adf1a2f1090b83d6e` |
| 35 | `def` | [Algebra.IsAlgebraic.algEquivEquivAlgHom](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algebra-isalgebraic-algequivequivalghom--e0e868df4087961d487dba57.md) | 310 | `declaration-track:e0e868df4087961d487dba5734f1bdcc4d0ac86e6b8dfc484b943bd4898a9e1c` |
| 36 | `def` | [algEquivEquivAlgHom](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/algequivequivalghom--1629e04b78d40ad0dadc684d.md) | 325 | `declaration-track:1629e04b78d40ad0dadc684d16b7b0e7defbefa96b1c4f753fa77181bccfe1d2` |
| 37 | `theorem` | [exists_integral_multiple](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/exists-integral-multiple--a7e43320b603f86e5d69b725.md) | 336 | `result-track:a7e43320b603f86e5d69b7254cd7b341c8bddc5fff597dc0fe422a30a69e24cc` |
| 38 | `theorem` | [IsIntegralClosure.exists_smul_eq_mul](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/isintegralclosure-exists-smul-eq-mul--1ac3e9639d1364510d8cd4d7.md) | 350 | `result-track:1ac3e9639d1364510d8cd4d79f7cfbba95d8d759cb642d67c93e59cbd6135358` |
| 39 | `theorem` | [inv_eq_of_aeval_divX_ne_zero](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/inv-eq-of-aeval-divx-ne-zero--98cc127d0983f6f53406ba63.md) | 369 | `result-track:98cc127d0983f6f53406ba63ed8daf374e81307d28546eed4b0b470808b1bc4c` |
| 40 | `theorem` | [inv_eq_of_root_of_coeff_zero_ne_zero](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/inv-eq-of-root-of-coeff-zero-ne-zero--bf4ea63f14f0e4c6624541b6.md) | 378 | `result-track:bf4ea63f14f0e4c6624541b6e13129077762e12a62bced830598fcfd243e13c8` |
| 41 | `theorem` | [Subalgebra.inv_mem_of_root_of_coeff_zero_ne_zero](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/subalgebra-inv-mem-of-root-of-coeff-zero-ne-zero--6ddfa2ead19664e2f526747e.md) | 389 | `result-track:6ddfa2ead19664e2f526747e9a98b5d9873464685e187524f850a6fcbce0d39f` |
| 42 | `theorem` | [Subalgebra.inv_mem_of_algebraic](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/subalgebra-inv-mem-of-algebraic--39cd3a84007da2aa053b9718.md) | 402 | `result-track:39cd3a84007da2aa053b971877d1f7fcc4b22bef968f910b9284c78775dac45e` |
| 43 | `theorem` | [Subalgebra.isField_of_algebraic](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/subalgebra-isfield-of-algebraic--fdb1afc4a673e130d8f49bfd.md) | 422 | `result-track:fdb1afc4a673e130d8f49bfd79d8f96a69bde07a58793ebb4baa011271fb0a25` |
| 44 | `def` | [Polynomial.hasSMulPi](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/polynomial-hassmulpi--c9d1b953010bf19feb576991.md) | 438 | `declaration-track:c9d1b953010bf19feb576991df4dfff0ce3c905aeaf709c1635c3c2f17b51b33` |
| 45 | `def` | [Polynomial.hasSMulPi'](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/polynomial-hassmulpi--2d9078d4dc85fe4dec335552.md) | 445 | `declaration-track:2d9078d4dc85fe4dec335552310f2df2dbb3839db1b0f45ba671ea2769c120a8` |
| 46 | `theorem` | [polynomial_smul_apply](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/polynomial-smul-apply--5a1e4bbc1b2b82fcbdb60298.md) | 453 | `result-track:5a1e4bbc1b2b82fcbdb6029891f19fcc36166ea12a7e261d149ce53334faa2b4` |
| 47 | `theorem` | [polynomial_smul_apply'](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/polynomial-smul-apply--8a995c4ed777bb19683819b4.md) | 459 | `result-track:8a995c4ed777bb19683819b4442d89adeed6fd658936a9c7a0b27554b4094f9b` |
| 48 | `def` | [Polynomial.algebraPi](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/polynomial-algebrapi--808418bc13ceee38bfa2f46f.md) | 469 | `declaration-track:808418bc13ceee38bfa2f46fdf0985ed3ecc47a4790894d4270de69745ab75f6` |
| 49 | `theorem` | [Polynomial.algebraMap_pi_eq_aeval](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/polynomial-algebramap-pi-eq-aeval--5010b4d31703a3d92ec850e8.md) | 496 | `result-track:5010b4d31703a3d92ec850e823a89bccdbd97a66033be18a5fe89ab35ad75e52` |
| 50 | `theorem` | [Polynomial.algebraMap_pi_self_eq_eval](../../../../mathematics/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/declarations/polynomial-algebramap-pi-self-eq-eval--e0385b6df4540bbfa7f145f8.md) | 502 | `result-track:e0385b6df4540bbfa7f145f8efe97fc86bea0d8f974eea0c40d198507a47d1e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
