# Elementary number theory

<!-- BEGIN GENERATED MATHEMATICS NAVIGATION -->

[Results index](../../index.md) · [Up one directory](../index.md)

**Subject:** `urn:uuid:f0916dc0-8e7b-4a8f-9aa7-a0cdd6651fa0` · editorial status: **proposed** · [definition, scope and sources](../../../taxonomy/subjects/NumberTheory/ElementaryNumberTheory/index.md).

The study of integer arithmetic through divisibility, congruences and related arguments that do not require the general machinery of analytic or algebraic number theory.

**Scope.** Elementary describes a mathematical approach, not a claim that every problem is easy, computationally cheap or settled. The local scope includes gcd arguments, integer factorization properties and modular arithmetic. A result with an elementary proof need not belong exclusively here; overlap with other branches is retained rather than resolved by a filename.

**Subject routes:** [Number theory](../index.md). Parentage retains the taxonomy's recorded status.

## Complete source publication

[Every source module and declaration](../../complete-source-index.md). All source families and verification outcomes are included. Preview limits below do not limit catalogue membership.

[Every source beneath this directory](complete-source-index.md). This follows the complete source path hierarchy at this level.

Namespace totals and the complete namespace route:

| Complete source branch | Modules | Declaration observations | Theorem/lemma occurrences |
|---|---:|---:|---:|
| [NumberTheory](../complete-source-index.md) | 12,476 | 126,821 | 75,032 |

Each source article links to its static verification target and scoped public evidence. Source observations do not establish elaborated declaration identities or proof acceptance. Source-path branches retain their original placement; semantic associations require review.

Complete source snapshot: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · manifest `ce146fb73924abcb43ba4cf06ae7e5a14540e608e309a0c1e8a48d5dde554d6b`.

| Authored articles in this branch | Structured articles | Verification metadata supplied | Spectral scores available |
|---:|---:|---:|---:|
| 9 | 2 | 2 | 0 |

Counts deduplicate shared article identities. Verification coverage reports supplied article metadata; it does not establish fresh replay or whole-branch acceptance.

## Top results

**Unranked article previews.** Spectral scores are unavailable for these articles. The following selection preserves the [selected catalog's editorial order](../../../reference/results.md), then uses structured metadata and title order; it is not a measured ranking.

- [Least natural prime](../Primes/least-prime.md) — leaf; verification: `SCOPED_EVIDENCE`; S₃ unavailable. The natural number two is prime and is a lower bound for every natural prime. This article records the foundational conjunction; a separate composite article derives uniqueness of a prime satisfying the stated…

  <details>
  <summary>Verification scope</summary>

  **Verification scope.** Exact replay twice with Lean --trust=0 of GRWTSK.NumberTheory.two_is_first_prime and GRWTSK.NumberTheory.Prime.least_prime_eq_two at math commit c288573d1e3cad54979fd95ebf17244f30224d41, with native direct type/value references and observed axiom closures under 8,750 stable fingerprinted imported artifact parts. Cached upstream source was not replayed; global dependency completeness is false.

  </details>
- [Least-prime uniqueness by antisymmetry](../Primes/least-prime-uniqueness.md) — composite; verification: `SCOPED_EVIDENCE`; S₃ unavailable. A natural prime q that is no greater than every natural prime equals two. The argument combines the foundational prime lower bound with leastness at the prime two, then applies natural-number order… **Composition bridge:** `SCOPED_EVIDENCE`.

  <details>
  <summary>Verification scope</summary>

  **Verification scope.** Exact replay twice with Lean --trust=0 of GRWTSK.NumberTheory.two_is_first_prime and GRWTSK.NumberTheory.Prime.least_prime_eq_two at math commit c288573d1e3cad54979fd95ebf17244f30224d41, with native direct type/value references and observed axiom closures under 8,750 stable fingerprinted imported artifact parts. Cached upstream source was not replayed; global dependency completeness is false.

  </details>
- [Arithmetic Liouville signs as exact finite Walsh observations](ArithmeticFunctions/liouville-walsh-source.md) — source-guide; verification: `UNASSESSED`; S₃ unavailable. **Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-21).
- [Complete density Möbius correction](ArithmeticFunctions/density-correction.md) — source-guide; verification: `UNASSESSED`; S₃ unavailable. For every natural integer define \[ \rho(n)=\prod_{p\mid n}\frac p{p+1},\qquad \nu(n)=\mu(n)\rho(n),\qquad \gamma=\nu*\zeta. \] Here \(\mu\) is Mathlib's actual integer Möbius function cast to the reals, \(*\)…
- [Irrational frequency realization and native readback](ContinuedFractions/frequency-realization.md) — source-guide; verification: `UNASSESSED`; S₃ unavailable. The maintained source links use the current PMD placement. Earlier verification receipts retain their recorded source paths, bytes and tool context. Fresh proof replay of the relocated context remains pending;…

