/-
ClosedValidationAndEvaluation
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 70b74a6ca34dc747dd43195cf0f9ae0240fc8ad67ada909726fc496d05cfc694
Organized SHA-256: 7aaf471c7afece9dd34e9ca9301de257356d59236cac545d91e6ce2a453fe32b
PMD: 510.0.050 computability (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Closed examples retain exact pushTrue/return/readSelf/not/indexBit programs, the index-bit bound and input function. Their native_decide/rfl proof texts are copied, never evaluated. validate [return]=none is distinct from successful decoding or totality. The original namespace BitMatrix.Tests.FixedProgramInterpreter is retained literally, so containing namespaces are not changed in this component despite the generic shared-header sentence. The physical GRWTSK subject path is its logical module. Original imported providers remain historical and unresolved; no GRWTSK alias or replacement provider is introduced. Distinct duplicate historical declarations cannot be assumed compatible coimports; there is no umbrella admission. Any decide/native_decide proof is retained source text and was NOT_RUN. -/

import BitMatrix.Runtime.FixedProgramInterpreter

/-! Focused kernel-checked examples for the bounded fixed interpreter profile. -/

namespace BitMatrix.Tests.FixedProgramInterpreter

open BitMatrix.Runtime.FixedProgramInterpreter

example : validateOperations [.pushTrue, .return] = some 1 := by
  native_decide

example : validateOperations [.return] = none := by
  rfl

example :
    evaluateOperations [.readSelf, .not, .return]
      (fun index => index == 3) 3 = some false := by
  native_decide

example :
    evaluateOperations [.indexBit ⟨0, by simp [programLengthBits]⟩, .return]
      zeroState 5 = some true := by
  native_decide

end BitMatrix.Tests.FixedProgramInterpreter
