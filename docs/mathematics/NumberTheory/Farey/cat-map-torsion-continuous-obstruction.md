# Farey RL, the Arnold cat map and a finite-torsion phase obstruction

**2026-10-23. Formalization status:** `SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED` for the new Lean modules. The exact finite-arithmetic
Python command and exit-zero receipt are separately preserved in
`grwtsk/noeaaeue`. They are not a proof-kernel acceptance receipt.

## 1. Source-identified integer matrix, not merely spectral coincidence

The genuine Farey parent `GRWTSK.NumberTheory.Farey.GroupSuperwalk`
constructs positive mediant left/right shears (on the **right** of the
oriented integer endpoint frame)

    L = [[1,0],[1,1]], R = [[1,1],[0,1]].

The previous positive Farey return is `H=LR=[[1,1],[1,2]]`.
The **other actual Farey word**, right followed by left, is

    M = RL = [[2,1],[1,1]].

For the coordinate swap `P=[[0,1],[1,0]]`,

    P²=I, det(P)=-1, M=P H P.

Thus the Arnold cat matrix `M` is exactly the already sourced Farey
`RL` return and is `GL₂(ℤ)`-conjugate to the Farey `LR`
return. It is NOT a claim that the positive Farey **cell** dynamical
system is conjugate to the hyperbolic toral automorphism. Source frame
hypotheses retain positive denominators and oriented determinant one;
an inverse shear is not claimed to preserve positive Farey cells.
The original real expanding rate remains
`λ₊=(3+√5)/2` because these exact matrices are conjugate, but
their equality of eigenvalues does not itself prove a dynamical
entropy formula.

## 2. Genuine nine-point three-torsion subsystem of the real torus

The new module
`GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge`
uses Mathlib's actual
`UnitAddTorus (Fin 2)= (ℝ/ℤ)²` and the
**injective additive group homomorphism**
`ZMod.toAddCircle : ZMod 3 →+ UnitAddCircle`
from pinned Mathlib
`Mathlib.Topology.Instances.AddCircle.Real` (Git blob
`b360e250d0d12bdee2fb4a55c63d99790198eefe`).
No abstract surrogates of the torus or third-root residues are
substituted.

Define `torsionEmbedding(v)(i)=ZMod.toAddCircle(v(i))`
for `v:Fin 2→ZMod 3`. The source candidate states that this map
is injective on all **nine** points and
`(3:ℕ) • torsionEmbedding(v)=0`.
The actual Arnold cat torus map is

    catTorus(x0,x1) = (x0+x0+x1, x0+x1),

and the actual reduced Farey `RL` is

    catFinite(v0,v1)=(v0+v0+v1, v0+v1) in F₃².

Additivity of `ZMod.toAddCircle` gives the exact intertwiner

    catTorus(torsionEmbedding(v))
      = torsionEmbedding(catFinite(v))  for EVERY v∈F₃².

Importantly this is the **nine-point torsion subgroup**, NOT the
earlier five-class quotient by the sign gauge.
The distinct torus points v and −v remain distinct even when the
selected scalar observation assigns them the same value.

## 3. Transporting the actual finite Farey -1 channel

The existing `ProjectiveQuadraticChannel` has
`Q(x,y)=x(x+y)∈F₃`, with complex lift
`χ(0)=0,χ(1)=1,χ(2)=-1` and
`f(v)=χ(Q(v))`. It satisfies `f(Hv)=-f(v)`
for every finite vector and is sign-invariant.

Under the coordinate swap,
`finiteCatReadout(v)=f(Pv)`, and the new module proves in source

    swapFinite(catFinite(v)) = H(swapFinite(v)),
    finiteCatReadout(catFinite(v)) = -finiteCatReadout(v).

The source witness in cat coordinates is `finiteWitness=(0,1)`,
with `finiteCatReadout(finiteWitness)=1`.
Thus a function `F : Torus2→ℂ` merely **agreeing** with these nine
finite values satisfies the -1 eigenlaw **on the embedded torsion
states**; no continuity or eigenlaw outside them follows.
A continuous interpolation of finitely many values is not, by
itself, prohibited.

## 4. Why a continuous GLOBAL -1 eigenfunction is obstructed

The downstream
`GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction`
contains a separate, GENERAL topology argument.

For `T:X→X` on a topological space and `p:X` define
`HasOddLocalReturns T p` to mean: every open neighborhood
`U` of p has some `x∈U` and an odd time `2n+1`
with `T^[2n+1]x∈U`. The return point need not equal p.

If `F:X→ℂ` is continuous, satisfies `F(Tx)=-F(x)`
globally, and `Re(F(p))>0`, the open neighborhood
`U={x:Re F(x)>0}` cannot have such an odd near-return:
all odd iterates change the sign of F. This is the exact
**negative** theorem
`no_continuous_signEigen_of_oddLocalReturns`.

The stronger `EventualOpenMixing T` is an explicitly declared
hypothesis: for every two nonempty open sets U,V, sufficiently late
iterates send **some** point in U into V. It implies the required
odd-local-return condition.

