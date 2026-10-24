# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M546172676574732f4b616b6579615475626553686561662e6c65616e.Variant9e039db4a695e1f008b07bc74e9af95057351415a6bbd06c4cc1862a790f6dee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a65c2d44318228d588d37782a144efe56e66acd` · SHA-256 `9e039db4a695e1f008b07bc74e9af95057351415a6bbd06c4cc1862a790f6dee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.M546172676574732f4b616b6579612e6c65616e


/- source-tree-label: STL1|L|addr=11000110|role=proof_code_atom|slug=targets-kakeyatubesheaf|owner=canonical_owner|core=Targets/KakeyaTubeSheaf.lean|leaf=M546172676574732f4b616b6579615475626553686561662e6c65616e.lean -/

set_option autoImplicit false

namespace FWR.Targets.KakeyaTubeSheaf

/-
Finite Kakeya tube sheaf-shaped witness surface.

This file does not prove Kakeya, a topos theorem, or a sheaf-theoretic
estimate. It records a finite tube-like coverage surface with explicit residue
flags for the scale-uniform, continuum-direction, Hausdorff, and Minkowski
bridges that the existing Kakeya target ledger keeps open.
-/

structure FiniteDirectionNet where
  directionCount : Nat
  continuumClaim : Bool
deriving Repr, DecidableEq

structure FiniteTube where
  directionLabel : String
  scaleNumerator : Nat
  scaleDenominator : Nat
  unitSegmentClaim : Bool
  continuumTubeClaim : Bool
deriving Repr, DecidableEq

structure KakeyaTubeCover where
  tubes : List FiniteTube
  finiteCoverageClaim : Bool
  scaleUniformClaim : Bool
  continuumTransferClaim : Bool
deriving Repr, DecidableEq

structure KakeyaTubeSheafSurface where
  directionNet : FiniteDirectionNet
  cover : KakeyaTubeCover
  localSectionsGlue : Bool
  finiteWitnessOnly : Bool
  scaleUniformResidue : Bool
  continuumDirectionResidue : Bool
  hausdorffTransferResidue : Bool
  minkowskiTransferResidue : Bool
  finalKakeyaClaim : Bool
deriving Repr, DecidableEq

def defaultFiniteDirectionNet : FiniteDirectionNet :=
  { directionCount := 4
    continuumClaim := false }

def defaultFiniteTubes : List FiniteTube :=
  [ { directionLabel := "finite_direction_0"
      scaleNumerator := 1
      scaleDenominator := 16
      unitSegmentClaim := false
      continuumTubeClaim := false }
  , { directionLabel := "finite_direction_1"
      scaleNumerator := 1
      scaleDenominator := 16
      unitSegmentClaim := false
      continuumTubeClaim := false }
  ]

def defaultKakeyaTubeCover : KakeyaTubeCover :=
  { tubes := defaultFiniteTubes
    finiteCoverageClaim := true
    scaleUniformClaim := false
    continuumTransferClaim := false }

def defaultKakeyaTubeSheafSurface : KakeyaTubeSheafSurface :=
  { directionNet := defaultFiniteDirectionNet
    cover := defaultKakeyaTubeCover
    localSectionsGlue := true
    finiteWitnessOnly := true
    scaleUniformResidue := true
    continuumDirectionResidue := true
    hausdorffTransferResidue := true
    minkowskiTransferResidue := true
    finalKakeyaClaim := false }

theorem kakeya_tube_sheaf_is_finite_witness_only :
    defaultKakeyaTubeSheafSurface.finiteWitnessOnly = true := by
  rfl

theorem kakeya_tube_sheaf_denies_final_claim :
    defaultKakeyaTubeSheafSurface.finalKakeyaClaim = false := by
  rfl

theorem kakeya_tube_sheaf_retains_scale_uniform_residue :
    defaultKakeyaTubeSheafSurface.scaleUniformResidue = true := by
  rfl

theorem kakeya_tube_sheaf_retains_continuum_direction_residue :
    defaultKakeyaTubeSheafSurface.continuumDirectionResidue = true := by
  rfl

theorem kakeya_tube_sheaf_retains_hausdorff_transfer_residue :
    defaultKakeyaTubeSheafSurface.hausdorffTransferResidue = true := by
  rfl

theorem kakeya_tube_sheaf_retains_minkowski_transfer_residue :
    defaultKakeyaTubeSheafSurface.minkowskiTransferResidue = true := by
  rfl

theorem kakeya_tube_sheaf_retains_dimension_transfer_residue :
    defaultKakeyaTubeSheafSurface.hausdorffTransferResidue = true ∧
      defaultKakeyaTubeSheafSurface.minkowskiTransferResidue = true := by
  exact ⟨rfl, rfl⟩

theorem kakeya_tube_cover_denies_scale_uniform_claim :
    defaultKakeyaTubeSheafSurface.cover.scaleUniformClaim = false := by
  rfl

theorem kakeya_tube_cover_denies_continuum_transfer_claim :
    defaultKakeyaTubeSheafSurface.cover.continuumTransferClaim = false := by
  rfl

theorem kakeya_tube_direction_net_denies_continuum_claim :
    defaultKakeyaTubeSheafSurface.directionNet.continuumClaim = false := by
  rfl

theorem kakeya_tube_sheaf_matches_target_boundary_posture
    (ctx : FWR.Targets.Kakeya.Context) :
    defaultKakeyaTubeSheafSurface.finalKakeyaClaim = false ∧
      (FWR.Targets.Kakeya.finalWitness ctx).hasResidue = true := by
  exact ⟨rfl, rfl⟩

end FWR.Targets.KakeyaTubeSheaf
```
