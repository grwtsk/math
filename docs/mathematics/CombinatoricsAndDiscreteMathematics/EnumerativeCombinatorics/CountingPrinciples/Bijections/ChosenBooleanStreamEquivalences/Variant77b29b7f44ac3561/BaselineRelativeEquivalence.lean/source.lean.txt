/-
Complete baseline-relative equivalence and exact designated-zero recovery criterion
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

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561.ChosenStreamRepresentation

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

/-- The source-relative XOR interpreter under fixed address/digit conventions. -/
def distinguishedInterpreter
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline : BooleanState Address)
    (scalar : representation.Scalar) :
    BooleanState Address :=
  fun address =>
    xorBit (baseline address)
      (representation.digits scalar (enumeration.symm address))

/-- The discrepancy stream between a baseline and target state. -/
def discrepancy
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (baseline target : BooleanState Address) :
    BitStream :=
  fun index =>
    xorBit (baseline (enumeration index)) (target (enumeration index))

/--
For a fixed baseline, the distinguished interpreter is an exact equivalence
between designated scalars and all Boolean carrier states.
-/
def baselineEquiv
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline : BooleanState Address) :
    representation.Scalar ≃ BooleanState Address where
  toFun := distinguishedInterpreter enumeration representation baseline
  invFun target := representation.theta (discrepancy enumeration baseline target)
  left_inv scalar := by
    calc
      representation.theta
          (discrepancy enumeration baseline
            (distinguishedInterpreter enumeration representation baseline scalar)) =
          representation.theta (representation.theta.symm scalar) := by
        congr 1
        funext index
        simp [distinguishedInterpreter, discrepancy,
          DesignatedCantorRepresentation.digits]
      _ = scalar := representation.theta.apply_symm_apply scalar
  right_inv target := by
    funext address
    simp [distinguishedInterpreter, discrepancy,
      DesignatedCantorRepresentation.digits]

@[simp]
theorem baselineEquiv_apply
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline : BooleanState Address)
    (scalar : representation.Scalar) :
    baselineEquiv enumeration representation baseline scalar =
      distinguishedInterpreter enumeration representation baseline scalar :=
  rfl

@[simp]
theorem baselineEquiv_symm_apply
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline target : BooleanState Address) :
    (baselineEquiv enumeration representation baseline).symm target =
      representation.theta (discrepancy enumeration baseline target) :=
  rfl

/--
The baseline-relative interpreter returns the baseline exactly for the
designated all-false scalar.  The fixed representation and enumeration make
this an exact equality, not a choice of an arbitrary scalar called zero.
-/
theorem distinguishedInterpreter_eq_baseline_iff
    {Address : Type}
    (enumeration : Nat ≃ Address)
    (representation : DesignatedCantorRepresentation)
    (baseline : BooleanState Address)
    (scalar : representation.Scalar) :
    distinguishedInterpreter enumeration representation baseline scalar = baseline ↔
      scalar = zeroScalar representation := by
  constructor
  · intro interpreted
    apply (baselineEquiv enumeration representation baseline).injective
    rw [baselineEquiv_apply, interpreted]
    funext address
    simp [baselineEquiv, distinguishedInterpreter, zeroScalar]
  · intro scalarZero
    subst scalar
    funext address
    simp [distinguishedInterpreter, zeroScalar]


end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561
