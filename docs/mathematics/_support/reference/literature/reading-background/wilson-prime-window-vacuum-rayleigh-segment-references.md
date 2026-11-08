# Prime-window vacuum Rayleigh segment source ledger

Local mathematical attribution: grwtsk contributors.

## grwtsk/math source chain

- `WilsonFullRegulatedHamiltonian.lean`: actual regulated real Hilbert space,
  maximal logarithmic domain, graph self-adjoint Hamiltonian, normalized
  zero-energy vacuum and finite-regulator excitation estimate.
- `WilsonPrimeWindowResidueHamiltonian.lean`: singleton von Mangoldt window,
  `S.value r = log(S.prime r)`, positivity, injectivity and explicit
  transcendence supplier field.
- `WilsonPrimeWindowShiftedHamiltonian.lean`: one-block scalar shift
  `H_r = H + S.value r I` and exact shifted quadratic form.
- `WilsonPrimeWindowGradedHamiltonian.lean`: finite `PiLp 2` direct sum,
  block vacua, exact vacuum energies and block-diagonal Hamiltonian.
- `WilsonRealHamiltonianLine.lean`: universal operator line `H(q)=H+qI`, real
  state-line polarization, vacuum coordinate recovery and graph transport.
- `WilsonPrimeWindowVacuumRayleighSegment.lean`: square-root interpolation
  between two ordered residue vacua, unit norm, exact Rayleigh energy and exact
  residual variance.

## OpenAI comparative sources

Pinned repository revision:

`openai/math@4eaee87548250b2682affda7d05d947c05554bae`.

- `lean/OAI/Analysis/CoulombRadii/FieldAnalysis/PotentialAddRsmul.lean`:
  exact restriction of a real energy form to `psi+t phi` and quadratic
  coefficient extraction.
- `lean/OAI/Analysis/CoulombRadii/FormDomain/H1Pairing.lean`:
  real polarization identities and weak eigen equations from quadratic
  variational lines.
- `lean/OAI/NumberTheory/TwoPoint/Bounds/SelfAdjointPath.lean`:
  least-Rayleigh continuity and positivity along a real self-adjoint path.

These sources motivate the use of real lines and quadratic forms.  They do not
supply the source-specific orthogonal prime-window vacua or the formulas proved
in the local module.

## Mathematical correspondence

For two source vacua with energies `lambda < mu` and any
`lambda <= E <= mu`, the local source constructs

\[
  \Psi_E=
  \sqrt{\frac{\mu-E}{\mu-\lambda}}\,\Omega_\lambda+
  \sqrt{\frac{E-\lambda}{\mu-\lambda}}\,\Omega_\mu.
\]

The exact source-bound statements are

\[
  \|\Psi_E\|=1,
  \qquad
  \langle\Psi_E,\mathbb H\Psi_E\rangle=E,
\]

and

\[
  \|(\mathbb H-E)\Psi_E\|^2=(E-\lambda)(\mu-E).
\]

The final identity proves that strict interior values are numerical-range
values rather than eigenvalues of this two-level state.

## Nonclaims

- No complete-spectrum interval theorem is claimed.
- No arithmetic residue is assigned to an arbitrary real `E`.
- No regulator-uniform or continuum physical mass gap is proved.
- No source-exact Möbius endpoint estimate is obtained.
- No Riemann Hypothesis conclusion is obtained.
- Source publication is not Lean elaboration, kernel checking or a transitive
  axiom audit.
