# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.SuppliedRecordEqualities.Variant469d3c384c378f68.NonzeroValueTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `382c93e1cdf9d4c949ea097949b49573ebbad32c` · SHA-256 `421bdba3c91f67dd2d5eaea32d939e6a7cf91d0b1fc3163e2d61ab3482334d48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Individually read source: Actual supplied record equalities and conditional nonzero-value transport.
Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic recombination,
and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are user-specified provisional contribution roles, not independently established model
mechanisms or final per-declaration authorship. Existing notices remain exact in the archives.
Original source SHA256: 469d3c384c378f6829975b191ea32142960bea2dd0784f660a91fd7a3d82a1f9
Review: attribution-254-review-000099.
PMD: 510.0.070.020.040 identity types; editorial navigation only.
Actual supplied equalities and a supplied base-value nonzero proof imply nonzero of an equal integer value.
The source constructs no cohomology, Euler sum, analytic index or base-case object.
Original subject-named imported records remain supplied historical interfaces with unreplayed bindings.
Original whole-source documentation below may describe more than this extracted component.
The original historical import remains explicit and unresolved for replay.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.DerivedSheaf.BaseCaseSectionComplex
import Folder.DerivedSheaf.DerivedIndex

/-!
# Folder.DerivedSheaf.BaseCaseIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records a nonzero base-case derived index, not BinaryMatrix data.
Ontology: base.derived_index
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: external-witness
Composite stack role: derived-sheaf
-/
open Folder.DerivedSheaf

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.SuppliedRecordEqualities.Variant469d3c384c378f68

structure BaseCaseDerivedIndex where
  base : BaseCaseSectionComplex
  derivedIndex : DerivedIndex
  sameComplex :
    derivedIndex.complex = base.complex
  sameEulerValue :
    derivedIndex.euler.value = base.euler.value
  sourceLabel : String

theorem base_case_derived_index_euler_nonzero
    (I : BaseCaseDerivedIndex) :
    I.derivedIndex.euler.value ≠ 0 := by
  intro h
  apply I.base.euler_nonzero
  rw [← I.sameEulerValue]
  exact h

theorem base_case_derived_index_same_complex
    (I : BaseCaseDerivedIndex) :
    I.derivedIndex.complex = I.base.complex :=
  I.sameComplex

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.SuppliedRecordEqualities.Variant469d3c384c378f68
```
