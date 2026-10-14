# Exact CCC prime-note cascade and conditional scale induction

The actual closed Möbius pickup is exactly a finite causal prime-note cascade on every recording window. The one-prime energy recurrence and the conditional induction to `PickupCrossPoly` are Lean theorems. The source-specific signed reverberation estimates remain open; no unconditional RH result is supplied.

Research update: the uniform prime/block suppliers below, previously recorded as open, are **analytically obstructed** by finite Euler-product growth from the prime number theorem. This rejection is a classical argument recorded in [the recording-scale continuation](ccc-recording-scale.md), not a replayed Lean theorem. The existing conditional implications remain checked. The continuation also gives a kernel-checked negative source correlation and an exact complete-block target that retains its signed cancellation; that new scale estimate and P04 remain open.

Human mathematical direction and selection: grwtsk contributors. Formalization and checking assistance: OpenAI Codex. These are classical arithmetic and analysis arguments applied to the supplied CCC source. Mathlib authorship and Apache-2.0 licensing remain intact; the local contribution is MIT. No originality or independent human review is claimed. Implementation owner: [math #95](https://github.com/grwtsk/math/issues/95); broader applications remain in [math #15](https://github.com/grwtsk/math/issues/15).

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

## Open estimates and proved returns

`PrimeReverberation A B q` is the uniform source-class assertion

$$[-C_{W_P,\log p}(T)]_+\le (A/\sqrt p)E_{W_P}(T)+(B/\sqrt p)(1+T)^q.$$

Its quantifiers include every finite prime set, every new prime, and every nonnegative real time. Thus arbitrary insertion orders are covered. The constants are nonnegative in its consumer. No witness is defined.

`PrimeBlockReverberation C q` is the collective source assertion for every disjoint finite prime pair $P,B$:

$$E_{W_{P\cup B}}(T)\le e^{C\Omega(B)}E_{W_P}(T)+C\Omega(B)(1+T)^q,
\qquad \Omega(B)=\sum_{p\in B}p^{-1}.$$

Every sign remains in $W$. Blocks may contain any number of primes. Bounded harmonic mass and eventual inclusion of all required primes are the relevant controller conditions; changing a schedule cannot change a filter, delay or Möbius coefficient. The block consumer uses its singleton instances, so it requires no unproved block partition or coverage theorem.

`harmonicPrimeMass_log_bound` independently proves the coarse unconditional allowance

$$\Omega(P_T)\le K+L\log(1+T),\quad L=\log4,\quad K=\log4\big((\log2)^{-1}+|\log\log2|\big).$$

Its proof uses Mathlib's Chebyshev bound $\vartheta(x)\le x\log4$ and Abel summation with weight $(x\log x)^{-1}$. It treats $e^T<2$ separately. Neither a sharp Mertens asymptotic nor RH is needed.

The compensated induction proves $E_P+H\le e^{C\Omega(P)}(4T+H)$, where $H=(1+T)^q$. Consequently the block premise gives polynomial energy witnesses

$$5e^{CK},\qquad CL+\max(1,q).$$

The local prime premise gives the same witnesses with $C=1+2A+2B$. The deliberately coarse exponent absorbs all additive debt. The existing exact energy/diagonal equivalence then proves `p04_of_block_reverberation` and `p04_of_prime_reverberation`. The explicit conditional RH consumer retains the block premise. No estimate is obtained merely by naming its proposition.

## Kakeya and Fourier applicability boundary

[Wang and Zahl, arXiv:2502.17655v1](https://arxiv.org/abs/2502.17655v1) concerns geometric tube volume and nonconcentration. It is a proposed proof architecture here, not an imported supplier of the signed source estimate. An application still needs actual arithmetic trajectories, weights, signed or polarized incidence control, all theorem hypotheses, and a gain-to-reverberation return.

A delay has angular Fourier phase $e^{-i\xi\log p}$ for an integrable zero-extended waveform under that convention. The unbounded base note and infinite pickup do not automatically satisfy a whole-line Fourier hypothesis. Damping, truncation, normalization and window corrections must be paid before using a transform theorem. The phase trajectories alone do not identify a Kakeya tube family or bound negative correlations.

At the natural scale $\delta\simeq e^{-T}$, a fixed loss $\delta^{-\varepsilon}$ becomes $e^{\varepsilon T}$, which does not prove polynomial P04. A theorem available at every positive rate with constants uniform in time could instead meet the existing all-rate subexponential consumer; its signed arithmetic adapter would still need proof. Positive volume, two-color splitting, a finite computation and arbitrary operator norms do not supply either arithmetic premise. The proposed four-dimensional manuscript is not imported as a native theorem here.

The almost Mathieu gate [math #93](https://github.com/grwtsk/math/issues/93) remains independent. Exact prime filters do not identify the pickup with its cosine potential or spectral measure.

## Reproducible verification

Run `lake build --wfail` and `python3 scripts/check_prime_cascade.py`. The latter recompiles the complete selected project source closure into fresh objects with Lean trust zero, checks exact consumer contracts and transitive axioms, and rejects missing prime/block bounds and a composite primitive. `evidence/prime-cascade-checks.json` is a retained prior observation; a fresh run writes a new ignored `.local/prime-cascade-*/receipt.json`. Public dependency pins are Lean 4.33.0 and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

A successful check certifies the displayed exact and conditional statements. The unsigned allowance, source-specific signed supplier, arithmetic-to-Kakeya adapter, broader issue closure and independent mathematical acceptance retain their separate status.
