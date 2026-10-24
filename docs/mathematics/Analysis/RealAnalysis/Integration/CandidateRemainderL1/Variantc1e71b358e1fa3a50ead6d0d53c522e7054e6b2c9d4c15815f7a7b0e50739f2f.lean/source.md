# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CandidateRemainderL1.Variantc1e71b358e1fa3a50ead6d0d53c522e7054e6b2c9d4c15815f7a7b0e50739f2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c845e8ff5d95e6cdb50985752e1a153f8fd3b112` · SHA-256 `c1e71b358e1fa3a50ead6d0d53c522e7054e6b2c9d4c15815f7a7b0e50739f2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualCentering
import ActualChebyshevTail

/-! Resume-ready focused candidate: genuine actual centered full-Mangoldt L1.
Consumes the coordinator's unchanged centering argument with an isolated scalar
normalization repair, and the frozen actual first-moment tail-Fubini packet.
No L1, desired integral value, numerical decay, or RH premise is supplied.
This scratch file is not maintained integration or coordinator publication.
Direction grwtsk contributors; focused composition OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.CandidateRemainderL1
open MeasureTheory Set
open ContinuousResearch.MediumPNTMoment ContinuousResearch.ActualChebyshevTail
open ContinuousResearch.ActualCentering ContinuousResearch.SourceRemainderLaplace

theorem actual_remainder_integrable : IntegrableOn actualRemainder (Ioi (0:ℝ)) := by
  apply (psiRelativeError_integrable.sub psiErrorTail_integrable).congr_fun
  · intro t ht
    exact (actual_remainder_eq_tail ht.le).symm
  · exact measurableSet_Ioi

end ContinuousResearch.CandidateRemainderL1
set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.CandidateRemainderL1.actual_remainder_integrable
#print ContinuousResearch.CandidateRemainderL1.actual_remainder_integrable
#print axioms ContinuousResearch.CandidateRemainderL1.actual_remainder_integrable
```
