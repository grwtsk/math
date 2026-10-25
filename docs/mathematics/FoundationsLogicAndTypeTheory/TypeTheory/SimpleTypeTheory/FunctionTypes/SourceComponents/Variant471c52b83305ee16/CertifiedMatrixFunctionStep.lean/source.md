# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.SourceComponents.Variant471c52b83305ee16.CertifiedMatrixFunctionStep

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `688194253e34a000fe1549209b849b54a4375ca3` · SHA-256 `08c9b99ee2072c39e1aef8ece1381ced483b3a08b02d2d63d3789b3b46959644`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CertifiedMatrixFunctionStep — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86
Organized SHA-256: 1a5e1838d7e63111d0c54c4c25fd90269f20bdf63ff13b8bacfa93338ec5bfaa
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole source record, including name,input,output,transition and exact supplied function equation, plus run and its genuine equation proof. A stored equation is not kernel/theorem-pipeline acceptance. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Carrier.BinaryMatrix

/-!
# Folder.Carrier.BinaryMatrixStream

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.binary_matrix_stream
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
namespace BinaryMatrixStream
/--
One internal logical transition.

No semantic input or output appears here. The theorem-step interface is purely
`BinaryMatrix -> BinaryMatrix`.
-/
structure MatrixProofStep where
  name : String
  input : BinaryMatrix
  output : BinaryMatrix
  transition : BinaryMatrix → BinaryMatrix
  realizes_transition : transition input = output

namespace MatrixProofStep
def run (S : MatrixProofStep) : BinaryMatrix :=
  S.transition S.input

theorem run_eq_output
    (S : MatrixProofStep) :
    S.run = S.output := by
  simpa [run] using S.realizes_transition

end MatrixProofStep
end BinaryMatrixStream
end Carrier
end Folder
```
