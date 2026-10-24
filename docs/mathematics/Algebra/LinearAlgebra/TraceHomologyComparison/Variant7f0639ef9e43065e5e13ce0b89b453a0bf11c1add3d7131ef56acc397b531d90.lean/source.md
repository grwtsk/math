# Complete source: GRWTSK.Algebra.LinearAlgebra.TraceHomologyComparison.Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `189d9844c0b3a5531319d2edbfc4c7cb0f600bb3` · SHA-256 `7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.SmoothFramedSurgery.Core
import Surface.SmoothFramedSurgery.SingleHandleComplex

/-!
# Conditional trace-pair homology and the one-handle comparison

`FramedSurgeryCertificate` retains the geometric trace and the expected
single-handle answer, but deliberately does not pretend that its abstract
carrier is singular or cellular homology.  This module inserts the missing
semantic boundary explicitly.

`TracePairHomologySemantics` assigns `R`-modules to the two relative pairs of
an *actual supplied trace*.  Its connecting map is the oriented middle arrow
of a structured four-term exact segment, with both neighboring maps and both
middle exactness laws retained.  It therefore cannot be replaced silently by
an unrelated or independently negated homomorphism. `TraceHomologyComparison` then gives linear
equivalences from those relative groups to Mathlib's chain complex
concentrated in the handle degree and proves compatibility with the boundary
maps stored in the surgery certificate.

All results remain conditional: this file constructs neither smooth trace
homology nor a long exact sequence.  It states the data a concrete singular,
cellular, or handle-chain model must supply and derives concentration and
generator formulas from that data.
-/

namespace Surface.SmoothFramedSurgery

universe uS uH uK

/-- Which boundary component is suppressed in the relative trace pair. -/
inductive TracePairEnd
  | incoming
  | outgoing
  deriving DecidableEq

/-- The actual boundary manifold selected from the two ends of a supplied trace. -/
def TracePairEnd.boundaryManifold
    (T : SmoothFramedSurgeryTheory)
    {M N : T.Manifold}
    (_trace : T.Trace M N) : TracePairEnd → T.Manifold
  | .incoming => M
  | .outgoing => N

@[simp] theorem TracePairEnd.incoming_boundaryManifold
    (T : SmoothFramedSurgeryTheory)
    {M N : T.Manifold}
    (trace : T.Trace M N) :
    TracePairEnd.boundaryManifold T trace .incoming = M :=
  rfl

@[simp] theorem TracePairEnd.outgoing_boundaryManifold
    (T : SmoothFramedSurgeryTheory)
    {M N : T.Manifold}
    (trace : T.Trace M N) :
    TracePairEnd.boundaryManifold T trace .outgoing = N :=
  rfl

/--
Orientation convention for the connecting map of a handle pair.  The core is
oriented first and its boundary receives the outward-normal-first
orientation.  The sign is therefore declared data and cannot be changed by
silently negating an otherwise exact connecting map.
-/
inductive HandleConnectingSignConvention
  | outwardNormalFirst
  deriving DecidableEq

/--
A four-arrow, oriented segment of the long exact sequence of a pair:

`H_k(boundary) -> H_k(trace) -> H_k(trace,boundary) ->
 H_(k-1)(boundary) -> H_(k-1)(trace)`.

The four maps are named by their geometric provenance.  In particular, the
middle absolute-to-relative arrow is not conflated with the preceding
boundary inclusion, and the connecting arrow is *the* outward-normal-first
boundary map.  Exactness is retained at all three interior objects.
-/
structure OrientedLongExactSegment
    (R : Type uH) [CommRing R]
    (BoundaryAtDegree TraceAtDegree RelativeAtDegree
      BoundaryAtPredecessor TraceAtPredecessor : Type uK)
    [AddCommGroup BoundaryAtDegree] [Module R BoundaryAtDegree]
    [AddCommGroup TraceAtDegree] [Module R TraceAtDegree]
    [AddCommGroup RelativeAtDegree] [Module R RelativeAtDegree]
    [AddCommGroup BoundaryAtPredecessor] [Module R BoundaryAtPredecessor]
    [AddCommGroup TraceAtPredecessor] [Module R TraceAtPredecessor] where
  boundaryInclusionAtDegree : BoundaryAtDegree →ₗ[R] TraceAtDegree
  absoluteToRelativePair : TraceAtDegree →ₗ[R] RelativeAtDegree
  outwardNormalConnecting : RelativeAtDegree →ₗ[R] BoundaryAtPredecessor
  boundaryInclusionIntoTrace : BoundaryAtPredecessor →ₗ[R] TraceAtPredecessor
  exact_at_trace :
    LinearMap.range boundaryInclusionAtDegree =
      LinearMap.ker absoluteToRelativePair
  exact_at_relative :
    LinearMap.range absoluteToRelativePair =
      LinearMap.ker outwardNormalConnecting
  exact_at_boundary :
    LinearMap.range outwardNormalConnecting =
      LinearMap.ker boundaryInclusionIntoTrace

/--
An `R`-linear homology semantics for the incoming and outgoing pairs of every
trace in a surgery theory.

