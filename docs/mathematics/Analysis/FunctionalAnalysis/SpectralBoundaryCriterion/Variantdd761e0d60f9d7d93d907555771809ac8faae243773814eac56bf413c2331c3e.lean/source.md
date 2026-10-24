# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralBoundaryCriterion.Variantdd761e0d60f9d7d93d907555771809ac8faae243773814eac56bf413c2331c3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51a8ae272b92b9ec086224c7c6c562e25bb5a526` · SHA-256 `dd761e0d60f9d7d93d907555771809ac8faae243773814eac56bf413c2331c3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.SpectralBoundaryCriterion

/-!
# Folder.Theorem.CanonicalPath.SpectralBoundaryCriterion

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-boundary criterion facts.
Ontology: proof.canonical_path.spectral_boundary_criterion
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem positivity_rules_out_offcritical_resonances
    (P : Folder.CanonicalPath.PositivitySelfAdjointnessData) :
    P.noOffCriticalResonances :=
  Folder.CanonicalPath.positivity_rules_out_offcritical_resonances P

theorem spectral_boundary_alignment_if_supplied
    (B : Folder.CanonicalPath.SpectralBoundaryCriterion) :
    B.boundaryAlignment :=
  Folder.CanonicalPath.spectral_boundary_alignment_if_supplied B

end CanonicalPath
end Theorem
end Folder
```
