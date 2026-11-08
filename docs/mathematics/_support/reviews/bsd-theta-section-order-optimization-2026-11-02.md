# Theta-obstruction optimization: reconcile forward/reversed sections and remove geometric scalar-choice dependence

Date: 2026-11-02 (America/Los_Angeles).
Local attribution: grwtsk contributors.
Original mathematical sources and code:
TauCetiProject/TauCeti `2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
The Tau Ceti contributors (Apache-2.0), Lean v4.36.0-rc1.
Maintained math root remains Lean v4.34.1.
All new and amended source code is a **SOURCE_PROOF_CANDIDATE**:
PARSING_NOT_RUN; COMPILATION_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOM_AUDIT_NOT_RUN; UPSTREAM_ADAPTER_BUILD_NOT_RUN.
Git readback and finite computations do **not** make these theorems
kernel-verified. No new sorry, axiom or admit declarations are
introduced, and no native Noe/CI/scheduler work has been dispatched.

## 1. Current mathematical objects, not an abstract Heisenberg replacement

At the reviewed grwtsk/math source head the original BSD/local
geometry has TWO independent, overlapping uncompiled families:

**Source family A (split into real geometric and Galois objects):**

- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricTheta.lean`,
  previous blob `1e752126a53c63747a4140eef76f1f4a3dc22c3d`,
  now amended blob `ca46ecb8ec53822df2abb094d99161b146d31c3a`;
  explicit original rational-function `ThetaLift`, divisor
  `n((T)-(O))`, original translation group multiplication,
  literal `Group` instance and exact scalar central kernel.
- `TauCetiOriginalGeometricThetaGalois.lean`, blob
  `827f67dc184ee01216ee9588b9819a81e20cbfd8`;
  true original `W.TorsionCoeff n` and Galois action,
  strict Kummer theta lift
  `f_sigma=tau_Q^*(sigma h_Q/h_Q)`, and raw obstruction
  scalar from the original function-field constant criterion.
- `ThetaCentralBoundaryPolarization.lean`, blob
  `5ab21ff636f6d82755c6b08bd53547f8d7dfdf59`;
  the FORWARD sum-lift convention `u_sigma*v_sigma`.

**Source family B (a self-contained direct theta/Kummer adapter):**

- `TauCetiGeometricThetaKummerBoundary.lean`, blob
  `b4aab596b08eb2e6a4a7a989112c491f4a19cdd2`;
  overlapping true elliptic divisor, translation,
  raw theta Kummer obstruction, and strict crossed lift.
  It is shorter and does not assert the literal group
  instance claimed by family A.
- `ThetaCentralPolarization.lean`, blob
  `c2941f8f829614ac8a0487d31629f154598fd591`;
  the REVERSED sum-lift convention `v_sigma*u_sigma`,
  which gives the wanted original Weil-cup argument
  orientation directly.

Both families are valuable mathematical source candidates.
There is no independent compiler receipt making either accepted,
so do NOT delete or promote one based on line count alone.
They share the SAME original Tau Ceti mathematical suppliers;
different Lean wrappers are not independent arithmetic proofs.

The source original Weil pairing is
`W.torsionCoeffWeilPairing n hn`, from pinned
`GaloisCohomology/WeilPairing/Basic.lean`,
blob `d54088b59839bf055f1670006127a4d854adaa50`.
The source explicit cup is
`ContCohomology.explicitCup11_mk` in pinned
`ContCohomology/Cup/Product.lean`,
blob `a751b639bb5818ab0c133b2234c0e50bf66dbf70`,
with EXACT order `e_n(a_sigma, sigma b_tau)`.
The original theta commutator is a genuine rational-function
constant, not a freely chosen alternating form.

## 2. The sign discrepancy is a CHANGE OF SECTION, not competing mathematics

For actual lifts `u_sigma`, `v_sigma` in a group whose
scalar kernel is central, define the commutator in the
shared source convention

  `[x,y] = x*y*x^{-1}*y^{-1}`,

