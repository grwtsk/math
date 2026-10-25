# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Core.Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c0cf203b0b4e4681fac58b362ce8628421da4de` · SHA-256 `5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Ring.Basic
import Mathlib.Algebra.Group.Equiv.Basic
import Mathlib.Algebra.Ring.Parity
import Mathlib.Data.Fin.Basic
import Mathlib.Tactic

/-!
# Conditional framed-surgery certificates

Mathlib does not currently provide the smooth handle-attachment, collar,
corner-smoothing, or isotopy-extension infrastructure needed to construct
classical framed surgery on smooth manifolds.  This module therefore records
that geometry as an explicit capability and proves only consequences of the
supplied data.

For a framed embedding of `S^p x D^q` in a manifold `M`, a
`FramedSurgeryCertificate` retains a relative-boundary surgery trace together
with the two single-handle relative invariants: the incoming pair is supported
in degree `p + 1`, while the outgoing (dual) pair is supported in degree `q`.
The boundary of each chosen relative generator is the corresponding attaching
class.  These are abstract homology carriers; a concrete smooth model must
supply the comparison with singular, cellular, or another chosen homology
theory.

The intended sign convention orients the handle core `D^(p+1)` first and
gives its boundary `S^p` the outward-normal-first orientation.  Thus at
`p = 0` the boundary class is `[+1] - [-1]`.  The dual core uses the same
convention after choosing an orientation of `D^q`.  In this abstract port that
choice is represented by declaring the selected core generator to correspond
to `1 : R`; a concrete homology comparison is responsible for proving that it
implements the stated geometric convention.

Framed-isotopy invariance, tangential extension, dual reversal, and commuting
disjoint surgeries are similarly exposed only through checked capability
fields.  In particular, this file does not infer a diffeomorphism from a bare
embedding, does not identify a stable tangential lift with an unstable one,
and does not claim that an arbitrary family of surgeries commutes.
-/

namespace Surface.SmoothFramedSurgery

universe uS uH uO

/--
An abstract smooth framed-surgery model.

`RelBoundaryDiffeomorphic X Y` means diffeomorphic relative to the common
exterior and the old boundary.  Its geometric interpretation, as well as the
actual surgery and trace constructions, belongs to the supplying model.
-/
structure SmoothFramedSurgeryTheory where
  Manifold : Type uS
  FramedEmbedding : Nat -> Nat -> Manifold -> Type uS
  FramedIsotopic :
    {p q : Nat} -> {M : Manifold} ->
      FramedEmbedding p q M -> FramedEmbedding p q M -> Prop
  Disjoint :
    {p q p' q' : Nat} -> {M : Manifold} ->
      FramedEmbedding p q M -> FramedEmbedding p' q' M -> Prop
  RelBoundaryDiffeomorphic : Manifold -> Manifold -> Prop
  rel_refl : forall X, RelBoundaryDiffeomorphic X X
  rel_symm : forall {X Y},
    RelBoundaryDiffeomorphic X Y -> RelBoundaryDiffeomorphic Y X
  rel_trans : forall {X Y Z},
    RelBoundaryDiffeomorphic X Y -> RelBoundaryDiffeomorphic Y Z ->
      RelBoundaryDiffeomorphic X Z
  surgery :
    {p q : Nat} -> {M : Manifold} -> FramedEmbedding p q M -> Manifold
  Trace : Manifold -> Manifold -> Type uS
  TraceBoundaryRelative :
    {M N : Manifold} -> Trace M N -> Prop
  framed_isotopy_invariant :
    {p q : Nat} -> {M : Manifold} ->
      forall e0 e1 : FramedEmbedding p q M,
        FramedIsotopic e0 e1 ->
          RelBoundaryDiffeomorphic (surgery e0) (surgery e1)

namespace SmoothFramedSurgeryTheory

/-- Relative-boundary diffeomorphism supplied by a framed isotopy. -/
theorem surgery_invariant_of_framedIsotopic
    (T : SmoothFramedSurgeryTheory)
    {p q : Nat} {M : T.Manifold}
    {e0 e1 : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e0 e1) :
    T.RelBoundaryDiffeomorphic (T.surgery e0) (T.surgery e1) :=
  T.framed_isotopy_invariant e0 e1 h

end SmoothFramedSurgeryTheory