Missing metric evidence: `verification_dependency_graph_unavailable`.

[Ranking definition and weight profile](../../../reference/ranking-profile.json) · [Article standard](../../../reference/result-article-standard.md).
Ranking profile: `spectral-volume-radius3-v2` · SHA-256 `254c958eb7f5879d7f3e13f91bbb7ef7a19d3203b48c1402da4198b7992bdc1e`.

## Immediate specializations and directories

1. **[Arithmetic Functions](ArithmeticFunctions/index.md)** — 0 immediate children · 5 unique articles · 0 structured · 0 verification metadata · 0 scored. Source-guide directory; semantic association unassessed.
   Unranked previews: [Arithmetic Liouville signs as exact finite Walsh observations](ArithmeticFunctions/liouville-walsh-source.md); [Complete density Möbius correction](ArithmeticFunctions/density-correction.md).
2. **[Continued Fractions](ContinuedFractions/index.md)** — 0 immediate children · 2 unique articles · 0 structured · 0 verification metadata · 0 scored. Source-guide directory; semantic association unassessed.
   Unranked previews: [Irrational frequency realization and native readback](ContinuedFractions/frequency-realization.md); [Scheduled digits and continued-fraction denominators](ContinuedFractions/scheduled-denominators.md).
3. **[Integer congruence theory](Congruences/index.md)** — 0 immediate children · 0 unique articles · 0 structured · 0 verification metadata · 0 scored · editorial: proposed. The study of residue classes of integers and equations between them modulo a specified positive integer.

## Articles at this level

- [Least natural prime](../Primes/least-prime.md) — leaf; verification: `SCOPED_EVIDENCE`; S₃ unavailable. The natural number two is prime and is a lower bound for every natural prime. This article records the foundational conjunction; a separate composite article derives uniqueness of a prime satisfying the stated…

  <details>
  <summary>Verification scope</summary>

  **Verification scope.** Exact replay twice with Lean --trust=0 of GRWTSK.NumberTheory.two_is_first_prime and GRWTSK.NumberTheory.Prime.least_prime_eq_two at math commit c288573d1e3cad54979fd95ebf17244f30224d41, with native direct type/value references and observed axiom closures under 8,750 stable fingerprinted imported artifact parts. Cached upstream source was not replayed; global dependency completeness is false.

  </details>
- [Least-prime uniqueness by antisymmetry](../Primes/least-prime-uniqueness.md) — composite; verification: `SCOPED_EVIDENCE`; S₃ unavailable. A natural prime q that is no greater than every natural prime equals two. The argument combines the foundational prime lower bound with leastness at the prime two, then applies natural-number order… **Composition bridge:** `SCOPED_EVIDENCE`.

  <details>
  <summary>Verification scope</summary>

  **Verification scope.** Exact replay twice with Lean --trust=0 of GRWTSK.NumberTheory.two_is_first_prime and GRWTSK.NumberTheory.Prime.least_prime_eq_two at math commit c288573d1e3cad54979fd95ebf17244f30224d41, with native direct type/value references and observed axiom closures under 8,750 stable fingerprinted imported artifact parts. Cached upstream source was not replayed; global dependency completeness is false.

  </details>

Source baseline: math commit `706c62c1285a9857cb9d52e0620ec2cb514eb374`; 907 observed taxonomy/article/catalog inputs; 296 differ from that commit. Observation SHA-256: `7a3829e1c148a68b58a9d7c91d2815c6fd71d1619fa58cde5c839a064ad17d30`.
Generated navigation, scores and source syntax inventories do not strengthen the proof scope recorded in an article.

<!-- END GENERATED MATHEMATICS NAVIGATION -->
