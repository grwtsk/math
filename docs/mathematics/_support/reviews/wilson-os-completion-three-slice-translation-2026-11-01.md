# Source-exact Wilson OS Hilbert completion and finite-period restricted contraction

Local mathematical attribution: grwtsk contributors. 2026-11-01.

## Research question and honest scope

The preceding grwtsk/math Wilson programme had already reached the ACTUAL
normalized four-dimensional Wilson reflection-positive form, its exact null
radical, the positive-definite complex vector-space quotient, and time
translation on an exact two-step-supported subspace for T>=3. It had NOT
constructed the Hilbert norm or completion on the true quotient.

The separate complete real spatial-slice transfer Hilbert and its
normalized logarithm/discrete semigroup had been constructed, but those
sources did not identify the FULL physical reflection-positive Hilbert
space with that real slice space. A full-continuum Yang--Mills Hamiltonian
cannot be obtained by renaming either object.

This increment addresses two concrete, source-backed missing operations:

1. Install an ACTUAL complex inner-product norm on the algebraic reflection
   quotient and complete it, preserving the exact two-slot Wilson pairing.
2. Reuse the only current positive-coupling source-specific contraction
   theorem, at T=3 on the exact two-step-supported quotient subspace,
   to build a continuous C=1 complex-linear translation into the whole
   algebraic quotient; extend it to the completion of its actual supported
   domain into the full OS Hilbert completion.

The second result is NOT a globally defined endomorphism of the
completed OS Hilbert and does NOT produce a full OS semigroup or
Hamiltonian. No artificial abstract operator, free norm estimate,
density assumption or extra positivity axiom is introduced.

Base source pinned to grwtsk/math/main
d4f580edbc9d5e906689809bba960a71e234c967.
Sources must be reconfirmed on the immutable eventual publication commit.

## Actual pre-existing source and primary objects

The following direct source files were read in the current repository:

- GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
  QuantumFieldTheoryOnLattices/WilsonReflectionForm.lean:
  normalized finite-period Wilson reflection pairing, actual full Haar
  measure, actual reflection and complex Hermitian law.
  Blob 3bf9338b970b41cfc3a7ab5945495bfad2c5786f.
- .../WilsonReflectionSesquilinear.lean:
  actual sesquilinearity and semidefinite Cauchy--Schwarz;
  blob d2681b7829cdddd9ac25bb308e892d898bb95ff3.
- .../WilsonReflectionRadical.lean:
  null radical equals the exact zero-diagonal set;
  blob 698a87b306065745facf3128ca50873e77f73295.
- .../WilsonReflectionQuotient.lean:
  Q_T is the ACTUAL complex quotient of the positive-time gauge-invariant
  observable algebra by that radical. The form B_T on Q_T is Hermitian,
  sesquilinear and strictly positive on every nonzero class, preserving
  both slots of the original normalized Wilson reflection integral.
  Blob d802e0223bfb7339305d9377e55124fcad09026f.
- .../TwoStepPositiveTranslation.lean:
  the original two-step source domain uses actual full-link endpoint
  representatives 1,...,T-2, including genuine periodic seam restrictions.
  Blob b96c7b617eca6095e7c7eb89f2e37c5620e8c538.
- .../WilsonRestrictedTranslation.lean:
  the actual quotient-source map tau_2:D_T -> Q_T from the image of the
  two-step support domain. It does not preserve D_T in general and
  has not been extended to Q_T. Blob 4fa2171a3c310affd1d34547a1d92a5141d20e33.
- .../WilsonThreeSliceTranslation.lean:
  at T=3, the true quadratic bound B_3(tau_2 q,tau_2 q) <= B_3(q,q).
  At T=4 the exact support-return identity used for T=3 fails, but
  this is NOT a counterexample to all possible contractions.
  Blob 06c5cc717e416799c264e2d3e1a2b8bc6d7b1200.
- Lean Mathlib at the pinned project dependency
  d13f23b723b8a846827a245b89c10fc7d3f11612,
  Mathlib/Analysis/InnerProductSpace/Defs.lean:
  InnerProductSpace.Core.toNormedAddCommGroup,
  InnerProductSpace.Core.toNormedSpace,
  InnerProductSpace.ofCore.
