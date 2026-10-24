# Complete source: GRWTSK.Algebra.LinearAlgebra.ProofAdapter.Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdb6047e715daec4dfa571ebd33d9d60b0adb79e` · SHA-256 `0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.ProofSyntax
import Surface.Legacy.BinaryLogicMatrix.TheoremAdapter

namespace Surface.Legacy

structure ProofAdapterDescriptor where
  term : ProofTerm
  theoremDescriptor : EncodedTheorem
  syntaxRoundTrip : Prop
  proofAuthorityBoundary : String

theorem proofAdapter_syntax_roundTrip_projects
    (A : ProofAdapterDescriptor) :
    A.syntaxRoundTrip -> A.syntaxRoundTrip := by
  intro h
  exact h

theorem proofAdapter_preserves_theorem_statement
    (A : ProofAdapterDescriptor) :
    A.theoremDescriptor.statement :=
  A.theoremDescriptor.soundProof

end Surface.Legacy
```
