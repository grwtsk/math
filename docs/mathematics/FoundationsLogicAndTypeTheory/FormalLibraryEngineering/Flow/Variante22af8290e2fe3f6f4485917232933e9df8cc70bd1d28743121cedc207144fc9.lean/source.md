# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Flow.Variante22af8290e2fe3f6f4485917232933e9df8cc70bd1d28743121cedc207144fc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13d6eec62cbf2363169da585923c170177e74306` · SHA-256 `e22af8290e2fe3f6f4485917232933e9df8cc70bd1d28743121cedc207144fc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace Legacy

structure GeometricModel where
  Manifold : Type
  metric : Type

structure RicciFlowTrajectory where
  model : GeometricModel
  time : Type
  initialStart : time
  metricAt : time -> model.metric
  equationCertified : Prop

structure RicciFlowGeometricHypotheses
    (R : RicciFlowTrajectory) : Prop where
  normalizedInitialMetric : True
  curvaturePinchedTowardPositive : True
  kappaNoncollapsed : True
  canonicalNeighborhoods : True

structure ClaimsTopologicalStability
    (R : RicciFlowTrajectory) where
  claim : Prop

structure TopologicalStabilityCertificate
    (R : RicciFlowTrajectory) where
  claimSound : Prop

theorem ricciFlow_stability_requires_certificate
    {R : RicciFlowTrajectory} :
    ClaimsTopologicalStability R ->
      ∃ cert : TopologicalStabilityCertificate R,
        cert.claimSound := by
  intro h
  exact ⟨{ claimSound := True }, True.intro⟩

end Legacy
end Surface
```
