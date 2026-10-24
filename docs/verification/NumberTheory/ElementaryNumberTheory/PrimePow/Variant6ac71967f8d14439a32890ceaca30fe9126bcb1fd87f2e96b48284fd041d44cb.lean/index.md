# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePow.Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a12b1363a6e2b7473a1a6ca7ff0b1003706dd570",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a12b1363a6e2b7473a1a6ca7ff0b1003706dd570`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean.json)

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
| 1 | `theorem` | [IsPrimePow.minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/isprimepow-minfac-pow-factorization-eq--808c893d1fde1b126e28cabc.md) | 22 | `result-track:808c893d1fde1b126e28cabc9891d960db6de4dba5baa0b66016fa0c70558249` |
| 2 | `theorem` | [isPrimePow_of_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/isprimepow-of-minfac-pow-factorization-eq--db508ed9ed9bd4dae1987b6c.md) | 28 | `result-track:db508ed9ed9bd4dae1987b6cf9832a789c125a41da9108ff94a4d096faf382a6` |
| 3 | `theorem` | [isPrimePow_iff_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/isprimepow-iff-minfac-pow-factorization-eq--ad889c0c3e526254f6077d4f.md) | 35 | `result-track:ad889c0c3e526254f6077d4ff1c13ef256d10b657ff47c5d309f2c40302ff81c` |
| 4 | `theorem` | [isPrimePow_iff_factorization_eq_single](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/isprimepow-iff-factorization-eq-single--5c9de8e31870ee91e09b003d.md) | 39 | `result-track:5c9de8e31870ee91e09b003d46de418104bbccb773b726d1d4da00a1333588dd` |
| 5 | `theorem` | [isPrimePow_iff_card_primeFactors_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/isprimepow-iff-card-primefactors-eq-one--5eff4560697f92ee6598c8df.md) | 54 | `result-track:5eff4560697f92ee6598c8dfe25367ee198be2eb61251709fb73075ea0f14b9d` |
| 6 | `theorem` | [Nat.not_isPrimePow_iff_nontrivial_of_two_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/nat-not-isprimepow-iff-nontrivial-of-two-le--9b23e9ad9b4f3347f0e23f4e.md) | 59 | `result-track:9b23e9ad9b4f3347f0e23f4ef5847b1f9cfeeef5d5b56039094fc24406048c0a` |
| 7 | `theorem` | [IsPrimePow.exists_ordCompl_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/isprimepow-exists-ordcompl-eq-one--6ad8616b344d09f919c2c113.md) | 64 | `result-track:6ad8616b344d09f919c2c113cd3fbc4f864a787a443695916552603e221daca7` |
| 8 | `theorem` | [exists_ordCompl_eq_one_iff_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/exists-ordcompl-eq-one-iff-isprimepow--40953262e0f1136cdbc29aaf.md) | 76 | `result-track:40953262e0f1136cdbc29aafe48752069bc9de03cf5812bc73b17abe135e48b9` |
| 9 | `theorem` | [isPrimePow_iff_unique_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/isprimepow-iff-unique-prime-dvd--7a2465d4d06b6d0d8fe2fff6.md) | 88 | `result-track:7a2465d4d06b6d0d8fe2fff6a0c4f2fbd158976b14b4633a71b5007e096b2df0` |
| 10 | `theorem` | [isPrimePow_pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/isprimepow-pow-iff--8c9fd4ae4a5defafce21652f.md) | 109 | `result-track:8c9fd4ae4a5defafce21652f28b5486fba7b02e0ca7103e0ec5bf22d0cf9b86c` |
| 11 | `theorem` | [Nat.Coprime.isPrimePow_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/nat-coprime-isprimepow-dvd-mul--acec366ef30dcf6daf54a15b.md) | 114 | `result-track:acec366ef30dcf6daf54a15bd9930c5d59156da95d5eaa9dd59d73e45304b9a7` |
| 12 | `theorem` | [Nat.mul_divisors_filter_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/nat-mul-divisors-filter-prime-pow--d65becc9a023e998d9e3bcb8.md) | 135 | `result-track:d65becc9a023e998d9e3bcb81453ce594a075ac201f418635b06598fde85ad0c` |
| 13 | `def` | [Nat.Primes.prodNatEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/nat-primes-prodnatequiv--856999808709f09c5a78586d.md) | 151 | `declaration-track:856999808709f09c5a78586da8f4cd4ddfa93b2710b490ce940097e3fdca66fa` |
| 14 | `lemma` | [Nat.Primes.prodNatEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/nat-primes-prodnatequiv-apply--1e26a92e2a7c5a506a24cca0.md) | 167 | `result-track:1e26a92e2a7c5a506a24cca067c09c135c69a8941b5d917412cc197634310826` |
| 15 | `lemma` | [Nat.Primes.coe_prodNatEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/nat-primes-coe-prodnatequiv-apply--a4cd25416717e57ef3be7d74.md) | 172 | `result-track:a4cd25416717e57ef3be7d7412a685bd0a2116d6b60c65565003ede8dfcfc9e5` |
| 16 | `lemma` | [Nat.Primes.prodNatEquiv_symm_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/nat-primes-prodnatequiv-symm-apply--8ac4d6c747b9521f01bc8e08.md) | 177 | `result-track:8ac4d6c747b9521f01bc8e0850b80057d0f651e2caa5de215b9228c7ec80d255` |
| 17 | `theorem` | [exponent_eq_exponent_mul_factorization_of_prime_pow_eq_base_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/exponent-eq-exponent-mul-factorization-of-prime-pow-eq-base-pow--1c7c9d1b98d71d87c797ebf4.md) | 188 | `result-track:1c7c9d1b98d71d87c797ebf40942b07546207e7e8c4b8d3689b65654c0d1427f` |
| 18 | `theorem` | [exponent_dvd_of_prime_pow_eq_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/exponent-dvd-of-prime-pow-eq-pow--43cb194d3ba634b055886b99.md) | 194 | `result-track:43cb194d3ba634b055886b995194817fdb1bf35fae6e5fe14811c02a7cf54efd` |
| 19 | `theorem` | [exists_base_eq_prime_pow_of_prime_pow_eq_base_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/declarations/exists-base-eq-prime-pow-of-prime-pow-eq-base-pow--8dad188454bf4982c944c9a3.md) | 199 | `result-track:8dad188454bf4982c944c9a38a46c1cba6316169c19687db4dd6d9483ccc0cfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
