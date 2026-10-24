# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CylinderAccess.Variantd75d68241fb8a095c270cdb5922a7a162fb6d89c12d0ab8c1e9d01dd2471806f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd45af798eb059eb51f8fc7079bb143261c8793f` · SHA-256 `d75d68241fb8a095c270cdb5922a7a162fb6d89c12d0ab8c1e9d01dd2471806f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite-stage cylinder access

Stage independence is supplied as a compatibility certificate.  No completed
infinite state is materialized.
-/

namespace Mathematics.GraphAccess

structure CylinderAccessCertificate (Stage Value : Type u) where
  limitRef : String
  observableRef : String
  finiteStages : List Stage
  evaluate : Stage → Value
  compatible :
    ∀ first second,
      first ∈ finiteStages →
      second ∈ finiteStages →
      evaluate first = evaluate second

theorem cylinder_access_stage_independent
    {Stage Value : Type u}
    (certificate : CylinderAccessCertificate Stage Value)
    (first second : Stage)
    (firstRegistered : first ∈ certificate.finiteStages)
    (secondRegistered : second ∈ certificate.finiteStages) :
    certificate.evaluate first = certificate.evaluate second :=
  certificate.compatible
    first
    second
    firstRegistered
    secondRegistered

end Mathematics.GraphAccess
```
