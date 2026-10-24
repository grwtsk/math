import Mathematics.StratifiedBoundary.Trace.CylinderTrace

/-!
# Optional completed trace extension

The cylinder trace exists independently.  Extension requires an explicit norm,
boundedness, density, and uniqueness certificate.
-/

namespace Mathematics.StratifiedBoundary

structure CylinderTraceExtensionCertificate
    (Cylinder Completed Value : Type u) where
  embed : Cylinder → Completed
  cylinderTrace : Cylinder → Value
  extension : Completed → Value
  completionNormRef : String
  boundednessProofRef : String
  densityProofRef : String
  restricts :
    ∀ cylinder,
      extension (embed cylinder) = cylinderTrace cylinder
  unique :
    ∀ candidate : Completed → Value,
      (∀ cylinder,
        candidate (embed cylinder) = cylinderTrace cylinder) →
      candidate = extension

theorem cylinder_trace_extension_unique
    {Cylinder Completed Value : Type u}
    (certificate :
      CylinderTraceExtensionCertificate
        Cylinder Completed Value)
    (candidate : Completed → Value)
    (restricts :
      ∀ cylinder,
        candidate (certificate.embed cylinder) =
          certificate.cylinderTrace cylinder) :
    candidate = certificate.extension :=
  certificate.unique candidate restricts

end Mathematics.StratifiedBoundary
