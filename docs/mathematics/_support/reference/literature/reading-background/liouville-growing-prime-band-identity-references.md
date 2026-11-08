# Literature ledger shard: exact Liouville growing-prime-band identity

## RH-LIOUVILLE-GROWING-PRIME-BAND-IDENTITY-01 (2026-10-31)

- **Local title/byline:** *Exact growing-prime-band identity and a
  covariance-residual transfer*, grwtsk contributors.
- **Lean source:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleGrowingPrimeBandIdentity.lean`.
- **Exact source:** actual Mathlib Liouville coefficient through
  `GRWTSK.NumberTheory.LiouvilleCausalEnergy.coefficient`, the unchanged
  `pickupResponse`, waveform, and causal energy.  No random-sign model,
  Liouville-to-Möbius substitution, or independent-prime approximation.
- **Exact identity:** for a finite prime band \(P\), nonnegative weights \(w_p\),
  total mass \(W\), and complete signed uncovered waveform \(R_P\),
  \[
  WF(u)+\sum_{p\in P}w_pp^{-1/2}F(u-\log p)=R_P(u).
  \]
  After multiplication by \(F\) and integration,
  \[
  WH(T)+C_P(T)=\int_0^T F(u)R_P(u)\,du.
  \]
  Repeated-prime multiples, unsifted integers and zero-birth collars are
  included exactly.
- **Sufficient transfer:** if \(W>0\), \(C_P(T)\ge0\), and
  \(E_P(T)=\int R_P^2\le W^2C_\varepsilon e^{\varepsilon T}\), then
  \(H(T)\le C_\varepsilon e^{\varepsilon T}\).  This follows from the complete
  identity and Cauchy--Schwarz with exact loss \(W^{-2}\).
- **Obstruction boundary:** coefficient-level uncovered mass has the harmonic
  diagonal floor recorded in the reciprocal-mass review.  Therefore the
  residual estimate cannot be obtained by absolute values; signed
  cross-prime/uncovered-waveform cancellation is the missing supplier.
- **Literature boundary:** Tao's entropy-decrement and fixed-form logarithmic
  Chowla work, almost-all short-interval results, and recent growing-shift
  correlation work remain method context only.  No external theorem is
  imported or asserted to provide the physical-time weighted identity's
  uniform arithmetic estimate.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN`.  The identity, transfer proposition, and
  inherited source chain require exact-source replay.  No runtime script,
  mutable receipt, controller or queue is stored in math.
- **Open arithmetic:** construct a quantitatively divergent reciprocal-mass
  band for the actual Liouville source, prove the covariance sign or controlled
  negative part, and prove every-positive-rate normalized uncovered-waveform
  energy while retaining all boundary and exceptional costs.
