# Complete source: GRWTSK.Analysis.FunctionalAnalysis.IndexSpectralTraceIdentity.Variant8865c605da77ba5aece81fbf73c8c48ce71fbfa7dfc97658bc41c928d502d194

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06d5ff0a37f25c170ecd670d022a9d80a602145d` · SHA-256 `8865c605da77ba5aece81fbf73c8c48ce71fbfa7dfc97658bc41c928d502d194`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.IndexSpectralTraceIdentity

/-!
# Folder.Theorem.CanonicalPath.IndexSpectralTraceIdentity

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports trace-identity milestone facts.
Ontology: proof.canonical_path.trace_identity
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem explicit_formula_pairing_equality
    (E : Folder.CanonicalPath.ExplicitFormulaTraceIdentity) :
    E.pairingEquality :=
  Folder.CanonicalPath.explicit_formula_pairing_equality E

theorem index_spectral_trace_identity_validated
    (T : Folder.CanonicalPath.IndexSpectralTraceMilestone) :
    T.traceIdentityValidated :=
  Folder.CanonicalPath.index_spectral_trace_identity_validated T

theorem index_spectral_trace_identity_holds
    (T : Folder.CanonicalPath.IndexSpectralTraceIdentity) :
    T.traceIdentityHolds :=
  Folder.CanonicalPath.index_spectral_trace_identity_holds T

end CanonicalPath
end Theorem
end Folder
```
