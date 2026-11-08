# Literature ledger shard: proportional three-factor Liouville obstruction

## RH-LIOUVILLE-PROPORTIONAL-THREE-FACTOR-01 (2026-10-31)

- **Local title/byline:** *Uniform proportional three-factor obstruction for
  Liouville causal energy*, grwtsk contributors.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Source base:** `grwtsk/math@66e4dad1817a907693519585634ce78f2c8e7a95`,
  tree `128ca2102d3cdbda8a1de4a53d29f5d54e8e014d`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleProportionalThreeFactorObstruction.lean`.
- **Exact source:** actual Mathlib Liouville coefficient, unchanged causal
  response, exact initial-prime sieve, rough waveform, and complete signed
  Buchstab covariance inherited from the published local source chain.
- **Parameter range:** every fixed
  \[
  1/4<\theta<1/3,\qquad Y_T=\lfloor e^{\theta T}\rfloor.
  \]
  The terminal range begins at
  \(\gamma_\theta=\theta+2/3\), and a floor-stable relative exponent is
  \(\beta_\theta=(\theta+1/4)/2\).
- **Exact alternating source decomposition:** on the terminal range every
  rough integer is the unit, a prime, a semiprime, or a product of three
  primes. The three-prime count is
  \[
  \sum_{y<p\le x^{1/3}}\sum_{p\le q\le\sqrt{x/p}}
  \bigl(\pi(x/(pq))-\pi(q)+1\bigr),
  \]
  with repeated primes retained.
- **Signed three-factor profile:**
  \[
  \Psi_3(\alpha)=
  -1+\log((1-\alpha)/\alpha)
  -\int_\alpha^{1/3}
  \frac{\log((1-2v)/v)}{v(1-v)}\,dv.
  \]
- **Uniform gap:** for \(1/4\le\alpha\le1/3\),
  \[
  \Psi_3(\alpha)\le-\eta_3,\qquad
  \eta_3=1-\log(8/3)>0.
  \]
  The endpoint proof uses
  \(\log t\ge1-1/t\) and the exact rational integral
  \[
  \int_{1/4}^{1/3}
  \frac{1-3v}{v(1-v)(1-2v)}\,dv=\log(9/8).
  \]
- **Programme-specific obstruction:** eventually,
  \[
  E_\theta(T)\ge
  \frac{\eta_3^2}{4}(1-e^{-1})\,e^T/T^2,
  \]
  and
  \[
  \max(-\mathcal C_{Y_T}(T),0)\ge
  \frac{\eta_3^2}{16}(1-e^{-1})\,e^T/T^2.
  \]
  The approximate coefficients are \(5.80788482\cdot10^{-5}\) and
  \(1.45197121\cdot10^{-5}\).
- **Primary literature and use boundaries:** Steve Fan,
  *Numerically explicit estimates for the distribution of rough numbers*,
  Journal of Number Theory 260 (2024), 120--150,
  DOI `10.1016/j.jnt.2024.01.008`, arXiv `2306.03347`, supplies modern
  unsigned rough-number context and Buchstab asymptotics. Kevin Ford and James
  Maynard, *On the theory of prime producing sieves* (2024),
  arXiv `2407.14368`, supplies parity and Type-I/Type-II context. Neither is
  claimed to state the GRWTSK signed physical-time energy or covariance lower
  bound.
- **Novelty boundary:** no broad novelty claim is made for Buchstab iteration,
  PNT partial summation, almost-prime simplex integrals, or the parity
  phenomenon. The local contribution is the exact signed profile, its
  elementary uniform negative gap, and the unchanged causal-energy and
  covariance transport. A source search did not locate this exact statement;
  absence from that search is not proof of global novelty.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN / NATIVE_EXECUTION_NOT_RUN /
  EXTERNAL_COMPARATOR_REPLAY_NOT_RUN`.
- **Open formalization:** prove the interval-integral endpoint bound and profile
  derivative sign, formalize the exact prime/semiprime/triple-prime
  decomposition, import or prove uniform PNT partial summation, formalize the
  causal Abel transport, compile, and audit the complete source closure.
- **Open arithmetic:** analyze the signed four-factor profile for
  \(\theta\le1/4\), locate its first zero if any, and test whether any sign
  change can be consumed before positive norm inversion. Polynomial cutoffs
  \(Y(T)=T^A\) remain the principal growing-degree alternative.
- **Canonical ledger:** this exact shard is stored in the canonical
  reading-background directory. The monolithic
  `paper-to-formalization-references.md` is byte-preserved unless a
  source-complete safe append is available.