/--
An `n`-manifold and its `(n + 1)`-dimensional trace cannot both have even
dimension.  Consequently the parity prerequisites for actual almost-complex
structures on the outgoing manifold and on the trace are separate cases; the
theorem makes no assertion that either structure exists.
-/
theorem ambient_and_trace_not_both_even (n : Nat) :
    ¬ (Even n ∧ Even (n + 1)) := by
  simp only [Nat.even_add_one, not_and, Classical.not_not]
  exact id

/--
The relative invariant of one handle with coefficients in `R`.

It is equivalent to `R` in `index`, is trivial away from `index`, and records
the connecting image of the basis element `1`.  The additive carriers and
boundary target are deliberately abstract so a concrete model may use its
preferred homology construction.
-/
structure SingleHandleRelativeInvariant
    (R : Type uH) [CommRing R] (index : Nat) where
  Carrier : Nat -> Type uH
  carrierAddCommGroup : (k : Nat) -> AddCommGroup (Carrier k)
  atIndex :
    letI := carrierAddCommGroup index
    Carrier index ≃+ R
  offIndex :
    forall k, k ≠ index ->
      letI := carrierAddCommGroup k
      forall x : Carrier k, x = 0
  BoundaryTarget : Type uH
  boundaryTargetAddCommGroup : AddCommGroup BoundaryTarget
  boundary :
    letI := carrierAddCommGroup index
    letI := boundaryTargetAddCommGroup
    Carrier index →+ BoundaryTarget
  attachingClass : BoundaryTarget
  boundary_generator :
    letI := carrierAddCommGroup index
    letI := boundaryTargetAddCommGroup
    boundary (atIndex.symm 1) = attachingClass

namespace SingleHandleRelativeInvariant

variable {R : Type uH} [CommRing R] {index : Nat}

/-- The selected handle degree is additively equivalent to one copy of `R`. -/
def degreeEquiv
    (I : SingleHandleRelativeInvariant R index) :
    letI := I.carrierAddCommGroup index
    I.Carrier index ≃+ R :=
  I.atIndex

/-- The oriented handle core determines the basis element corresponding to `1`. -/
noncomputable def generator
    (I : SingleHandleRelativeInvariant R index) : I.Carrier index := by
  letI := I.carrierAddCommGroup index
  exact I.atIndex.symm 1

/-- Every relative class outside the handle index vanishes. -/
theorem eq_zero_of_degree_ne
    (I : SingleHandleRelativeInvariant R index)
    {k : Nat} (hk : k ≠ index) (x : I.Carrier k) :
    letI := I.carrierAddCommGroup k
    x = 0 :=
  I.offIndex k hk x

/-- The connecting map sends the oriented core generator to the attaching class. -/
theorem boundary_generator_eq_attachingClass
    (I : SingleHandleRelativeInvariant R index) :
    letI := I.carrierAddCommGroup index
    letI := I.boundaryTargetAddCommGroup
    I.boundary I.generator = I.attachingClass :=
  I.boundary_generator

end SingleHandleRelativeInvariant

/--
One certified framed surgery and its handle trace.

The dimension equation expresses `n = p + q`, while `q_pos` makes the belt
sphere dimension `q - 1` meaningful.  No global smooth construction is
derived: `trace` and its relative-boundary property are supplied evidence.
-/
structure FramedSurgeryCertificate
    (T : SmoothFramedSurgeryTheory)
    (R : Type uH) [CommRing R]
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M) where
  ambientDimension : Nat
  dimension_eq : ambientDimension = p + q
  q_pos : 0 < q
  trace : T.Trace M (T.surgery embedding)
  trace_relative_boundary : T.TraceBoundaryRelative trace
  incomingRelative : SingleHandleRelativeInvariant R (p + 1)
  dualRelative : SingleHandleRelativeInvariant R q

namespace FramedSurgeryCertificate

variable
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}

/--
The handle has index `p + 1` in a trace of dimension `ambientDimension + 1`;
its complementary (dual) index is exactly `q`.
-/
theorem complementary_handle_index
    (C : FramedSurgeryCertificate T R embedding) :
    (C.ambientDimension + 1) - (p + 1) = q := by
  have hdim := C.dimension_eq
  have hq := C.q_pos
  omega

