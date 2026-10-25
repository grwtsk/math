# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactBoundary.Variant6d31b1bd41b9a605de1e5a1aa74a984ec3ede4bfe7ebd3881e72e3d780c277e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5518efc18f9745c5a0e7e7fa11c81cb7d2b55c0d` · SHA-256 `6d31b1bd41b9a605de1e5a1aa74a984ec3ede4bfe7ebd3881e72e3d780c277e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Compact

structure CompactSurveyBoundary where
  targetCount : Nat
  primitiveCount : Nat
  conjectureMentionCount : Nat
  theoremAuthorityImported : Bool
deriving Repr

def compactSurveyBoundary : CompactSurveyBoundary :=
  { targetCount := 604
    primitiveCount := 304
    conjectureMentionCount := 47
    theoremAuthorityImported := false }

theorem compactSurveyBoundary_noTheoremAuthority :
    compactSurveyBoundary.theoremAuthorityImported = false := by
  rfl

end Think.Compact
```
