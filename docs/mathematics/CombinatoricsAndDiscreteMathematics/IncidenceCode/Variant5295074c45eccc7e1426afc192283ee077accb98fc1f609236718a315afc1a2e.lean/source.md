# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.IncidenceCode.Variant5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f719676374d0c7766d7efab1de23a060e1a5ca5c` · SHA-256 `5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity
import Mathlib.Data.Fintype.Basic

/-!
# Exact Boolean incidence coordinates

An incidence code is a complete family of answers to a declared probe family.
It is a navigation coordinate, not an identity.  A certified code additionally
carries a witness that it lies in the image of the authoritative encoder.
-/

namespace Mathematics.Projection

universe u v w

/-- Complete Boolean incidence over a probe family. -/
abbrev IncidenceCode (Probe : Type u) := Probe → Bool

/-- Dense finite-stage materialization of an incidence code. -/
structure FiniteIncidenceCode (width : Nat) where
  bits : BitVec width
  deriving DecidableEq, Repr

/--
An admitted coordinate is in the exact image of the authoritative encoder.
Arbitrary bit patterns used for search do not acquire this witness.
-/
structure CertifiedIncidence
    {Object : Type u} {Probe : Type v}
    (encode : Object → IncidenceCode Probe) where
  object : Object
  code : IncidenceCode Probe
  realized : encode object = code

namespace CertifiedIncidence

variable {Object : Type u} {Probe : Type v}
variable {encode : Object → IncidenceCode Probe}

/-- Every authoritative object has its canonical realized coordinate. -/
def ofObject (object : Object) : CertifiedIncidence encode where
  object := object
  code := encode object
  realized := rfl

end CertifiedIncidence

/--
A probe extension embeds every old probe into the enlarged family.  New
coordinates may refine an old fiber but cannot reinterpret an old probe.
-/
structure ProbeExtension (OldProbe : Type u) (NewProbe : Type v) where
  embed : OldProbe → NewProbe
  embed_injective : Function.Injective embed

namespace ProbeExtension

variable {OldProbe : Type u} {NewProbe : Type v}

def restrict
    (extension : ProbeExtension OldProbe NewProbe)
    (code : IncidenceCode NewProbe) :
    IncidenceCode OldProbe :=
  fun probe ↦ code (extension.embed probe)

end ProbeExtension

/--
An accepted refinement is conservative: forgetting its new probes recovers
the previous authoritative incidence exactly.
-/
structure ConservativeRefinement
    {Object : Type u}
    {OldProbe : Type v}
    {NewProbe : Type w}
    (oldEncode : Object → IncidenceCode OldProbe)
    (newEncode : Object → IncidenceCode NewProbe)
    (extension : ProbeExtension OldProbe NewProbe) : Prop where
  forgetsToOld :
    ∀ object, extension.restrict (newEncode object) = oldEncode object

end Mathematics.Projection
```