/-- The incoming trace pair has exactly one relative handle degree, `p + 1`. -/
def incoming_degree_equiv
    (C : FramedSurgeryCertificate T R embedding) :
    letI := C.incomingRelative.carrierAddCommGroup (p + 1)
    C.incomingRelative.Carrier (p + 1) ≃+ R :=
  C.incomingRelative.degreeEquiv

/-- The outgoing trace pair has exactly one relative handle degree, `q`. -/
def dual_degree_equiv
    (C : FramedSurgeryCertificate T R embedding) :
    letI := C.dualRelative.carrierAddCommGroup q
    C.dualRelative.Carrier q ≃+ R :=
  C.dualRelative.degreeEquiv

/-- Incoming relative classes vanish outside degree `p + 1`. -/
theorem incoming_eq_zero_of_degree_ne
    (C : FramedSurgeryCertificate T R embedding)
    {k : Nat} (hk : k ≠ p + 1)
    (x : C.incomingRelative.Carrier k) :
    letI := C.incomingRelative.carrierAddCommGroup k
    x = 0 :=
  C.incomingRelative.eq_zero_of_degree_ne hk x

/-- Dual relative classes vanish outside degree `q`. -/
theorem dual_eq_zero_of_degree_ne
    (C : FramedSurgeryCertificate T R embedding)
    {k : Nat} (hk : k ≠ q)
    (x : C.dualRelative.Carrier k) :
    letI := C.dualRelative.carrierAddCommGroup k
    x = 0 :=
  C.dualRelative.eq_zero_of_degree_ne hk x

/-- The incoming core boundary is the original attaching-sphere class. -/
theorem incoming_boundary_generator
    (C : FramedSurgeryCertificate T R embedding) :
    letI := C.incomingRelative.carrierAddCommGroup (p + 1)
    letI := C.incomingRelative.boundaryTargetAddCommGroup
    C.incomingRelative.boundary C.incomingRelative.generator =
      C.incomingRelative.attachingClass :=
  C.incomingRelative.boundary_generator_eq_attachingClass

/-- The dual core boundary is the belt-sphere attaching class. -/
theorem dual_boundary_generator
    (C : FramedSurgeryCertificate T R embedding) :
    letI := C.dualRelative.carrierAddCommGroup q
    letI := C.dualRelative.boundaryTargetAddCommGroup
    C.dualRelative.boundary C.dualRelative.generator =
      C.dualRelative.attachingClass :=
  C.dualRelative.boundary_generator_eq_attachingClass

/-- The trace is a cobordism relative to the old boundary by supplied evidence. -/
theorem boundary_is_relative
    (C : FramedSurgeryCertificate T R embedding) :
    T.TraceBoundaryRelative C.trace :=
  C.trace_relative_boundary

end FramedSurgeryCertificate

/--
The attaching-boundary obstruction to extending a tangential structure.

For a concrete `theta : B -> BO`, `Obstruction` may be a homotopy class in the
fiber of `theta`.  The record intentionally requires the full obstruction; a
determinant, orientation, or stable shadow alone need not decide an unstable
extension problem.
-/
structure TangentialExtensionBoundary
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (certificate : FramedSurgeryCertificate T R embedding)
    (Obstruction : Type uO) [Zero Obstruction] where
  boundaryClass : Obstruction
  extendsAcrossTrace : Prop
  extends_iff_vanishes : extendsAcrossTrace ↔ boundaryClass = 0

namespace TangentialExtensionBoundary

variable
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    {Obstruction : Type uO} [Zero Obstruction]

/-- A tangential structure extends over the handle exactly when its boundary class vanishes. -/
theorem extends_iff_boundaryClass_eq_zero
    (B : TangentialExtensionBoundary certificate Obstruction) :
    B.extendsAcrossTrace ↔ B.boundaryClass = 0 :=
  B.extends_iff_vanishes

/-- Vanishing of the full attaching obstruction supplies extension. -/
theorem extends_of_boundaryClass_eq_zero
    (B : TangentialExtensionBoundary certificate Obstruction)
    (h : B.boundaryClass = 0) : B.extendsAcrossTrace :=
  B.extends_iff_vanishes.mpr h

/-- Any supplied extension forces the full attaching obstruction to vanish. -/
theorem boundaryClass_eq_zero_of_extends
    (B : TangentialExtensionBoundary certificate Obstruction)
    (h : B.extendsAcrossTrace) : B.boundaryClass = 0 :=
  B.extends_iff_vanishes.mp h

end TangentialExtensionBoundary