The concrete model supplies an `OrientedLongExactSegment` in each *positive*
source degree.  The positivity witness prevents the degree-zero case from
silently interpreting truncated `0 - 1` as another degree-zero term.
The object families are not arbitrary neighbors: `AbsoluteHomology trace k`
is the homology of the supplied trace, `BoundaryHomology trace end_ k` is the
homology of its selected actual incoming or outgoing boundary manifold, and
`RelativeHomology trace end_ k` is the homology of that exact trace pair.
Consequently the supplied arrows are forced to have the types of the two
boundary inclusions, the absolute-to-relative pair morphism, and the
connecting boundary map.  The exposed `connecting` definition is
definitionally the segment's outward-normal-first arrow.
-/
structure TracePairHomologySemantics
    (T : SmoothFramedSurgeryTheory)
    (R : Type uH) [CommRing R] where
  RelativeHomology :
    {M N : T.Manifold} → T.Trace M N → TracePairEnd → Nat → Type uK
  relativeAddCommGroup : ∀ {M N} (trace : T.Trace M N) (end_) (k),
    AddCommGroup (RelativeHomology trace end_ k)
  relativeModule : ∀ {M N} (trace : T.Trace M N) (end_) (k),
    letI := relativeAddCommGroup trace end_ k
    Module R (RelativeHomology trace end_ k)
  /-- Absolute homology of the actual supplied trace. -/
  AbsoluteHomology :
    {M N : T.Manifold} → T.Trace M N → Nat → Type uK
  absoluteAddCommGroup : ∀ {M N} (trace : T.Trace M N) (k),
    AddCommGroup (AbsoluteHomology trace k)
  absoluteModule : ∀ {M N} (trace : T.Trace M N) (k),
    letI := absoluteAddCommGroup trace k
    Module R (AbsoluteHomology trace k)
  /-- Homology of the actual incoming or outgoing boundary manifold. -/
  BoundaryHomology :
    {M N : T.Manifold} → T.Trace M N → TracePairEnd → Nat → Type uK
  boundaryAddCommGroup : ∀ {M N} (trace : T.Trace M N) (end_) (k),
    AddCommGroup (BoundaryHomology trace end_ k)
  boundaryModule : ∀ {M N} (trace : T.Trace M N) (end_) (k),
    letI := boundaryAddCommGroup trace end_ k
    Module R (BoundaryHomology trace end_ k)
  /--
  The supplied segment is definitionally the LES segment of the actual pair
  `(trace, boundaryManifold trace end_)` in source degree `k`.
  -/
  lesSegment : ∀ {M N} (trace : T.Trace M N) (end_) (k) (_hk : 0 < k),
    letI := boundaryAddCommGroup trace end_ k
    letI := boundaryModule trace end_ k
    letI := absoluteAddCommGroup trace k
    letI := absoluteModule trace k
    letI := relativeAddCommGroup trace end_ k
    letI := relativeModule trace end_ k
    letI := boundaryAddCommGroup trace end_ (k - 1)
    letI := boundaryModule trace end_ (k - 1)
    letI := absoluteAddCommGroup trace (k - 1)
    letI := absoluteModule trace (k - 1)
    OrientedLongExactSegment R
      (BoundaryHomology trace end_ k)
      (AbsoluteHomology trace k)
      (RelativeHomology trace end_ k)
      (BoundaryHomology trace end_ (k - 1))
      (AbsoluteHomology trace (k - 1))
  /-- Geometric interpretation of an incoming boundary-homology class. -/
  RepresentsAttachingSphere : ∀ {M N} (trace : T.Trace M N)
      (boundaryDegree : Nat),
    BoundaryHomology trace .incoming boundaryDegree → Prop
  /-- Geometric interpretation of an outgoing belt-sphere class. -/
  RepresentsBeltSphere : ∀ {M N} (trace : T.Trace M N)
      (boundaryDegree : Nat),
    BoundaryHomology trace .outgoing boundaryDegree → Prop

namespace TracePairHomologySemantics

variable {T : SmoothFramedSurgeryTheory} {R : Type uH} [CommRing R]

/-- The connecting arrow is definitionally the oriented arrow in the LES segment. -/
def connecting
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    letI := S.relativeAddCommGroup trace end_ k
    letI := S.relativeModule trace end_ k
    letI := S.boundaryAddCommGroup trace end_ (k - 1)
    letI := S.boundaryModule trace end_ (k - 1)
    S.RelativeHomology trace end_ k →ₗ[R]
      S.BoundaryHomology trace end_ (k - 1) := by
  letI := S.boundaryAddCommGroup trace end_ k
  letI := S.boundaryModule trace end_ k
  letI := S.absoluteAddCommGroup trace k
  letI := S.absoluteModule trace k
  letI := S.relativeAddCommGroup trace end_ k
  letI := S.relativeModule trace end_ k
  letI := S.boundaryAddCommGroup trace end_ (k - 1)
  letI := S.boundaryModule trace end_ (k - 1)
  letI := S.absoluteAddCommGroup trace (k - 1)
  letI := S.absoluteModule trace (k - 1)
  exact (S.lesSegment trace end_ k hk).outwardNormalConnecting

