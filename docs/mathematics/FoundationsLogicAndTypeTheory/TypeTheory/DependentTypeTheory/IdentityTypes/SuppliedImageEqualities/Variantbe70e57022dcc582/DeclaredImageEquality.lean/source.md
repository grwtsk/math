# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.SuppliedImageEqualities.Variantbe70e57022dcc582.DeclaredImageEquality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `979207d0c5424af046b61a9332793a27516474e6` · SHA-256 `83b65c4c80896d72e849095ee40be7840f0b1fb8202b355acd90f852243b79cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Individually read source: Equality of a supplied dependent image and its declared function value.
Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic recombination,
and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are user-specified provisional contribution roles, not independently established model
mechanisms or final per-declaration authorship. Existing notices remain exact in the archives.
Original source SHA256: be70e57022dcc582ddd07d699d070dc347da879db87b2faaa01bfb3d0ad3ea69
Review: attribution-254-review-000133.
PMD: 510.0.070.020.040 identity types; editorial navigation only.
This equality requires the original supplied M, W, R, I and X with its actual image_eq equation.
No realization function, Witt complex, K-theory group or Chern compatibility law is constructed.
Original whole-source documentation below may describe more than this extracted component.
The original historical import remains explicit and unresolved for replay.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.DerivedSheaf.WittRealization

/-!
# Folder.Theorem.DerivedSheaf.WittRealization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt realization facts, not BinaryMatrix data.
Ontology: derived.witt_realization
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.SuppliedImageEqualities.Variantbe70e57022dcc582

theorem ktheory_index_witt_image_eq
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    {R : Folder.DerivedSheaf.WittRealization M W}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (X : Folder.DerivedSheaf.KTheoryIndexWittImage R I) :
    X.image = R.realize I.indexClass :=
  Folder.DerivedSheaf.ktheory_index_witt_image_eq X

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.SuppliedImageEqualities.Variantbe70e57022dcc582
```
