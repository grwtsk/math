# Finite prime-window residue grading of the regulated Wilson Hamiltonian

Local mathematical attribution: grwtsk contributors.

## Result

Let `Residue` be a finite type and let

\[
S : \operatorname{PrimeWindowSupplier}(\mathrm{Residue})
\]

assign a distinct prime `p_r` to each residue class. The imported source gives

\[
\omega_r
  = \operatorname{pntWindow}(p_r-1,1)
  = \log p_r > 0,
\]

together with injectivity of `r \mapsto \omega_r` and an explicit proof field
asserting `Transcendental ℚ ω_r`.

For fixed finite Wilson regulator parameters, let

\[
H : D(H)\longrightarrow \mathcal H
\]

be the existing maximal-domain regulated logarithmic Hamiltonian. The previous
source defines the shifted block

\[
H_r=H+\omega_r I
\]

on the unchanged domain `D(H)`.

The new source constructs the actual finite `L²` direct sum

\[
\mathscr H_R=\bigoplus_{r\in R}^{\ell^2}\mathcal H,
\qquad
D(\mathbb H_R)=\bigoplus_{r\in R}^{\ell^2}D(H),
\]

and the block operator

\[
(\mathbb H_R x)_r=H_rx_r.
\]

The implementation uses Mathlib's `PiLp 2`; it does not use the ordinary
function-space supremum norm.

## Exact form decomposition

The graded form is

\[
q_R(x)=\langle x,\mathbb H_Rx\rangle
      =\sum_{r\in R}q_{H_r}(x_r).
\]

Using the already-published one-block identity gives

\[
\boxed{
q_R(x)
 =\sum_r q_H(x_r)
  +\sum_r \omega_r\lVert x_r\rVert^2.
}
\]

Define the full residue offset

\[
W_R(x)=\sum_r\omega_r\lVert x_r\rVert^2.
\]

Then the centered form satisfies the exact identity

\[
\boxed{q_R(x)-W_R(x)=\sum_r q_H(x_r).}
\]

Thus the arithmetic labels translate absolute block energies but disappear
under blockwise vacuum subtraction. They do not manufacture a physical
excitation gap.

## Residue vacua

Let `Ω` be the existing normalized regulated vacuum and let `Ω_r` be the
vector supported only in residue block `r`. Then

\[
\mathbb H_R\Omega_r=\omega_r\Omega_r,
\qquad
q_R(\Omega_r)=\omega_r=\log p_r.
\]

Consequently every residue-vacuum energy is positive and transcendental over
`ℚ` through the explicit supplier field, the energy readout is injective, and
for `r ≠ s`,

\[
|q_R(\Omega_r)-q_R(\Omega_s)|>0.
\]

The mathematical statement is that residue classes are recovered from an
injective family of transcendental real energies. It does not classify the
abstract residue objects themselves as algebraic or transcendental.

## Point-spectrum union

For an unbounded-domain linear map `A : D(A) → H`, define

\[
\sigma_{\mathrm p}(A)
 =\{E\in\mathbb R:\exists x\in D(A),\ x\ne0,\ Ax=Ex\}.
\]

The source proves

\[
\boxed{
\sigma_{\mathrm p}(\mathbb H_R)
 =\bigcup_{r\in R}\sigma_{\mathrm p}(H_r).
}
\]

A graded eigenvector has a nonzero coordinate, which is a block eigenvector.
Conversely, a block eigenvector is embedded using `PiLp.single`. If `Hx=Ex`,
the imported shift theorem gives `H_r x=(E+ω_r)x`, so every original
eigenvalue contributes the translated graded eigenvalue `E+log p_r`.

This is deliberately stated for the point spectrum. The source does not claim
an unformalized theorem identifying the complete spectrum of an unbounded
self-adjoint direct sum.

## Graph self-adjointness

For graded Hilbert vectors `x,y`, the source proves

\[
\begin{aligned}
&\forall z\in D(\mathbb H_R),\quad
  \langle \mathbb H_Rz,x\rangle
  =\langle z,y\rangle\\
&\qquad\Longleftrightarrow
\exists\,x\in D(\mathbb H_R),\quad \mathbb H_Rx=y.
\end{aligned}
\]

The forward direction tests the global graph identity on vectors supported in
one block and applies the existing one-block graph theorem. Finiteness then
assembles the coordinate domain witnesses. The reverse direction sums the
one-block identities using `PiLp.inner_apply`.

This keeps the maximal domains in the type and introduces no bounded all-space
operator.

## Excitation estimate

Let

\[
g_{\beta,L,a}
 =-\frac1a\log\!\left(1-e^{-24\beta L^3}\right)>0
\]

be the existing finite-regulator lower bound. If every coordinate lies in the
spectral complement of the principal eigenspace, then

\[
\sum_r(\omega_r+g_{\beta,L,a})\lVert x_r\rVert^2
 \le q_R(x).
\]

After exact blockwise vacuum subtraction,

\[
\boxed{g_{\beta,L,a}\lVert x\rVert_{\ell^2}^2
 \le q_R(x)-W_R(x).}
\]

The sectorwise excitation bound is therefore unchanged.

If the residue vacuum energies are ordered and the unshifted block has a unique
vacuum and first excitation separated by `g`, the global first level above the
smallest residue vacuum is controlled by both the intra-block gap and the next
residue-vacuum spacing. A fully ordered minimum theorem is not asserted in the
Lean source; the source records exact pairwise separation and point-spectrum
union.

## Source declarations

The source exports the `GradedHilbert` and `GradedDomain` types, the graded
operator and forms, exact form and centered-form identities, block embeddings,
graded vacua and injective transcendental energy readout, block and graded point
spectra with their exact finite-union theorem, eigenvalue transport,
`graded_selfAdjoint_graph`, and the graded excitation estimates.

## Boundaries

The following are not proved:

- an internal construction of the log-prime transcendence theorem;
- an identification between arithmetic prime-window labels and Wilson
  plaquette residue classes;
- a complete unbounded-spectrum theorem beyond the point spectrum;
- a continuum or infinite-volume Hamiltonian;
- a regulator-uniform physical mass gap;
- a Möbius/Liouville endpoint cancellation estimate;
- the Riemann Hypothesis.

## Verification status

The source is a repository-published proof candidate. Compilation, exact
expected-type checking, fresh-kernel replay, transitive axiom auditing, and
native execution remain `NOT_RUN`. Publication and source inspection do not
establish Lean acceptance.
