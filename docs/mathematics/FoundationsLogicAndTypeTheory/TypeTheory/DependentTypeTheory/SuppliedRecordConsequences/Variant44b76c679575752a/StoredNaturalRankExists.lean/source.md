# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedRecordConsequences.Variant44b76c679575752a.StoredNaturalRankExists

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2330c2e041ea0e5fe970c865b1a6fe5ac47e112` · SHA-256 `ee81f51c5caae05eff81e97c05bf15db3c7e8dd24321fa853aa4e8cf069bedec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact existence of the natural number already stored as rank metadata
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 44b76c679575752a4a7bc808f902c8b5fafbced1144700293af951733b7b8d42
Organized SHA-256: 6a3071ddb55d5447bd52e9118ad6139a0f3040ea791e88f579c878552b761955
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
The original full C/F/X/T hypotheses, all three imports and qualified proof call remain exact.
The original HasRank predicate is the equality T.rank.value = r, with rank.value a supplied Nat.
The captured provider proves existence by its stored value and reflexivity. No vector-space
or tensor dimension, chromatic-height law, monotonicity, filtration property or conditional
expectation theorem is inferred. The other three supplied-property wrappers remain archived.
-/

import Folder.CrystallineTensor.TensorSection
import Folder.CrystallineTensor.ChromaticHeight
import Folder.CrystallineTensor.HodgeDeRhamFiltration

/-!
# Folder.Theorem.CrystallineTensor.TensorSection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports tensor-section, chromatic-height, and filtration boundary facts.
Ontology: proof.crystalline.tensor_section
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedRecordConsequences.Variant44b76c679575752a

theorem tensor_section_has_some_rank
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.TensorSection F X) :
    ∃ r : Nat, T.HasRank r :=
  Folder.CrystallineTensor.tensor_section_has_some_rank T

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedRecordConsequences.Variant44b76c679575752a
```