/--
The product-framed belt sphere and the resulting reverse surgery.

This is additional evidence, not a consequence of the abstract surgery
operation alone.  In the classical model the belt embedding has dimensions
`(q - 1, p + 1)` and dual surgery restores the original manifold relative to
the exterior.
-/
structure DualSurgeryCertificate
    (T : SmoothFramedSurgeryTheory)
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M) where
  q_pos : 0 < q
  beltEmbedding :
    T.FramedEmbedding (q - 1) (p + 1) (T.surgery embedding)
  restores :
    T.RelBoundaryDiffeomorphic (T.surgery beltEmbedding) M

namespace DualSurgeryCertificate

/-- Product-framed surgery on the belt sphere restores the original exterior. -/
theorem surgery_on_belt_restores
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (D : DualSurgeryCertificate T embedding) :
    T.RelBoundaryDiffeomorphic (T.surgery D.beltEmbedding) M :=
  D.restores

end DualSurgeryCertificate

/-- A finite family of framed sites in one ambient manifold with disjoint supports. -/
structure FiniteDisjointFramedFamily
    (T : SmoothFramedSurgeryTheory)
    (M : T.Manifold)
    (count : Nat) where
  p : Fin count -> Nat
  q : Fin count -> Nat
  q_pos : forall i, 0 < q i
  embedding : (i : Fin count) -> T.FramedEmbedding (p i) (q i) M
  pairwise_disjoint :
    forall i j, i ≠ j -> T.Disjoint (embedding i) (embedding j)

namespace FiniteDisjointFramedFamily

/-- Distinct members of the certified family have disjoint tubular supports. -/
theorem disjoint
    {T : SmoothFramedSurgeryTheory}
    {M : T.Manifold} {count : Nat}
    (family : FiniteDisjointFramedFamily T M count)
    {i j : Fin count} (hij : i ≠ j) :
    T.Disjoint (family.embedding i) (family.embedding j) :=
  family.pairwise_disjoint i j hij

end FiniteDisjointFramedFamily

/--
A weak summary comparing named results with one simultaneous result.

This record does **not** contain transported sites, typed intermediate surgery
states, adjacent-swap generators, Coxeter relations, or path independence.  It
is therefore not material evidence for finite-family commutation.  The strong
interface is `CoherentDisjointFamilyExecution`; its
`toCommutationCertificate` projection supplies this summary after all typed
execution and coherence data have already been provided.

The record remains available for consumers that need only a collection of
relative-boundary comparisons and make no execution-order coherence claim.
-/
structure DisjointFamilyCommutationCertificate
    (T : SmoothFramedSurgeryTheory)
    {M : T.Manifold} {count : Nat}
    (family : FiniteDisjointFramedFamily T M count) where
  simultaneousResult : T.Manifold
  sequentialResult : Equiv.Perm (Fin count) -> T.Manifold
  sequential_rel_simultaneous : forall order,
    T.RelBoundaryDiffeomorphic
      (sequentialResult order) simultaneousResult

namespace DisjointFamilyCommutationCertificate

variable
    {T : SmoothFramedSurgeryTheory}
    {M : T.Manifold} {count : Nat}
    {family : FiniteDisjointFramedFamily T M count}

/-- Every ordering agrees with the simultaneous quotient relative to the common exterior. -/
theorem ordered_rel_simultaneous
    (C : DisjointFamilyCommutationCertificate T family)
    (order : Equiv.Perm (Fin count)) :
    T.RelBoundaryDiffeomorphic
      (C.sequentialResult order) C.simultaneousResult :=
  C.sequential_rel_simultaneous order

/--
Two named summary outputs are relative-boundary diffeomorphic.

This is only transitivity through the supplied simultaneous result.  It does
not establish that either output arose from the family by a typed sequential
execution, nor that comparison maps are independent of adjacent-swap paths.
-/
theorem ordered_results_commute
    (C : DisjointFamilyCommutationCertificate T family)
    (left right : Equiv.Perm (Fin count)) :
    T.RelBoundaryDiffeomorphic
      (C.sequentialResult left) (C.sequentialResult right) :=
  T.rel_trans
    (C.sequential_rel_simultaneous left)
    (T.rel_symm (C.sequential_rel_simultaneous right))

end DisjointFamilyCommutationCertificate

end Surface.SmoothFramedSurgery
```
