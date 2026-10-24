# Complete source: GRWTSK.Analysis.FunctionalAnalysis.PositivitySelfAdjointness.Variant36e0aadf70967ca106ed5cd92f4a64ab5e4aebe061642fd1a5765918110e7ac5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `252511606334245176f89015d3bceea9fd2aed95` · SHA-256 `36e0aadf70967ca106ed5cd92f4a64ab5e4aebe061642fd1a5765918110e7ac5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.SpectralBoundaryAlignmentTheoremTarget

/-!
# Folder.Theorem.CanonicalPath.PositivitySelfAdjointness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports positivity and boundary-target facts.
Ontology: proof.canonical_path.positivity_selfadjointness
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem positivity_selfadjoint_rules_out_offline
    (P : Folder.CanonicalPath.PositivitySelfAdjointnessCriterion) :
    P.rulesOutOffLineResonances :=
  Folder.CanonicalPath.positivity_selfadjoint_rules_out_offline P

theorem trace_identity_plus_positivity_forces_alignment
    (B : Folder.CanonicalPath.TraceIdentityToBoundaryAlignment) :
    B.forcesBoundaryAlignment :=
  Folder.CanonicalPath.trace_identity_plus_positivity_forces_alignment B

theorem canonical_alignment_if_supplied
    (A : Folder.CanonicalPath.CanonicalSpectralBoundaryAlignmentTarget) :
    A.alignmentHolds :=
  Folder.CanonicalPath.canonical_alignment_if_supplied A

end CanonicalPath
end Theorem
end Folder
```