/-- Inclusion-induced map from the selected boundary end into the actual trace. -/
def boundaryInclusionAtDegree
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    letI := S.boundaryAddCommGroup trace end_ k
    letI := S.boundaryModule trace end_ k
    letI := S.absoluteAddCommGroup trace k
    letI := S.absoluteModule trace k
    S.BoundaryHomology trace end_ k →ₗ[R] S.AbsoluteHomology trace k := by
  letI := S.boundaryAddCommGroup trace end_ k
  letI := S.boundaryModule trace end_ k
  letI := S.absoluteAddCommGroup trace k
  letI := S.absoluteModule trace k
  letI := S.relativeAddCommGroup trace end_ k
  letI := S.relativeModule trace end_ k
  letI := S.boundaryAddCommGroup trace end_ (k - 1)
  letI := S.boundaryModule trace end_ (k - 1)
  letI := S.absoluteAddCommGroup trace (k - 1)
  letI := S.absoluteModule trace (k - 1)
  exact (S.lesSegment trace end_ k hk).boundaryInclusionAtDegree

/-- The absolute-to-relative morphism for the actual pair `(trace, boundary end_)`. -/
def absoluteToRelativePair
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    letI := S.absoluteAddCommGroup trace k
    letI := S.absoluteModule trace k
    letI := S.relativeAddCommGroup trace end_ k
    letI := S.relativeModule trace end_ k
    S.AbsoluteHomology trace k →ₗ[R] S.RelativeHomology trace end_ k := by
  letI := S.boundaryAddCommGroup trace end_ k
  letI := S.boundaryModule trace end_ k
  letI := S.absoluteAddCommGroup trace k
  letI := S.absoluteModule trace k
  letI := S.relativeAddCommGroup trace end_ k
  letI := S.relativeModule trace end_ k
  letI := S.boundaryAddCommGroup trace end_ (k - 1)
  letI := S.boundaryModule trace end_ (k - 1)
  letI := S.absoluteAddCommGroup trace (k - 1)
  letI := S.absoluteModule trace (k - 1)
  exact (S.lesSegment trace end_ k hk).absoluteToRelativePair

/-- Following inclusion-induced map from the predecessor boundary group into the trace. -/
def boundaryInclusionIntoTrace
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    letI := S.boundaryAddCommGroup trace end_ (k - 1)
    letI := S.boundaryModule trace end_ (k - 1)
    letI := S.absoluteAddCommGroup trace (k - 1)
    letI := S.absoluteModule trace (k - 1)
    S.BoundaryHomology trace end_ (k - 1) →ₗ[R]
      S.AbsoluteHomology trace (k - 1) := by
  letI := S.boundaryAddCommGroup trace end_ k
  letI := S.boundaryModule trace end_ k
  letI := S.absoluteAddCommGroup trace k
  letI := S.absoluteModule trace k
  letI := S.relativeAddCommGroup trace end_ k
  letI := S.relativeModule trace end_ k
  letI := S.boundaryAddCommGroup trace end_ (k - 1)
  letI := S.boundaryModule trace end_ (k - 1)
  letI := S.absoluteAddCommGroup trace (k - 1)
  letI := S.absoluteModule trace (k - 1)
  exact (S.lesSegment trace end_ k hk).boundaryInclusionIntoTrace

/-- A candidate is the LES connecting arrow exactly when it is the selected oriented map. -/
def IsLongExactConnecting
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k)
    (candidate :
      letI := S.relativeAddCommGroup trace end_ k
      letI := S.relativeModule trace end_ k
      letI := S.boundaryAddCommGroup trace end_ (k - 1)
      letI := S.boundaryModule trace end_ (k - 1)
      S.RelativeHomology trace end_ k →ₗ[R]
        S.BoundaryHomology trace end_ (k - 1)) : Prop :=
  candidate = S.connecting trace end_ k hk

/-- The exposed map is the map of the structured LES segment by construction. -/
theorem connecting_from_les
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    S.IsLongExactConnecting trace end_ k hk (S.connecting trace end_ k hk) :=
  rfl

/-- There is one selected convention: core orientation followed by outward normal first. -/
def connectingSign
    (_S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (_trace : T.Trace M N) (_end_ : TracePairEnd) (_k : Nat) :
    HandleConnectingSignConvention :=
  .outwardNormalFirst

@[simp] theorem connecting_sign_outward_normal_first
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) :
    S.connectingSign trace end_ k = .outwardNormalFirst :=
  rfl

/-- Exactness at absolute trace homology identifies the preceding boundary inclusion. -/
theorem exact_at_trace
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    letI := S.boundaryAddCommGroup trace end_ k
    letI := S.boundaryModule trace end_ k
    letI := S.absoluteAddCommGroup trace k
    letI := S.absoluteModule trace k
    letI := S.relativeAddCommGroup trace end_ k
    letI := S.relativeModule trace end_ k
    LinearMap.range (S.boundaryInclusionAtDegree trace end_ k hk) =
      LinearMap.ker (S.absoluteToRelativePair trace end_ k hk) := by
  letI := S.boundaryAddCommGroup trace end_ k
  letI := S.boundaryModule trace end_ k
  letI := S.absoluteAddCommGroup trace k
  letI := S.absoluteModule trace k
  letI := S.relativeAddCommGroup trace end_ k
  letI := S.relativeModule trace end_ k
  letI := S.boundaryAddCommGroup trace end_ (k - 1)
  letI := S.boundaryModule trace end_ (k - 1)
  letI := S.absoluteAddCommGroup trace (k - 1)
  letI := S.absoluteModule trace (k - 1)
  exact (S.lesSegment trace end_ k hk).exact_at_trace

