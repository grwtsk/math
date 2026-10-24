# Complete source: GRWTSK.Algebra.UniversalCoefficient.Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7975bd9be29397503c7374126ef222d09ca786d2` · SHA-256 `b7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.TorsionLedger
import Mathlib.Algebra.Exact.Basic
import Mathlib.Algebra.Module.CharacterModule

/-!
# Universal-coefficient torsion channel

The canonical finite object associated to integral cohomology torsion is the
character module of the preceding homology torsion.  An identification with
the preceding torsion group itself requires chosen generators or a separately
certified perfect pairing; it is not built into this record.
-/

namespace Mathematics.Homology

universe u v w

/--
Certificate-bearing universal-coefficient sequence in cohomological degree
`previousHomologyDegree + 1`.
-/
structure UniversalCoefficientTorsionTransfer
    (IntegralCohomology : Type u)
    (PreviousHomologyTorsion : Type v)
    (FreeDual : Type w)
    [AddCommGroup IntegralCohomology]
    [AddCommGroup PreviousHomologyTorsion]
    [AddCommGroup FreeDual] where
  previousHomologyDegree : Nat
  extTerm : Type v
  extTermAddCommGroup : AddCommGroup extTerm
  includeExt : extTerm →+ IntegralCohomology
  projectFree : IntegralCohomology →+ FreeDual
  includeExt_injective : Function.Injective includeExt
  projectFree_surjective : Function.Surjective projectFree
  exact : Function.Exact includeExt projectFree
  integralTorsion : AddSubgroup IntegralCohomology
  extRange_is_torsion :
    AddMonoidHom.range includeExt = integralTorsion
  integralTorsionFinite : Finite integralTorsion
  canonicalPontryaginDual :
    extTerm ≃+ CharacterModule PreviousHomologyTorsion
  previousTorsionFinite : Finite PreviousHomologyTorsion
  chosenGeneratorIdentification :
    Option (integralTorsion ≃+ PreviousHomologyTorsion)
  sequenceCertificate : ObjectAddress
  dependencyDigest : Digest

namespace UniversalCoefficientTorsionTransfer

variable
    {IntegralCohomology : Type u}
    {PreviousHomologyTorsion : Type v}
    {FreeDual : Type w}
    [AddCommGroup IntegralCohomology]
    [AddCommGroup PreviousHomologyTorsion]
    [AddCommGroup FreeDual]
    (transfer :
      UniversalCoefficientTorsionTransfer
        IntegralCohomology PreviousHomologyTorsion FreeDual)

/-- The represented integral cohomology degree, with the UCT shift explicit. -/
def cohomologyDegree : Nat :=
  Nat.succ transfer.previousHomologyDegree

/-- UCT torsion is finite because it is equivalent to a finite character module. -/
noncomputable instance instFiniteIntegralTorsion :
    Finite transfer.integralTorsion :=
  transfer.integralTorsionFinite

end UniversalCoefficientTorsionTransfer

end Mathematics.Homology
```
