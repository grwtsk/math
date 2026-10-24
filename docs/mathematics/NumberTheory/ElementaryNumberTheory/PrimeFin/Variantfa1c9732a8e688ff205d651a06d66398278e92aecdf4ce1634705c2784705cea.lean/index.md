# GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeFin.Variantfa1c9732a8e688ff205d651a06d66398278e92aecdf4ce1634705c2784705cea

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variantfa1c9732a8e688ff205d651a06d66398278e92aecdf4ce1634705c2784705cea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2b24d6d23b4c1a4534d32b68f54bfe795c026e0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeFin/Variantfa1c9732a8e688ff205d651a06d66398278e92aecdf4ce1634705c2784705cea.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_setOf_prime](declarations/infinite-setof-prime--6628e381858579c93813b6be.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Primes.infinite](declarations/primes-infinite--1bc3ff7e5c42b2f4909140bf.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Primes.countable](declarations/primes-countable--12a6ba4916d0cb2af6894282.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [primeFactors](declarations/primefactors--5ad9d6d91c80eafbbe6c6077.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [toFinset_factors](declarations/tofinset-factors--a7bdaebf27d7114809170d41.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_primeFactors](declarations/mem-primefactors--c88c35b02a67d20f30d59282.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mem_primeFactors_of_ne_zero](declarations/mem-primefactors-of-ne-zero--e5165cb506fa8c48667cfa8b.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [primeFactors_mono](declarations/primefactors-mono--f09528cd4b285cd2f05bb47f.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mem_primeFactors_iff_mem_primeFactorsList](declarations/mem-primefactors-iff-mem-primefactorslist--d054164937f1591ee28ce486.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [prime_of_mem_primeFactors](declarations/prime-of-mem-primefactors--3cb641f984454bd07bebd3e7.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [dvd_of_mem_primeFactors](declarations/dvd-of-mem-primefactors--7d275768d1cc0a026f0fb888.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [pos_of_mem_primeFactors](declarations/pos-of-mem-primefactors--2cbad797be76d8a6b0634826.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [le_of_mem_primeFactors](declarations/le-of-mem-primefactors--22727f0976246ed8bd50ed8a.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [primeFactors_zero](declarations/primefactors-zero--6f3f521e6c620859f25037fc.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [primeFactors_one](declarations/primefactors-one--88b5342eb19c18572d1c1c39.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [primeFactors_eq_empty](declarations/primefactors-eq-empty--26379108c67bc80a725ab9ad.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [nonempty_primeFactors](declarations/nonempty-primefactors--d70835b4cd3374b20b399aca.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Prime.primeFactors](declarations/prime-primefactors--f8169bcc2c0f8ef8dbcd62d6.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [primeFactors_mul](declarations/primefactors-mul--2b2fdd20d8678eb83e06ea68.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Coprime.primeFactors_mul](declarations/coprime-primefactors-mul--dcf7c23a2dabbc651153ed1e.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [primeFactors_gcd](declarations/primefactors-gcd--30f1627cce410d4455988b27.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [disjoint_primeFactors](declarations/disjoint-primefactors--57543dd552a72bd32304c044.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Coprime.disjoint_primeFactors](declarations/coprime-disjoint-primefactors--ff9b4677ac8065dc84b467b1.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [primeFactors_pow_succ](declarations/primefactors-pow-succ--d21b76dd279bf332de65c974.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [primeFactors_pow](declarations/primefactors-pow--1546f913503e8adf413a95f5.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [primeFactors_prime_pow](declarations/primefactors-prime-pow--6db7561b8d23b4be5ab559a3.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