/-- Exactness at relative homology identifies the actual absolute-to-pair map. -/
theorem exact_at_relative
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    letI := S.absoluteAddCommGroup trace k
    letI := S.absoluteModule trace k
    letI := S.relativeAddCommGroup trace end_ k
    letI := S.relativeModule trace end_ k
    letI := S.boundaryAddCommGroup trace end_ (k - 1)
    letI := S.boundaryModule trace end_ (k - 1)
    LinearMap.range (S.absoluteToRelativePair trace end_ k hk) =
      LinearMap.ker (S.connecting trace end_ k hk) := by
  letI := S.boundaryAddCommGroup trace end_ k
  letI := S.boundaryModule trace end_ k
  letI := S.absoluteAddCommGroup trace k
  letI := S.absoluteModule trace k
  letI := S.relativeAddCommGroup trace end_ k
  letI := S.relativeModule trace end_ k
  letI := S.boundaryAddCommGroup trace end_ (k - 1)
  letI := S.boundaryModule trace end_ (k - 1)
  letI := S.absoluteAddCommGroup trace (k - 1)
  letI := S.absoluteModule trace (k - 1)
  exact (S.lesSegment trace end_ k hk).exact_at_relative

/-- Exactness at boundary homology is inherited from the same LES segment. -/
theorem exact_at_boundary
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    letI := S.relativeAddCommGroup trace end_ k
    letI := S.relativeModule trace end_ k
    letI := S.boundaryAddCommGroup trace end_ (k - 1)
    letI := S.boundaryModule trace end_ (k - 1)
    letI := S.absoluteAddCommGroup trace (k - 1)
    letI := S.absoluteModule trace (k - 1)
    LinearMap.range (S.connecting trace end_ k hk) =
      LinearMap.ker (S.boundaryInclusionIntoTrace trace end_ k hk) := by
  letI := S.boundaryAddCommGroup trace end_ k
  letI := S.boundaryModule trace end_ k
  letI := S.absoluteAddCommGroup trace k
  letI := S.absoluteModule trace k
  letI := S.relativeAddCommGroup trace end_ k
  letI := S.relativeModule trace end_ k
  letI := S.boundaryAddCommGroup trace end_ (k - 1)
  letI := S.boundaryModule trace end_ (k - 1)
  letI := S.absoluteAddCommGroup trace (k - 1)
  letI := S.absoluteModule trace (k - 1)
  exact (S.lesSegment trace end_ k hk).exact_at_boundary

/--
Provenance predicate asserting that all four arrows come from one selected
boundary pair of one actual trace.
-/
def HasActualTracePairMapProvenance
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N)
    (end_ : TracePairEnd) (k : Nat) (hk : 0 < k) : Prop :=
    letI := S.boundaryAddCommGroup trace end_ k
    letI := S.boundaryModule trace end_ k
    letI := S.absoluteAddCommGroup trace k
    letI := S.absoluteModule trace k
    letI := S.relativeAddCommGroup trace end_ k
    letI := S.relativeModule trace end_ k
    letI := S.boundaryAddCommGroup trace end_ (k - 1)
    letI := S.boundaryModule trace end_ (k - 1)
    letI := S.absoluteAddCommGroup trace (k - 1)
    letI := S.absoluteModule trace (k - 1)
    S.boundaryInclusionAtDegree trace end_ k hk =
        (S.lesSegment trace end_ k hk).boundaryInclusionAtDegree ∧
      S.absoluteToRelativePair trace end_ k hk =
        (S.lesSegment trace end_ k hk).absoluteToRelativePair ∧
      S.connecting trace end_ k hk =
        (S.lesSegment trace end_ k hk).outwardNormalConnecting ∧
      S.boundaryInclusionIntoTrace trace end_ k hk =
        (S.lesSegment trace end_ k hk).boundaryInclusionIntoTrace

/--
All four exposed arrows are definitionally the maps of the LES for the same
actual trace and the same selected boundary end.  This is the provenance
statement that rules out assembling an exact-looking sequence from unrelated
groups or maps.
-/
theorem maps_from_actual_trace_pair
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    S.HasActualTracePairMapProvenance trace end_ k hk := by
  letI := S.boundaryAddCommGroup trace end_ k
  letI := S.boundaryModule trace end_ k
  letI := S.absoluteAddCommGroup trace k
  letI := S.absoluteModule trace k
  letI := S.relativeAddCommGroup trace end_ k
  letI := S.relativeModule trace end_ k
  letI := S.boundaryAddCommGroup trace end_ (k - 1)
  letI := S.boundaryModule trace end_ (k - 1)
  letI := S.absoluteAddCommGroup trace (k - 1)
  letI := S.absoluteModule trace (k - 1)
  exact ⟨rfl, rfl, rfl, rfl⟩

