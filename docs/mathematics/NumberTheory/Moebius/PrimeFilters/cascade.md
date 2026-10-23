# Finite causal prime filters and insertion energy

Human mathematical direction and selection: grwtsk contributors. Formalization and checking assistance: OpenAI Codex. These are classical arithmetic and analysis arguments applied to the supplied Möbius source. Mathlib authorship and Apache-2.0 licensing remain intact; the local contribution is MIT. No originality or independent human review is claimed. Implementation owner: [math #95](https://github.com/grwtsk/math/issues/95); broader applications remain in [math #15](https://github.com/grwtsk/math/issues/15).

## Exact source and prime factors

Let $b(u)=2(1-e^{-u/2})\mathbf1_{[0,\infty)}(u)$ and $S_af(u)=\mathbf1_{[a,\infty)}(u)f(u-a)$. For $n\ge1$,

$$h_n=n^{-1/2}S_{\log n}b.$$

For a finite prime set $P$, `primeNoteCascade P` expands over all subsets $S\subseteq P$, using the literal coefficient $\mu(\prod_{p\in S}p)$ and response $h_{\prod_{p\in S}p}$. Distinct prime subsets have distinct products; their products are squarefree. The empty subset produces $b$. The checked insertion law is

$$W_{P\cup\{p\}}=W_P-p^{-1/2}S_{\log p}W_P,\qquad p\notin P.$$

This identifies the expansion with the finite product of prime filters, independently of insertion order. It is not an infinite product in an unspecified operator topology. `pickup_eq_prime_note_cascade` proves, for every $0\le u\le T$,

$$W(u)=W_{P_T}(u),\qquad P_T=\{p\text{ prime}:p\le\lfloor e^T\rfloor\}.$$

All primes in the closed cutoff are retained. Products beyond that cutoff vanish causally; nonsquarefree source atoms have their actual zero Möbius coefficient. A touching atom has zero amplitude, and every source cascade is continuous and vanishes at time zero. Composite notes and both orders of their energy interactions remain in the source.

## Correct causal recurrence

Define $E_f(T)=\int_0^{\max(0,T)}f(u)^2\,du$ and

$$C_{f,a}(T)=\int_0^{\max(0,T)}f(u)S_af(u)\,du.$$

The correlation is zero when $0\le T<a$; when $T\ge a$, it is $\int_a^T f(u)f(u-a)\,du$. For the actual source, $W_P$ vanishes before time zero, so the oriented integral $\int_a^T W_P(u)W_P(u-a)\,du$ also vanishes when $T<a$. The clipped definition makes this support condition explicit and extends the identity to general continuous waveforms with $f(0)=0$, without assuming their negative-time support. For a prime $p$ and source state $W_P$,

$$E_{W_{P\cup\{p\}}}(T)=E_{W_P}(T)+p^{-1}E_{W_P}(T-\log p)-2p^{-1/2}C_{W_P,\log p}(T).$$

`energy_after_prime_insertion` proves this for every real $T\ge0$. `energy_after_prime_filter` also proves the general identity for continuous $f$ with $f(0)=0$. This general identity is not a general signed-correlation estimate.


## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean`](../../../../../GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 13 |
| Theorem/lemma commands | 8 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
