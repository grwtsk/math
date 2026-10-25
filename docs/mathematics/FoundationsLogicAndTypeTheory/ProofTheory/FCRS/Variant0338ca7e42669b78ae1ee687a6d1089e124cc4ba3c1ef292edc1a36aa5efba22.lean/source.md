# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.FCRS.Variant0338ca7e42669b78ae1ee687a6d1089e124cc4ba3c1ef292edc1a36aa5efba22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dada568bdcade7b0bf39bbf8ae30815437c354b` · SHA-256 `0338ca7e42669b78ae1ee687a6d1089e124cc4ba3c1ef292edc1a36aa5efba22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization
import FCRS.ControlledPlane
import FCRS.Topology
import FCRS.ControlledSpherical
import FCRS.Transport
import FCRS.TheoremTransfer
import FCRS.TheoremGraph
import FCRS.PersistentResidual
import FCRS.CyclotomicTraversal
import FCRS.TheoremBarycenter
import FCRS.ControlledComplex
import FCRS.RepositoryPersistentResidual
import FCRS.PersistentResidual.NegativeChecks
import FCRS.Theorems.FCRSConditionalCompleteness
import FCRS.Theorems.FCRSComparisonCompleteness
import FCRS.Theorems.FCRSModelCompleteness

#check FCRS.fcrs_full_conditional_completeness
#check FCRS.fcrs_comparison_complete
#check FCRS.fcrs_model_complete

#check FCRS.Algebraization.alg_hen_scoped_conditional_completeness

#check FCRS.ControlledPlane.controlledPlane_scoped_conditional_completeness

#check FCRS.ControlledSpherical.controlled_spherical_scoped_hierarchy
#check FCRS.ControlledSpherical.Theorems.cs12_controlledSphericalHierarchy
#check FCRS.ControlledSpherical.controlled_spherical_vertex_compatible_s2_hierarchy

#check FCRS.ControlledSpherical.topological_admitted_graph_scoped_hierarchy
#check FCRS.ControlledSpherical.TopologicalGraphEmbedding
#check FCRS.ControlledSpherical.GraphPoint

#check FCRS.Transport.Theorems.tt01_bertrand
#check FCRS.Transport.Theorems.tt02_bertrandPrimeSource
#check FCRS.Transport.Theorems.tt12_bertrandGraphTransport

#check FCRS.TheoremTransfer.preservation_comp
#check FCRS.TheoremTransfer.reflection_comp
#check FCRS.TheoremTransfer.equivalence_comp
#check FCRS.TheoremTransfer.transport_theorem
#check FCRS.TheoremTransfer.reflect_theorem
#check FCRS.TheoremTransfer.transport_reflect_roundtrip
#check FCRS.TheoremTransfer.property_transfer_under_equivalence
#check FCRS.TheoremTransfer.MultiSourceExample.derivation_has_distinct_fan_in
#check FCRS.TheoremTransfer.MultiSourceExample.derivation_expression_uses_both_source_leaves
#check FCRS.TheoremTransfer.Adapters.FCRSTransport.profileRefinementPreserves
#check FCRS.TheoremTransfer.Adapters.FCRSTransport.fullTransportDerivationProjection
#check FCRS.TheoremTransfer.Adapters.OrderDual.equivalent

#check FCRS.TheoremGraph.rth07_forwardProofDependencyAcyclic
#check FCRS.PersistentResidual.prd03_affinePersistentSystemIsAffine
#check FCRS.PersistentResidual.prd04_genuineResidualStateNonlinearity
#check FCRS.PersistentResidual.prd06_typedResidualPersistence
#check FCRS.PersistentResidual.prd07_residualEnergyNonCancellation
#check FCRS.CyclotomicTraversal.tt01_bertrandCapacityAdapter
#check FCRS.CyclotomicTraversal.ctr05_selectedTheoremReadiness
#check FCRS.TheoremBarycenter.centeredEmbedding_idempotent
#check FCRS.ControlledComplex.criticalReflection_fixed_iff
#check FCRS.RepositoryPersistentResidual.br18_allPairsClassification
```
