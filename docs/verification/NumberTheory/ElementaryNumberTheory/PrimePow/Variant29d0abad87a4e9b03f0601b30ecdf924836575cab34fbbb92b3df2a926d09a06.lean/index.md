# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePow.Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b460e15128df7ceb4ccde09d1857b2197b594c73",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b460e15128df7ceb4ccde09d1857b2197b594c73`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPrimePow.minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/isprimepow-minfac-pow-factorization-eq--eb8336211e9b8b985d65e496.md) | 28 | `result-track:eb8336211e9b8b985d65e496c0bda70d9b1c3f9015d90ebfd39192c73bd1214c` |
| 2 | `theorem` | [isPrimePow_of_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/isprimepow-of-minfac-pow-factorization-eq--e8a51c6de8edf0ccc454fd4d.md) | 35 | `result-track:e8a51c6de8edf0ccc454fd4de1b771fdec57aa1e8a14d35365d5d93ba197dde9` |
| 3 | `theorem` | [isPrimePow_iff_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/isprimepow-iff-minfac-pow-factorization-eq--93b1fa4115031eca4440ac20.md) | 45 | `result-track:93b1fa4115031eca4440ac20b45b21dfe7ee0d89c43060bd8ff73caea9da8b71` |
| 4 | `theorem` | [isPrimePow_iff_factorization_eq_single](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/isprimepow-iff-factorization-eq-single--b605293d55e063e2e63218a7.md) | 50 | `result-track:b605293d55e063e2e63218a7e573b93b7b7e49bb10985f245eb67df6a274d19e` |
| 5 | `theorem` | [isPrimePow_iff_card_support_factorization_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/isprimepow-iff-card-support-factorization-eq-one--3c19415c8717848d2898d655.md) | 66 | `result-track:3c19415c8717848d2898d655e1747d0013975b28329d6fdfac13a27cac967c55` |
| 6 | `theorem` | [IsPrimePow.exists_ord_compl_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/isprimepow-exists-ord-compl-eq-one--2c8dfa54d0904645c2042c22.md) | 72 | `result-track:2c8dfa54d0904645c2042c22ff0e9563940bee6544adb746e19da22bf3b64177` |
| 7 | `theorem` | [exists_ord_compl_eq_one_iff_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/exists-ord-compl-eq-one-iff-isprimepow--e66c4290daa538a56745d1f8.md) | 85 | `result-track:e66c4290daa538a56745d1f8f4b274700a0b167872d5a88a4f05edd912bee1ac` |
| 8 | `theorem` | [isPrimePow_iff_unique_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/isprimepow-iff-unique-prime-dvd--3429cf1ea8bac98a91c8a3a8.md) | 98 | `result-track:3429cf1ea8bac98a91c8a3a8aa5a2abd66058560553691fbe3ec717cf6c276f9` |
| 9 | `theorem` | [isPrimePow_pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/isprimepow-pow-iff--198a2c934ebc02c98ae8f5ee.md) | 120 | `result-track:198a2c934ebc02c98ae8f5eea1b507b54dc81f0d62cc276526c1b7938b09b010` |
| 10 | `theorem` | [Nat.coprime.isPrimePow_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/nat-coprime-isprimepow-dvd-mul--1c32f4fd69a83aa159dd7624.md) | 128 | `result-track:1c32f4fd69a83aa159dd76244c5806a9a7a940797361d3011892dab05a105522` |
| 11 | `theorem` | [Nat.mul_divisors_filter_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/declarations/nat-mul-divisors-filter-prime-pow--c1db0076427fe5e89c50927e.md) | 152 | `result-track:c1db0076427fe5e89c50927e3ed45da759c115cc72ad54d657e2e17b7330496c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
