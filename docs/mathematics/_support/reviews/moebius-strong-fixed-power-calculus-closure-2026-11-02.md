# Arithmetic-free calculus closure for the PR103 causal Möbius transfer

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Research date: 2026-11-02.

Disposition: ordinary mathematics proved; Lean source proof candidate published separately. This increment closes the two local scalar propositions `PickupVelocityPowerEnergyTransfer` and `StrongPacketFixedRateReturn` at source-candidate level. It does not replay the external PR103 theorem, prove the zero-free-to-Mertens contour bridge, prove an all-positive-rate endpoint estimate, or prove RH. Compilation, expected-type checking, fresh-kernel replay, transitive axiom auditing, and native execution were not run.

## 1. Unchanged source

The arithmetic and causal objects are unchanged:

\[
M(x)=\sum_{n\le x}\mu(n),\qquad
V(u)=e^{-u/2}M(e^u),
\]

\[
F(t)=\int_0^tV(u)\,du,\qquad
H(T)=\int_0^T F(t)^2\,dt.
\]

In the repository these are `mertensPrefix`, `pickupVelocity`, `wholePickup`, and `pickupEnergy`.

Assume only the pointwise real envelope

\[
|V(u)|\le C e^{\rho u}\qquad(u\ge0),
\]

with \(\rho>0\) and \(C\ge0\). No arithmetic hypothesis is introduced in the calculation below.

## 2. First integration

For \(t\ge0\), interval-integral norm monotonicity against the continuous majorant gives

\[
\begin{aligned}
|F(t)|
&\le \int_0^t C e^{\rho u}\,du\\
&=\frac C\rho\bigl(e^{\rho t}-1\bigr)\\
&\le\frac C\rho e^{\rho t}.
\end{aligned}
\]

The Lean candidate deliberately uses `intervalIntegral.norm_integral_le_of_norm_le`: no continuity or interval-integrability assertion for the stepwise Mertens velocity is needed. Only the continuous exponential majorant is required to be interval integrable.

Squaring yields

\[
F(t)^2\le \frac{C^2}{\rho^2}e^{2\rho t}.
\]

## 3. Second integration

Applying the same norm-majorant mechanism to the nonnegative square integral,

\[
\begin{aligned}
H(T)
&\le \frac{C^2}{\rho^2}\int_0^T e^{2\rho t}\,dt\\
&=\frac{C^2}{2\rho^3}\bigl(e^{2\rho T}-1\bigr)\\
&\le\frac{C^2}{2\rho^3}e^{2\rho T}.
\end{aligned}
\]

This is exactly the pre-existing proposition `PickupVelocityPowerEnergyTransfer`; the new theorem candidate is

```lean
pickupVelocityPowerEnergyTransfer_proved :
  PickupVelocityPowerEnergyTransfer
```

with no additional premise.

## 4. Weak-overlap scalar payment

Write

\[
N=\lfloor e^T\rfloor,
\qquad
c_T=|\operatorname{endpointIndex}(T)|,
\qquad
q_T=(N+1)^{-6}.
\]

The actual endpoint inventory satisfies

\[
c_T\le N+1.
\]

The existing diagonal obeys

\[
0\le D(T)\le2T^2.
\]

The source weak-overlap estimate contains

\[
W_{\rm sc}(T)=c_T^2\sqrt{q_TD(T)}.
\]

Since \(c_T^4q_T\le1\), squaring gives

\[
W_{\rm sc}(T)^2
=c_T^4q_TD(T)
\le D(T)
\le2T^2
\le(2T)^2.
\]

All quantities are nonnegative, hence

\[
\boxed{W_{\rm sc}(T)\le2T.}
\]

The constant is intentionally simple; the sharper paper estimate \(\sqrt2T/(N+1)\) is unnecessary for fixed-rate absorption.

## 5. Strong-packet fixed-rate return

The published source inequality is

\[
\begin{aligned}
|S_r(T)|\le{}&H(T)+2T^2
+\frac{32}{r^2}e^{rT}
+W_{\rm sc}(T),
\end{aligned}
\]

where \(r>0\) and \(S_r\) is the complete original strong packet with the repository's rate gap.

The exponential series gives

\[
T^2\le\frac{2}{r^2}e^{rT},
\qquad
T\le\frac1r e^{rT}.
\]

Thus, if

\[
H(T)\le A e^{rT},
\]

then

\[
\boxed{
|S_r(T)|
\le
\left(A+\frac{36}{r^2}+\frac2r\right)e^{rT}.
}
\]

This discharges the pre-existing proposition `StrongPacketFixedRateReturn` at source-candidate level. It retains the complete signed strong packet; no prime-dilation credit, child Type-II compensation, orientation, or mixed packet is separately absolutized.

## 6. Consequences for the PR103 chain

After these two local gates are supplied, the clean conditional PR103 statements need only the two external analytic interfaces:

```lean
ExternalPR103ZetaNonvanishing
ZeroFreeToMertensPowerBridge
```

The new wrappers give, conditionally on those interfaces:

* `pickupEnergy` at rate `747/1000`;
* the literal endpoint sum at rate `747/1000`;
* the complete signed strong packet at rate `747/1000`;
* `pickupEnergyAbscissa <= exactPR103EnergyBoundary`.

The exact boundary remains

\[
2\theta_{\rm PR103}-1\approx0.746763933226415.
\]

No convergence at the boundary, no abscissa equality, and no all-positive-rate result is claimed.

## 7. Mathematical boundary

This increment is a formal-transfer closure, not new Möbius cancellation. The terminal arithmetic obligation is unchanged: prove a one-sided bound at every positive rate for the complete endpoint or a source-equivalent complete signed packet on one fixed affinely frequent set of scales.

The scalar fifth-power round trip still worsens every fixed strict rate below one, so the newly closed gates cannot be iterated into RH without a genuinely new arithmetic estimate.

## 8. Verification status

* ordinary mathematical derivation: **PROVED**;
* Lean source proof candidate: **WRITTEN**;
* repository publication: **PENDING** at review time;
* Lean compilation: **NOT_RUN**;
* expected declaration types: **NOT_RUN**;
* fresh-kernel replay: **NOT_RUN**;
* transitive axiom audit: **NOT_RUN**;
* native execution: **NOT_RUN**;
* external PR103 adapter: **NOT_REPLAYED**;
* zero-free-to-Mertens bridge: **NOT_FORMALIZED**;
* all-positive-rate endpoint supplier: **UNPROVED**;
* Riemann Hypothesis: **UNPROVED**.
