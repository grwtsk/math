import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.PrimeCompact

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure GammaPrincipalPart where
  poleLabel : String
  gammaPart : Int
  poleResiduePart : Int
  torsionResiduePart : Int

def GammaPrincipalPart.canceled (P : GammaPrincipalPart) : Prop :=
  P.gammaPart + P.poleResiduePart + P.torsionResiduePart = 0

structure GammaPNTScattering where
  source : CompactPatch
  target : CompactPatch
  normalizer : PNTNormalizer
  gammaParts : List GammaPrincipalPart
  torsionCharacter : String
  transferOperatorLabel : String
  heatDecayBound : Nat
  smoothForPositiveTime : Prop
  holomorphicAwayFromRenormalizedPoleDivisor : Prop

def GammaPNTScattering.principalPartsCanceled
    (S : GammaPNTScattering) : Prop :=
  ∀ P ∈ S.gammaParts, P.canceled

def GammaPNTScattering.admitted (S : GammaPNTScattering) : Prop :=
  S.principalPartsCanceled ∧
    S.smoothForPositiveTime ∧
    S.holomorphicAwayFromRenormalizedPoleDivisor ∧
    S.normalizer.residue = 0

structure EnhancedCompactResidue where
  compact : CompactPatch
  boundaryResidue : Int
  torsionResidue : Int
  gammaResidue : Int
  pntResidue : Int

def EnhancedCompactResidue.value (R : EnhancedCompactResidue) : Int :=
  R.boundaryResidue + R.torsionResidue + R.gammaResidue + R.pntResidue

def EnhancedCompactResidue.resolved (R : EnhancedCompactResidue) : Prop :=
  R.value = 0

theorem gamma_principal_part_canceled_iff
    (P : GammaPrincipalPart) :
    P.canceled ↔
      P.gammaPart + P.poleResiduePart + P.torsionResiduePart = 0 := by
  rfl

theorem enhanced_compact_residue_zero_resolved
    (R : EnhancedCompactResidue)
    (h : R.boundaryResidue + R.torsionResidue + R.gammaResidue + R.pntResidue = 0) :
    R.resolved := by
  exact h

theorem admitted_scattering_has_pnt_residue_zero
    (S : GammaPNTScattering)
    (h : S.admitted) :
    S.normalizer.residue = 0 := by
  exact h.2.2.2

end Think.RadoProjectedModularHeatflow.MemoryCore
