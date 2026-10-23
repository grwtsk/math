# Mod-three Farey return angular channel and discrete spiral

**Status:** SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Neither source merge,
static audit, nor the finite checks below are a Lean/kernel acceptance receipt.

**Source:** `GRWTSK.NumberTheory.Farey.ReturnAngularChannel`, importing
`GRWTSK.NumberTheory.Farey.ReturnSpectralChannel`. The latter imports the
Farey-group superwalk and the genuine source `ResolvableQuintic`.

## Exact selected mathematical object

The SOURCE Farey mediant word `[Turn.left, Turn.right]` has chronological
integral transport `H = L R = [[1,1],[1,2]]`, and `farey_return_frame`
connects it to the actual endpoint frame of every Farey cell. The existing
`expandingProjector_iterate` is the real-return channel for the eigenvalue

    lambda_plus = (3 + sqrt(5))/2 > 1,
    H^n P_plus = lambda_plus^n P_plus.

The *same* elementary source shear word, interpreted over `ZMod 3`, gives

    H_3^2 = -I,     H_3^4 = I,     H_3^2 != I.

In particular the finite quotient is not an arbitrary angular generator.
The starting vector `v_0=(1,0)` has the exact orbit

    v_0=(1,0) -> v_1=(1,1) -> v_2=(2,0) -> v_3=(2,2) -> v_0,

with both coordinates taken mod 3. `modThreeReturn_orbit` proves each
transition as a literal matrix-vector product, and
`modThreeReturn_orbit_iterate` transports it to all natural return counts.

This is a representation of **one selected cyclic return subgroup** in its
natural finite quotient. The complex observable on its four distinguished
states is

    phi(v_0)=1, phi(v_1)=i, phi(v_2)=-1, phi(v_3)=-i.

The theorem `orbitPhase_next` states `phi(H_3 v_j)=i phi(v_j)`;
`orbitPhase_iterate` and `initial_orbit_phase` supply the all-n character
law. This four-cycle is a finite selected-orbit Koopman eigenchannel. It
**does not** define a one-dimensional character of all of `SL_2(Z)`, or
an idempotent on the native two-coordinate representation commuting with
both Farey generators.

## The specified combined observation

A product observation combines the existing return-projector radial
coefficient and the new quotient-orbit phase:

    z_n = (lambda_plus ^ n) * phi(v_n)
        = (lambda_plus * i)^n.

The new source declarations state:

- `simultaneous_return_channels`: same n of real matrix powers, literal
  quotient matrix-vector iterates, and the angular eigencharacter.
- `discreteSpiral_formula` and `discreteSpiral_succ`: exact complex
  product law `z_(n+1) = (lambda_plus i) z_n`.
- `discreteSpiral_norm`: `||z_n||=lambda_plus^n` for all natural n.
- `imaginaryUnit_fourth` and `discreteSpiral_four_returns`:
  `z_(n+4)=lambda_plus^4 z_n`.
- `discreteSpiral_ne_zero`: positive radial coefficient prevents the
  observation from vanishing.

This gives a sampled quarter-turn logarithmic spiral **by a specifically
declared observation**. It does not identify an empirical spiral image
with this observation, nor does it prove any continuous-time interpolation,
topological winding number, phase unwrapping in a chosen coordinate system,
or statistical assertion about a general superwalk.

The observation factors through TWO representations of the SAME return:
real two-plane expanding eigensector and four-state modular orbit. The
choice to multiply their scalar outputs is explicit, not falsely deduced
from determinant one, universal sector splitting, or a hidden theorem.

## Relation to the existing Gaussian, modular, and Dirichlet stacks

`GaussianModularDirichletBridge`,
`GaussianModularDirichletWalk`, and
`FareyResidueChannelDecomposition` describe exact Farey determinant
and mod-q arithmetic, additive residue selectors, and the inability
of an unstratified multiplicative Dirichlet-character sum to detect
a specified nonunit coordinate. The current four-state action uses
the **full unimodular matrix mod 3**, not a scalar multiplicative
Dirichlet character of one coordinate. In particular, several orbit
vectors have a zero coordinate mod 3. Therefore the angular channel
is not refuted by the scalar nonunit Dirichlet obstruction; neither
does it repair that unrelated representation without an additional
proved comparison.

The polynomial `ResolvableEye` predicate and quintic-factor transport
remain separately scoped. No new rational roots or completeness are
asserted. No irrational Sturmian sampling, Fredholm determinant,
Riemann-zero correspondence, or RH conclusion follows.

## Finite independent checks and trust

A separate symbolic calculation confirmed `P_plus^2=P_plus`,
`H P_plus=lambda_plus P_plus`, the four distinct mod-3 orbit points,
`H_3^2=-I`, `H_3^4=I`, and complex squared-radius identities for
n=0 through 32. These are finite checks only. The Lean source is not yet
elaborated or kernel-audited and remains unimported by the public root.
Pinned exact-commit replay must compile upstream Farey modules and the
new leaf, run fresh kernel checking, inspect every `#print axioms`
closure and unsafe/native dependencies, and validate the negative
representation controls before any acceptance claim.

## Next missing link

Identify a concrete nonperiodic or higher-order angular channel produced
by an arithmetic base rotation, continuant/Farey sequence, or source-defined
return cocycle, with a proved observation intertwiner. A four-state
quarter-turn alone does not prove spirals for arbitrary irrational
Sturmian superwalks or the spectral sheaf.
