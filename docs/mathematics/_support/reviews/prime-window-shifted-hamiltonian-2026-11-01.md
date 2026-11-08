# Prime-window residue shifts of the regulated Wilson Hamiltonian

Local mathematical attribution: grwtsk contributors.

## Scope

This note records the mathematical distinction between two ways of inserting a real prime-window label into the regulated Wilson Hamiltonian.

The existing source assigns to each residue class `r` a distinct prime `p_r` and the literal singleton prime window

\[
s_r=\operatorname{pntWindow}(p_r-1,1)=\log p_r.
\]

The supplier retains primality, injectivity of the prime assignment, positivity of `s_r`, and an explicit proof that `s_r` is transcendental over `\mathbb Q`. The transcendence proof is a field of the supplier because the imported formal development does not yet expose the terminal Lindemann theorem needed to construct it internally.

## Homogeneous state scaling does not move normalized energy

The predecessor construction multiplies a domain state by `s_r`. Linearity gives

\[
H(s_rx)=s_rHx,
\qquad
q_H(s_rx)=s_r^2q_H(x).
\]

This is exact and recovers `r` from an unnormalized positive quadratic form. It does not change the Rayleigh quotient:

\[
\frac{q_H(s_rx)}{\|s_rx\|^2}
=
\frac{q_H(x)}{\|x\|^2}
\qquad(s_r\ne0).
\]

In particular every scaled vacuum still has zero Hamiltonian image. Amplitude labels are therefore not spectral labels.

## Additive residue Hamiltonian

For the actual maximal logarithmic domain of the regulated Wilson Hamiltonian define

\[
H_r=H+s_r I.
\]

The domain is unchanged because the identity term is bounded on the ambient Hilbert space. For every domain vector,

\[
q_{H_r}(x)=q_H(x)+s_r\|x\|^2.
\]

Consequently, on a unit vector,

\[
q_{H_r}(x)=q_H(x)+s_r.
\]

Since the normalized vacuum `\Omega` satisfies `H\Omega=0` and `\|\Omega\|=1`,

\[
H_r\Omega=s_r\Omega,
\qquad
q_{H_r}(\Omega)=s_r=\log p_r.
\]

Thus the vacuum energy is a positive transcendental real number, and distinct residue classes are recovered exactly from their vacuum energies.

## Spectrum and excitation gap

If `Hx=Ex`, then

\[
H_rx=(E+s_r)x.
\]

Every spectral level is translated by the same amount. The vacuum-subtracted form is exactly the original form:

\[
q_{H_r}(x)-s_r\|x\|^2=q_H(x).
\]

Therefore the prime-window term does not manufacture an excitation gap. It preserves the existing finite-regulator excitation estimate while moving the absolute energy origin. If

\[
g_{\beta,L,a}\|x\|^2\le q_H(x)
\]

on the spectral complement of the principal eigenspace, then

\[
(s_r+g_{\beta,L,a})\|x\|^2\le q_{H_r}(x),
\]

and the gap above the shifted vacuum remains exactly `g_{\beta,L,a}`.

## Self-adjointness boundary

The existing source gives graph self-adjointness for `H` on its maximal domain. The new source transports this graph characterization directly under the real scalar identity shift:

\[
H_r x=y
\iff
Hx=y-s_rx.
\]

No all-space bounded operator is substituted for the unbounded Hamiltonian, and no domain enlargement is introduced.

## What is and is not recovered

Recovered exactly:

- the literal prime-window value `\log p_r`;
- positivity and injectivity of the real labels;
- transcendence, conditional only on the explicit supplier field already present;
- an injective family of vacuum energies;
- translation of every eigenvalue;
- preservation of the centered excitation form and the existing regulator gap;
- graph self-adjointness on the unchanged maximal domain.

Not claimed:

- an internally formalized Lindemann theorem for `\log p`;
- a direct-sum or superselection Hamiltonian containing all residues simultaneously;
- identification with four-dimensional plaquette residue energies;
- an Osterwalder--Schrader reconstruction, continuum limit, infinite-volume limit, or regulator-uniform physical mass gap;
- any arithmetic cancellation estimate, Liouville/Möbius endpoint bound, or Riemann Hypothesis conclusion.

## Formal status

The Lean module is a source proof candidate. Publication does not establish elaboration, expected declaration types, fresh-kernel replay, native execution, or a transitive axiom audit. Those facets remain `NOT_RUN` until separately executed against the pinned source and dependency closure.