and the two section choices

  `s_forward(sigma)=u_sigma*v_sigma`,
  `s_reverse(sigma)=v_sigma*u_sigma`.

The exact section-change one-cochain is the genuine
group commutator

  `c_sigma=[u_sigma,v_sigma]`.

It satisfies `s_forward(sigma)=c_sigma*s_reverse(sigma)`.
When its values and Galois conjugates lie in the true scalar
center, direct multiplication gives the **pointwise** identity

  `beta_forward(sigma,tau)
    = c_sigma * sigma(c_tau) * c_(sigma*tau)^(-1)
      * beta_reverse(sigma,tau)`

for the original nonabelian boundary
`beta_s(sigma,tau)=s_sigma sigma(s_tau) s_(sigma*tau)^(-1)`.
The factor
`c_sigma sigma(c_tau) c_(sigma*tau)^(-1)`
is the genuine scalar multiplicative TWO-COBOUNDARY
of the ONE-cochain `c`, once `c` is continuous.

The existing FORWARD central factor uses
`[v_sigma,sigma(u_tau)]`; the existing REVERSED
central factor uses `[u_sigma,sigma(v_tau)]`.
These are both correct at their own section choices.
Their difference is the above explicit coboundary,
not a mathematical contradiction or an unfixed minus
in a purported accepted local Tate pairing.

For the **canonical Weil-cup consumer**, choose the
REVERSED sum section, since the original source
degree-(1,1) Weil cup uses
`e_n(a_sigma,sigma b_tau)`.
Preserve the older FORWARD formula as an opposite-order
regression test, and require the section-change theorem
when comparing them. This avoids silently reversing
the source Weil arguments at even/odd n.

## 3. New reusable formal theorem, no arithmetic gap hidden

