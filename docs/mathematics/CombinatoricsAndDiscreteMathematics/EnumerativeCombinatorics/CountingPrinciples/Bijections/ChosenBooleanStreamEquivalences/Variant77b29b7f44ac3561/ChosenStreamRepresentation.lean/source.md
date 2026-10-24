# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561.ChosenStreamRepresentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29da9c91fe6ea5fcc05e70a33e53024b448fd098` · SHA-256 `c0fc48f56faeca1ebb9d5a1457cf1bd1f70190927938b53b0ddabf9d83655d0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Complete supplied stream-to-scalar equivalence, its inverse and representation-relative zero point
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f
Organized SHA-256: f77bbfa7e54d8098a4295328fae809fab07f9ffebb61a8a44f7442472d5e88ce
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import BitMatrix.Carrier.Address

import GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanStructures.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561.BooleanFunctionDataAndXor

/-!
# Boolean carrier space and designated scalar interpreter

This provider-neutral core parameterizes the scalar type and designated digit
equivalence. All interpreter and baseline-relative inverse theorems below are
then kernel-checked without postulating an analytic solver or silently choosing
an alternative ternary expansion. `BitMatrix.Topology.DesignatedCantor`
separately supplies the concrete exact middle-thirds-real representation.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561

open GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanStructures.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561

/--
The exact designated Cantor representation boundary.  A concrete real-series
implementation may instantiate this structure only after proving that its
chosen `{0,2}` expansion is an equivalence.
-/
structure DesignatedCantorRepresentation where
  Scalar : Type
  theta : BitStream ≃ Scalar

/--
The concrete symbolic designated-digit representation. It closes the exact
carrier-codec algebra but is not itself the analytic equivalence with a subset
of `Real`; `BitMatrix.Topology.DesignatedCantor` provides that distinct
concrete analytic specialization.
-/
def symbolicCantorRepresentation : DesignatedCantorRepresentation where
  Scalar := BitStream
  theta := Equiv.refl BitStream

@[simp]
theorem symbolicCantorRepresentation_theta (stream : BitStream) :
    symbolicCantorRepresentation.theta stream = stream :=
  rfl

namespace DesignatedCantorRepresentation

/-- Read the designated binary digit sequence of a scalar. -/
def digits (representation : DesignatedCantorRepresentation) :
    representation.Scalar → BitStream :=
  representation.theta.symm

theorem theta_injective (representation : DesignatedCantorRepresentation) :
    Function.Injective representation.theta :=
  representation.theta.injective

theorem theta_surjective (representation : DesignatedCantorRepresentation) :
    Function.Surjective representation.theta :=
  representation.theta.surjective

@[simp]
theorem digits_theta
    (representation : DesignatedCantorRepresentation)
    (stream : BitStream) :
    representation.digits (representation.theta stream) = stream :=
  representation.theta.symm_apply_apply stream

@[simp]
theorem theta_digits
    (representation : DesignatedCantorRepresentation)
    (scalar : representation.Scalar) :
    representation.theta (representation.digits scalar) = scalar :=
  representation.theta.apply_symm_apply scalar

end DesignatedCantorRepresentation

/--
The designated scalar represented by the all-false digit stream.  This is a
representation-relative distinguished point; it does not assert that the
carrier scalar type has an independently chosen additive zero.
-/
def zeroScalar (representation : DesignatedCantorRepresentation) :
    representation.Scalar :=
  representation.theta (fun _ => false)

@[simp]
theorem DesignatedCantorRepresentation.digits_zeroScalar
    (representation : DesignatedCantorRepresentation) :
    representation.digits (zeroScalar representation) = fun _ => false := by
  simp [zeroScalar]


end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561
```
