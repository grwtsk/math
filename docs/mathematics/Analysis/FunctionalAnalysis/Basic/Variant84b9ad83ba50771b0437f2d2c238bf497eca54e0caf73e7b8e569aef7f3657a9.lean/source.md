# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Basic.Variant84b9ad83ba50771b0437f2d2c238bf497eca54e0caf73e7b8e569aef7f3657a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fcc3468bf3e52a75da30a9a2e4fd2027fafb688` · SHA-256 `84b9ad83ba50771b0437f2d2c238bf497eca54e0caf73e7b8e569aef7f3657a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface

universe u v

/-!
What is formalized:
Typed Hilbert-space interface data: carrier, scalar type, zero vector, inner
product operation, and a completeness certificate.

What is certificate-gated:
All analytic Hilbert-space laws, including completeness and inner-product laws,
are carried as explicit propositions/certificates.

What is not claimed:
This module does not prove a spectral theorem, Hilbert--Pólya, a trace formula,
or analytic self-adjointness of any concrete operator.

Primary mathematical source:
Internal Surface Hilbert interface for later operator and prismatic embedding
modules.
-/

structure Hilbert.Space where
  carrier : Type u
  scalar : Type v
  zero : carrier
  inner : carrier → carrier → scalar
  innerProductLaws : Prop
  innerProductLawsCertified : innerProductLaws
  complete : Prop
  completeCertified : complete
  boundary : List String

structure Hilbert.DenseDomain
    (H : Hilbert.Space.{u, v}) where
  contains : H.carrier → Prop
  zero_mem : contains H.zero
  dense : Prop
  denseCertified : dense
  boundary : List String

def Hilbert.fullDomain
    (H : Hilbert.Space.{u, v}) :
    Hilbert.DenseDomain H where
  contains := fun _ => True
  zero_mem := trivial
  dense := True
  denseCertified := trivial
  boundary := [
    "Full-domain interface example.",
    "For unbounded analytic operators, a genuine dense-domain certificate is required."
  ]

def Hilbert.standardFinite4 : Hilbert.Space.{0, 0} where
  carrier := Fin 4
  scalar := Nat
  zero := ⟨0, by decide⟩
  inner := fun i j => if i = j then 1 else 0
  innerProductLaws := True
  innerProductLawsCertified := trivial
  complete := True
  completeCertified := trivial
  boundary := [
    "Finite four-coordinate Hilbert interface example.",
    "This is not an analytic Hilbert-space theorem."
  ]

theorem Hilbert.space_complete
    (H : Hilbert.Space.{u, v}) :
    H.complete :=
  H.completeCertified

end Surface
```
