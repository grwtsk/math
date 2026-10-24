# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GammaPNTScattering.Variant44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f66c896f8a4c4b24e6194ad0257691698146f71` · SHA-256 `44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
