# DirichletLFunctionLeftBounds

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. Coordination: math#1801, scope comment 6809854276.
Inspection main `317de5348928608432bad610ba41b86271da4778`; complete root tree `e017817b2cc69450c71b168f5d6db2ed58f9ed2b`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review,
repository-wide verification and arithmetic certification: **NOT_RUN**.
No Lean command was executed. Earlier candidates and known failures retain their
recorded status. Verified local canonical skill checkouts and Lean/Lake are absent.
The required proof-automation skill returned 404 at Noe main `f97b5ca1aa660fcc20ed6444e1448cffc9f3e247`;
dependent execution stopped. No proof runner, workflow, scheduler or cross-chat
operation was dispatched. Source text/hashes/publication are not proof acceptance.

Maintained source: [DirichletLFunctionLeftBounds.lean](../DirichletLFunctionLeftBounds.lean); 362 lines, 17690 UTF-8 bytes.
Git blob `2c47565053a5f684e543f03da4d3f7181b2d0493`; SHA-256 `3a1f3ec4f7d9d61733406b1b8e8c7b3be394e1a067d081ef620ab32b91a8f80f`.
Namespace `GRWTSK.NumberTheory.WeilNegativeWitness`. Each declaration has its own exact-statement record in this directory.

## Exact source and full analytical argument

Use the EXISTING repaired entire function F_chi=poleClearedLFunction chi,
which equals (s-1)*LFunction chi s away from s=1. Its repaired value and original
zero divisor are unchanged. The level N is positive. The arithmetic conclusions
require primitive chi; no RH/GRH or simple-zero hypothesis is used.

At the unit -1, chi(-1)^2=1 and chi(-1)*chi_inverse(-1)=1, so chi and its inverse
have the same parity. Write P_chi(w)=cos(pi*w/2) for even chi and sin(pi*w/2)
for odd chi. For Re(w)>=2 the pinned completed functional equation, the identity
between L and completed L divided by the original Gamma factor, and the two
reciprocal GammaR identities give the EXACT identity

    L(chi,1-w) = N^(w-1/2)*rootNumber(chi)*GammaC(w)*P_chi(w)*L(chi_inverse,w).

The inverse character is not replaced by chi. Re(w)>0 excludes every nonpositive
integer required by the reciprocal Gamma identities; Re(w)>=2 also proves w!=0
and 1-w!=0 for the completed/uncompleted identities. There is no division by
sin or cos, and no cancellation of a Gamma factor at a pole. Thus trivial zeros
at negative real original s remain included, not excised from the estimates.

Put E=norm(rootNumber(chi)), a finite nonnegative REAL value of the actual source.
No norm-one theorem is assumed. For 2<=Re(w)<=R and abs(Im(w))<=T, positive level
gives N>=1. Bound the level factor by exp(R*log(N)), GammaC by the new Euler-integral
bound, P by exp(pi*T/2), and L(chi_inverse,w) by the preceding right-half-plane
source estimate 7/4. Pole clearing contributes norm(w). This gives

    norm(F_chi(1-w)) <= 7*norm(w)*E*
      exp(R*(log(2R)+abs(log(2*pi))+log(N))+pi*T/2).

Now H>=2, norm(s-2)=2(H+2) and Re(s)<=-1. With w=1-s,

    2<=Re(w)<=4H, abs(Im(w))<=4H, norm(w)<=5H.

The bounds follow from the real/imaginary-part inequalities for the full complex
norm and the triangle inequality, not from an ordinate projection. Substituting
R=T=4H gives 35*H*E times exp(Q), where

    Q=4H*(log(8H)+abs(log(2*pi))+log(N))+2*pi*H.

Use 35H<=exp(35H) and E<=exp(EH). Define the displayed source constant

    K_chi=40+4*log(8)+4*abs(log(2*pi))+4*log(N)+2*pi+E.

Every nonconstant summand is nonnegative, so K_chi>=4. After log(8H)=log(8)+log(H),
the difference between K_chi*H*(log(H)+1) and 35H+EH+Q is exactly

    (K_chi-4)*H*log(H)+5H >= 0.

Therefore, for EVERY H>=2 and EVERY far-left circle point,

    norm(F_chi(s)) <= exp(K_chi*H*(log(H)+1)).

For conductor-one zeta, pinned rootNumber_modOne=1 gives
K_1=41+4*log(8)+4*abs(log(2*pi))+2*pi. The separate zeta declaration returns
literally to norm((s-1)*riemannZeta(s)), since Re(s)<=-1 excludes its pole.

## Remaining supplier and source consumers

Assume C,L>=0 and the explicit remaining source estimate

    EVERY H>=2, EVERY s on norm(s-2)=2(H+2), -1<Re(s)<2:
      norm(F_chi(s)) <= exp(C*H*(log(H)+L)).

Split the circle into Re(s)>=2, Re(s)<=-1, and -1<Re(s)<2. The first part uses the
previous unconditional exp(8H) estimate; the second uses the new far-left estimate;
only the third uses this input. Re(s)=-1 and Re(s)=2 belong to the proved pieces.
Enlarging the exponents gives the full-circle bound with parameters C+K_chi+8,L+1.
Apply the EXISTING Jensen/count theorem with its already proved uniform centre bound:

    heightCount_chi(H) <= ((C+K_chi+8+log(4))/log(2))*H*(log(H)+L+2).

