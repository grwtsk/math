# Verification target: GRWTSK.Algebra.Localization.Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d47630b9103bcada6637ecd93b0b8734bd7fe2d6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d47630b9103bcada6637ecd93b0b8734bd7fe2d6`.

Source path: `GRWTSK/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.MinimalPrime.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.iUnion_minimalPrimes](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-iunion-minimalprimes--c630405d807bbf2ddc9f3f9e.md) | 45 | `result-track:c630405d807bbf2ddc9f3f9edf4ceec35c8c1d0767043c5b66a097ea941997cb` |
| 2 | `theorem` | [Ideal.exists_mul_mem_of_mem_minimalPrimes](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-exists-mul-mem-of-mem-minimalprimes--ae18a20d3fdcf3011d51aafd.md) | 75 | `result-track:ae18a20d3fdcf3011d51aafd4a5809190d211ec33cbedd566fbc059f34f076d0` |
| 3 | `lemma` | [Ideal.disjoint_nonZeroDivisors_of_mem_minimalPrimes](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-disjoint-nonzerodivisors-of-mem-minimalprimes--1bfe87c640acc8b431a285cb.md) | 88 | `result-track:1bfe87c640acc8b431a285cb2a2023915ce804297b59f51c375ec4fb93360573` |
| 4 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes--fe55724446103a5edcbbe62a.md) | 94 | `result-track:fe55724446103a5edcbbe62ac19b75a0d32fd186c54d12b7d7afd9fac3253ba5` |
| 5 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes-of-injective--97083210eaf47782e5df935f.md) | 100 | `result-track:97083210eaf47782e5df935f7d32ff21613750bd9dca785e94f6cad6411a5121` |
| 6 | `theorem` | [Ideal.exists_minimalPrimes_comap_eq](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-exists-minimalprimes-comap-eq--3f7471778010639a10869824.md) | 107 | `result-track:3f7471778010639a10869824867c45d4af5d30d19cc569b91cc1bfba48585343` |
| 7 | `theorem` | [Ideal.minimalPrimes_comap_subset](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-minimalprimes-comap-subset--8f584ef91b1b3039fe764453.md) | 116 | `result-track:8f584ef91b1b3039fe764453c47d0a38261055b99e237c7ecf4cc336c17c581f` |
| 8 | `theorem` | [Ideal.minimal_primes_comap_of_surjective](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-minimal-primes-comap-of-surjective--e6e63b8b239913cf049ed40b.md) | 126 | `result-track:e6e63b8b239913cf049ed40b9d3e920bfdbe4af807e5bf17d780bed4714b8107` |
| 9 | `theorem` | [Ideal.comap_minimalPrimes_eq_of_surjective](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-comap-minimalprimes-eq-of-surjective--7352eeb45a31487d68bae0e1.md) | 138 | `result-track:7352eeb45a31487d68bae0e1f7b53cc7fcbc98766ad72b1cfff5886a35ae440a` |
| 10 | `lemma` | [Ideal.minimalPrimes_map_of_surjective](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-minimalprimes-map-of-surjective--47dca68eaf4ede19f29824fb.md) | 148 | `result-track:47dca68eaf4ede19f29824fb14c70991138b0dbfd173ba4b3f60ffb4415a4d30` |
| 11 | `theorem` | [Ideal.minimalPrimes_eq_comap](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/ideal-minimalprimes-eq-comap--3a4f214e7e3f6231e244c549.md) | 157 | `result-track:3a4f214e7e3f6231e244c549b7d27db0f5b493a4bc94c920a1a789067aa37629` |
| 12 | `theorem` | [IsLocalization.minimalPrimes_map](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/islocalization-minimalprimes-map--7b1f38d0329bb416801e1d78.md) | 168 | `result-track:7b1f38d0329bb416801e1d7859663f75a8704184fb0d9045ebb9d833708c5d33` |
| 13 | `theorem` | [IsLocalization.minimalPrimes_comap](../../../../mathematics/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/declarations/islocalization-minimalprimes-comap--5c2fefeda29e9b0ff33e3656.md) | 194 | `result-track:5c2fefeda29e9b0ff33e3656ca9cb68525f5ba611dc0851f8311f4d09e1fc571` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
