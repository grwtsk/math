# RH-E02 / RH-G01 — Anchored Möbius-pair coefficient bridge

**Selected issue:** [#942](https://github.com/grwtsk/math/issues/942). **Single theorem layer:** exact finite coefficient/source support comparison to the existing Green arithmetic coordinate. **Evidence:** `SOURCE_DRAFT` only for the new source; no elaboration, kernel check, trust audit or external replay is claimed.

## 1. Immutable repository audit and exact terminal consumer

- Pinned `grwtsk/math` `main`: `a3e9e38bb9b41a225d1bf510d092546b7df62a56`, tree `6879dfdfa9cba81dbe0e6156f19871d65292eef4`, inspected before branch creation. The exact parent is `main`; **this is not a stacked PR**.
- The previous [PR #1046](https://github.com/grwtsk/math/pull/1046) (restricted reconstruction/frame) and [PR #1047](https://github.com/grwtsk/math/pull/1047) (all-packets kernel no-go) have **merged** into `main`. Source integration is not a clean-replay acceptance.
- Pinned toolchain `leanprover/lean4:v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.
- Existing actual pair-carrier definitions and refuted all-packets kernel: `GRWTSK/NumberTheory/Moebius/AdditiveMultiplicativeBridgeObstruction.lean`, blob `6530da3ccea612394f604b708e354c8ec7440e03`. No assumption of `AdditiveMultiplicativeCoefficientKernelExists`.
- Existing Möbius-log divisor-antidiagonal identity: `GRWTSK/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean`, blob `7d421be4d9b7b125abc23cf621190167d1853dcf`.
- Exact `centeredGreenWindow X = Finset.Ioc X (2*X)`, coefficient `vonMangoldt n / n` and test coordinate: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean`, blob `6f0a2352dc636f3774d5ef2ebebc0235ffde70aa`.
- Exact consuming Fourier intermediate `thinGreenArithmeticFourierCoordinate`: `CenteredMobiusLogGreenFourierBridge.lean`, blob `6b11fea2492a8552f93919bc215f0e40a53deb7e`.
- The specific RH-facing theorem **`GRWTSK.RiemannHypothesis.riemannHypothesis_of_arithmeticFourierCoordinateBound`** in `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenCoordinateEnergyCriterion.lean`, blob `f40915f82fa625ab74d0cfd9c6459db08e65b75b`, conditionally returns `_root_.RiemannHypothesis` from `AllDyadicArithmeticFourierCoordinateBound`. That input requires a uniform all-large-dyadic-scales and all finite Fourier-heads bound of the form
  \[
  \operatorname{fullGreenArithmeticCoordinateStage}(X,N)
  \le C_\eta X^{-1+\eta},\quad X=\operatorname{dyadicScale}(j),
  \]
  including both boundary squares, for every \(\eta>0\). It is RH-implying and via a repository theorem equivalent to `AllDyadicEnergyBound`. **This analytic premise remains OPEN.**
- The new conclusion is an **exact intermediate coefficient identity**, consumed by the definition of the thin Green Fourier coordinate; it does **not** itself imply `AllDyadicArithmeticFourierCoordinateBound`.

This is a focused audit of the two arithmetic carriers, the authenticated Green input, its Fourier readout and the named RH criterion. Quintic, interpolation, Hodge, spectral and `K`-theoretic sources are not needed and are not imported.

## 2. Candidate comparison

| Candidate | Consumer / missing input | Support, witness, strength | Formal difficulty / failure value |
|---|---|---|---|
| Actual regular-centered to graded Green isometry/frame | `HasRestrictedLowerFrameBound` / finite Green packet; missing arithmetic coefficient map and admissible differences | Would be directly quantitative if established, but no source-preserving operator supplied | High: metric and support incompatibilities; cannot infer coercivity from a forward estimate |
| **Explicit parity-anchored finite coefficient transform (selected)** | `centeredGreenPrimeCoordinate` then `thinGreenArithmeticFourierCoordinate`; missing source-coupled finite coefficient equality | Real source coefficients \(\mu(2m+r)\mu(2m+r+2h)\); exact factors \(\mu(1)=1,\mu(2)=-1\), divisor-antidiagonal witness; exact finite algebra | Low finite-proof distance; useful even if it fails to preserve admissible centered-energy support |
| Broad cross-category kernel extrapolation | Refuted all-\(P\) kernel #956 / proposed norm transport | False unrestricted quantifier; \(\varnothing\) refutes coefficient reproduction | Failure already established; no reason to revive the false interface |

**Selection rule:** only the second proposal proves a source-identified, testable coefficient statement at finite scope without inventing positivity, a reverse energy bound, or a common global interpolating object.

## 3. Full mathematical construction

For any positive integer \(a\), define one instance of the **existing**
`CenteredAdditiveMobiusPair` carrier:
\[
x(a)=
\begin{cases}
(m,h,r)=(0,(a-1)/2,1), & a\text{ odd},\\
(m,h,r)=(1,(a-2)/2,0), & a\text{ even}.
\end{cases}
\]

Then the pair's left endpoint is \(1\) (odd case) or \(2\) (even case), and its right endpoint is **exactly \(a\)**. With
\[
\varepsilon(a)=
\begin{cases}1,&a\text{ odd},\\-1,&a\text{ even},\end{cases}
\]
the actual source coefficient obeys
\[
\boxed{\quad \varepsilon(a)\,
  \mu(\operatorname{left}(x(a)))\mu(\operatorname{right}(x(a)))=\mu(a)
  \qquad (a>0).\quad}
\]
This is a precise parity-anchored identity, *not* a relabeling of the full centered-energy packet.

At an arbitrary scale \(X\), fix one finite source index set and one target:
\[
P_X=\{a\in\mathbb N:1\le a\le 2X\},\qquad
Y_X=\{n\in\mathbb N:X<n\le2X\}.
\]
For a real source coefficient packet \(f:\mathbb N\to\mathbb R\), define the **linear** finite divisor transform
\[
(T_X f)(n)=\sum_{ab=n}
  \mathbf 1_{a\in P_X}\,
  \varepsilon(a) f(a)\log b,
\]
where the sum ranges over the existing finite divisor-antidiagonal carrier. Every \(n\in Y_X\) is positive and every divisor \(a\) satisfies \(1\le a\le n\le2X\), so no factor is clipped.

The principal actual-data identity is
\[
\boxed{\quad
(T_X f_{\rm anchored})(n)=\Lambda(n)\quad
(n\in Y_X),\qquad
f_{\rm anchored}(a)=\mu(\operatorname{left}(x(a)))\mu(\operatorname{right}(x(a))).
\quad}
\]

This is proved at source level by the existing finite divisor-sum theorem
\(\Lambda(n)=\sum_{ab=n}\mu(a)\log b\), the positive-divisor support lemma in pinned Mathlib, and the exact parity identity. No arbitrary positivity or RH-strength premise enters.

After the **same** division by \(n\), complex cast and test \(\phi(n/X-1)\), the module authors the equality
\[
\operatorname{AnchoredGreenPrime}(X,\phi)=
\operatorname{centeredGreenPrimeCoordinate}(X,\phi).
\]
Subtracting the **unchanged** continuum Fourier background yields literal agreement with the previously defined
\(\operatorname{thinGreenArithmeticFourierCoordinate}(X,k)\). The continuum background is not absorbed into a positive form or claimed to be an arithmetic source.

### Exact support and hostile cases

- Half-open target \(X<n\le2X\), not \(X\le n<2X\).
- Every source factor is in the fixed \(P_X\); the transform is not quantified over arbitrary \(P\), so it does **not** contradict the no-go #1047.
- The integer source pair uses \(h\ge0\), not the previously required **strictly positive** shifts everywhere. At \(a=1\) and \(a=2\), \(\boxed{h=0}\); the Lean source authors an exact negative control for these two cases.
- The first-factor \(a=1\) term in the von Mangoldt divisor convolution contributes \(\log n\). Dropping the zero-shift boundary can therefore destroy an essential arithmetic contribution; no small-boundary assumption is allowed.
- A parity anchor recovers coefficients, not a canonical Hodge object, spectral realization, Weil form, lower frame, or norm-preserving map. No application of PR #1046's reconstruction lemma is justified.
- An upper energy bound, even if later established for this operator, would have the wrong logical direction for source-energy recovery unless a lower frame on *actual admissible difference packets* is supplied.
- No differentiation under a limit, tail control, interval enclosure, numerical zeta-zero data, or external proof certificate is used.

## 4. Positivity, finite witness and classification

The **canonical observable for this increment is a signed real finite arithmetic coefficient transform**, not a positive quadratic form. Its domain is finitely supported real source coordinates \(f(a)\), its codomain is real target coefficients on \(Y_X\), and its sign is the **explicit** factor \(\varepsilon(a)\). Normalization by \(1/n\) is introduced only at the existing Green-coordinate consumer.

**Exact property proved:** a linear finite coefficient identity and source/target support preservation. **Positivity proved:** none (neither strict/nonnegative quadratic positivity nor PSD kernels/measures/traces nor global Weil positivity). The constant sign factors are an algebraic normalization, not a positivity certificate.

**Finite witness:** fixed anchors \(\mu(1)=1\), \(\mu(2)=-1\), exact division/parity and divisor antidiagonals. As a separate, nonproof diagnostic, a SymPy-based finite fixture checked the anchor endpoint/sign identity for every factorization in target windows \(X<n\le2X\) for \(1\le X\le16\); it found no exceptions. This does not establish any unbounded theorem or Lean elaboration.

## 5. Evidence, provenance and contribution boundaries

- `SOURCE_DRAFT`: established by committed Lean source.
- `LITERATURE_REVIEWED`: not claimed; pinned repository and Mathlib source implementations inspected, no external scholarly theorem imported.
- `ELABORATED`, `KERNEL_CHECKED`, `TRUST_AUDITED`, `EXTERNALLY_REPLAYED`, `ANALYTIC_PREMISES_DISCHARGED`: **not established** for this increment. Lean/Lake execution was unavailable in the authoring environment. Source-level `by` proofs are not accepted proofs until exact-head elaboration and audit.
- Import provenance: pinned Mathlib integer Möbius prime/one theorems and `Nat.left_ne_zero_of_mem_divisorsAntidiagonal`/finite divisor API; existing GRWTSK centered-pair fields, Möbius-log identity and Green window/coordinate; newly authored anchored mapping/sign and source-support comparison. No outside result attributed to Sarnak or OpenAI without a source; no numerical author credit weights assigned.
- Proof DAG:
  \[
  \text{existing pair carrier + } \mu(1),\mu(2)
  \to \text{anchored }\mu(a)
  \to \text{fixed }P_X,Y_X
  \to T_X(f_{\rm anchored})=\Lambda
  \to \text{Green prime coordinate}
  \to \text{existing thin Fourier coordinate}.
  \]
  Further: \(\text{all-scale *unproved* Fourier stage bound}\to\mathrm{RH}\).
  The proposed next step from the anchored source to **actual regular centered energy** has no proved edge.

**RH consequence:** an exact, finite, source-specific arithmetic rewrite of an established intermediate input to an RH-equivalent energy framework. It is a *reusable coefficient comparison only*, not an energy estimate, a new RH supplier of the required strength, or a proof of RH.

## 6. Exactly one next obstruction

Prove a **source-admissibility and boundary comparison** between this anchored set \(\{x(a):a\in P_X\}\) and the repository's authentic strictly positive-shift centered packet: identify precisely which anchored coefficients lie on the actual admissible center/shift support, and give an exact named correction for those outside (starting with the \(h=0\) factors \(a=1,2\)). Either a complete correction identity or a source-bound counterexample is acceptable.

No second analytic bridge or energy inequality is attempted here. The new PR must remain draft and unmerged pending independent acceptance.