The count is exactly the original multiplicity-weighted count of zeros of the
continued LFunction in the open critical strip and strict absolute-height window.
Both height signs, central zeros and original analytic orders are preserved.
The last theorem supplies these constants to the unchanged source correlation
consumer. It retains every admissible compact-smooth test, support [-A,A], A>=0,
k>=1, and the full complex spectral coordinate -I*(rho-1/2). The reflected product
is never replaced by a norm square at nonreal frequencies.

THE STRIP SUPPLIER IS UNPROVED. The new Gamma/far-left results have no unresolved
analytic growth input, but formal acceptance remains unrun. The whole-circle bound,
H*log(H) count and correlation convergence are still CONDITIONAL. The new result
does not prove the full arithmetic explicit formula, positivity, RH or GRH.

## Hostile checks, alternative route, and prior art

H=2, Re(s)=-1 and arbitrary signs of Im(s) are included. Negative real trivial zeros
are allowed because only reciprocal Gamma identities are used; forcing trigonometric
nonvanishing would incorrectly remove those points. The zeta pole value is not
changed. Pole clearing for an upper count deletes no pole term from a Weil formula.
The actual root-number norm avoids importing an unproved normalization claim;
its displayed source dependence is not uniformity over all conductors.

The central strip is unbounded in height. Bounds at its two boundary lines, separate
compact maxima, and analyticity alone have NOT been used as substitutes for its
quantified growth estimate. A Phragmen-Lindelof route would need its own growth
hypotheses, or a continued-series/partial-summation bound must be supplied directly.
No independent second argument or independent review is claimed.

Dated comparison 2026-11-11: [DLMF 25.15.5](https://dlmf.nist.gov/25.15.E5) records
the classical primitive dual-character functional equation, in a Gauss-sum normalization.
Our exact normalization, modulus-one handling and reciprocal Gamma identities are
those of PINNED Mathlib, not an assumed transcription of that display. These are
classical inputs and local quantitative consequences, not claimed novel theorems or
a new numbered-paper formalization. Focused searches establish no novelty or absence.

RP-OC-01/B receive the actual-source far-left growth bound and a narrower counting
supplier. RP-OC-02 receives its conditional correlation application. A receives
individual provenance, not formal admission. RP-OC-03--10, C--F and all four
arithmetic-topology/higher-realization extensions are untouched; no program is complete.
Full pole-inclusive source identification, all prime powers/phases, conductor and
Gamma/parity/dual-character terms, arithmetic positivity, and joint varying-test
interpolation costs/tails remain separate open obligations.

## Pinned implementation sources

Ashvni Narayanan, Moritz Firsching and Michael Stoll: [Mathlib/NumberTheory/DirichletCharacter/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Basic.lean), `Even; Odd; isPrimitive_one_level_one`; Git blob `4569ebb8e61f683a9c89877f0cda4d3add4d766d`. Apache-2.0.

Michael Stoll: [Mathlib/NumberTheory/MulChar/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/MulChar/Basic.lean), `MulChar.mul_apply; MulChar.one_apply; character group structure`; Git blob `c3ea5af7172195c7ca574932089fd7b54dd9571b`. Apache-2.0.

David Loeffler and Michael Stoll: [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `gammaFactor; LFunction_eq_completed_div_gammaFactor; IsPrimitive.completedLFunction_one_sub; rootNumber; rootNumber_modOne; LFunction_modOne_eq`; Git blob `89c72580697983d86706cff17ccbea2cee6475a3`. Apache-2.0.

David Loeffler: [Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean), `Gammaℂ_def; inv_Gammaℝ_one_sub; inv_Gammaℝ_two_sub`; Git blob `09568288ef9897b1e3b0e0763dd31a9421b77616`. Apache-2.0.

Stefan Kebekus: [Mathlib/Analysis/Complex/JensenFormula.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/JensenFormula.lean), `AnalyticOnNhd.sum_divisor_le, via the existing DirichletZeroJensen consumer`; Git blob `3dd78e234df51703431c913f5bc6081233542e97`. Apache-2.0.
Local prerequisite source identities at the inspection head:
`DirichletZeroJensenGrowthBounds.lean` blob `64b1c9af1cb6875b8d509326df82e192bcc3ec19`;
`DirichletLFunctionRightBounds.lean` blob `fcfd806d32be31270d3920bb42c8bf98193c5124`;
`DirichletZeroJensen.lean` blob `50308f5753a55ee6f7229eeb1d1d0674902b6ffb`.
The new [Gamma core](../../../SpecialFunctions/ComplexGammaGrowth.lean) is in this same commit.
Their source-local records retain the actual evidence status, not transitive acceptance.

## Reproduction and evidence boundary

A clean checkout at the publication commit recorded in math#1801, with the unchanged
pins above, contains the maintained sources and exact individual statements. Proposed
command, NOT EXECUTED:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletLFunctionLeftBounds
```

After successful elaboration, run each record's `#print axioms` over the actual
transitive closure, review exact-statement correspondence and perform fresh kernel
replay. These are obligations, not receipts. No default root imports/pins are changed.
The coordinating issue records the actual source-only integrity command, exit code,
source hashes, changed paths and non-force expected-head publication/readback.
No publication/hash/lexical check upgrades the formal evidence status. Required
server-side protections remain binding. Local-only drafts are not canonical delivery.
