# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.BooleanMatrixSelfMaps.Variant904476e1a96b6b04.ApplicationOperations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8de58d22365ef520116eb82396b4ce972a1702b0` · SHA-256 `b895589e2366ed5c2b3436bc2b68da508628cfddafc12826edfe2b00ecbec51a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ApplicationOperations
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d
Organized SHA-256: 6f87a809871ab65b68a415015116b68ab3c48b8a18d5246f242e064f5a69ceb4
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: physical GRWTSK subject placement only. Exact original namespace blocks, imported provider names, fields, hypotheses, equations and proofs are preserved. Historical provider lookup is unreplayed; the archive path is not an activated import alias. Distinct historical candidate versions are isolated and are not claimed compatible for coimport. No extra algebraic, analytic or computational acceptance claim is added.
-/

import BooleanMatrix.Matrix.Core

/-!
# BooleanMatrix applications

An application is an extensional, total transformation of the common matrix
carrier. Interpretation and validity conditions are supplied separately by
formats and typed applications.
-/

namespace BooleanMatrix

/-- A total transformation of the BooleanMatrix carrier. -/
abbrev Application := Matrix → Matrix

namespace Application

/-- The identity matrix application. -/
def identity : Application :=
  fun input => input

/-- Sequential composition, applying `before` and then `after`. -/
def comp
    (after before : Application) :
    Application :=
  fun input => after (before input)

@[simp]
theorem identity_apply (input : Matrix) :
    identity input = input :=
  rfl

@[simp]
theorem comp_apply
    (after before : Application)
    (input : Matrix) :
    comp after before input = after (before input) :=
  rfl

end Application
end BooleanMatrix
```
