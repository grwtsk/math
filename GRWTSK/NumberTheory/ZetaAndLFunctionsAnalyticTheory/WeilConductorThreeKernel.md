# Shared source of the conductor-three integrated kernel

Local attribution: grwtsk contributors.

## Source-preserving extraction

[WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean) contains the
existing declarations `gammaRate`, `physicalGreen`, `primeHinges`,
`sourceKernel`, `partialSourceKernel` and `gammaRate_pos` in the unchanged
namespace
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.
They were moved from
[WeilConductorThreeRadiusFourScrewGreen.lean](WeilConductorThreeRadiusFourScrewGreen.lean)
at commit
[`7dcbe07202484a7fdff0d631f6b1649ad64680c2`](https://github.com/grwtsk/math/commit/7dcbe07202484a7fdff0d631f6b1649ad64680c2).
The historical source imports this common module and retains its original
analytical exposition, imports and evidence status.

The small source module also imports
[DirichletModThreeCharacter.lean](DirichletModThreeCharacter.lean). That file
contains the existing definition `modThreeQuadratic` and its three elementary
theorems `modThreeQuadratic_one`, `modThreeQuadratic_two`, and
`modThreeQuadratic_nonprincipal`, moved from
[DirichletModThreeQuadraticConstruction.lean](DirichletModThreeQuadraticConstruction.lean)
at the same commit. Its namespace, local prime instance and mathematical
bodies are unchanged. The original file retains its finite-Fourier
eigenvector theorem and imports the shared character module.

Exact comparisons of all ten moved definition/theorem statements and bodies
against the pinned source matched. The changes to the moved kernel docstrings
clarify their location and distinguish pointwise kernel order from
quadratic-form order. These are moves of the same declarations, not aliases
to a newly invented arithmetic source. Mathlib quadratic-character attribution
and licensing remain explicit.

## Purpose and mathematical identity

The mathematical consumers are the
[truncation](WeilConductorThreeKernelTruncation.lean),
[sampling](WeilConductorThreeKernelSampling.lean), and
[integral enclosure](WeilConductorThreeKernelEnclosure.lean) modules.
They need the native character, gamma data and exact finite arithmetic
inventory, without requiring every historical finite-Fourier or source-sign
development as a prerequisite.

For the character, the same Mathlib quadratic character on `ZMod 3` is composed
with the integer cast into the complex numbers. Its values at one and two
remain one and minus one. Evaluating a hypothetical principal-character
identity at the unit two gives the existing nonprincipal proof. This does
not add primitivity, conductor, functional-equation or zero-location claims.

For the integrated kernel, every term retains its original defining
expression: `gammaConstant 3 1`, `parityKernel 1`, the literal
`twistedPrime 4 modThreeQuadratic` expression, the cutoff within
`activePrimePowers 4`, and the factor one half in each arithmetic hinge.
The physical Green kernel is moved unchanged; its definition alone proves
no inverse-operator, domain or physical-energy identity.

## Evidence and retained failures

The extracted modules compile under unchanged Lean `4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Separate AI-assisted source reviews
checked declaration identity and the unchanged eigenvector statement.
Final source hashes, axiom audit and fresh Lean-kernel replay are recorded
in [issue #1839](https://github.com/grwtsk/math/issues/1839).

An initial broad build of the historical ScrewGreen import closure encountered
pre-existing errors in `DirichletFiniteParseval`. That attempt failed. The
new narrow source build succeeds and does not pretend to repair or verify
the historical closure. A successful complete historical rebuild has not
been obtained; the attempted broad build remains **FAILED**. Fresh replay
of that historical closure, independent external mathematical review and an
independently implemented checker are **NOT_RUN** for this extraction.

Root imports, toolchain pins and Mathlib revision are unchanged. No historical
analytical source claim is promoted merely because these shared definitions
compile.
