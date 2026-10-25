# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43.TypedRepresentations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c80aa30e2ba3f8b5cbc64b39d3a8a06f9a1b615a` · SHA-256 `4ea492227e1aece7f11f2d0a6cfd6a2388afb3bfc2d6d3ccd9c1c3a9b9b5c4cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
TypedRepresentations — exact original pure mathematical model
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717
Organized SHA-256: e79259c19f489a79484ea3b2159ee9d10fd2dd74ddba6a2f7f657a010a6040a5
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete nine-constructor representation, domain-independent embedding and dependent interpretation are retained. Every matrix dimension, vector length, packet width, field type and pair shape remains exact. -/

import DAF.Runtime.ReducerIR
import FilesystemCodec.FieldRows
import DAF.Causal.ObserverFactor

/-!
# A total typed reducer language

`ReducerIR` is a deliberately small, intrinsically typed language for the
pure reducers used by the observer examples.  Matrix dimensions, field types,
and packet framing appear in `Rep`, so ill-shaped compositions cannot be
formed.  Evaluation is structural and total.

The packet-to-matrix instruction intentionally returns a dependent variable
matrix and drops `payloadBits`; it is therefore suitable for a lossy observer,
not for a lossless filesystem representation.  A certified observer factor is
added below once the program is accompanied by explicit transition and
observation commutation proofs.

This Lean evaluator certifies the mathematical reducer semantics.  It does
not, by itself, verify a Rust compiler or generated machine code.
-/

open BitMatrix.Reduction.SAT
open FilesystemCodec

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43

namespace BitMatrix.Runtime

/-- Typed representations admitted by the reducer language. -/
inductive Rep : Type 1
  | natural
  | boolean
  | bits (width : Nat)
  | matrix (rows cols : Nat)
  | packet (width : Nat)
  | variableMatrix (width : Nat)
  | field (F : Type)
  | vector (length : Nat) (element : Rep)
  | pair (left right : Rep)

/-- Embed a domain-independent runtime representation into the matrix IR. -/
def Rep.ofRuntime : DAF.Runtime.Rep → Rep
  | .natural => .natural
  | .boolean => .boolean
  | .pair left right => .pair (ofRuntime left) (ofRuntime right)

/-- Semantic interpretation of a reducer representation. -/
def Rep.Denote : Rep → Type
  | .natural => Nat
  | .boolean => Bool
  | .bits width => Bits width
  | .matrix rows cols => BitMatrix rows cols
  | .packet width => BitPacket width
  | .variableMatrix width => VariableMatrix width
  | .field F => F
  | .vector length element => Fin length → element.Denote
  | .pair left right => left.Denote × right.Denote

end BitMatrix.Runtime

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43
```
