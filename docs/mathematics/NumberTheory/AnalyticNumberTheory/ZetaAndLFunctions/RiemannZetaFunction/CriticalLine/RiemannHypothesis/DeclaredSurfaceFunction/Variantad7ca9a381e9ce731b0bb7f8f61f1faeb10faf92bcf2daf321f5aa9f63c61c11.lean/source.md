# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DeclaredSurfaceFunction.Variantad7ca9a381e9ce731b0bb7f8f61f1faeb10faf92bcf2daf321f5aa9f63c61c11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2b25c1fe9492a8c1bca380a0055d8a129b6ff94` · SHA-256 `ad7ca9a381e9ce731b0bb7f8f61f1faeb10faf92bcf2daf321f5aa9f63c61c11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.ClassicalSmoothAnalytic
import Surface.Legacy.BinaryLogicMatrix.ZetaMobiusFractal
import Surface.Legacy.BinaryLogicMatrixFlow.Core
import Surface.Foundation.LogicalFoundation

namespace Surface.Legacy


inductive DeclaredSurfaceFunction where
  | classical :
      ClassicalSmoothAnalyticFunction ->
        DeclaredSurfaceFunction
  | measurable :
      CertifiedMeasurableFunction ->
        DeclaredSurfaceFunction
  | fractal :
      CertifiedNowhereDifferentiableFractalFunction ->
        DeclaredSurfaceFunction
  | zetaMobiusFractal :
      ZetaMobiusFractalFunction ->
        DeclaredSurfaceFunction

structure FiniteEMLObject where
  name : String

structure OracleRepresentableFunction where
  name : String
  ordinaryComputable : Bool

structure HeatFlowRepresentableObject where
  name : String
  kernelCertified : Prop

structure HeatAveragingRepresentableObject where
  name : String
  bijective : Bool

structure ChainComplexRepresentableObject where
  name : String
  boundarySquaredZero : Prop

structure HomologyStableFlowObject where
  name : String
  chainMapCertified : Prop
  quasiIsoCertified : Prop

structure RicciFlowRepresentableObject where
  name : String
  curvatureHypothesesCertified : Prop

structure RicciSurgeryRepresentableObject where
  name : String
  curvatureHypothesesCertified : Prop
  surgeryHypothesesCertified : Prop

structure ExtinctionTopologyObject where
  name : String
  extinctionHypothesesCertified : Prop
  topologyHypothesesCertified : Prop

structure InfiniteTimeRepresentableFunction where
  name : String
  limitCertificateRequired : Prop

structure ChoiceDependentObject where
  name : String
  choiceRequired : Prop

inductive DeclaredSurfaceObject where
  | finiteEML :
      FiniteEMLObject -> DeclaredSurfaceObject
  | matrix :
      {rows cols : Nat} ->
        BinaryLogicMatrix rows cols -> DeclaredSurfaceObject
  | bijectiveFlow :
      {rows cols : Nat} ->
        BinaryLogicMatrixFlow rows cols -> DeclaredSurfaceObject
  | classical :
      ClassicalSmoothAnalyticFunction -> DeclaredSurfaceObject
  | measurable :
      CertifiedMeasurableFunction -> DeclaredSurfaceObject
  | fractal :
      CertifiedNowhereDifferentiableFractalFunction -> DeclaredSurfaceObject
  | zetaMobiusFractal :
      ZetaMobiusFractalFunction -> DeclaredSurfaceObject
  | oracle :
      OracleRepresentableFunction -> DeclaredSurfaceObject
  | heatFlow :
      HeatFlowRepresentableObject -> DeclaredSurfaceObject
  | heatAveraging :
      HeatAveragingRepresentableObject -> DeclaredSurfaceObject
  | chainComplex :
      ChainComplexRepresentableObject -> DeclaredSurfaceObject
  | homologyStable :
      HomologyStableFlowObject -> DeclaredSurfaceObject
  | ricciFlow :
      RicciFlowRepresentableObject -> DeclaredSurfaceObject
  | ricciSurgery :
      RicciSurgeryRepresentableObject -> DeclaredSurfaceObject
  | extinctionTopology :
      ExtinctionTopologyObject -> DeclaredSurfaceObject
  | infiniteTime :
      InfiniteTimeRepresentableFunction -> DeclaredSurfaceObject
  | choice :
      ChoiceDependentObject -> DeclaredSurfaceObject

namespace DeclaredSurfaceObject

def requiredFoundation : DeclaredSurfaceObject -> LogicalFoundation
  | finiteEML _ => LogicalFoundation.constructive
  | matrix _ => LogicalFoundation.constructive
  | bijectiveFlow _ => LogicalFoundation.bijectiveFiniteFlow
  | classical _ => LogicalFoundation.classical
  | measurable _ => LogicalFoundation.measurable
  | fractal _ => LogicalFoundation.fractal
  | zetaMobiusFractal _ => LogicalFoundation.fractal
  | oracle _ => LogicalFoundation.oracle
  | heatFlow _ => LogicalFoundation.heatFlow
  | heatAveraging _ => LogicalFoundation.heatAveraging
  | chainComplex _ => LogicalFoundation.chainComplex
  | homologyStable _ => LogicalFoundation.homologyStability
  | ricciFlow _ => LogicalFoundation.ricciFlow
  | ricciSurgery _ => LogicalFoundation.ricciSurgery
  | extinctionTopology _ => LogicalFoundation.extinctionTopology
  | infiniteTime _ => LogicalFoundation.infiniteTime
  | choice _ => LogicalFoundation.choice

end DeclaredSurfaceObject

namespace DeclaredSurfaceFunction

def toObject : DeclaredSurfaceFunction -> DeclaredSurfaceObject
  | classical f => DeclaredSurfaceObject.classical f
  | measurable f => DeclaredSurfaceObject.measurable f
  | fractal f => DeclaredSurfaceObject.fractal f
  | zetaMobiusFractal f => DeclaredSurfaceObject.zetaMobiusFractal f

end DeclaredSurfaceFunction

end Surface.Legacy
```
