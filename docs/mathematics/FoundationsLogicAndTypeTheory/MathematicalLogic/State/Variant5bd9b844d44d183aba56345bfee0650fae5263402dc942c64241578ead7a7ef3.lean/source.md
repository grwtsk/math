# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.State.Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87cd30d05dffbd0e73e617b1a125428636e10839` · SHA-256 `5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finsupp.Basic
import Mathlib.Data.Rat.Defs

/-!
# Exact categorical states and their integral skeleton

This module formalizes the state-authority boundary of the
convolution--involution neural diffusion architecture.  A raw Boolean function
is only a representation.  A `CertifiedState` additionally carries an image
witness for an authoritative encoder.

For an infinite probe family, a Boolean incidence function generally has
infinite support.  Its unconditional integral realization therefore lives in
the product `Probe → ℤ`.  A direct-sum/Finsupp realization is exposed only for
states carrying a separate finite-support certificate.
-/

namespace Mathematics.NeuralDiffusion

universe u v

/-- Positive rational-radius probes based at certified singleton probes. -/
abbrev RationalNeighborhoodProbe (Singleton : Type u) :=
  Singleton × { radius : ℚ // 0 < radius }

/-- Boolean incidence data indexed by the complete probe family. -/
abbrev BooleanPresheaf (Probe : Type u) := Probe → Bool

/--
The exact Boolean state object is the image of the authoritative encoder.
Membership evidence is retained rather than inferred from a bit pattern.
-/
def CertifiedState
    {Object : Type u} {Probe : Type v}
    (encode : Object → BooleanPresheaf Probe) :=
  { bits : BooleanPresheaf Probe // ∃ object, encode object = bits }

/-- Every authoritative object has a certified encoding. -/
def certifiedEncode
    {Object : Type u} {Probe : Type v}
    (encode : Object → BooleanPresheaf Probe)
    (object : Object) :
    CertifiedState encode :=
  ⟨encode object, object, rfl⟩

/--
Decode a certified state by choosing its image witness.  Faithfulness makes the
choice unique, and the two inverse laws below remove any semantic dependence on
which witness was chosen.
-/
noncomputable def certifiedDecode
    {Object : Type u} {Probe : Type v}
    (encode : Object → BooleanPresheaf Probe)
    (_faithful : Function.Injective encode)
    (state : CertifiedState encode) :
    Object :=
  Classical.choose state.property

@[simp] theorem certifiedDecode_encode
    {Object : Type u} {Probe : Type v}
    (encode : Object → BooleanPresheaf Probe)
    (faithful : Function.Injective encode)
    (object : Object) :
    certifiedDecode encode faithful (certifiedEncode encode object) = object := by
  apply faithful
  exact Classical.choose_spec
    (certifiedEncode encode object).property

@[simp] theorem certifiedEncode_decode
    {Object : Type u} {Probe : Type v}
    (encode : Object → BooleanPresheaf Probe)
    (faithful : Function.Injective encode)
    (state : CertifiedState encode) :
    certifiedEncode encode (certifiedDecode encode faithful state) = state := by
  apply Subtype.ext
  exact Classical.choose_spec state.property

/--
The exact state-space interface.  `incidence` may be a restricted Yoneda nerve
reduced to Boolean incidence only after the required thinness and separation
certificates have been established externally.
-/
structure ExactStateSpace (Object : Type u) (Probe : Type v) where
  incidence : Object → BooleanPresheaf Probe
  faithful : Function.Injective incidence

namespace ExactStateSpace

variable {Object : Type u} {Probe : Type v}

abbrev State (space : ExactStateSpace Object Probe) :=
  CertifiedState space.incidence

def encode (space : ExactStateSpace Object Probe) (object : Object) :
    space.State :=
  certifiedEncode space.incidence object

noncomputable def decode
    (space : ExactStateSpace Object Probe) (state : space.State) :
    Object :=
  certifiedDecode space.incidence space.faithful state

@[simp] theorem decode_encode
    (space : ExactStateSpace Object Probe) (object : Object) :
    space.decode (space.encode object) = object :=
  certifiedDecode_encode space.incidence space.faithful object

@[simp] theorem encode_decode
    (space : ExactStateSpace Object Probe) (state : space.State) :
    space.encode (space.decode state) = state :=
  certifiedEncode_decode space.incidence space.faithful state

end ExactStateSpace

/--
The unconditional integral skeleton.  This is a product, not a direct sum:
rational-radius incidence is normally nonzero at infinitely many radii.
-/
abbrev IntegralSkeleton (Probe : Type u) := Probe → ℤ

def boolToInt : Bool → ℤ
  | false => 0
  | true => 1

def integralSkeleton
    {Object : Type u} {Probe : Type v}
    {encode : Object → BooleanPresheaf Probe}
    (state : CertifiedState encode) :
    IntegralSkeleton Probe :=
  fun probe => boolToInt (state.1 probe)

@[simp] theorem integralSkeleton_eq_one_iff
    {Object : Type u} {Probe : Type v}
    {encode : Object → BooleanPresheaf Probe}
    (state : CertifiedState encode) (probe : Probe) :
    integralSkeleton state probe = 1 ↔ state.1 probe = true := by
  cases h : state.1 probe <;> simp [integralSkeleton, boolToInt, h]

@[simp] theorem integralSkeleton_eq_zero_iff
    {Object : Type u} {Probe : Type v}
    {encode : Object → BooleanPresheaf Probe}
    (state : CertifiedState encode) (probe : Probe) :
    integralSkeleton state probe = 0 ↔ state.1 probe = false := by
  cases h : state.1 probe <;> simp [integralSkeleton, boolToInt, h]

/-- Explicit finiteness evidence required before using the free direct sum. -/
structure FinitaryBooleanState (Probe : Type u) where
  bits : BooleanPresheaf Probe
  finiteSupport : Set.Finite { probe | bits probe = true }

/-- Direct-sum realization, available only from a finitary state certificate. -/
noncomputable def finitaryIntegralSkeleton
    {Probe : Type u} [DecidableEq Probe]
    (state : FinitaryBooleanState Probe) :
    Probe →₀ ℤ where
  support := state.finiteSupport.toFinset
  toFun := fun probe => boolToInt (state.bits probe)
  mem_support_toFun := by
    intro probe
    simp only [Set.Finite.mem_toFinset]
    cases h : state.bits probe <;> simp [boolToInt, h]

end Mathematics.NeuralDiffusion
```
