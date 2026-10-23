# Global projective Farey return channel from a quadratic over F₃

**Formalization status:** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`.
The source is a bounded mathematical proof candidate; its Git commit
and a finite independent arithmetic check are **not** Lean elaboration
or kernel proof acceptance.

## Exact source and obstruction closed

The earlier [oriented mod-three Farey return](return-angular-projective-obstruction.md)
has matrix `H=LR=[[1,1],[1,2]]`, `H²=-I`, and
the selected vector phase `1,i,-1,-i`. It is not
sign-invariant, since `v₂=-v₀` while `φ(v₂)=-φ(v₀)`.
Thus the eigenvalue `i` cannot descend to an ordinary
projective/sign-invariant scalar observable. The later conditional
`ProjectiveKoopmanEigenvalue.farey_projective_eigenvalue_sq_one`
requires `ω²=1` for a nonzero full-vector sign-invariant
eigenfunction. This new source supplies an **actual nonzero
projective eigenfunction with eigenvalue `-1`**, not merely
a four-state selected-orbit assignment.

For `v=(x,y) : F₃²` define the `F₃` quadratic
`Q(v)=x*(x+y)`. Using the **actual** Farey matrix,
`H(x,y)=(x+y,x+2y)` modulo three, so

    Q(-v) = Q(v)
    Q(Hv) = (x+y)*(2x+3y) = -x*(x+y) = -Q(v).

The reduction uses `3=0` in `ZMod 3`. Let the finite,
**not ring-linear** lift `χ:ZMod 3→ℂ` send
`0↦0`, `1↦1`, `2↦-1`; it satisfies
`χ(-u)=-χ(u)`. The composite `f(v)=χ(Q(v))` obeys

    f(-v)=f(v),
    f(Hv)=-f(v)   for every v∈F₃²,
    f(1,0)=1 ≠ 0.

Unlike `ProjectiveKoopmanEigenvalue.projectiveParityReadout`,
whose `-1` eigenlaw had been proved **only** on the
selected four-vector orbit, the above eigenlaw applies to
**all nine vectors**, including zero. It agrees with the
square of the earlier oriented phase on the selected orbit.

## Exact quotient carrier, not silent projectivization

Define a real **sign-orbit equivalence** on `F₃²`:
`v∼w` iff `w=v` or `w=-v`.
The quotient has five classes: the zero class and the
four nonzero projective lines of `P¹(F₃)`.
The source constructs `signOrbitSetoid`, the quotient
`SignOrbitQuotient`, the literal source return induced
on it via `Quotient.map`, and the complex readout
via `Quotient.lift`. The latter is well-defined because
`f(-v)=f(v)`, and therefore:

    descendedQuadraticReadout(returnOnSignQuotient q)
      = -descendedQuadraticReadout(q)     for every quotient q.

The readout is nonzero at the class of the source vector
`(1,0)`. The second two-cycle of nonzero projective
lines lies in the ZERO set of this particular readout;
there is no claim of a nowhere-vanishing eigenfunction
on every projective line. The zero-vector class is
retained, so the literal quotient is **not** silently
identified with `P¹(F₃)` without restriction.

## Fully qualified declarations and source identity

Module `GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel`,
path `GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean`.
First integrated `grwtsk/math` main commit
**`0783908183b27551088174e28703b9116bf2ada7`**,
source Git blob **`b07cb18412f3e64f42d2916fea91b1e59b2228c2`**.

- `quadraticSignal`, `quadraticSignal_neg`, `quadraticSignal_return`
  and `modThreeReturn_mulVec_zero`/`one` identify the actual
  characteristic-three arithmetic and sign invariance.
- `ternaryComplexSign`, `ternaryComplexSign_neg`,
  `projectiveQuadraticReadout`,
  `projectiveQuadraticReadout_sign_invariant`,
  `projectiveQuadraticReadout_return`,
  `projectiveQuadraticReadout_nonzero` and
  `projectiveQuadraticReadout_on_orbit` give the explicit
  chosen complex phase and all-vector eigenlaw.
- `signOrbitSetoid`, `SignOrbitQuotient`,
  `signOrbitClass`, `modThreeReturn_mulVec_neg`,
  `returnOnSignQuotient`, `descendedQuadraticReadout`,
  `descendedQuadraticReadout_eigen` and
  `descendedQuadraticReadout_nonzero` give a **literal
  quotient**, source-induced return and actual nonzero
  descended character.

Direct repository import is
`GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction`,
blob `08c7754c5116d7885613caf56e6b2005ab9a7167`.
This imports the prior angular return
`ReturnAngularChannel`, blob
`df4c90661a7f0a6897d274604de22850b703d38b`,
then `ReturnSpectralChannel`, `GroupSpectralChannel`,
`GroupSuperwalk` and `ResolvableQuintic` with
their exact main-snapshot dependency identities.
The module also imports `Mathlib.Tactic`.
All new declarations are source-level proof candidates
pending warning-clean build, fresh kernel replay
and complete transitive axiom/unsafe/generated audit.

## Independent finite hostile controls

Python exact enumeration of all nine `F₃²` vectors
passed `Q(-v)=Q(v)`, `Q(Hv)=-Q(v)`,
`f(Hv)=-f(v)`; source orbit readouts give
`+1,-1,+1,-1`. The quotient has five sign
classes; (f) is zero on the zero class and the
second two-cycle. These finite checks are **not**
Lean/compiler/kernel receipts.

The hostile controls explicitly reject:
- substituting the original `i` eigenvalue on
  the sign quotient (`i² ≠ 1`);
- confusing the all-vector `-1` eigenrelation
  of the NEW readout with the selected-orbit-only
  eigenrelation of the earlier `projectiveParityReadout`;
- identifying the zero class with a point of
  `P¹(F₃)`;
- treating `χ` as a field homomorphism from
  characteristic three into characteristic zero;
- inferring a global `SL₂(ℤ)` character, continuous
  winding, nonperiodic Sturmian spectrum or
  Riemann Hypothesis from this finite quotient.

## External mathematical context (not imported paper theorem)

The example is **repository-original finite algebra** under
source-credited direction of grwtsk contributors,
formalization assistance by OpenAI (2026).
No outside publication with this specific theorem,
authors or theorem number has been identified.

**Ram Band, Siegfried Beckus, Raphael Loewy**,
*The Dry Ten Martini Problem for Sturmian Hamiltonians*
(2024, [arXiv:2402.16703](https://arxiv.org/abs/2402.16703)),
equation (1.1) and Theorem 1.1, treat the
rotation-coded Schrödinger model at nonzero coupling.
The current finite quotient is **not** a
Sturmian operator or its spectral tree.
**Peter Sarnak**, *Three Lectures on the Mobius Function:
Randomness and Dynamics* (2011, [IAS lecture record](https://publications.ias.edu/sarnak/paper/506)),
Definition 3 and Conjecture 4, concern compact zero-entropy
flows and actual Möbius disjointness, not an isolated
four-cycle. Both are **methodological comparisons only**,
with the nonperiodic/analytic bridge **unresolved**.

## Remaining mathematical obligation

Construct an admissible sign/oriented gauge lift for a
source-defined **nonperiodic** continued-fraction/Farey
return cocycle, and prove an exact intertwiner to its
analytic spectral/rotation observation. Nothing in
this finite sign-quotient proof supplies that limit.
