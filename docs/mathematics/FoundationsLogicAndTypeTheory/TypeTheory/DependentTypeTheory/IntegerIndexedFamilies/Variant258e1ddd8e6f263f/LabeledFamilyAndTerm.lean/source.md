# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IntegerIndexedFamilies.Variant258e1ddd8e6f263f.LabeledFamilyAndTerm

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `502554cba4b6549aa54964f169adadc42a630ad2` · SHA-256 `6675151354376ed5fa8bddbc2ec62410dbf1e40b10126540344ef0d9151bd0f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Individually read source: Integer-indexed families of types and their dependent term projection.
Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic recombination,
and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are user-specified provisional contribution roles, not independently established model
mechanisms or final per-declaration authorship. Existing notices remain exact in the archives.
Original source SHA256: 258e1ddd8e6f263f1a1d14a761aced17fe8d6e9be376893492de083ad9c4a891
Review: attribution-254-review-000085.
PMD: 510.0.070.020 dependent type theory; editorial navigation only.
This is an Int-indexed type family with an inert String label and a stored-term witness.
It has no differential, additive structure, cohomology, derived object or graded modality.
Original whole-source documentation below may describe more than this extracted component.
The original historical import remains explicit and unresolved for replay.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.Basic

/-!
# Folder.DerivedSheaf.Degree

Radiation role: research-boundary
BinaryMatrix spine: This module supplies derived sheaf degree labels, not BinaryMatrix carriers.
Ontology: derived.section_complex
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: derived-sheaf
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IntegerIndexedFamilies.Variant258e1ddd8e6f263f

abbrev Degree := Int

structure GradedObject where
  Obj : Degree → Type _
  label : String

def GradedObject.term
    (G : GradedObject)
    (n : Degree) : Type _ :=
  G.Obj n

theorem graded_object_has_term
    (G : GradedObject)
    (n : Degree) :
    ∃ T : Type _, T = G.term n :=
  ⟨G.term n, rfl⟩

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IntegerIndexedFamilies.Variant258e1ddd8e6f263f
```
