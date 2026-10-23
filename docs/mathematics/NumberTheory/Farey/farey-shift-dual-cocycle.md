# Farey shift: source-ordered dual SL₂(F₃) cocycle and periodic obstruction

**Source status:** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED` for
`GRWTSK.NumberTheory.Farey.FareyShiftCocycle`. This is a
mathematical *source proof candidate*, not an executed Lean or kernel receipt.
No remote workflow, root import, proof-stage acceptance or analytic limit
is supplied by this document.

## Exact mathematical construction

The existing genuine Farey cell action has
`Turn.left` and `Turn.right`, with shears

    L = [[1,0],[1,1]],   R = [[1,1],[0,1]]

acting on the RIGHT of the orientation-correct Farey frame.
For a chronological finite source word `w=[t0,...,t(n-1)]`,
the actual `GroupSuperwalk.wordUnit` gives
`F(walk I w)=F(I) M(w)`, where
`M(w)=M(t0)*...*M(t(n-1))`.
The integral frame and positive-cell hypotheses are exactly
those of `GroupSuperwalk.frame_walk`: natural numerator and
denominator endpoints, positive denominators and oriented
unimodularity. No inverse action on positive cells is asserted.

Define the source full one-sided shift on the *same* Turn alphabet:

    Schedule = Nat -> Turn,
    shift omega k = omega (k+1),
    chronologicalPrefix omega n = [omega 0,...,omega(n-1)].

The shift is an actual map on infinite input streams,
not a claim of invertibility, hyperbolicity, zero entropy,
minimality, or Sturmian dynamics.

The **existing** cocycle convention
`CocycleProduct.cocycleProduct` uses the *newest*
factor on the LEFT. Therefore the naive generator
`A(omega)=M(omega 0)` produces
`M(t(n-1))*...*M(t0)`, which is generally
**NOT** the same as `M(w)`.
The source-preserving replacement is the **dual** generator

    dualTurn(t) = M(t)^T in SL2(ZMod 3),
    dualStep(omega) = dualTurn(omega 0).

Both Farey shears have determinant one, so their
transposes are actual members of the Mathlib
`Matrix.SpecialLinearGroup (Fin 2) (ZMod 3)`,
with genuine group structure (not assumed inverse
matrices in an arbitrary semiring).
Then the exact finite product identity is

    (cocycleProduct shift dualStep n omega : Mat3)
        = (modThreeWord (chronologicalPrefix omega n))^T.

This is an exact, all-n and all-sequences algebraic
intertwiner, not a similarity of transfer matrices,
spectral equality, or a one-dimensional scalarization.
The transpose repairs the **chronological frame-right
versus cocycle-newest-left** mismatch.

## Genuinely periodic full-shift counterexample

The source schedule `repeatLR n` is left for even n and
right for odd n. It satisfies `shift^[2] repeatLR=repeatLR`,
and has chronological length-two prefix `[left,right]`.

The actual dual periodic monodromy is

    P_2(repeatLR)=(L R)^T
       = [[1,1],[1,2]]  mod 3  != I.

The new declarations
`repeatLR_shift_period_two`, `repeatLR_prefix_two`,
`repeatLR_periodic_matrix`, `repeatLR_monodromy_ne_one`
give the concrete source witness. The source-only
`fullShift_no_pure_coboundary` consumes
`PeriodicCocycleData.nontrivial_periodic_product_not_coboundary`,
and `fullShift_no_gauge_trivializes_LR` consumes
`PeriodicCocycleData.no_gauge_trivializes_nontrivial_period`.
The general `nontrivial_word_dual_product`,
`periodic_source_word_not_coboundary`, and
`periodic_source_word_resists_gauge` make the
nonidentity source-word and literal-period hypotheses
available for other named finite schedules.

This is a **no-global-transfer theorem on the full
one-sided shift space**. It makes **no assertion**
that `repeatLR` is in the orbit closure of an
irrational Sturmian coding, or that the same obstruction
applies to a minimal aperiodic subsystem.
Indeed a full-shift periodic point is not a
periodic point of an aperiodic subshift merely
because both use the alphabet {left,right}.

## Exact source-bound Sturmian coding interface

The existing
`GRWTSK.LinearAlgebra.Sturmian.bit alpha xi (n:Z)`
is the source's real half-open rotation coding,
taking values exactly zero or one. The new
`sturmianTurns alpha xi n` declares a concrete
map to the genuine Farey alphabet (bit=1
gives left, bit=0 gives right) at nonnegative
integer lattice sites.

The new `sturmianTurns_left_iff` tests this
normalization; `sturmian_source_dual_product`
specializes the all-sequence matrix identity to
this *actual* rotation-coded schedule.
No assumption `0<alpha<1` or
`Irrational alpha` is needed for the elementary
identity. Those and a proved aperiodicity/subshift
construction become necessary before calling
this the analytic Sturmian regime, and
neither is inferred from the `if` coding alone.

The `Sturmian.transfer E alpha coupling xi n`
represents a **different** Schrödinger state
recurrence with energy, real potential and
coupling. Merely reading its bit does NOT
identify that transfer with the mod-three
Farey cocycle or prove its spectral gaps.
The earlier `FareySturmianFreeConjugacy`
is restricted to **zero coupling, E=3**;
it does not upgrade this source to the
nonzero-coupling Dry Ten Martini theorem.

## Fully qualified Lean names and exact source identity

New module:
`GRWTSK.NumberTheory.Farey.FareyShiftCocycle`,
path `GRWTSK/NumberTheory/Farey/FareyShiftCocycle.lean`,
first source main commit
`a6f2d2bc30e6fb8f056f5c371147a6d0e21fbe3e`,
Git blob `50b0a865a550341322e64615419461b998546e17`.

Fully qualified definitions and proof candidates:
`Schedule`, `shift`, `shift_iterate_apply`,
`chronologicalPrefix`, `chronologicalPrefix_matrix_succ`,
`chronological_farey_frame`, `det_turnShear`,
`SL3`, `dualTurn`, `dualTurn_coe`,
`dualStep`, `dualCocycle_sourceMatrix`,
`repeatLR`, `repeatLR_shift_period_two`,
`repeatLR_prefix_two`, `repeatLR_periodic_matrix`,
`repeatLR_monodromy_ne_one`,
`fullShift_no_pure_coboundary`,
`fullShift_no_gauge_trivializes_LR`,
`nontrivial_word_dual_product`,
`periodic_source_word_not_coboundary`,
`periodic_source_word_resists_gauge`,
`sturmianTurns`, `sturmianTurns_left_iff`,
and `sturmian_source_dual_product`.

Direct repository imports:
`GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction`
(historical introduction blob `ba99ad673f032e44eb14a4564f5488cfd31af0f1`; **current replay-pin blob** `6eabd59265a723e325654907eaf853530dd2a0bb`),
`GRWTSK.LinearAlgebra.PeriodicCocycleData`
(blob `11ca2a896e8844dcb483ce9c910c1bb07ae857e1`),
`GRWTSK.LinearAlgebra.Sturmian`
(blob `9bb5e76caaab1c4cd0a9df067e791f9996c42d48`),
plus exact Mathlib imports
`Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` and
`Mathlib.Tactic`. The source dependency closure also
includes `GroupSuperwalk`, `ReturnAngularChannel`
and `CocycleProduct`; all must be pinned and audited
before any theorem-status upgrade. The concurrent parent
`ProjectiveQuadraticChannel` repair is **current blob**
`79943dff174eee6049a9e097ca89ae1f6ddf04d4`,
not its historical introduction blob
`b07cb18412f3e64f42d2916fea91b1e59b2228c2`.
Its theorem scope remains unchanged; a new dependency hash
requires the exact new closure to be checked.

## Papers and formalization classification

**Boris Kalinin**, *Livšic Theorem for matrix cocycles*,
*Annals of Mathematics* 173 (2011), 1025–1042,
[DOI 10.4007/annals.2011.173.2.11](https://doi.org/10.4007/annals.2011.173.2.11):
the introductory necessary periodic-data condition
(1.1) is here instantiated by the actual full-shift
SL2(F3) cocycle. This uses only elementary algebraic
necessity. **Theorem 1.1 sufficient direction** requires
a topologically transitive homeomorphism of a compact
metric space with a closing property, an alpha-Hölder
GL(m,R) cocycle and identity products at *every*
periodic orbit. The new one-sided shift is not
proved to meet these conditions, and has
explicit **nonidentity** periodic data.

**Ram Band, Siegfried Beckus, Raphael Loewy**,
*The Dry Ten Martini Problem for Sturmian Hamiltonians*
(2024 arXiv preprint), [arXiv:2402.16703](https://arxiv.org/abs/2402.16703):
equation (1.1) supplies the *already maintained*
binary rotation-coded Sturmian model; its
Theorem 1.1 needs irrational frequency and
nonzero coupling. This new code maps its
zero/one rotation word into Farey shears,
but does not port the nonzero-coupling
operator or spectral-gap theorem.
Do not infer historical influence.

- **imported mathematics:** Mathlib's actual
  determinant-one matrix-group infrastructure
  and maintained GRWTSK Farey/word/shift
  definitions (not either paper's full proof).
- **source proof candidates:** all new typed Lean
  lemmas, including the dual intertwiner
  and nontrivial-period obstructions.
- **conditional interfaces:** any theorem with
  an explicit `shift^[n] omega=omega`
  and `modThreeWord(prefix)!=1` premise.
- **finite evidence:** independent exhaustive
  finite mod-three matrix arithmetic only.
- **methodological analogy:** Kalinin's global
  rigidity/closing machinery and
  Band–Beckus–Loewy's analytic spectral tree.
- **unresolved premises:** actual irrational
  Sturmian orbit closure, admissible
  Hölder/tempered gauge, analytic spectral
  comparison, periodic-data criteria on
  the *restricted* subshift, and any
  RH/GRH/Sarnak/Dirichlet L-function theorem.
- **kernel-verified bridge:** none claimed
  for this new leaf before actual verification.

## Finite preflight and remaining verification

Independent exact Python algebra verified
`P_n=(M(prefix_n))^T` on all 511
finite L/R schedules of lengths 0 through 8.
Enumeration of the 24 group elements in
`SL2(F3)` independently confirmed that
all 490 nonidentity source words in this
range remain nonidentity under all
11,760 periodic endpoint conjugations.
The period-two LR monodromy is
`[[1,1],[1,2]]` as expected.
These are arithmetic preflights, NOT
Lean compilation or proof-term checks.

Pinned Lean:
`leanprover/lean4:v4.33.0`; Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The interactive environment has no Lean,
Lake or leanchecker binary. The new leaf is
not imported into `GRWTSK.lean`;
compile its full import closure separately.

`lake build --wfail` targets,
fresh native kernel replay,
`#print axioms` on every new theorem,
and generated/opaque/unsafe dependencies
are **PENDING**, not passed.
Pin all execution requests to a
specific post-integration math commit.
Runner/controller state and actual
execution receipts belong in
`grwtsk/noeaaeue`, NOT in canonical math.
