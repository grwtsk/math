# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePow.Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc3bf8c50a5ad51035deedeb8981cff89a46245d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc3bf8c50a5ad51035deedeb8981cff89a46245d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPrimePow.minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/isprimepow-minfac-pow-factorization-eq--daf9a8c4274cd1d66e9c3635.md) | 30 | `result-track:daf9a8c4274cd1d66e9c3635f6cdd24154d1d914ae3e49aef6dbd3415383d5a3` |
| 2 | `theorem` | [isPrimePow_of_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/isprimepow-of-minfac-pow-factorization-eq--7b898d361279bad3bd8d5b48.md) | 36 | `result-track:7b898d361279bad3bd8d5b4856e5637d515dd1a8251e20102019647c32fb8005` |
| 3 | `theorem` | [isPrimePow_iff_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/isprimepow-iff-minfac-pow-factorization-eq--3ad6040831c6b101d303979a.md) | 43 | `result-track:3ad6040831c6b101d303979a2153b6e2425718e78cf3d17cd78d45598bc441d7` |
| 4 | `theorem` | [isPrimePow_iff_factorization_eq_single](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/isprimepow-iff-factorization-eq-single--e3430af7441beb6475859a71.md) | 47 | `result-track:e3430af7441beb6475859a71c0edf0f14ff48ae1a1bce4ed3355d8ae524b0d12` |
| 5 | `theorem` | [isPrimePow_iff_card_primeFactors_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/isprimepow-iff-card-primefactors-eq-one--0c099c76d8b93867df344265.md) | 62 | `result-track:0c099c76d8b93867df3442659c690480c4768777fc157095580a40c7b203103a` |
| 6 | `theorem` | [Nat.not_isPrimePow_iff_nontrivial_of_two_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/nat-not-isprimepow-iff-nontrivial-of-two-le--424e7afe3da513024b343a99.md) | 67 | `result-track:424e7afe3da513024b343a99d9fd2506f56855da1c65512ef7a7a42022368edd` |
| 7 | `theorem` | [IsPrimePow.exists_ordCompl_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/isprimepow-exists-ordcompl-eq-one--82bb4b3c96fc9cc8b10b4fec.md) | 72 | `result-track:82bb4b3c96fc9cc8b10b4feca8af340cf8b0cace50ddd1372de99eca105a782f` |
| 8 | `theorem` | [exists_ordCompl_eq_one_iff_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/exists-ordcompl-eq-one-iff-isprimepow--5396af654ab9ce5620742d14.md) | 84 | `result-track:5396af654ab9ce5620742d14740a73984ac697b64fb07ed9433ba28703577f73` |
| 9 | `theorem` | [isPrimePow_iff_unique_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/isprimepow-iff-unique-prime-dvd--38ec0662a2507eecf036e74d.md) | 96 | `result-track:38ec0662a2507eecf036e74d0261994cd11d53bef989f94b3f8f6c6e4877cd36` |
| 10 | `theorem` | [isPrimePow_pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/isprimepow-pow-iff--c2f5266b2cafb5e3c9d65ae9.md) | 117 | `result-track:c2f5266b2cafb5e3c9d65ae91101ebe529034b703fd4a6b61a5237a2017ca1e7` |
| 11 | `theorem` | [Nat.Coprime.isPrimePow_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/nat-coprime-isprimepow-dvd-mul--29586d8f950639b971f9f34c.md) | 122 | `result-track:29586d8f950639b971f9f34c9980b5e1699f58353007b0605fa4909ce769b0ee` |
| 12 | `theorem` | [Nat.mul_divisors_filter_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/nat-mul-divisors-filter-prime-pow--9e8c424aa41e36d7fa266849.md) | 143 | `result-track:9e8c424aa41e36d7fa266849c0f93c056d6a596332aae91756202c5387a3dcc7` |
| 13 | `def` | [Nat.Primes.prodNatEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/nat-primes-prodnatequiv--db669491675f5d0049c7406a.md) | 159 | `declaration-track:db669491675f5d0049c7406a1d1071f84988188c015277b5eb1b9054d9ed94a5` |
| 14 | `lemma` | [Nat.Primes.prodNatEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/nat-primes-prodnatequiv-apply--4e869ba33f3a55bfdfc1f49b.md) | 175 | `result-track:4e869ba33f3a55bfdfc1f49b4fd3181dce7c9a2b783e73e7e1dd5d6ae2cd6f00` |
| 15 | `lemma` | [Nat.Primes.coe_prodNatEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/nat-primes-coe-prodnatequiv-apply--69cfba635fda72242f4ce00e.md) | 180 | `result-track:69cfba635fda72242f4ce00e8cf550c999aa629ebfba524409f4d3b37046a75b` |
| 16 | `lemma` | [Nat.Primes.prodNatEquiv_symm_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/nat-primes-prodnatequiv-symm-apply--12ff93f6bb19625110d400de.md) | 185 | `result-track:12ff93f6bb19625110d400de7ba2a2bded6c4fc684c1c3fa42b69ca7db1c285e` |
| 17 | `theorem` | [exponent_eq_exponent_mul_factorization_of_prime_pow_eq_base_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/exponent-eq-exponent-mul-factorization-of-prime-pow-eq-base-pow--bbf3d16c6a69a02277608bb4.md) | 196 | `result-track:bbf3d16c6a69a02277608bb40deb92c424343359832efb489db6e2a2eb0be252` |
| 18 | `theorem` | [exponent_dvd_of_prime_pow_eq_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/exponent-dvd-of-prime-pow-eq-pow--b1141dcbb2e23c31668be23d.md) | 202 | `result-track:b1141dcbb2e23c31668be23d955e8e183e20afe83b5be8f8128c2078458e9c25` |
| 19 | `theorem` | [exists_base_eq_prime_pow_of_prime_pow_eq_base_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/declarations/exists-base-eq-prime-pow-of-prime-pow-eq-base-pow--fbc6af617bb4b3d0cda523c9.md) | 207 | `result-track:fbc6af617bb4b3d0cda523c9f9acbdd1d0ff8f5107b5a4f981b4fa1e56f1798b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
