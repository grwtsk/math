# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.HeterogeneousIndexedLists.Variant3283b85190f0a0ed.FamilyAndPointwiseMap

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0547844cc79a0873b2dd71176d684c9835271625` · SHA-256 `897eadb933a50dccceba627f0d9905d61d792c02aca8755cc160721f034d6b59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Whole heterogeneous indexed list family and exact pointwise map
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3283b85190f0a0edc5b2160bb43281fee0ce7580b644ad7e5b619a6c2f0dcbfe
Organized SHA-256: 0c09d72ca0dffeb017fca9f0bf74694daa521b1bf498a8de54f9b06d080c93b6
PMD: 510.0.070.020.060 inductive families (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-!
# Heterogeneous lists indexed by judgments

`IndexedAll P js` contains one value of `P j` for every judgment `j` in
`js`.  It is the premise container shared by raw derivations and tree plans.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.HeterogeneousIndexedLists.Variant3283b85190f0a0ed

universe u v

/-- One indexed value for every element of a list. -/
inductive IndexedAll {α : Type u} (P : α → Type v) : List α → Type (max u v)
  | nil : IndexedAll P []
  | cons {j : α} {js : List α} : P j → IndexedAll P js → IndexedAll P (j :: js)

namespace IndexedAll

/-- Pointwise transport across an indexed family. -/
def map
    {α : Type u}
    {P Q : α → Type v}
    (f : ∀ j, P j → Q j) :
    ∀ {js}, IndexedAll P js → IndexedAll Q js
  | _, .nil => .nil
  | _, .cons head tail => .cons (f _ head) (map f tail)

end IndexedAll


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.HeterogeneousIndexedLists.Variant3283b85190f0a0ed
```
