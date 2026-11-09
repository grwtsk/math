# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaBrauerH2Transport.originalUnitsH2_eq_of_continuousSectionChange`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaBrauerH2Transport.lean](../TauCetiThetaBrauerH2Transport.lean), line 193.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaBrauerH2Transport.lean#L193).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaBrauerH2Transport.originalUnitsH2_eq_of_continuousSectionChange` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricThetaGalois.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaGaloisScalarFactor.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/LowDegree.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0, immutable upstream
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b,
Lean v4.36.0-rc1. This adapter is NOT imported by grwtsk/math v4.34.1.
The isolated adapter directory must be on the Tau Ceti LEAN_PATH.
-/

/-!
# Original geometric theta scalar -> Tau Ceti's ACTUAL continuous Brauer H²

The geometric adapter already defines thetaObstructionScalar
for a Galois 1-cocycle of EXACT original W.TorsionCoeff n.
This file transports that SCALAR to Tau Ceti's actual
  UnitsCoeff F = Additive (SeparableClosure F)ˣ
and then to the original explicit H² and canonical
continuousCohomology 2.

Tau Ceti ALREADY proves
  * unitsCoeff_continuousSMul,
  * ContCohomology.mem_Z2_iff,
  * explicitH2AddEquivContinuousCohomology,
  * h2KummerToUnits_injective and h2KummerToUnits_range.
No substitute Brauer group, chosen scalar form or
alternate Galois representation is introduced.

TWO missing arithmetic inputs remain EXPLICIT:
  hcontinuous : the actual source theta scalar cochain
                is continuous (a finite-level descent step);
  hlaw : the actual scalar theta cochain satisfies the
         multiplicative 2-cocycle identity, derivable from
         the original theta Galois action and its central
         function-field kernel. The separate native source
         ThetaCentralFactorCocycle.lean proves the group
         algebra but the source Galois action remains
         to be instantiated.

To identify a canonical n-torsion Brauer class with H²(mu_n),
a third required source fact is n-torsion of that ACTUAL
theta class. Tau Ceti's existing injectivity/image theorem
then proves existence and UNIQUENESS of its mu_n preimage.
None of these open arithmetic facts is smuggled into a
theorem by claiming an unconditional source proof.
-/

/-- This is the precise source CONTINUITY obligation. It
cannot be inferred from a finite point cochain alone:
the original rational theta functions and their Galois
action must factor through a common finite extension. -/

/-- The exact source MULTIPLICATIVE group-cocycle law
for the raw scalar in the original separable-closure
units. This law is supplied algebraically by the
central theta extension once its genuine Galois
semilinear action is formally bound. -/

/-! ## A genuinely DERIVED theta scalar cocycle law

The raw scalar factor of the original elliptic function field
is now proved to equal the Galois theta GROUP boundary in
TauCetiThetaGaloisScalarFactor. The existing group centrality
and semilinear action supply the factor law without choosing
a cocycle as additional arithmetic data.

Only genuine CONTINUITY remains to upgrade this exact group
2-cocycle to the original Tau Ceti continuous Z².
-/

/-- Real source Z² membership, NOT an arbitrary chosen
cohomology class: the ORIGINAL multiplicative factor
law and continuity imply Tau Ceti's exact additive
continuous 2-cocycle condition on `UnitsCoeff F`. -/

/-- A genuine original H² class ON SOURCE CONTINUOUS COCHAINS.
Its arithmetic hypotheses are precisely the uncompleted
continuity and semilinear scalar cocycle proofs. -/

/-! ## Section-change equality in the ACTUAL continuous H²

The native Mathlib group computation in
ThetaSectionOrderCoboundary.lean proves that two scalar
theta boundaries differ by the cochain
c_sigma * sigma(c_tau) * c_(sigma*tau)^(-1).
On `UnitsCoeff F` that is precisely d¹ c in the
ORIGINAL Tau Ceti signed differential convention.
The following source theorem promotes the exact
pointwise equation to equality in genuine continuous H²,
REQUIRING the scalar one-cochain c to be continuous.
-/

/-- EXACT bridge already present in pinned Tau Ceti:
once the true theta Brauer class is killed by n,
it has a UNIQUE preimage under the canonical
H²(F,mu_n) inclusion. Source h2KummerToUnits_range
and h2KummerToUnits_injective supply both directions;
nothing about the original elliptic theta geometry is
assumed from finite Weil perfectness. -/

/-! ## The ACTUAL nonarchimedean normalized invariant, not a proxy

At a characteristic-zero nonarchimedean local field, the
pinned Tau Ceti sources already contain:
  explicitH2AddEquivContinuousCohomology,
  muNRepH2Equiv,
  h2MuEquivZMod,
  h2KummerToUnits_injective/range.
Their exact composite is the ORIGINAL normalized
H²(F,mu_n) -> ZMod n, including primes above n.

The theta obstruction can use this equivalence only
after the genuine scalar cocycle is continuous and
its resulting Brauer class is n-torsion; neither
arithmetic premise is silently discarded here.
-/

/-- The original invariant returns to EXACTLY the original
theta class under Tau Ceti's canonical mu_n-to-units map.
Thus no arbitrary root of unity or Brauer normalization
may change the original source class. -/

/-- Source-normalized theta invariant with the actual original
group cocycle law already derived. Only arithmetic continuity
of its scalar cochain and n-torsion of its genuine Brauer H²
class remain nontrivial prerequisites. -/

/-- The normalized invariant reconstructs the original
source-defined theta Brauer H² class exactly, not merely
a residue with a matching cardinality. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
