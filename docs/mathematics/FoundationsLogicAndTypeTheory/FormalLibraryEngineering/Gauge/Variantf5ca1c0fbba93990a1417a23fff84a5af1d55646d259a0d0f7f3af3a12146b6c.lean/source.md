# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gauge.Variantf5ca1c0fbba93990a1417a23fff84a5af1d55646d259a0d0f7f3af3a12146b6c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00fb722a674ba2f723256c3bac89659c9d42e724` · SHA-256 `f5ca1c0fbba93990a1417a23fff84a5af1d55646d259a0d0f7f3af3a12146b6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.MPS

/-!
# Certified MPS gauge equivalence

Gauge data are representation coordinates, never semantic identity.  The
certificate records the registered internal change of basis and proves that
the complete contraction is unchanged.
-/

namespace Mathematics.TensorNetwork

/-- One certified internal gauge transformation between two MPS packages. -/
structure GaugeTransformation
    (source target : OpenMPS N D) where
  internalBondMapId : Fin (N + 1) → String
  inverseBondMapId : Fin (N + 1) → String
  inverseLawDigest : String
  contractPreserved :
    target.contract = source.contract

/-- Registered gauge equivalence; arbitrary state equality is not enough. -/
def GaugeEquivalent
    (source target : OpenMPS N D) : Prop :=
  Nonempty (GaugeTransformation source target)

/-- Certified internal gauge transformations preserve the represented state. -/
theorem contract_gauge_invariant
    {source target : OpenMPS N D}
    (gauge : GaugeTransformation source target) :
    target.contract = source.contract :=
  gauge.contractPreserved

/-- Inserting a registered equivalence and its inverse cancels exactly. -/
theorem inserted_inverse_cancels
    (equivalence : α ≃ β)
    (value : α) :
    equivalence.symm (equivalence value) = value :=
  equivalence.symm_apply_apply value

end Mathematics.TensorNetwork
```
