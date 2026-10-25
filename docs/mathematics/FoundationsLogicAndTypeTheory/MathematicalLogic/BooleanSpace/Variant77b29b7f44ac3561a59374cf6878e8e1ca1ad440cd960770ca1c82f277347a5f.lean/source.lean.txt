import BitMatrix.Carrier.Address

/-!
# Boolean carrier space and designated scalar interpreter

This provider-neutral core parameterizes the scalar type and designated digit
equivalence. All interpreter and baseline-relative inverse theorems below are
then kernel-checked without postulating an analytic solver or silently choosing
an alternative ternary expansion. `BitMatrix.Topology.DesignatedCantor`
separately supplies the concrete exact middle-thirds-real representation.
-/

namespace BitMatrix.Carrier

/-- Infinite designated binary digit streams. -/
abbrev BitStream := Nat → Bool

/-- Boolean states indexed by a carrier address type. -/
abbrev BooleanState (Address : Type) := Address → Bool

/-- Boolean exclusive-or, kept separate from matrix XOR. -/
def xorBit (left right : Bool) : Bool := left != right

@[simp]
theorem xorBit_self (value : Bool) : xorBit value value = false := by
  cases value <;> rfl

@[simp]
theorem xorBit_false_right (value : Bool) : xorBit value false = value := by
  cases value <;> rfl

@[simp]
theorem xorBit_cancel_left (left right : Bool) :
    xorBit left (xorBit left right) = right := by
  cases left <;> cases right <;> rfl

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
A concrete total state-program interpreter: the program state selects exactly
the coordinates complemented in the input.  This is one fixed interpreter of
the requested `B × B → B` type, not a transformation-complete enumeration.
-/
def stateTransformationInterpreter
    {Address : Type}
    (program input : BooleanState Address) : BooleanState Address :=
  fun address => xorBit (input address) (program address)

@[simp]
theorem stateTransformationInterpreter_zero
    {Address : Type}
    (input : BooleanState Address) :
    stateTransformationInterpreter (fun _ => false) input = input := by
  funext address
  simp [stateTransformationInterpreter]

@[simp]
theorem stateTransformationInterpreter_involutive
    {Address : Type}
    (program input : BooleanState Address) :
    stateTransformationInterpreter program
      (stateTransformationInterpreter program input) = input := by
  funext address
  simp [stateTransformationInterpreter, xorBit]

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

end BitMatrix.Carrier
