# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeFin.Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab480a1ee3cb6cf79304d4c3684f56c693a79a3d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab480a1ee3cb6cf79304d4c3684f56c693a79a3d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Infinite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_setOf_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/infinite-setof-prime--11dd32a63f09a09a567a887c.md) | 31 | `result-track:11dd32a63f09a09a567a887ceed31940291611ce99d9bc9b3d335c6db0971521` |
| 2 | `instance` | [Primes.infinite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primes-infinite--febb237a8a15ed1eeb6f112f.md) | 34 | `declaration-track:febb237a8a15ed1eeb6f112f378b98c9d95042fcd667644a6980212fa257f132` |
| 3 | `instance` | [Primes.countable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primes-countable--aaac2b6784e45c196985c228.md) | 36 | `declaration-track:aaac2b6784e45c196985c22803f437fec34be78a6b07f9278d61fe5fc09a18e6` |
| 4 | `def` | [primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors--e52cce69503d50b61ceeca1d.md) | 39 | `declaration-track:e52cce69503d50b61ceeca1da608772e9e63d42d1d8bbc85efd0e560c98428e8` |
| 5 | `lemma` | [toFinset_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/tofinset-factors--f5750c80b9156639bea52455.md) | 41 | `result-track:f5750c80b9156639bea5245514c3b5d6bdfa38beebc6f6b42633b04ba4efd714` |
| 6 | `lemma` | [mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/mem-primefactors--25a12a4222b2d9e2a8455685.md) | 43 | `result-track:25a12a4222b2d9e2a845568516d98c25240d17aeb7d2706b8921415816ca2a08` |
| 7 | `lemma` | [mem_primeFactors_of_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/mem-primefactors-of-ne-zero--34178dc23dbcf8be36ceb229.md) | 46 | `result-track:34178dc23dbcf8be36ceb2293662d8f60e17e8622298782b8c65525254fcd125` |
| 8 | `lemma` | [primeFactors_mono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors-mono--a2f7476a189c239ba0942b1d.md) | 49 | `result-track:a2f7476a189c239ba0942b1d0b620a4ffcfd5705c1050a67a4323bf7f5473987` |
| 9 | `lemma` | [mem_primeFactors_iff_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/mem-primefactors-iff-mem-primefactorslist--c73a4e18cdcb4ab73bb9b4fa.md) | 53 | `result-track:c73a4e18cdcb4ab73bb9b4fabd893747679d49db4bb40607eaaa318cc9c81860` |
| 10 | `lemma` | [prime_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/prime-of-mem-primefactors--447ac821bb88f5aa78aa668a.md) | 56 | `result-track:447ac821bb88f5aa78aa668a43f1cf5413c90e69946cbd29eea600374c86b979` |
| 11 | `lemma` | [dvd_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/dvd-of-mem-primefactors--4f299fefca6ed32915ad7ce7.md) | 57 | `result-track:4f299fefca6ed32915ad7ce772bd93321dffaec5f4e122a5e7e0a94e2e14878a` |
| 12 | `lemma` | [pos_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/pos-of-mem-primefactors--11bfee843893bd6a5c3af92d.md) | 59 | `result-track:11bfee843893bd6a5c3af92dfd49e70b694f15af0aae035f73d8a6f02b05aeb9` |
| 13 | `lemma` | [le_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/le-of-mem-primefactors--1cb6365f34648b1cfe4b3614.md) | 62 | `result-track:1cb6365f34648b1cfe4b36143355d5e6c20177295f0d6f2e702725a2d5ae66c3` |
| 14 | `lemma` | [primeFactors_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors-zero--dc0a5cddd232b971d8b73395.md) | 65 | `result-track:dc0a5cddd232b971d8b73395ab702612f3b98d30892b0289748c9c2de65e855c` |
| 15 | `lemma` | [primeFactors_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors-one--531cdd38099fb537d319b889.md) | 69 | `result-track:531cdd38099fb537d319b889a06b0c455551ab63580099ea09444c7a3cac8c10` |
| 16 | `lemma` | [primeFactors_eq_empty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors-eq-empty--e341094e138fe2ca315bf56f.md) | 73 | `result-track:e341094e138fe2ca315bf56f021f43ead67a8600e3bfba449c28aad246bf0513` |
| 17 | `lemma` | [nonempty_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/nonempty-primefactors--9bffeff81b61aeee993ca590.md) | 82 | `result-track:9bffeff81b61aeee993ca5906c71a2d499e81b790d1d7de24c6a6159b9d8e712` |
| 18 | `lemma` | [Prime.primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/prime-primefactors--dea227149ba2e39303be5beb.md) | 86 | `result-track:dea227149ba2e39303be5beb432101d783fe5ad0522af03cc283012306fd8eb4` |
| 19 | `lemma` | [primeFactors_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors-mul--3e4e51272553c7fdfa9d8d2b.md) | 89 | `result-track:3e4e51272553c7fdfa9d8d2b33f17d574aa358a1a9aa6e710a7140afe8f26cc9` |
| 20 | `lemma` | [Coprime.primeFactors_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/coprime-primefactors-mul--6fd1e1f12bf1a00eea426bcd.md) | 94 | `result-track:6fd1e1f12bf1a00eea426bcdd819969e34f89f9aa4c53d0cd26c3ec9fec20fa0` |
| 21 | `lemma` | [primeFactors_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors-gcd--dedbd4e5676d6aac16d5fe5f.md) | 98 | `result-track:dedbd4e5676d6aac16d5fe5feca28a7e751f60ab7f31b0899347f5b21e25ac18` |
| 22 | `lemma` | [disjoint_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/disjoint-primefactors--d29b62e4445e93dafb624be1.md) | 102 | `result-track:d29b62e4445e93dafb624be11adf137e64afe9366c08779f89a28286dea0f35c` |
| 23 | `lemma` | [Coprime.disjoint_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/coprime-disjoint-primefactors--de83bd0c4ba3d6bb2390f0e7.md) | 107 | `result-track:de83bd0c4ba3d6bb2390f0e73c28c410bdd8d3a71720738654a321fa4587fdbf` |
| 24 | `lemma` | [primeFactors_pow_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors-pow-succ--99d9bcd6fcde6b1d71e03a84.md) | 111 | `result-track:99d9bcd6fcde6b1d71e03a8494321c90fe8dbd5d379338694a6cec94e2ff2f5b` |
| 25 | `lemma` | [primeFactors_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors-pow--a8a10d7c7a26e4d4ba2df63d.md) | 118 | `result-track:a8a10d7c7a26e4d4ba2df63dcda1f0316a960520e43b0509575b6bcc3387f22d` |
| 26 | `lemma` | [primeFactors_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant071c5f0ac1131fc5bd16891bbe97c8440d842e415604391f6959597360aac076.lean/declarations/primefactors-prime-pow--e4d81ec139ce85db4983d114.md) | 124 | `result-track:e4d81ec139ce85db4983d114edb4b30332bd8ddbebc480716a9277c38f16cff0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
