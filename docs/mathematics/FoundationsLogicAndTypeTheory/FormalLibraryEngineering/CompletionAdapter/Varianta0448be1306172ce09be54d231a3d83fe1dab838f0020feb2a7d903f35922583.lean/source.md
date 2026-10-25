# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompletionAdapter.Varianta0448be1306172ce09be54d231a3d83fe1dab838f0020feb2a7d903f35922583

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a51b275be5a836ac14680a68fe9a15cdee1716fc` · SHA-256 `a0448be1306172ce09be54d231a3d83fe1dab838f0020feb2a7d903f35922583`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Completion.Core
import Mathematics.BinaryFrontier.Presentation.DistinctionAdapter

/-!
# Presentation completion adapters

Adapters translate full mathematical completions into candidate presentation
data.  They do not publish or authorize that candidate.
-/

namespace Mathematics.BinaryFrontier

structure PresentationCompletionAdapter
    (Full Presentation : Type) where
  subjectId : Full → String
  candidatePresentation : Full → Presentation
  presentationSubjectId : Presentation → String
  subject_preserved :
    ∀ full,
      presentationSubjectId
          (candidatePresentation full) =
        subjectId full
  authoritativeEffect : Bool := false
  nonauthoritative :
    authoritativeEffect = false

structure CandidatePresentationCompletion
    {Full Presentation : Type}
    (adapter :
      PresentationCompletionAdapter Full Presentation)
    (full : Full) where
  candidate : Presentation :=
    adapter.candidatePresentation full
  candidate_exact :
    candidate = adapter.candidatePresentation full
  verificationRef : String
  ownerAdmissionRef : Option String

theorem candidate_completion_is_nonauthoritative
    {Full Presentation : Type}
    (adapter :
      PresentationCompletionAdapter Full Presentation) :
    adapter.authoritativeEffect = false :=
  adapter.nonauthoritative

end Mathematics.BinaryFrontier
```