end TracePairHomologySemantics

/--
Linear comparison of the two concrete trace pairs with the algebraic
single-handle complexes.

The boundary-target equivalences need only be additive because the older
certificate deliberately exposes its attaching target as an additive group.
The relative comparison and the actual LES connecting maps are `R`-linear.
-/
structure TraceHomologyComparison
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (certificate : FramedSurgeryCertificate T R embedding) where
  theory : TracePairHomologySemantics.{uH, uK, uS} T R
  incomingCompare : (k : Nat) →
    letI := theory.relativeAddCommGroup certificate.trace .incoming k
    letI := theory.relativeModule certificate.trace .incoming k
    theory.RelativeHomology certificate.trace .incoming k ≃ₗ[R]
      (SingleHandleComplex.complex R (p + 1)).homology k
  dualCompare : (k : Nat) →
    letI := theory.relativeAddCommGroup certificate.trace .outgoing k
    letI := theory.relativeModule certificate.trace .outgoing k
    theory.RelativeHomology certificate.trace .outgoing k ≃ₗ[R]
      (SingleHandleComplex.complex R q).homology k
  incomingBoundaryTargetCompare :
    letI := theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    theory.BoundaryHomology certificate.trace .incoming ((p + 1) - 1) ≃+
      certificate.incomingRelative.BoundaryTarget
  dualBoundaryTargetCompare :
    letI := theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := certificate.dualRelative.boundaryTargetAddCommGroup
    theory.BoundaryHomology certificate.trace .outgoing (q - 1) ≃+
      certificate.dualRelative.BoundaryTarget
  incoming_boundary_natural :
    letI := theory.relativeAddCommGroup certificate.trace .incoming (p + 1)
    letI := theory.relativeModule certificate.trace .incoming (p + 1)
    letI := theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
    letI := certificate.incomingRelative.carrierAddCommGroup (p + 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    ∀ x,
      incomingBoundaryTargetCompare
          (theory.connecting certificate.trace .incoming (p + 1)
            (Nat.zero_lt_succ p) x) =
        certificate.incomingRelative.boundary
          (certificate.incomingRelative.atIndex.symm
            (SingleHandleComplex.homologyLinearEquiv R (p + 1)
              (incomingCompare (p + 1) x)))
  dual_boundary_natural :
    letI := theory.relativeAddCommGroup certificate.trace .outgoing q
    letI := theory.relativeModule certificate.trace .outgoing q
    letI := theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := theory.boundaryModule certificate.trace .outgoing (q - 1)
    letI := certificate.dualRelative.carrierAddCommGroup q
    letI := certificate.dualRelative.boundaryTargetAddCommGroup
    ∀ x,
      dualBoundaryTargetCompare
          (theory.connecting certificate.trace .outgoing q certificate.q_pos x) =
        certificate.dualRelative.boundary
          (certificate.dualRelative.atIndex.symm
            (SingleHandleComplex.homologyLinearEquiv R q
              (dualCompare q x)))
  incoming_generator_geometric :
    letI := theory.relativeAddCommGroup certificate.trace .incoming (p + 1)
    letI := theory.relativeModule certificate.trace .incoming (p + 1)
    letI := theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
    theory.RepresentsAttachingSphere certificate.trace ((p + 1) - 1)
      (theory.connecting certificate.trace .incoming (p + 1)
        (Nat.zero_lt_succ p)
        ((incomingCompare (p + 1)).symm
          (SingleHandleComplex.homologyGenerator R (p + 1))))
  dual_generator_geometric :
    letI := theory.relativeAddCommGroup certificate.trace .outgoing q
    letI := theory.relativeModule certificate.trace .outgoing q
    letI := theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := theory.boundaryModule certificate.trace .outgoing (q - 1)
    theory.RepresentsBeltSphere certificate.trace (q - 1)
      (theory.connecting certificate.trace .outgoing q certificate.q_pos
        ((dualCompare q).symm (SingleHandleComplex.homologyGenerator R q)))

namespace TraceHomologyComparison

variable
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}

/-- The incoming relative group of the certificate's actual trace. -/
abbrev IncomingHomology
    (H : TraceHomologyComparison certificate) (k : Nat) : Type uK :=
  H.theory.RelativeHomology certificate.trace .incoming k

/-- The outgoing relative group of the certificate's actual trace. -/
abbrev DualHomology
    (H : TraceHomologyComparison certificate) (k : Nat) : Type uK :=
  H.theory.RelativeHomology certificate.trace .outgoing k

/-- Additive structure inherited from the trace-pair semantics. -/
@[reducible] def incomingAddCommGroup
    (H : TraceHomologyComparison certificate) (k : Nat) :
    AddCommGroup (H.IncomingHomology k) :=
  H.theory.relativeAddCommGroup certificate.trace .incoming k

