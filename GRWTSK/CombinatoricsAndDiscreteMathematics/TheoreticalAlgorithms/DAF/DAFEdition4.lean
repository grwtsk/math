import DAF.System
import DAF.Codec
import DAF.Causal
import DAF.Causal.ObservableRecursion
import DAF.Causal.CausalState
import DAF.Causal.PredictiveRepresentation
import DAF.Causal.ObserverFactor
import DAF.Causal.QuantizerTower
import DAF.Causal.ReversibleCausalState
import DAF.Causal.ObservableAdapter
import DAF.Refinement
import DAF.DependencyGraph
import DAF.Manifest
import DAF.BuildModel
import DAF.Project
import DAF.Upgrade
import DAF.Integration.CertifiedUpgrade
import DAF.FiniteDynamics.Permutation
import DAF.FiniteDynamics.FirstReturn
import DAF.FiniteDynamics.GradedFirstReturn
import DAF.FiniteDynamics.Generic
import DAF.FiniteDynamics.Involution
import DAF.FiniteDynamics.InvolutiveCycle
import DAF.FiniteDynamics.CycleTransport
import DAF.FiniteDynamics.CycleConvolution
import DAF.FiniteDynamics.InvolutiveConvolution
import DAF.Homology.HomologicalLift
import DAF.ObserverDynamics.Spectral
import DAF.Runtime.ReducerIR
import DAF.Runtime.RingState
import DAF.Comparison
import DAF.Determinant
import DAF.Arithmetic
import DAF.Fabric
import DAF.Prismatic
import DAF.Cyclotomic.Defect
import BitMatrix.Geometry.GlobalProjection
import BitMatrix.Algebra.InvolutionProjection
import BitMatrix.Network.IntegralPermutationLift
import BitMatrix.Surgery.Submatrix
import DAF.Terrain.Surgery
import DAF.Terrain.Refinement
import DAF.Terrain.WindowCover
import DAF.Geometry.RasterRefinement
import DAF.Geometry.RasterSurgery
import DAF.Geometry.LegalDiffusion
import DAF.Fabric.SurgeryAdapter
import DAF.Prismatic.TerrainRealization
import DAF.Prismatic.SourceRealizationFunctoriality
import DAF.Prismatic.RasterBridge
import DAF.Prismatic.SurgeryBridge
import DAF.Integration.GloballyAnchoredWindowDiffusion
import DAF.Integration.InvolutivePrismaticMove
import DAF.Integration.BinaryChargedPrismaticTerrain
import DAF.Integration.AvalancheReconciliation
import DAF.Integration.SurgeryTransaction
import DAF.Integration.BoundedPrismaticDiffusion

/-!
# Distributed Application Framework

This declaration-free umbrella is intended for interactive use and integration
tests.  Production modules import the narrowest owning `DAF.*` module instead.
-/
