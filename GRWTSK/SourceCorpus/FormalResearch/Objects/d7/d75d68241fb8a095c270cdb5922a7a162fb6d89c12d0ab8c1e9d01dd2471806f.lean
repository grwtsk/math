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