Specialization to the actual `catTorus` gives the
**conditional** theorem
`no_continuous_cat_phase_extension_of_eventualOpenMixing`:

    EventualOpenMixing catTorus →
      ¬ ∃ F : Torus2→ℂ,
          Continuous F ∧
          (∀ x, F(catTorus x) = -F(x)) ∧
          (∀ v∈F₃²,
             F(torsionEmbedding v) = finiteCatReadout v).

It does NOT assert a proof of `EventualOpenMixing catTorus`.
Therefore an **unconditional** no-continuous-extension theorem
is NOT YET kernel-verified or even proved in source. The exact
missing dynamical supplier is visible in the theorem type.

## 5. External formalization and paper identities: exact boundaries

**Roy L. Adler and Benjamin Weiss (1967)**,
*Entropy, a Complete Metric Invariant for Automorphisms of the Torus*,
*Proceedings of the National Academy of Sciences USA* **57**(6),
pp. 1573–1576,
DOI [10.1073/pnas.57.6.1573](https://doi.org/10.1073/pnas.57.6.1573).
This is background for entropy/Markov-partition methods,
**not a mathematical derivation** from finite Farey channel
to Haar mixing or entropy. No historical influence is asserted.

**Marcel Morgenstern (2026)**,
[lean4-ergodic-theory](https://github.com/marcmorningstar/lean4-ergodic-theory),
immutable external commit
`040fec2e0ddf4fcba49af9f76c866d295308dd7f`.
That project pins Lean `v4.30.0-rc2`, NOT the math repo's
Lean `v4.33.0`. Exact separate external declarations:

- `ErgodicTheory.CatMapToral.catℤ` (file
  `ErgodicTheory/Examples/CatMapOrbit.lean`, Git blob
  `d72b481dbaf3a788d74248fb616ca33b53a6ba8a`):
  the genuine integer matrix `[[2,1],[1,1]]`.
- `ErgodicTheory.CatMapToral.catTorus`,
  `measurePreserving_catTorus`,
  `ergodic_catTorus`
  (`CatMapToral.lean`, blob
  `2fbc2dc709270f9c7dcbfb12f34715318402dc2e`):
  real two-torus map and Haar ergodicity.
- `ErgodicTheory.CatMapToral.catTorus_mixing`
  and `catTorus_eigenfunction_ae_zero_of_mixing`
  (`CatMapMixing.lean`, blob
  `680a64b9746cf75579586041bda758c0f0eb824c`).
  The latter has **measurable** g, pointwise eigenrelation,
  **unimodular** eigenvalue `l` with `l≠1`,
  and the conclusion `g=ᵐ[volume]0`.
  This is almost-everywhere vanishing, NOT pointwise vanishing
  on Haar-null torsion points.
- `ErgodicTheory.CatMapToral.catTorus_ksEntropy_eq`
  (`CatMapEntropy.lean`, blob
  `362845d4911edeaf9bee94016dcf9ed931c7633f`):
  KS entropy `log((3+√5)/2)` for the GENUINE cat torus map.
- `ErgodicTheory.Livsic.isHolderCoboundary_iff`
  (`Livsic/Abstract.lean`, blob
  `c9af5a07952948a8203edcf95a3c83e9b49f70fe`):
  a **scalar additive Hölder** Livšic equivalence under its
  own dense-orbit/closing hypotheses. This is not Kalinin's
  general matrix-cocycle theorem and is not imported here.

At that external immutable commit GitHub reported two successful
check runs (“Build” and “Build project”); **not independently
replayed locally**. Their compiled environment cannot be silently
substituted for the pinned `grwtsk/math` environment.

**Boris Kalinin (2011)**,
*Livšic Theorem for Matrix Cocycles*,
*Annals of Mathematics* **173**, 1025–1042,
DOI [10.4007/annals.2011.173.2.11](https://doi.org/10.4007/annals.2011.173.2.11).
Its periodic necessary condition is already separately formalized as
a source-only interface in `PeriodicCocycleData`. Its sufficient
Theorem 1.1 requires a compact transitive hyperbolic/closing base,
an α-Hölder `GL(m,ℝ)` cocycle and **all** trivial periodic products.
The present cat-torsion construction neither imports nor proves that
sufficiency theorem.

## 6. Exact local Lean declarations and provenance

All following are source candidates, not yet kernel-accepted.
Source modules were introduced on the existing `grwtsk/math`
`main` with routine non-force commits.

`GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge`:
commit **`0126a5caa75ffb1cf78ecca9db0db2d8bf8d08c4`**,
Git blob **`8ef5c4b4f732040cf0af29f11406008c08b4daec`**,
file `GRWTSK/NumberTheory/Farey/CatMapArithmeticBridge.lean`.
Fully qualified declarations under this prefix include
`catInteger`, `catInteger_eq`, `swapInteger`,
`swapInteger_sq`, `catInteger_conjugate`,
`catReal`, `catReal_eq`, `swapReal`,
`catReal_conjugate`, `catFiniteMatrix`,
`catFiniteMatrix_eq`, `catFinite`,
`catFinite_matrix`, `swapFinite`,
`swapFinite_involutive`, `swapFinite_catFinite`,
`finiteCatReadout`, `finiteCatReadout_eigen`,
`finiteWitness`, `finiteCatReadout_witness`,
`Torus2`, `catTorus`,
`torsionEmbedding`, `torsionEmbedding_injective`,
`torsionEmbedding_three_nsmul`,
`catTorus_torsion_intertwines`,
`torsion_phase_eigen`.

`GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction`:
commit **`cc96eae8a69d5087794bad49df2a353370de5cda`**,
Git blob **`b76d4c8bf7544a1800917fd111cc017011d172c0`**,
file `GRWTSK/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean`.
Declarations under this prefix:
`HasOddLocalReturns`, `EventualOpenMixing`,
`oddLocalReturns_of_eventualOpenMixing`,
`signEigen_iterate`, `signEigen_odd`,
`no_continuous_signEigen_of_oddLocalReturns`,
`torsion_witness_positive`,
`no_continuous_cat_phase_extension_of_oddLocalReturns`,
`no_continuous_cat_phase_extension_of_eventualOpenMixing`.

Exact direct GRWTSK dependency:
`ProjectiveQuadraticChannel` blob
`79943dff174eee6049a9e097ca89ae1f6ddf04d4`,
with historical introduction blob
`b07cb18412f3e64f42d2916fea91b1e59b2228c2`.
Transitive source identities for `ReturnAngularChannel`,
`GroupSuperwalk` and `ReturnSpectralChannel`
must be inventoried at the exact acceptance commit.
The new topological leaf directly imports the new arithmetic bridge.
Both leaves remain outside `GRWTSK.lean`.

## 7. Actual finite arithmetic preflight and verification boundaries

An ACTUAL local exact Python 3.13.5 command executed:

    python /mnt/data/farey_cat_map_preflight.py > /mnt/data/farey_cat_map_preflight.stdout 2> /mnt/data/farey_cat_map_preflight.stderr

**Observed exit status: 0**, stderr 0 bytes.
Executed Python source SHA-256
`a63d7e4e56bf8e6452b0573bebf0a7cc10295b859b05d419fbbdd3b86db2ad41`;
stdout SHA-256
`67aedd9704ae0f081733e46ba3933ecbe040e5b533ce39c7e9cae2d5295f8693`.
The script and exact JSON receipt are **outside math** in
`grwtsk/noeaaeue`:
[script](https://github.com/grwtsk/noeaaeue/blob/c7d9008c9eeaa985e9ca3efb0b1451fda7ae2ba7/verification/scripts/farey_cat_map_preflight_20261023.py)
and [execution receipt](https://github.com/grwtsk/noeaaeue/blob/655540044f347fbf5c0d85e7b26e37cb98bde253/verification/math/20261023-cat-map-torsion-7fbba776-exact-preflight.json).
The exact math **preflight source pin**
`7fbba776a8a7dbfac9ebee1d2571aee66d52516c`
had the two new source blobs stated above.
The finite arithmetic tested integer `P H P=M=RL`,
all nine exact `F₃²` states, injection and three-annihilation
of rational torsion coordinates, source-to-torus intertwining,
and the full finite -1 eigenrelation (36 point-level checks).
It did **not** execute Lean, prove topological mixing,
verify external paper imports, check axioms, or prove entropy.

Pinned Lean toolchain is `leanprover/lean4:v4.33.0`,
pinned Mathlib is
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The local container has no Lean, Lake or leanchecker executable.
As of this source integration, warning-clean leaf builds,
fresh native kernel replay and complete generated/transitive
`#print axioms` / unsafe / opaque / native audits are
`NOT_RUN / PENDING`. Do not treat absence of literal
`sorry` or source readback as proof acceptance.

## 8. Precisely missing suppliers

1. For unconditional no-extension: prove
   `CatMapContinuousPhaseObstruction.EventualOpenMixing catTorus`
   **or** the weaker `HasOddLocalReturns catTorus
   (torsionEmbedding finiteWitness)`. The external source
   is a MEASURE-mixing theorem; a full-support Haar /
   eventual open-mixing transport theorem, cross-toolchain
   formal import, or independent native proof is still required.
2. Prove the namespace/type identification between the new
   `CatMapArithmeticBridge.catTorus` and external
   `ErgodicTheory.CatMapToral.catTorus` in a common,
   actually compiled Lean environment before consuming external
   theorems. Equal displayed integer matrices are not
   a checked imported declaration.
3. If taking the external **a.e.-zero** route, prove full Haar
   support and the continuous-function a.e. uniqueness theorem;
   no measurable a.e. statement alone gives values on
   isolated Haar-null torsion points.
4. Construct a source-identified nonperiodic Farey/Sturmian
   cocycle and operator family with the correct chronological
   action and admissible gauge, plus the required analytic
   spectral estimates. Finite torus torsion does not
   supply those.
5. No algebraic Hodge conjecture, entropy/Markov partition
   theorem for the positive Farey cell walk, Sarnak disjointness,
   Siegel-zero estimate, 7/8-to-3/4 refinement, RH, GRH or
   statement about zero-height transcendence follows.
