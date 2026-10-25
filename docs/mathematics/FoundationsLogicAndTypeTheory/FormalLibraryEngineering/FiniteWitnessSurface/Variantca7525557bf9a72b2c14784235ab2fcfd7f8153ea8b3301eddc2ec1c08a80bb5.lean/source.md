# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteWitnessSurface.Variantca7525557bf9a72b2c14784235ab2fcfd7f8153ea8b3301eddc2ec1c08a80bb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71ba7c5e315fcf73701b9a17f807c72ddb45775b` · SHA-256 `ca7525557bf9a72b2c14784235ab2fcfd7f8153ea8b3301eddc2ec1c08a80bb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Compact

inductive FiniteModularWaveSurface where
  | finiteQWave
  | lFunctionLowering
  | emlLowering
  | nandLowering
  | bitMatrix
  | quotientLimit
  | compactProjection
  | theoremSourceBoundary
deriving DecidableEq, Repr

def FiniteModularWaveSurface.isFiniteWitness :
    FiniteModularWaveSurface → Bool
  | _ => true

def FiniteModularWaveSurface.importsExternalTheorem :
    FiniteModularWaveSurface → Bool
  | _ => false

theorem finiteModularWave_surfaceFinite
    (s : FiniteModularWaveSurface) :
    s.isFiniteWitness = true := by
  cases s <;> rfl

theorem finiteModularWave_importsNoExternalTheorem
    (s : FiniteModularWaveSurface) :
    s.importsExternalTheorem = false := by
  cases s <;> rfl

end Think.Compact
```
