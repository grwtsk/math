# Conditional prime-filter growth and harmonic mass

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

The actual closed Möbius pickup is exactly a finite causal prime-note cascade on every recording window. The one-prime energy recurrence and the conditional induction to `PickupCrossPoly` are Lean theorems. The source-specific signed reverberation estimates remain open; no unconditional RH result is supplied.

Research update: the uniform prime/block suppliers below, previously recorded as open, are **analytically obstructed** by finite Euler-product growth from the prime number theorem. This rejection is a classical argument recorded in [the uniform-supplier obstruction](uniform-supplier-obstruction.md), not a replayed Lean theorem. The existing conditional implications remain checked. The related source also gives a kernel-checked negative source correlation and an exact complete-block target that retains its signed cancellation; that new scale estimate and P04 remain open.

A successful check certifies the displayed exact and conditional statements. The unsigned allowance, source-specific signed supplier, arithmetic-to-Kakeya adapter, broader issue closure and independent mathematical acceptance retain their separate status.
All mathematical work from the prime-cascade and complete-recording contribution is developed in grwtsk/math. Human mathematical direction: grwtsk contributors. Derivation, Lean formalization and checking assistance: OpenAI Codex. Local contributions are MIT; original Lean and Mathlib authorship and Apache-2.0 licensing remain preserved. RH remains open.

## Open mathematical obligations

Lean proves the literal pickup's exact finite prime cascade, the full signed insertion energy, a logarithmic reciprocal-prime-mass allowance, an actual negative correlation at the prefix before prime 11, and the exact doubled-recording decomposition. Every ordered echo interaction is retained. Existence of a `RecordingScaleBound` is equivalent to P04; its conditional RH consumer does not establish that bound or reduce its known arithmetic difficulty.

The uniform suppliers over independently varying finite prefixes and recording horizons are analytically obstructed by the finite-cascade Laplace transform and the unconditional prime number theorem. This rejection is a written analytic argument, not a replayed Lean PNT theorem. Do not return to it as an open supplier conjecture. The negative-correlation counterexample is separately kernel checked and rules out the nonnegative-echo shortcut.

The [finite-window Laplace identity](../Laplace/finite-window.md) retains its entire boundary correction. A shifted waveform's truncated transform looks back to a shorter window; treating it as a multiplier on the full recording discards a signed tail. The one-prime correction applies to an actual finite cascade and preserves before-birth and event-equality cases. A checked prime-two counterexample at positive Laplace parameter one prevents dropping the tail. The new [source-specific cutoff identity](../Laplace/cutoff.md) integrates the complete actual response inventory and retains both signed endpoint sums. Do not count renaming P04, finite quadrature, or repeated passing audits as a new arithmetic estimate.

Seek an independently proved bound on the complete signed recording, or a weaker estimate at every positive exponential rate. Spectral comparisons require the exact observable identification and a paid full residual. Determinant one, topology, a raw finite Euler product, and unsigned estimates alone do not supply this debt. Preserve failed routes and record the next concrete untried obligation after each run.

The next untried obligation is to prove the general cutoff-debt identity. Expand the raw prime product over every subset of the primes at most $N$, identify its born product terms with $D_N(s)$, and retain the complete signed sum for products above $N$. Next test a genuinely weaker estimate on that horizon-matched signed debt or derive an independent arithmetic cancellation lemma. Keep the two pickup endpoint terms; bounding separate unsigned pieces can destroy the cancellation. No adequate signed upper estimate is known here.


## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean`](../../../../../GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 8 |
| Theorem/lemma commands | 6 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
