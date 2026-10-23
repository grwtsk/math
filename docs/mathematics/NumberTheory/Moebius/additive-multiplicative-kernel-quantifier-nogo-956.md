# RH-E02 / #956 — Quantifier no-go for the proposed additive/multiplicative coefficient kernel

**Evidence:** `SOURCE_DRAFT` only for the new Lean module. No local Lean/Lake toolchain was available; no elaboration, kernel audit, trust audit or independent replay is claimed.

## 1. Audit and exact dependency

- Repository: `grwtsk/math`; current pinned `main` base `a3b0e1ee3890708162db7d4c7e228c1b22e66abf`; base tree `5117abe32cdd8d90510950d11d320e9e479d3c3f`.
- Issue selected: [#956](https://github.com/grwtsk/math/issues/956). Related #966 (norm-direction audit), #942 (actual coefficient-coordinate mismatch), #15 (canonical RH target).
- Source audited: `GRWTSK/NumberTheory/Moebius/AdditiveMultiplicativeBridgeObstruction.lean`, blob `6530da3ccea612394f604b708e354c8ec7440e03`; `MobiusVonMangoldtCoefficientBridge.lean`, blob `7d421be4d9b7b125abc23cf621190167d1853dcf`.
- Previous draft PR [#1046](https://github.com/grwtsk/math/pull/1046), head `d47c26f047e4ed82d273d9d34002c7c0d7ea3da2`, is open and not merged. This new PR branches directly from `main` and imports **none** of PR #1046's proposed source. The two increments can be reviewed independently.
- Pin: Lean `v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. The exact Mathlib `ArithmeticFunction.moebius_apply_one` comes from `Mathlib/NumberTheory/ArithmeticFunction/Moebius.lean` at that revision; `Real.log_pos` supplies the other imported arithmetic/analytic fact.

**Ultimate RH-facing criterion (unchanged):**
`GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy`
in `GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean` (blob `a6e624833f73ff1f0e19b1724fc17c8946b931be`) conditionally returns `_root_.RiemannHypothesis` from `SubpolynomialDyadicMaximalMertensTwoPointEnergy`. It is an **RH-implying conditional criterion**, not an established premise.

**Immediate declared interface audited:** `AdditiveMultiplicativeCoefficientKernelExists` in the cited obstruction source. The existing `AdditiveMultiplicativeNormControlledKernelExists` is a separate forward-energy predicate. Neither currently feeds a proved arithmetic comparison into the RH-facing maximal-energy criterion. This result is therefore a **negative interface obstruction**, not a new implication to RH.

## 2. Candidate comparison (at most three)

| Candidate | Exact consumer/premise | Expected strength and support | Witness, formal risk and failure value |
|---|---|---|---|
| Construct scale-bound \(T_j,D_j\) for actual centered/graded coefficients | Future arithmetic instantiation of `HasRestrictedLowerFrameBound` (#966) | Would be source-relevant, but actual coefficient map and uniform estimates are absent | Demands substantive arithmetic identity, support matching, affine-background separation; high speculative distance |
| **Refute all-\(P\) coefficient kernel (selected)** | Existing `AdditiveMultiplicativeCoefficientKernelExists` (#956) | Exact finite obstruction; all finite packets include \(\varnothing\) | Empty-set finite sum plus \(y=(1,2,2)\), \(\mu(1)\log2>0\). Low formal risk; rules out a logically false bridge interface |
| Test norm-only kernel predicate | Existing `AdditiveMultiplicativeNormControlledKernelExists` (#956) | Exact diagnostic; zero kernel with \(C=0\) suffices | Exhibits vacuity of a forward bound, does not reconstruct coefficients; used as supporting hostile control in same layer |

## 3. Exactly one formal obstruction layer

For `x : CenteredAdditiveMobiusPair`, the actual coefficient is
\[
c(x)=\mu(2m+r)\mu(2m+r+2h).
\]
For a multiplicative factorization `y=(a,b,n)` with \(ab=n\), the target coefficient is
\[
d(y)=\mu(a)\log b.
\]
The proposed source packet transform is
\[
(T_K(P))(y)=\sum_{x\in P}K(x,y)c(x).
\]
The source-defined proposition **requires one fixed \(K\), for every \(P\) and every \(y\)**, to satisfy \(T_K(P)(y)=d(y)\).

**Theorem:** \(\neg\texttt{AdditiveMultiplicativeCoefficientKernelExists}\).

**Exact proof:** choose \(P=\varnothing\). Then \(T_K(P)(y)=0\) for every \(y\) and every kernel. The premise would force \(d(y)=0\) for all \(y\). Set \(a=1,b=2,n=2\), with the exact finite witness \(1\cdot2=2\). The imported \(\mu(1)=1\) and \(\log 2>0\) give \(d(y)=\log2>0\), contradiction. No numerical approximation or arithmetic distribution conjecture is involved.

**Supporting hostile theorem:** \(\texttt{AdditiveMultiplicativeNormControlledKernelExists}\) holds with \(K(x,y)=0\) and \(C=0\), since both sides of its finite forward-energy bound are zero. This predicate alone cannot imply reconstructibility, injectivity, a positive lower frame or the desired arithmetic coefficient equality.

The single packet theorem `additiveMultiplicativeKernelQuantifierObstruction` combines the exact no-go and the norm-only zero-witness in one declared interface diagnosis. Its supporting Lean declarations are all in `AdditiveMultiplicativeKernelQuantifierNoGo.lean`.

## 4. Positivity and control classification

- **Canonical observable:** existing finite forward packet square-energy \(\sum_{y\in Y}|T_K(P)(y)|^2\), a nonnegative real number. The source writes real squares, so no complex-coercion or change of sign convention is introduced. For the zero kernel, it is exactly zero.
- **Strictly positive quantity:** the *witness coefficient* \(\mu(1)\log2=\log2>0\); this is **not** positive definiteness of the kernel or a Weil form.
- **Not supplied:** nonzero kernel, global positive form, positive measure, spectral positivity, finite-height zeta verification, analytic tail, interval enclosure, uniform estimate or RH theorem.
- **Finite witness:** exactly \(\varnothing\), \((a,b,n)=(1,2,2)\), \(K=0\), \(C=0\). The only analytic import is the standard fact \(\log 2>0\), not a zeta estimate.
- **Failure boundary:** this refutes the **all-packets** universal proposition. It does not refute a map restricted to a specified nonempty `P_j` whose source and target are tied by proven coefficient identities. The zero norm kernel proves that forward boundedness alone is vacuous; it does not rule out a well-posed positive lower-frame theorem for a different nonzero kernel.

No limiting argument, differentiation, tail estimate, external finite certificate, speculation about an \(L\)-function interpolation, quintic witness, Hodge space or \(K\)-theory is used.

## 5. Evidence, provenance and exactly one next obstruction

- `SOURCE_DRAFT`: established via committed source.
- `LITERATURE_REVIEWED`: not claimed; pinned local and Mathlib theorem sources were inspected, without a separate literature review.
- `ELABORATED`, `KERNEL_CHECKED`, `TRUST_AUDITED`, `EXTERNALLY_REPLAYED`, `ANALYTIC_PREMISES_DISCHARGED`: **not established** for this new layer. A manifest is a replay *request*, not a replay receipt.

**Provenance DAG:**
pinned Mathlib \(\mu(1)=1\) and real logarithm positivity + existing repository carrier/coefficient definitions + finite empty-sum identity
→ proposed \(\forall P\) predicate forces zero targets
→ exact witness \((1,2,2)\)
→ new no-go.
Separately, finite zero-kernel arithmetic → norm-only predicate trivially inhabited.
The human-directed source and prior formalization credits are retained; the no-go is a new source-draft diagnosis. No numerical credit weights are assigned.

**Next single obstruction:** replace the impossible \(\forall P\) coefficient equality with a **source-identified finite-packet bridge at one explicit dyadic scale**, fixing both the centered-pair admissible support \(P_j\) and the graded target set \(Y_j\), including their actual arithmetic coefficients and separately named continuum background. Prove an exact coefficient identity on that fixed support **before** asserting any norm or restricted-frame bound. This obligation is left open, not encoded as a completed proof or second abstraction in this PR.

Stop after this negative layer. Keep the issue open pending clean-checkout replay and a subsequently justified replacement interface. Do not merge without separate authorization.
