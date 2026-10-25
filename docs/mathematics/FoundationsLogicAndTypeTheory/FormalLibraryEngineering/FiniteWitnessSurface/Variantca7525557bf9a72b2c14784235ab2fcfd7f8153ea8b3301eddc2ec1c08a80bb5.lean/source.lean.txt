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
