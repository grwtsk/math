# Spectral halting equivalence for Riemann95

Local source attribution is grwtsk contributors. The local adapter is
[Riemann95HistorySpectrum.lean](Riemann95HistorySpectrum.lean), blob
`58071dc17bed2a721db83cf070d887a7d2782a71`. Its operator is built in
[WeightedHistoryGram.lean](../../OperatorTheory/WeightedHistoryGram.lean),
blob `0665cd00b948fb315af671a367cc9f9a0701a7af`. The argument and the
compression estimates are developed in the
[history operator note](../../OperatorTheory/OrthogonalCompressionResidual.md).
[Issue #1825](https://github.com/grwtsk/math/issues/1825)

## Source and proof

The source is Google DeepMind Cryptids at
`3647718b5df22e1a61462dec0376bd204526285a`, copyright Google LLC,
Apache-2.0. `ConjectureMachines.init` and `step` are in
`Cryptids/Machines.lean`, blob `345a59a2133776d937507536b4a07667c11e299b`.
The transition table in `artifacts/riemann_95/machine.txt` has blob
`d6f841a883bcf826d1fbdbd1c66497e072231c55`.
`ConjectureMachines.Riemann95.nSteps` and `candidate` are in
`Cryptids/Riemann95Definition.lean`, blob
`cabc27cb96a7eecdfb8254e98c8dc0a9c9144a38`.
[Native interpreter and initializer](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Machines.lean)
[Transition table](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/artifacts/riemann_95/machine.txt)
[Native iteration](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95Definition.lean)

- `GRWTSK.NumberTheory.Riemann95History.zero_in_spectrum_iff_halts`
  identifies zero in the complex spectrum of `H_R95` with
  `Halts Riemann95.candidate`. The proof uses `StateTransition.mem_eval`
  for terminal reachability and `Riemann95.BootCertificate.nSteps_eq`
  with `Zf380.nSteps_reaches` for the native finite-run direction.
  The boot certificate file has blob `3c6eae70196edf6d1beb66c06d7b481e2acdf387`.
  An absent configuration follows a terminal step. The terminal
  configuration itself remains a live index. The reduction retains the
  whole execution from the blank initializer. Each row is specified by
  the two finite configuration queries at times n and n+1.
  [Native finite-run certificate](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Bootstrap95.lean)
- `GRWTSK.NumberTheory.Riemann95History.zero_notMem_spectrum_iff_riemannHypothesis`
  composes that equivalence with
  `ConjectureMachines.Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis`
  from `Cryptids/Semantics/Riemann95.lean`, blob
  `476d1101cb827e1a29ce61232d2e7b8b0727fecf`. The conclusion
  characterizes spectral exclusion and leaves its proof as the open
  arithmetic obligation.
  [Pinned RH return](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean)

The bounded operator acts on all of ℓ²(ℕ,ℂ) and is positive and
self-adjoint by its Gram representation. The row operator uses
(x_{n+1}-2x_n) on live edges, zero at a terminal vertex, and the
identity on indices after that vertex. For a stopped history the vector
with coordinates (2^n) on the live prefix and zero elsewhere has
finite support and lies in the kernel. Its zeroth coordinate is one.
For an infinite history the row operator is (S-2I), where (S) is
the backward shift with norm at most one. The factorization
(-2(I-S/2)) gives an inverse by the Neumann series, and the adjoint
and Gram operator are then invertible. Mathlib's
`spectrum.zero_mem_iff` connects these two statements to the spectrum.
The analytic note also checks the infinite case by coercivity and
explains the false spectral zero of the unweighted half-line model.

## Verification

The relevant source layout and pins were inspected at math main
`406458cebd763d82181471ca2c3a6590019ec4f6` and checked through
`7f46aaf5f2c98c568f21d96a564c670505af4976`, tree
`b15e004eb28aed3efe40605f0a546069c4ffe3df`.
The isolated environment uses Lean `v4.35.0-rc4` and mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb`. The generic module also
builds at root Lean `v4.34.1` and mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

The root generic module passed
`lake build +GRWTSK.OperatorTheory.WeightedHistoryGram`,
`lean -DwarningAsError=true --trust=0` under `lake env`, and
`leanchecker GRWTSK.OperatorTheory.WeightedHistoryGram`.
The isolated check used `lake env` at the Cryptids pins. Both modules
compiled with `lean -DwarningAsError=true -R <canonical math root> -o <olean>`
into a separate output tree on `LEAN_PATH`. The explicit root points
to the canonical source directory because Lean resolves the relative
package symlinks before checking source containment. The adapter also
passed `lean -DwarningAsError=true --trust=0` under the same isolated
environment.

Targeted `leanchecker` replay passed for both isolated modules.
The statement audit confirmed the native successor, positive
self-adjointness, the terminal equivalence, and its spectral and RH
consequences. The transitive `#print axioms` audit of both spectral
equivalences reports `propext`, `Classical.choice`, and `Quot.sound`.
The successor equation reports `propext` and `Quot.sound`.

A full clean dependency rebuild and independent analytic review are
`NOT_RUN`. Lean formalization of the exact spectral interval in the
infinite case and of the off-window observation estimates is `NOT_RUN`.
The unconditional exclusion of zero remains open.
