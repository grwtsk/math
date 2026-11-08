# Source-preserving four-way Möbius reduction: paid gap, ratio and high-GCD sectors

Research date: 2026-11-02. Mathematical direction and local attribution: **grwtsk contributors**. Source comparisons, finite arithmetic checks, and Lean source proof-candidate drafting: OpenAI ChatGPT. Imported mathematical attribution and licenses retained.

## Original source and new contribution

The ORIGINAL signed off-diagonal source is

\[
X(T)=\operatorname{pickupCross}(T)=\sum_{\substack{m,n\in W_T\\m\neq n}}\mu(m)\mu(n)\int_0^T r_m(u)r_n(u)\,du,
\quad W_T=\{1,\ldots,\lfloor e^T\rfloor\}.
\]

Its original causal atom is \(r_n(u)=2(n^{-1/2}-e^{-u/2})\mathbf1_{u\ge\log n}\). All source integer indices, squareful zeros, both ordered orientations, birth gates, signs and signed physical readout defects survive.

The previously published source [MoebiusEndpointPutnamSmallRatioAllRate.lean](https://github.com/grwtsk/math/blob/2e864e3514ba43426d80b245933a31508dbe4c3d/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSmallRatioAllRate.lean) partitions the complete original source into selected additive gaps, previously unpaid small integer multiples, and a signed dense remainder. Its source candidates pay each of the first two by \((32/r^2)e^{rT}\) for \(r>0,T\ge0\).

The independently published [MoebiusCompleteHighGcdElementaryClosure.lean](https://github.com/grwtsk/math/blob/2e864e3514ba43426d80b245933a31508dbe4c3d/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCompleteHighGcdElementaryClosure.lean) and [MoebiusCompleteHighGcdDivisorCover.lean](https://github.com/grwtsk/math/blob/2e864e3514ba43426d80b245933a31508dbe4c3d/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCompleteHighGcdDivisorCover.lean) provide a POSITIVE ABSOLUTE cost for the high-GCD ORIGINAL pairs, through the actual divisor-root tail and floor supplier, at the pre-existing fixed cutoff \(D_*(T)=\max(1,\lfloor e^{T-\sqrt T}\rfloor)\). For \(T\ge4\) the source-candidate bound is \(32Te^{\sqrt T}\).

This increment pays *only* the high-GCD portion of the remaining direct dense packet. That creates a genuinely smaller hard source, without double counting any previously paid pair.

## Published Lean source proof candidates

| Exact source | Git revision | Final source blob | Theorem candidates |
| --- | --- | --- | ---: |
| [MoebiusSparseHighGcdDenseCore.lean](https://github.com/grwtsk/math/blob/ce75115bcb41c4c662b2f26de414609dfb6e0a34/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSparseHighGcdDenseCore.lean) | ce75115bcb41c4c662b2f26de414609dfb6e0a34 | 11ac20aa5fca77f0de5deebce670f06204e61e4f | 12 |
| [MoebiusSparseHighGcdDenseCoreReturn.lean](https://github.com/grwtsk/math/blob/40d9ef43664e5f7ffa0aacb00bd60c02959b7702/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSparseHighGcdDenseCoreReturn.lean) | 40d9ef43664e5f7ffa0aacb00bd60c02959b7702 | db5e80b45f95ad20b2463ed8d5e85fcd27e3d74c | 5 |
| [MoebiusSparseHighGcdDenseCoreSampler.lean](https://github.com/grwtsk/math/blob/6188aa8f66855dadb09004047579ef45a5e3ca76/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSparseHighGcdDenseCoreSampler.lean) | 6188aa8f66855dadb09004047579ef45a5e3ca76 | 633aa83024c5defab642048f386e14898a1c1731 | 10 |

The sampler source was initially committed at 671c86c66fed340c4cc044476d7cb0b819b2b0be, then revised to prove constant-expectation linearity LOCALLY; the original draft had attempted to refer to a private theorem in a different module. The final source is the blob shown above. Every new file is uncompiled and explicitly marked SOURCE_PROOF_CANDIDATE.

## Analytical argument, exactly matching the original source

For a selected rate \(r>0\), put \(Q_{r,T}=\{1,\ldots,\lfloor e^{rT/2}\rfloor\}\). Define \(G_r\) to cover ordered additive gaps in Q, \(R_r\) to cover ordered integer-multiple pairs in Q outside G, \(H_r\) to cover high-GCD pairs *outside both G and R*, and \(L_r\) to cover the remaining ordered source pairs with \(\gcd(m,n)\le D_*(T)\). An exact finite Boolean partition gives

\[
\boxed{X(T)=G_r(T)+R_r(T)+H_r(T)+L_r(T).}
\]

The positivity payment is valid only because the new high-GCD SUBPACKET is bounded by the full original high-GCD POSITIVE ABSOLUTE cost:

\[
|H_r(T)|\le
\sum_{\substack{m,n\in W_T\\m\ne n\\\gcd(m,n)>D_*}}
|\mu(m)\mu(n)\operatorname{pickupResponseGram}(T,m,n)|
\le32Te^{\sqrt T}\quad(T\ge4).
\]

Bounding a masked subset by the signed sum of all high-GCD pairs would be INVALID in general, because omitted signs can cancel. The published proof candidate therefore imports the genuinely positive divisor-cover source, the fixed cutoff floor ratio, and the separate existing all-rate scalar estimate; no signed high-GCD total is used as a majorant.

Consequently, at \(r>0,T\ge4\),

\[
\boxed{
|X(T)-L_r(T)|\le\frac{64}{r^2}e^{rT}+32Te^{\sqrt T}.
}
\]

The endpoint approximation is a DISTINCT original source and adds exactly its pre-existing quarter-unit signed curvature cost:

\[
\boxed{
|\operatorname{endpointSum}(T)-L_r(T)|
\le\frac{64}{r^2}e^{rT}+32Te^{\sqrt T}+\tfrac14.
}
\]

For every independently requested \(\eta>0\) choose \(r=\eta/2\). The existing elementary high-GCD scalar proof supplies the explicit permissible choice \(R_\eta=\max(4,16/\eta^2)\) and \(C_\eta=256/\eta^2+128/\eta\) so that

\[
|X(T)-L_{\eta/2}(T)|\le C_\eta e^{\eta T}
\quad(T\ge R_\eta).
\]

The new Lean statement records an existential constant/cutoff witness. It does NOT establish an upper estimate for the SIGNED surviving \(L_{\eta/2}\).

The separate source defines LowGcdDenseEveryRateOn(G), with a SINGLE fixed scale set \(G\) selected before quantifying all positive rates. Its two directional source-candidate theorem states

\[
\operatorname{LowGcdDenseEveryRateOn}(G)\iff
\operatorname{SubexponentialOn}(\operatorname{pickupCross},G).
\]

Both directions use a further half-rate: to obtain the requested exponent \(\eta\), invoke the hard-core and paid-error estimates at \(\eta/2\), comparing the same hard mask \(L_{\eta/4}\), then absorb \(e^{\eta T/2}\le e^{\eta T}\) at nonnegative times. The fixed set \(G\) does not depend on the rate. The existing original endpoint-subexponential equivalence gives the corresponding original endpoint criterion. The RH consumer still requires independent proofs of BOTH the fixed AffineFrequent scale coverage and the low-GCD dense-core signed growth bound.

## Original-index one-sample physical return

The new sampler defines the COMPLETE signed remaining row \(R^L_{r,T}(m)=\sum_{n\in W_T}K^L_{r,T}(m,n)\). For ANY existing PositiveWindowLaw(T,w) (positive at every original source index and normalized), the actual one-index estimator is

\[
\widehat X(m)=\frac{R^L_{r,T}(m)}{w(m)}+G_r(T)+R_r(T)+H_r(T).
\]

All three paid packets are true deterministic original arithmetic terms and never assumed zero. The source candidates assert \(\mathbb E_w\widehat X=X(T)\), and for \(T\ge0\) its **expectation** differs from the original endpointSum by at most 1/4. Neither every sample nor an arbitrary physical record is promised this bias. Its conditioned sampling variance equals that of the signed remaining row and is bounded by the actual full ordered-pair importance variance for that same residual kernel. Sampling-law variability does not imply arithmetic-sign independence or control the size of L.

The complete physical observedPacket and signedReadoutDefect stay separately present; an absent/misindexed measurement must not be decoded as the true arithmetic zero. Computing the three deterministic paid sectors and the actual source-informed weights may be expensive; no asymptotic runtime saving is established.

## Independent finite diagnostic and hostile check

At \(T=\log N\), rate \(r=0.65\), with original integer \(\mu\), and 55-digit working precision for the causal Gram primitive, the four original finite masks partition all \(N(N-1)\) ordered off-diagonal source pairs:

| N | Selected Q | Fixed D | Additive-gap pairs | Disjoint ratio pairs | Disjoint high-GCD pairs | Remaining hard pairs | Original signed X | Signed hard L |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 8 | 1 | 1 | 14 | 0 | 14 | 28 | -1.481237803 | -0.526329085 |
| 16 | 2 | 3 | 58 | 12 | 12 | 158 | -3.618107158 | -0.082461962 |
| 32 | 3 | 4 | 180 | 44 | 48 | 720 | -6.641582208 | 0.071169628 |
| 48 | 3 | 6 | 276 | 72 | 76 | 1832 | -8.817884456 | 0.656272473 |
| 64 | 3 | 8 | 372 | 98 | 110 | 3452 | -10.548201120 | 1.318926470 |

This is finite exploratory arithmetic, NOT a uniform source bound, computer-assisted proof of a universal statement, or Lean checking. At \(N=32\) the dense high-GCD signed part is about +0.035549291 while the full high-GCD POSITIVE ABSOLUTE bill is 0.340227089; replacing that bill by a signed total would be an invalid shortcut. Some tiny horizons do not satisfy the scalar theorem's \(T\ge4\) hypothesis; they check mask identity only.

The new hard region still allows 3452 out of 4032 ordered pairs at \(N=64\). A source-exact partition is not a proof of cancellation among those pairs. Likewise, Dirichlet-character family averages, Gram PSD, sphere/Hilbert compactification, and finite Gibbs TV have no automatic source-specific implication for its signed size.

## Acceptance and next obligation

At publication the toolchain pins remain Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The exact source files and their hashes have been inspected on current main. No Lean/Lake/Elan toolchain was installed locally; parser, elaboration, expected theorem types, fresh kernel, dependency-closure build and transitive axiom audit remain **NOT_RUN**. Existing imported Putnam and high-GCD proofs are also not promoted by the new source declarations. No change was made to source arithmetic, dependency pins, root imports, physical codec or signed defects.

Next independent arithmetic task: prove a ONE-SIDED all-positive-rate bound on the actual surviving signed low-GCD dense packet on a fixed affinely frequent set \(G\), not an unsigned random model or a rate-dependent choice of good scales. The RH-strength bound remains OPEN.