- Same Mathlib pin, Mathlib/Analysis/InnerProductSpace/Completion.lean:
  the completion carries the original continuous complex inner product
  with exact equality on canonical embedded pairs.
- Same Mathlib pin, Mathlib/Topology/Algebra/LinearMapCompletion.lean:
  ContinuousLinearMap.completion, whose action on source classes
  equals the canonical completion embedding of the original CLM.

There is no transfer of kernel or compilation acceptance from any of
these pre-existing source candidates.

## The normed algebraic Wilson OS quotient

For T>=2 and beta>=0, write A_T^+ for the maintained complex positive-time
gauge-invariant Wilson observable algebra, B_T(F,G) for the actual normalized
reflection integral, and N_T for its exact radical.

The algebraic quotient is Q_T=A_T^+/N_T, not a quotient algebra.
The existing quotientReflectionForm gives a well-defined complex pairing

  b_T([F],[G]) = B_T(F,G).

Its exact source hypotheses are established:
  b_T(q,r) = conjugate(b_T(r,q));
  b_T(q,q).re >= 0;
  b_T(q,q) = 0 implies q=0;
  b_T(q+r,s) = b_T(q,s)+b_T(r,s);
  b_T(c q,r) = conjugate(c) b_T(q,r).

Crucially, these are proved source properties, not free fields of a
new interface. Thus Mathlib InnerProductSpace.Core can be constructed
with inner=b_T and definite=the existing quotient theorem.
The canonical quotient norm is

  ||q||_OS = sqrt(b_T(q,q).re).                 (1)

It is a TRUE norm: if ||q||_OS=0 then the reflection diagonal vanishes,
so q=0 in the exact existing radical quotient. This norm is NOT put
on A_T^+ itself, where nonzero null observables are present.
The induced InnerProductSpace ℂ Q_T has the exact original b_T.

The completed OS Hilbert is

  H_OS(T,beta) := Completion(Q_T, ||.||_OS).    (2)

As completion of a complex inner-product normed space, H_OS(T,beta)
is a complete complex inner-product Hilbert space. The canonical embedding
j:Q_T -> H_OS is a dense isometry (standard Mathlib completion theorem).

For EVERY actual positive-time F,G,

  < j[F], j[G] > = B_T(F,G),                   (3)
  ||j[F]||² = B_T(F,F).re,                     (4)
  F∈N_T implies j[F]=0.                       (5)

No signed, complex or crossing-link term is omitted: (3) is exact,
the same normalized 4D Wilson reflection integral inherited through
the true radical quotient. The new source also records dense range
of the literal canonical algebraic completion embedding, without
asserting density of a proper two-step support subspace.

## The only supported actual positive-coupling shift bound

At T=3 (full Wilson periodic time length 6), let

  D_3 = range(classMap : twoStepDomain 3 -> Q_3)

be the existing submodule. Let tau_3:D_3 -> Q_3 be the actual
restrictedTranslation linear map defined from the original
timeTranslation on full Wilson configurations. The source
WilsonThreeSliceTranslation proves, for every q in D_3,

  b_3(tau_3 q,tau_3 q).re
    <= b_3(q,q).re.                            (6)

Apply the ACTUAL norm identity (1) to both sides.
Since both norms are nonnegative, comparison of their squares gives

  ||tau_3 q||_OS <= ||q||_OS.                  (7)

This is an unconditional C=1 operator bound on the literal
two-step-supported quotient. No arbitrary operator-bound field,
periodic cutoff estimate, or assumed norm/topology bridge is used.

Consequently tau_3 is a continuous complex-linear map D_3 -> Q_3,
with operator norm <=1. The norm on D_3 is the genuine submodule
norm inherited from Q_3, not a replacement norm.

Mathlib's canonical completion functor then extends that operator
to a continuous complex-linear map

  tauhat_3 : Completion(D_3) -> H_OS(3,beta),   (8)

agreeing on EVERY old supported class with j∘tau_3.
Density of the source D_3 in its OWN completion, plus the
pointwise source bound (7), proves

  ||tauhat_3 x|| <= ||x||
    for every x in Completion(D_3).           (9)

