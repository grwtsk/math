# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePow.Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cba15267ae805b5efee25b2e26e50ef96b99106b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cba15267ae805b5efee25b2e26e50ef96b99106b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Pow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPrimePow.minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/isprimepow-minfac-pow-factorization-eq--0db944f87c5276d72453efe5.md) | 26 | `result-track:0db944f87c5276d72453efe540fd06632b482bf72503f7bbd5491f7370fab282` |
| 2 | `theorem` | [isPrimePow_of_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/isprimepow-of-minfac-pow-factorization-eq--2696231c80b09ac1bf931f8c.md) | 32 | `result-track:2696231c80b09ac1bf931f8cc637b6ba3d6750dd882d95c76ed81d6b4f50d1bf` |
| 3 | `theorem` | [isPrimePow_iff_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/isprimepow-iff-minfac-pow-factorization-eq--95139ee14c3f88d272de8584.md) | 40 | `result-track:95139ee14c3f88d272de85841be130cf1ebc863c790f128b15298537da04866b` |
| 4 | `theorem` | [isPrimePow_iff_factorization_eq_single](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/isprimepow-iff-factorization-eq-single--466da309eaadd01cdb0ad641.md) | 44 | `result-track:466da309eaadd01cdb0ad6410fbe56da972017d026ff731be8e071249afa4c13` |
| 5 | `theorem` | [isPrimePow_iff_card_primeFactors_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/isprimepow-iff-card-primefactors-eq-one--d4223c516f0890a0b3f6eae7.md) | 59 | `result-track:d4223c516f0890a0b3f6eae7145edf064a2e7129714468ece636176f32e0bdfa` |
| 6 | `theorem` | [IsPrimePow.exists_ordCompl_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/isprimepow-exists-ordcompl-eq-one--ded40d50050d54e2f5a1c970.md) | 64 | `result-track:ded40d50050d54e2f5a1c970c71b376994be3ed93d38d996e3c1b37e4f4b7e50` |
| 7 | `theorem` | [exists_ordCompl_eq_one_iff_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/exists-ordcompl-eq-one-iff-isprimepow--71d2dcab4f7bf55ca59a4127.md) | 79 | `result-track:71d2dcab4f7bf55ca59a4127ce8b772f7a6fa0d4dc166fc1fcd9c00348b423d5` |
| 8 | `theorem` | [isPrimePow_iff_unique_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/isprimepow-iff-unique-prime-dvd--bdfef49041062cd55a24b134.md) | 94 | `result-track:bdfef49041062cd55a24b134a5d3cf4370f3433391889653786a8bc6747f0472` |
| 9 | `theorem` | [isPrimePow_pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/isprimepow-pow-iff--85cd5f3383920ac704ea3969.md) | 115 | `result-track:85cd5f3383920ac704ea39697ae5210dc73c172f34b351a52deba9a2f98fdc7b` |
| 10 | `theorem` | [Nat.Coprime.isPrimePow_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/nat-coprime-isprimepow-dvd-mul--ad2a318c87a3183e9198856b.md) | 122 | `result-track:ad2a318c87a3183e9198856bef4ef1273973b56bb7037122a3d01923f5d888b3` |
| 11 | `theorem` | [Nat.mul_divisors_filter_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/nat-mul-divisors-filter-prime-pow--cb9bb060e9e41787bd05d401.md) | 145 | `result-track:cb9bb060e9e41787bd05d40132db3c92cda16171cc3bddc41f3dcf6fa1743e03` |
| 12 | `lemma` | [IsPrimePow.factorization_minFac_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/isprimepow-factorization-minfac-ne-zero--d10c52f36eea2b526f7dd248.md) | 158 | `result-track:d10c52f36eea2b526f7dd2480a8b40819edbe6e0b10c03b3ae7f6ed372f10a5b` |
| 13 | `def` | [Nat.Primes.prodNatEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/nat-primes-prodnatequiv--c638def40e2d43a3106b4cc0.md) | 166 | `declaration-track:c638def40e2d43a3106b4cc0cf75229c47e033bd79651f67480acf3280a0246b` |
| 14 | `lemma` | [Nat.Primes.prodNatEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/nat-primes-prodnatequiv-apply--089959c2e5455b2d6755609c.md) | 181 | `result-track:089959c2e5455b2d6755609c7a8fc7776839f6cf26835101f267af095bcf927f` |
| 15 | `lemma` | [Nat.Primes.coe_prodNatEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/nat-primes-coe-prodnatequiv-apply--0649c9b47ac237b81555893a.md) | 186 | `result-track:0649c9b47ac237b81555893acb78f6bfb1b8f180153d6d8159bc52d5ed125e1f` |
| 16 | `lemma` | [Nat.Primes.prodNatEquiv_symm_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/declarations/nat-primes-prodnatequiv-symm-apply--49b617e0f3e7b30a63b34eef.md) | 191 | `result-track:49b617e0f3e7b30a63b34eef07e4e7e23f33146da50fcdeeee05b22f0b9fd261` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
