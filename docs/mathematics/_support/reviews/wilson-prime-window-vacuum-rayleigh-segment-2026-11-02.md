# Real Rayleigh segments between prime-window vacuum levels

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-02.
Formalization assistance: OpenAI ChatGPT. Source proof candidate only.

## 1. Source problem

The maintained Wilson source already supplies:

- a real Hilbert space with the actual maximal logarithmic Hamiltonian domain;
- a nonnegative graph-self-adjoint regulated Hamiltonian `H`;
- a normalized zero-energy vacuum `Omega`;
- scalar-shifted blocks `H_r = H + log(p_r) I`;
- a finite `PiLp 2` direct sum over residue labels;
- exact residue-vacuum eigenvalues `log(p_r)`.

The universal real operator line `H(q)=H+qI` shows that every real scalar is a
valid Hamiltonian shift.  A distinct question is whether a line in the real
state space constructs prescribed real quadratic-form values.  This source
answers that question exactly between any two ordered residue-vacuum levels.

## 2. Two-vacuum construction

Fix residues `r != s` and write

\[
  \lambda=S.value(r),\qquad \mu=S.value(s),\qquad \lambda<\mu.
\]

For a requested real number `E` with

\[
  \lambda\le E\le\mu,
\]

define

\[
  a_E^2=\frac{\mu-E}{\mu-\lambda},\qquad
  b_E^2=\frac{E-\lambda}{\mu-\lambda},
\]

using the nonnegative square roots.  Then

\[
  a_E^2+b_E^2=1.
\]

Let `Omega_r` and `Omega_s` be the actual graded vacuum vectors, supported in
the two different `PiLp 2` blocks.  They are orthogonal unit vectors.  Define

\[
  \Psi_E=a_E\Omega_r+b_E\Omega_s.
\]

The state belongs to the genuine finite direct sum of maximal logarithmic
domains; no all-space bounded logarithm is introduced.

## 3. Exact norm and energy

Orthogonality gives

\[
  \|\Psi_E\|^2=a_E^2+b_E^2=1.
\]

The block Hamiltonian acts by

\[
  \mathbb H\Omega_r=\lambda\Omega_r,
  \qquad
  \mathbb H\Omega_s=\mu\Omega_s.
\]

Therefore

\[
\begin{aligned}
  \langle\Psi_E,\mathbb H\Psi_E\rangle
    &=a_E^2\lambda+b_E^2\mu\\
    &=E.
\end{aligned}
\]

Thus every real number in the closed interval between two marked prime-window
vacuum energies is an actual unit-state Rayleigh value.  This is a continuum
statement over `R`; the discrete residues supply distinguished endpoints, not
the ambient scalar field.

## 4. Exact residual and spectral uncertainty

The eigenvalue residual is

\[
  (\mathbb H-E)\Psi_E
  =a_E(\lambda-E)\Omega_r+b_E(\mu-E)\Omega_s.
\]

Its squared norm is exactly

\[
  \boxed{\|(\mathbb H-E)\Psi_E\|^2
  =(E-\lambda)(\mu-E).}
\]

Consequences:

1. The residual vanishes exactly when `E=lambda` or `E=mu`.
2. Every strict interior value is a Rayleigh value but is not an eigenvalue on
   this two-vacuum state.
3. The residual obeys
   \[
     \|(\mathbb H-E)\Psi_E\|^2\le\frac{(\mu-\lambda)^2}{4},
   \]
   with equality at the midpoint.

This distinguishes numerical-range interpolation from point-spectrum
interpolation.  The source does not claim that the complete point spectrum
contains the interval.

## 5. Relation to the real Hamiltonian line

There are two complementary real lines.

### Operator line

\[
  q\longmapsto H+qI.
\]

It constructs every real scalar shift and has vacuum energy `q`.

### State line

The normalized square-root segment between two orthogonal vacuum states
constructs every Rayleigh value between their two energies.

The first line changes the operator.  The second holds the operator fixed and
changes the state.  Confusing them would incorrectly turn an interior
expectation value into a point eigenvalue.

Prime-window values are the marked parameters

\[
  q_r=\operatorname{pntWindow}(p_r-1,1)=\log p_r.
\]

The arithmetic supplier selects points on the real line.  It does not make all
real values into arithmetic residue classes.

## 6. Comparison with OpenAI sources

At `openai/math@4eaee87548250b2682affda7d05d947c05554bae`:

- `OAI/Analysis/CoulombRadii/FieldAnalysis/PotentialAddRsmul.lean` expands an
  energy form exactly on a real affine state line `psi+t phi`.
- `OAI/Analysis/CoulombRadii/FormDomain/H1Pairing.lean` polarizes the real form
  and derives a weak eigen equation from local quadratic nonnegativity.
- `OAI/NumberTheory/TwoPoint/Bounds/SelfAdjointPath.lean` controls the least
  Rayleigh quotient along a continuous real self-adjoint path.

The present result uses the same real-line principle but exploits the special
source fact that the two graded vacua are exactly orthogonal eigenvectors.  This
removes approximation and gives the closed formulas for the interpolating
state, expectation and residual.

No claim of a new general spectral theorem is made.  The contribution is the
source-exact realization inside the maintained Wilson/prime-window formal
chain, with the unbounded domain, `PiLp 2` geometry and arithmetic endpoint
labels retained.

## 7. Boundary with the RH programme

The construction gives exact real quadratic-form values but no new Möbius
cancellation.  In the RH route, a real coefficient line may be used to expose a
complete signed mixed packet by polarization, but the terminal obligation
remains a one-sided all-positive-rate bound for the complete signed endpoint
source.  Exact reconstruction does not replace that bound.

The radical-log identity is also separate: it measures prime support but does
not estimate this Rayleigh segment or the unresolved signed endpoint quantity.

## 8. Verification status

Published declarations are source proof candidates.  The following were not
run in this environment:

- Lean parsing/elaboration and compilation;
- exact expected-type checks;
- fresh independent kernel replay;
- transitive axiom audit;
- native execution.

The source contains no intended `sorry`, `admit`, `native_decide`, or new axiom
declaration.  Publication does not establish Lean acceptance, a continuum
physical mass gap, the endpoint arithmetic supplier, or RH.