NEW
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ThetaSectionOrderCoboundary.lean`,
blob `ca27696f48789c448cfee282fc902141fcf791fa`.

This **imports and reconciles BOTH** existing root-Mathlib
theta polarization sources. It contains:
- `swapScalar`, `forward_section_eq_scalar_mul_reverse`:
  direct noncommutative group equality for the actual
  section-change scalar `[u_sigma,v_sigma]`.
- `boundary_mul_central`: pure Galois-cochain
  multiplication computation deriving the precise scalar
  two-coboundary factor, with only the two pointwise
  commutations genuinely needed.
- `forward_reverse_boundary_coboundary`:
  literal equality of the two existing group-boundary
  conventions. No theta/Weil pairing or scalar regulator
  is supplied as a premise.
- `commutator_central_left`,
  `commutator_central_right`,
  `commutator_central_both`:
  exact independence of the commutator under arbitrary
  central rescaling of either or both lifts.

The amended source family A
`TauCetiOriginalGeometricTheta.lean`, blob
`ca46ecb8ec53822df2abb094d99161b146d31c3a`,
adds `ThetaLift.mul_point`, `ThetaLift.inv_point`,
`thetaGroupCommutator_point_zero`,
`exists_scalarLift_thetaGroupCommutator`,
`thetaGroupCommutator_central`. The actual
original theta-group commutator projects to zero in
the abelian elliptic torsion point group, hence lies
in the scalar kernel established by the ORIGINAL
function-field zero-divisor criterion. This is the
missing geometric supplier for the centrality used
in BOTH algebraic factor identities.

No new abstract rank-two module, chosen Heisenberg
group or artificial theta regulator enters these
source proofs.

## 4. Exact hostile finite diagnostic, independent of Lean

A deterministic Python integer-arithmetic diagnostic
(seed `random.Random(20261102)`) on the finite Heisenberg group
`H_n={(a,b,c) mod n}`,
`(a,b,c)*(d,e,f)=(a+d,b+e,c+f+a e)`,
for `n=2,3,4,5,7,8,9,11`, checked:

- 168,000 exact identities: the two previous
  forward/reversed polarization formulas and their
  central section-change comparison, for 7,000
  random six-element fixtures per modulus, with
  arbitrary central defects.
- 40,000 additional exact identities with a
  nontrivial `C_2` action
  `(a,b,c)↦(-a,-b,c)`: twisted Galois
  one-cochain section change.
- 40,000 exact tests of commutator invariance
  under independent central rescaling of BOTH lifts.

All arithmetic was modular INTEGER arithmetic with no
floating point or numerical tolerance. These fixtures
verify the group-word orientation and expose possible
reversed commutator signs; they do **not** certify Lean
syntax, actual elliptic Galois geometry, continuity
of scalar cochains or Brauer cohomology.

A hostile check at odd `n` differentiates
`[x,y]` from `[y,x]`, because they are inverses;
an `n=2` fixture alone could not catch this.
The nontrivial action fixture avoids accidentally
testing only the trivial-Galois case.

**Explicit hostile sign witness (synthetic, not elliptic):**
in the same group `H_5`, take
`x=(1,0,0)` and `w=(0,1,0)`.
Then `[x,w]=(0,0,1)` but
`[w,x]=(0,0,4)`. These are distinct.
A proof that silently identifies the two mixed
commutator orientations therefore fails this
odd-order exact algebra example. The tested
`c_sigma` section-change coboundary is the
missing correction; no genuine Weil sign
is inferred from this synthetic group.


## 5. Exact remaining mathematical frontier

This optimization discharges ONLY the common section
choice ambiguity and the genuine scalar centrality
at the **candidate** source level. The central
two-coboundary is an equality of raw cochains;
to infer equality in source
`TauCeti.ContCohomology.H2`, the scalar
one-cochain must have the required `Continuous`
proof and its two-coboundary must match
the ORIGINAL signed `d1` and H2 quotient.
The original (H^2)-Brauer class, arbitrary
theta-section independence and Galois continuity
are still NOT kernel proved.

Most importantly, the original geometric source
`TauCeti.Isogeny.algebraMap_weilPairing` in pinned
`Isogeny/MulByInt/WeilPairing/Basic.lean`,
blob `8957e64b52bc94ada398c4724b256630558397cb`,
gives `e_n(S,T)` from an actual
`g_T` with `div g_T=[n]^*((T)-(O))`.
The next *distinct arithmetic theorem* must identify
the genuine theta-group function ratio

  `f_T * tau_-T^*f_S /
    (f_S * tau_-S^*f_T)`

with the above original `e_n(T,S)` OR its
properly oriented inverse, then transport it to
`W.torsionCoeffWeilPairing n hn`.
This requires actual divisor/pullback and Weil
reciprocity identities; it is NOT an algebraic
section-choice calculation. No assertion of this
identity is added as an axiom or false theorem.

Both existing source geometry pipelines remain
uncompiled, and neither is accepted as a full
`Delta_n:H¹(F,E[n])→Br(F)[n]` or the unconditional
local Kummer annihilator theorem. The original
higher local point cone
`H²(U_v)=H¹(F,E)` Weil–Châtelet residue and
good truncation are untouched. The real p=2,
restricted-products, compact derived `Rlim`,
Poitou–Tate and any comparison with Néron–Tate
regulators or the COMPLEX central Hasse–Weil
L-jet remain OPEN.

## 6. Publication / verification

The source blobs above were compared against
the original immutable repository objects. The
revised files are isolated from any incompatible
upstream adapter import in the native Lean v4.34.1
root. Future acceptance requires compatible
`lake env lean --wfail` for the exact module,
fresh independent kernel replay, transitive
`#print axioms`, and exact type/interface
checks. None has run in this authoring turn.

Paper context: Mumford, *On the equations defining
abelian varieties I* (1966) for the original
theta group; O'Neil, *The period-index
obstruction for elliptic curves* (2002);
Fisher, *The Cassels–Tate pairing and the
Platonic solids* (2003); and the original
pinned Tau Ceti implementation of elliptic
Weil pairing and Galois cohomology. The NEW
section-change identity is elementary
noncommutative group algebra applied to the
shared original objects. No independent
historical influence or novel theta theorem
is asserted.
