# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AcceptanceDAG.Variant0b77a953198c3aa0a53ac20b5104973b827ccd7313ab2d9ca5bad7e5e09a27ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e27be50ad8f40e6f4a5619bb8ca920bdd9373d29` · SHA-256 `0b77a953198c3aa0a53ac20b5104973b827ccd7313ab2d9ca5bad7e5e09a27ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.AcceptanceDAG

/-!
# Folder.Theorem.CanonicalPath.AcceptanceDAG

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports RH acceptance DAG facts.
Ontology: proof.canonical_path.acceptance_dag
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem acceptance_dag_requires_all_nodes
    (D : Folder.CanonicalPath.RHAcceptanceDAG) :
    D.allNodesProved :=
  Folder.CanonicalPath.acceptance_dag_requires_all_nodes D

theorem acceptance_dag_requires_no_contracts
    (D : Folder.CanonicalPath.RHAcceptanceDAG) :
    D.noConditionalContracts :=
  Folder.CanonicalPath.acceptance_dag_requires_no_contracts D

theorem acceptance_dag_requires_zeta_specialization
    (D : Folder.CanonicalPath.RHAcceptanceDAG) :
    D.specializesExactlyToZeta :=
  Folder.CanonicalPath.acceptance_dag_requires_zeta_specialization D

end CanonicalPath
end Theorem
end Folder
```