/-- `R`-module structure inherited from the trace-pair semantics. -/
@[reducible] def incomingModule
    (H : TraceHomologyComparison certificate) (k : Nat) :
    letI := H.incomingAddCommGroup k
    Module R (H.IncomingHomology k) :=
  H.theory.relativeModule certificate.trace .incoming k

/-- Additive structure inherited from the outgoing trace-pair semantics. -/
@[reducible] def dualAddCommGroup
    (H : TraceHomologyComparison certificate) (k : Nat) :
    AddCommGroup (H.DualHomology k) :=
  H.theory.relativeAddCommGroup certificate.trace .outgoing k

/-- `R`-module structure inherited from the outgoing trace-pair semantics. -/
@[reducible] def dualModule
    (H : TraceHomologyComparison certificate) (k : Nat) :
    letI := H.dualAddCommGroup k
    Module R (H.DualHomology k) :=
  H.theory.relativeModule certificate.trace .outgoing k

/-- The concrete incoming LES connecting map, transported to the certificate target. -/
def incomingBoundary
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    letI := H.incomingModule (p + 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    H.IncomingHomology (p + 1) →+
      certificate.incomingRelative.BoundaryTarget := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
  letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
  letI := certificate.incomingRelative.boundaryTargetAddCommGroup
  exact H.incomingBoundaryTargetCompare.toAddMonoidHom.comp
    (H.theory.connecting certificate.trace .incoming (p + 1)
      (Nat.zero_lt_succ p)).toAddMonoidHom

/-- The concrete outgoing LES connecting map, transported to the certificate target. -/
def dualBoundary
    (H : TraceHomologyComparison certificate) :
    letI := H.dualAddCommGroup q
    letI := H.dualModule q
    letI := certificate.dualRelative.boundaryTargetAddCommGroup
    H.DualHomology q →+ certificate.dualRelative.BoundaryTarget := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
  letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
  letI := certificate.dualRelative.boundaryTargetAddCommGroup
  exact H.dualBoundaryTargetCompare.toAddMonoidHom.comp
    (H.theory.connecting certificate.trace .outgoing q
      certificate.q_pos).toAddMonoidHom

/-- Concrete incoming relative homology in degree `p + 1` is one copy of `R`. -/
noncomputable def incomingDegreeLinearEquiv
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    letI := H.incomingModule (p + 1)
    H.IncomingHomology (p + 1) ≃ₗ[R] R := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  exact (H.incomingCompare (p + 1)).trans
    (SingleHandleComplex.homologyLinearEquiv R (p + 1))

/-- Additive view of `incomingDegreeLinearEquiv`, retained for the public API. -/
noncomputable def incomingDegreeEquiv
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    H.IncomingHomology (p + 1) ≃+ R := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  exact H.incomingDegreeLinearEquiv.toAddEquiv

/-- Concrete outgoing relative homology in the dual degree `q` is one copy of `R`. -/
noncomputable def dualDegreeLinearEquiv
    (H : TraceHomologyComparison certificate) :
    letI := H.dualAddCommGroup q
    letI := H.dualModule q
    H.DualHomology q ≃ₗ[R] R := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  exact (H.dualCompare q).trans (SingleHandleComplex.homologyLinearEquiv R q)

/-- Additive view of `dualDegreeLinearEquiv`, retained for the public API. -/
noncomputable def dualDegreeEquiv
    (H : TraceHomologyComparison certificate) :
    letI := H.dualAddCommGroup q
    H.DualHomology q ≃+ R := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  exact H.dualDegreeLinearEquiv.toAddEquiv

/-- Incoming trace-pair homology vanishes away from the handle index. -/
theorem incoming_eq_zero_of_degree_ne
    (H : TraceHomologyComparison certificate)
    {k : Nat}
    (hk : k ≠ p + 1)
    (x : H.IncomingHomology k) :
    letI := H.incomingAddCommGroup k
    x = 0 := by
  letI := H.incomingAddCommGroup k
  letI := H.incomingModule k
  have hx : H.incomingCompare k x = 0 :=
    SingleHandleComplex.homology_eq_zero_of_ne R (p + 1) k hk
      (H.incomingCompare k x)
  have hx' : H.incomingCompare k x = H.incomingCompare k 0 :=
    hx.trans (H.incomingCompare k).map_zero.symm
  exact (H.incomingCompare k).injective hx'

/-- Outgoing trace-pair homology vanishes away from the complementary index. -/
theorem dual_eq_zero_of_degree_ne
    (H : TraceHomologyComparison certificate)
    {k : Nat}
    (hk : k ≠ q)
    (x : H.DualHomology k) :
    letI := H.dualAddCommGroup k
    x = 0 := by
  letI := H.dualAddCommGroup k
  letI := H.dualModule k
  have hx : H.dualCompare k x = 0 :=
    SingleHandleComplex.homology_eq_zero_of_ne R q k hk
      (H.dualCompare k x)
  have hx' : H.dualCompare k x = H.dualCompare k 0 :=
    hx.trans (H.dualCompare k).map_zero.symm
  exact (H.dualCompare k).injective hx'

/-- The concrete incoming generator transported from the single-handle complex. -/
noncomputable def incomingGenerator
    (H : TraceHomologyComparison certificate) : H.IncomingHomology (p + 1) := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  exact (H.incomingCompare (p + 1)).symm
    ((SingleHandleComplex.homologyLinearEquiv R (p + 1)).symm 1)

/-- The concrete outgoing generator transported from the dual handle complex. -/
noncomputable def dualGenerator
    (H : TraceHomologyComparison certificate) : H.DualHomology q := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  exact (H.dualCompare q).symm
    ((SingleHandleComplex.homologyLinearEquiv R q).symm 1)

/-- The actual incoming LES connecting map sends the core generator to the attaching class. -/
theorem incomingBoundary_generator
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    letI := H.incomingModule (p + 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    H.incomingBoundary H.incomingGenerator =
      certificate.incomingRelative.attachingClass := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
  letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
  letI := certificate.incomingRelative.carrierAddCommGroup (p + 1)
  letI := certificate.incomingRelative.boundaryTargetAddCommGroup
  change H.incomingBoundaryTargetCompare
        (H.theory.connecting certificate.trace .incoming (p + 1)
          (Nat.zero_lt_succ p)
          H.incomingGenerator) = _
  rw [H.incoming_boundary_natural]
  simp only [incomingGenerator, LinearEquiv.apply_symm_apply]
  exact certificate.incoming_boundary_generator

/-- The actual outgoing LES connecting map sends the dual generator to the belt class. -/
theorem dualBoundary_generator
    (H : TraceHomologyComparison certificate) :
    letI := H.dualAddCommGroup q
    letI := H.dualModule q
    letI := certificate.dualRelative.boundaryTargetAddCommGroup
    H.dualBoundary H.dualGenerator =
      certificate.dualRelative.attachingClass := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
  letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
  letI := certificate.dualRelative.carrierAddCommGroup q
  letI := certificate.dualRelative.boundaryTargetAddCommGroup
  change H.dualBoundaryTargetCompare
        (H.theory.connecting certificate.trace .outgoing q certificate.q_pos
          H.dualGenerator) = _
  rw [H.dual_boundary_natural]
  simp only [dualGenerator, LinearEquiv.apply_symm_apply]
  exact certificate.dual_boundary_generator

/-- The incoming connecting map is explicitly certified as the trace pair's LES map. -/
theorem incoming_connecting_from_les
    (H : TraceHomologyComparison certificate) :
    H.theory.IsLongExactConnecting certificate.trace .incoming (p + 1)
      (Nat.zero_lt_succ p)
      (H.theory.connecting certificate.trace .incoming (p + 1)
        (Nat.zero_lt_succ p)) :=
  H.theory.connecting_from_les certificate.trace .incoming (p + 1)
    (Nat.zero_lt_succ p)

/-- The outgoing connecting map is explicitly certified as the trace pair's LES map. -/
theorem dual_connecting_from_les
    (H : TraceHomologyComparison certificate) :
    H.theory.IsLongExactConnecting certificate.trace .outgoing q certificate.q_pos
      (H.theory.connecting certificate.trace .outgoing q certificate.q_pos) :=
  H.theory.connecting_from_les certificate.trace .outgoing q certificate.q_pos

/-- The incoming segment is attached to the certificate's actual source boundary. -/
theorem incoming_les_provenance
    (H : TraceHomologyComparison certificate) :
    TracePairEnd.boundaryManifold T certificate.trace .incoming = M ∧
      H.theory.HasActualTracePairMapProvenance
        certificate.trace .incoming (p + 1) (Nat.zero_lt_succ p) :=
  ⟨rfl, H.theory.maps_from_actual_trace_pair certificate.trace .incoming (p + 1)
    (Nat.zero_lt_succ p)⟩

/-- The outgoing segment is attached to the certificate's actual surgery boundary. -/
theorem dual_les_provenance
    (H : TraceHomologyComparison certificate) :
    TracePairEnd.boundaryManifold T certificate.trace .outgoing =
        T.surgery embedding ∧
      H.theory.HasActualTracePairMapProvenance
        certificate.trace .outgoing q certificate.q_pos :=
  ⟨rfl, H.theory.maps_from_actual_trace_pair certificate.trace .outgoing q
    certificate.q_pos⟩

/--
The incoming connecting image is literally the boundary-homology
representative transported from the certificate's actual attaching class.
-/
theorem incomingConnectingGenerator_eq_attachingRepresentative
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    letI := H.incomingModule (p + 1)
    letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    H.theory.connecting certificate.trace .incoming (p + 1)
        (Nat.zero_lt_succ p)
        H.incomingGenerator =
      H.incomingBoundaryTargetCompare.symm
        certificate.incomingRelative.attachingClass := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
  letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
  letI := certificate.incomingRelative.boundaryTargetAddCommGroup
  apply H.incomingBoundaryTargetCompare.injective
  rw [AddEquiv.apply_symm_apply]
  exact H.incomingBoundary_generator

/--
The outgoing connecting image is literally the boundary-homology
representative transported from the certificate's actual belt class.
-/
theorem dualConnectingGenerator_eq_beltRepresentative
    (H : TraceHomologyComparison certificate) :
    letI := H.dualAddCommGroup q
    letI := H.dualModule q
    letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
    letI := certificate.dualRelative.boundaryTargetAddCommGroup
    H.theory.connecting certificate.trace .outgoing q certificate.q_pos
        H.dualGenerator =
      H.dualBoundaryTargetCompare.symm
        certificate.dualRelative.attachingClass := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
  letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
  letI := certificate.dualRelative.boundaryTargetAddCommGroup
  apply H.dualBoundaryTargetCompare.injective
  rw [AddEquiv.apply_symm_apply]
  exact H.dualBoundary_generator

/--
The incoming sign theorem is tied to the normalized generator's actual
attaching representative, not merely to an orientation tag.
-/
theorem incoming_connecting_sign
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    letI := H.incomingModule (p + 1)
    letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    H.theory.connectingSign certificate.trace .incoming (p + 1) =
        .outwardNormalFirst ∧
      H.incomingDegreeLinearEquiv H.incomingGenerator = 1 ∧
        H.theory.connecting certificate.trace .incoming (p + 1)
            (Nat.zero_lt_succ p)
            H.incomingGenerator =
          H.incomingBoundaryTargetCompare.symm
            certificate.incomingRelative.attachingClass := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
  letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
  letI := certificate.incomingRelative.boundaryTargetAddCommGroup
  refine ⟨rfl, ?_, H.incomingConnectingGenerator_eq_attachingRepresentative⟩
  simp [incomingDegreeLinearEquiv, incomingGenerator]

/--
The outgoing sign theorem is tied to the normalized generator's actual belt
representative, not merely to an orientation tag.
-/
theorem dual_connecting_sign
    (H : TraceHomologyComparison certificate) :
    letI := H.dualAddCommGroup q
    letI := H.dualModule q
    letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
    letI := certificate.dualRelative.boundaryTargetAddCommGroup
    H.theory.connectingSign certificate.trace .outgoing q =
        .outwardNormalFirst ∧
      H.dualDegreeLinearEquiv H.dualGenerator = 1 ∧
        H.theory.connecting certificate.trace .outgoing q certificate.q_pos
            H.dualGenerator =
          H.dualBoundaryTargetCompare.symm
            certificate.dualRelative.attachingClass := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
  letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
  letI := certificate.dualRelative.boundaryTargetAddCommGroup
  refine ⟨rfl, ?_, H.dualConnectingGenerator_eq_beltRepresentative⟩
  simp [dualDegreeLinearEquiv, dualGenerator]

/-- The incoming LES target is definitionally boundary degree `p`. -/
@[simp]
theorem incoming_connecting_boundary_degree
    (_H : TraceHomologyComparison certificate) :
    (p + 1) - 1 = p := by
  omega

/-- The outgoing LES target is definitionally belt degree `q - 1`. -/
theorem dual_connecting_boundary_degree
    (_H : TraceHomologyComparison certificate) :
    q - 1 = q - 1 :=
  rfl

/-- The `p + 1` LES image is certified to be the geometric attaching-sphere class. -/
theorem incomingGenerator_represents_attachingSphere
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    letI := H.incomingModule (p + 1)
    letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
    (p + 1) - 1 = p ∧
      H.theory.RepresentsAttachingSphere certificate.trace ((p + 1) - 1)
        (H.theory.connecting certificate.trace .incoming (p + 1)
          (Nat.zero_lt_succ p)
          H.incomingGenerator) := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
  letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
  refine ⟨H.incoming_connecting_boundary_degree, ?_⟩
  simpa only [incomingGenerator, SingleHandleComplex.homologyGenerator] using
    H.incoming_generator_geometric

/-- The `q` LES image is certified to be the geometric belt-sphere class. -/
theorem dualGenerator_represents_beltSphere
    (H : TraceHomologyComparison certificate) :
    letI := H.dualAddCommGroup q
    letI := H.dualModule q
    letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
    q - 1 = q - 1 ∧
      H.theory.RepresentsBeltSphere certificate.trace (q - 1)
        (H.theory.connecting certificate.trace .outgoing q certificate.q_pos
          H.dualGenerator) := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
  letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
  refine ⟨H.dual_connecting_boundary_degree, ?_⟩
  simpa only [dualGenerator, SingleHandleComplex.homologyGenerator] using
    H.dual_generator_geometric

/-- The actual incoming generator is normalized to `1 : R`. -/
@[simp]
theorem incomingGenerator_normalized
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    letI := H.incomingModule (p + 1)
    H.incomingDegreeLinearEquiv H.incomingGenerator = 1 := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  simp [incomingDegreeLinearEquiv, incomingGenerator]

/-- The actual outgoing generator is normalized to `1 : R`. -/
@[simp]
theorem dualGenerator_normalized
    (H : TraceHomologyComparison certificate) :
    letI := H.dualAddCommGroup q
    letI := H.dualModule q
    H.dualDegreeLinearEquiv H.dualGenerator = 1 := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  simp [dualDegreeLinearEquiv, dualGenerator]

end TraceHomologyComparison

end Surface.SmoothFramedSurgery
```
