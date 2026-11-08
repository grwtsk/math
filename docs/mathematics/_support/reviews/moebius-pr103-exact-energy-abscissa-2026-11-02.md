# Exact PR103 boundary for the original causal Möbius square-energy abscissa

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Research date: 2026-11-02.

Disposition: complete ordinary mathematical transfer at the stated conditional scope; Lean source proof candidate. The external PR103 Dirichlet-to-zeta adapter, the standard zero-free-to-Mertens contour theorem, and the source-specific velocity-to-energy calculus remain visible inputs. No boundary integrability, all-positive-rate estimate, or RH conclusion is asserted. Compilation, expected-type checks, fresh-kernel replay, transitive axiom audit, and native execution were not run.

## 1. Exact source and objective

The original source remains

\[
M(x)=\sum_{n\le x}\mu(n),\qquad
V(u)=e^{-u/2}M(e^u),
\]

\[
F(T)=\int_0^T V(u)\,du,\qquad
H(T)=\int_0^T F(t)^2\,dt.
\]

The maintained source defines the actual weighted square-energy convergence set

\[
\mathcal C=\left\{\sigma>0:
  \int_0^\infty e^{-\sigma u}F(u)^2\,du<\infty\right\}
\]

and its infimum

\[
\sigma_H=\inf\mathcal C.
\]

The earlier fixed-power module selected a rational working zero-free exponent strictly to the right of the external PR103 threshold and obtained the clean energy rate `747/1000`. The present increment removes that arbitrary working margin at the level of the infimum.

## 2. Exact external boundary

The merged QuasiRiemannTracker PR103 source states Dirichlet-L nonvanishing to the right of

\[
\theta_0=
\frac{2804966284017490358030969257914123810640482798488248385236764587735806455694206308975383836842958115341512355256943573632654341}
{3211614609922119834694179379888743028634953588197852962423516288191911449231164741438582626063161096341458934143644085157872271}.
\]

After the explicit modulus-one adapter, this is the required zeta nonvanishing statement. The local repository continues to expose that adapter as `ExternalPR103ZetaNonvanishing` rather than treating the external source as a local kernel theorem.

The associated exact causal square-energy boundary is

\[
\boxed{r_0=2\theta_0-1}
\]

with reduced rational form

\[
r_0=
\frac{2398317958112860881367759135939504592646012008778643808050012887279701462157247876512185047622755134341565776370243062107436411}
{3211614609922119834694179379888743028634953588197852962423516288191911449231164741438582626063161096341458934143644085157872271}.
\]

Numerically,

\[
r_0\approx0.746763933226415.
\]

Finite rational arithmetic proves

\[
0<r_0<r_{\rm working}<\frac{747}{1000}<\frac34<1.
\]

## 3. Integrability at every strictly larger damping

Fix

\[
\sigma>r_0.
\]

If \(\sigma>1\), the repository's unconditional initial square-energy domain already gives the desired tilted integrability.

Assume instead \(\sigma\le1\). Put

\[
u=\frac{\sigma+1}{2}
\]

and choose the strict intermediate exponent

\[
\theta=\frac{\theta_0+u}{2}.
\]

Because \(2\theta_0-1<\sigma\),

\[
\theta_0<\theta<u\le1.
\]

Since \(\theta_0>1/2\), also \(\theta>1/2\). The visible Perron/contour provider then supplies a constant \(C\ge0\) such that

\[
|M(e^u)|\le C e^{\theta u}
\qquad(u\ge0).
\]

The unchanged causal normalization gives

\[
|V(u)|\le C e^{(\theta-1/2)u}.
\]

Let

\[
\rho=\theta-\frac12>0.
\]

The existing real-calculus gate yields

\[
H(T)\le\frac{C^2}{2\rho^3}e^{2\rho T}.
\]

The choice \(\theta<u\) is exactly

\[
2\rho=2\theta-1<\sigma.
\]

The repository's proved exponential-energy lemma therefore gives

\[
\boxed{
\int_0^\infty e^{-\sigma u}F(u)^2\,du<\infty
\qquad(\sigma>r_0).
}
\]

This proof uses a strict intermediate exponent. It does not evaluate or assert convergence at \(\sigma=r_0\).

## 4. Exact abscissa consequence

The preceding result says

\[
(r_0,\infty)\subseteq\mathcal C.
\]

Hence

\[
\boxed{\sigma_H\le r_0.}
\]

The formal proof uses the repository's actual `pickupEnergyAbscissa`, not an independently defined comparison number. If one assumed \(r_0<\sigma_H\), the midpoint

\[
\sigma=\frac{r_0+\sigma_H}{2}
\]

would lie in \(\mathcal C\) while remaining below its infimum, a contradiction.

The clean corollaries are

\[
\sigma_H<\frac{747}{1000},
\qquad
\sigma_H<\frac34.
\]

## 5. Comparison with prior results

OpenAI's formalized quasi-RH source gives a zeta zero-free half-plane to the right of \(7/8\). The identical source transfer maps that boundary to energy abscissa at most

\[
2\cdot\frac78-1=\frac34.
\]

The exact PR103 source improves this to \(r_0<3/4\). The preceding `MoebiusStrongFixedPowerPR103.lean` already obtained a convenient strict rate `747/1000`; the present theorem identifies the exact infimum upper boundary available from the external input, without choosing one working exponent.

This is not a new zeta zero-free theorem or a new Mertens cancellation theorem. Its programme-specific contribution is the exact transfer to the maintained causal square-energy convergence invariant.

## 6. Why this does not prove RH

The maintained energy-abscissa source proves

\[
\sigma_H=0
\iff
\text{all-positive-rate causal energy control},
\]

and the right side yields the canonical Riemann Hypothesis. The present theorem gives only

\[
\sigma_H\le r_0\approx0.74676.
\]

A positive fixed upper boundary remains far from zero. It cannot be iterated to zero through the existing fifth-power reverse bridge: the already published scalar round trip worsens every fixed rate below one.

The terminal arithmetic obligation remains a one-sided all-positive-rate estimate for the complete signed endpoint or a source-equivalent packet on one fixed adequately covering scale set.

## 7. Formalization inventory and verification boundary

New source:

`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ExactEnergyAbscissa.lean`

Principal declarations:

- `exactPR103EnergyBoundary`;
- `exactPR103EnergyBoundary_eq_fraction`;
- `exactPR103EnergyBoundary_lt_working`;
- `pr103_weighted_energy_integrable_above_exact`;
- `pr103_exact_Ioi_subset_pickupEnergyConvergenceSet`;
- `pickupEnergyAbscissa_le_exactPR103`;
- `pickupEnergyAbscissa_lt_cleanPR103`;
- `pickupEnergyAbscissa_lt_three_quarters`.

Visible inputs retained:

- `ExternalPR103ZetaNonvanishing`;
- `ZeroFreeToMertensPowerBridge`;
- `PickupVelocityPowerEnergyTransfer`.

Not run or not supplied:

- external PR103 adapter replay under the pinned local toolchain;
- zero-free-to-Mertens Perron/contour formalization;
- velocity-to-energy interval-calculus formalization;
- Lean compilation;
- expected declaration types;
- fresh-kernel replay;
- transitive axiom audit;
- native execution;
- boundary integrability at \(r_0\);
- all-positive-rate endpoint supplier;
- RH.
