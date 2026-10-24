# GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeFin.Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab480a1ee3cb6cf79304d4c3684f56c693a79a3d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_setOf_prime](declarations/infinite-setof-prime--11dd32a63f09a09a567a887c.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Primes.infinite](declarations/primes-infinite--febb237a8a15ed1eeb6f112f.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Primes.countable](declarations/primes-countable--aaac2b6784e45c196985c228.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [primeFactors](declarations/primefactors--e52cce69503d50b61ceeca1d.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [toFinset_factors](declarations/tofinset-factors--f5750c80b9156639bea52455.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_primeFactors](declarations/mem-primefactors--25a12a4222b2d9e2a8455685.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mem_primeFactors_of_ne_zero](declarations/mem-primefactors-of-ne-zero--34178dc23dbcf8be36ceb229.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [primeFactors_mono](declarations/primefactors-mono--a2f7476a189c239ba0942b1d.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mem_primeFactors_iff_mem_primeFactorsList](declarations/mem-primefactors-iff-mem-primefactorslist--c73a4e18cdcb4ab73bb9b4fa.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [prime_of_mem_primeFactors](declarations/prime-of-mem-primefactors--447ac821bb88f5aa78aa668a.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [dvd_of_mem_primeFactors](declarations/dvd-of-mem-primefactors--4f299fefca6ed32915ad7ce7.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [pos_of_mem_primeFactors](declarations/pos-of-mem-primefactors--11bfee843893bd6a5c3af92d.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [le_of_mem_primeFactors](declarations/le-of-mem-primefactors--1cb6365f34648b1cfe4b3614.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [primeFactors_zero](declarations/primefactors-zero--dc0a5cddd232b971d8b73395.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [primeFactors_one](declarations/primefactors-one--531cdd38099fb537d319b889.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [primeFactors_eq_empty](declarations/primefactors-eq-empty--e341094e138fe2ca315bf56f.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [nonempty_primeFactors](declarations/nonempty-primefactors--9bffeff81b61aeee993ca590.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Prime.primeFactors](declarations/prime-primefactors--dea227149ba2e39303be5beb.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [primeFactors_mul](declarations/primefactors-mul--3e4e51272553c7fdfa9d8d2b.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Coprime.primeFactors_mul](declarations/coprime-primefactors-mul--6fd1e1f12bf1a00eea426bcd.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [primeFactors_gcd](declarations/primefactors-gcd--dedbd4e5676d6aac16d5fe5f.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [disjoint_primeFactors](declarations/disjoint-primefactors--d29b62e4445e93dafb624be1.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Coprime.disjoint_primeFactors](declarations/coprime-disjoint-primefactors--de83bd0c4ba3d6bb2390f0e7.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [primeFactors_pow_succ](declarations/primefactors-pow-succ--99d9bcd6fcde6b1d71e03a84.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [primeFactors_pow](declarations/primefactors-pow--a8a10d7c7a26e4d4ba2df63d.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [primeFactors_prime_pow](declarations/primefactors-prime-pow--e4d81ec139ce85db4983d114.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