Thus the target really is the newly constructed full OS Hilbert;
the domain is the completed supported subspace, not asserted equal
to that whole Hilbert.

## Why a full finite-period physical Hamiltonian is still blocked

A contraction from Completion(D_3) into H_OS(3,beta) is NOT an
endomorphism of H_OS(3,beta). To iterate it, prove that its range
lies in the same complete supported domain and that the domain
is sufficiently rich, or find a different source-derived
globally defined time-translation construction.

Current source lacks:
- proof D_T is dense in Q_T (indeed the two-step margin excludes
  positive-time boundary-link observables; density must not be
  asserted without an actual reflection-null comparison);
- a global well-defined quotient translation on every positive-time
  class, including boundary and temporal crossing sectors;
- a uniform C=1 bound for periods T>=4; the T=4 published
  counterexample concerns the particular T=3 geometric proof;
- a compatible time semigroup on the FULL completed OS Hilbert;
- an isometric/semigroup intertwiner to the separately constructed
  regulated spatial-slice SU(2) transfer Hilbert;
- a vacuum-compatible cutoff/continuum scaling and nonzero uniform
  physical mass gap.

A naive extension declaring a zero action on unsupported sectors
would fabricate a Hamiltonian and lose actual Wilson observables.
Likewise, treating a normed quotient as complete without (2)
or using the old positive-time sup norm instead of (1)
would change the physical form.

At finite fixed positive beta and T=3, (2)-(9) are a legitimate
new mathematical stage. They do NOT construct a 4D continuum
Yang--Mills Hamiltonian or solve the Clay mass-gap problem.

## Source candidate declaration map

In
GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/WilsonReflectionHilbertCompletion.lean:

  AlgebraicOSSpace, algebraicOSInnerCore,
  algebraicOSNormedAddCommGroup, algebraicOSNormedSpace,
  algebraicOSInnerProductSpace, CompletedOSHilbert,
  observableClass, observableClass_inner,
  observableClass_norm_sq, algebraicDense, observableClass_null.

In
GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/WilsonThreeSliceOSBoundedTranslation.lean:

  SupportedClasses, restrictedTranslation_norm_le,
  restrictedTranslationCLM, restrictedTranslationCLM_norm_le_one,
  completedRestrictedTranslation,
  completedRestrictedTranslation_class,
  completedRestrictedTranslation_contracts.

No new research paper is imported for the completion mathematics;
these are standard linear functional analysis results about
the specific finite Wilson reflection pairing already constructed.
Attribution to existing Mathlib authors/licensing and previously
recorded 4D Wilson/reflection sources remains unchanged.
Mathematical argument above uses the known inner-product completion
theorem and the original actual T=3 contraction inequality.
No independent novelty claim or measured computational verification.

## Evidence, exact-source acceptance and next mathematical supplier

Lean proofs in the new modules are SOURCE_PROOF_CANDIDATES.
No Lean compiler, Lake build, fresh kernel replay, transitive
axiom audit, or expected-type check was executed for these bytes.
No verification runner or external native job was dispatched.
The analytical completion argument (1)-(5) and restricted
operator argument (6)-(9) are independently inspectable.
Compilation may expose source-level defects that require a
NEW pinned patch and retesting.

On the immutable published math commit and exact root manifest run:

  lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonReflectionHilbertCompletion.lean
  lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonThreeSliceOSBoundedTranslation.lean
  lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionHilbertCompletion
  lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSBoundedTranslation

Then fresh import, exact expected-type checks, complete transitive
#print axioms audit without sorryAx, and complete dependency
identity at that pinned revision. Store any operational receipts
in grwtsk/noeaaeue, never in math. Do not promote old source
status to this revision.

**Single next theorem:** Prove a source-defined range/density
comparison for the actual two-step time translation domain,
including positive-time boundary-link observables, or construct
a full global shift with explicit boundary correction and verify
the full OS norm bound. That is necessary before claiming an
endomorphism or full physical OS Hamiltonian. Every signed,
complex and temporal-crossing contribution must remain present.
