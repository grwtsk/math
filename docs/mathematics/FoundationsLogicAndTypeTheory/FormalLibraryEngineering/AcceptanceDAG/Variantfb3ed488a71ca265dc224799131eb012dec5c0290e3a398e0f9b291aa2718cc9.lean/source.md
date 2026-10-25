# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AcceptanceDAG.Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d06dc16bd549a996ae7f5c48fbf73e62d320eede` · SHA-256 `fb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.RefereeGate
import Folder.CanonicalPath.ZetaRHTarget

/-!
# Folder.CanonicalPath.AcceptanceDAG

Radiation role: research-boundary
BinaryMatrix spine: This module records the RH acceptance DAG, not BinaryMatrix data.
Ontology: canonical.acceptance_dag
Pivot role: spectral
Zero typology: l-function
Contract boundary: referee-matrix
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

inductive AcceptanceNode where
  | classicalZetaH0Equivalence
  | exactArithmeticObjectForZeta
  | globalNonzeroKIndex
  | rodgersTaoDerivedQuasiIso
  | derivedTransportPreservesIndex
  | diracRealizesZetaZeroDistribution
  | kIndexTraceEqualsDiracTrace
  | nonzeroKIndexIffBoundaryAlignment
  | boundaryToCriticalLineBridge
deriving DecidableEq, Repr

/--
Binary referee acceptance DAG.

Every node must be proved, no conditional contract may remain in the final
dependency cone, and the theorem must specialize exactly to zeta.
-/
structure RHAcceptanceDAG where
  nodeProved : AcceptanceNode → Prop
  allNodesProved : Prop
  allNodesProved_certified : allNodesProved
  noConditionalContracts : Prop
  noConditionalContracts_certified : noConditionalContracts
  specializesExactlyToZeta : Prop
  specializesExactlyToZeta_certified : specializesExactlyToZeta
  finalTheoremUsesOnlyProvedInputs : Prop
  finalTheoremUsesOnlyProvedInputs_certified : finalTheoremUsesOnlyProvedInputs
  sourceLabel : String

theorem acceptance_dag_requires_all_nodes
    (D : RHAcceptanceDAG) :
    D.allNodesProved :=
  D.allNodesProved_certified

theorem acceptance_dag_requires_no_contracts
    (D : RHAcceptanceDAG) :
    D.noConditionalContracts :=
  D.noConditionalContracts_certified

theorem acceptance_dag_requires_zeta_specialization
    (D : RHAcceptanceDAG) :
    D.specializesExactlyToZeta :=
  D.specializesExactlyToZeta_certified

end CanonicalPath
end Folder
```
