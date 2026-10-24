import Folder.Carrier.BinaryMatrixStream
import Folder.GrandChallenge.Complexity.BinaryMatrixArrangement

/-!
# Folder.GrandChallenge.Complexity.DegaussSurgery

Radiation role: research-boundary
BinaryMatrix spine: This module makes degauss surgery over BinaryMatrixStream explicit.
Ontology: complexity_degauss_surgery
Pivot role: complexity
Zero typology: degauss-residue
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Complexity

/-- A finite checked frame encoded as a BinaryMatrixStream. -/
structure LeanProjectFiniteFrame where
  stream : Carrier.BinaryMatrixStream
  finiteFrame : Prop
  finiteFrame_certified : finiteFrame
  bitsLabel : String

/-- Canonical halo form: all active ones, surrounded by zeros. -/
structure HaloNormalForm where
  activeOnesRegion : String
  zeroBoundaryRegion : String

/-- One elementary surgery move. -/
structure SurgeryMove where
  label : String

/-- The move log is the proof-relevant artifact of halo surgery. -/
structure SurgeryMoveLog where
  moves : List SurgeryMove
  polynomialSize : Prop
  polynomialSize_certified : polynomialSize

/-- Surgery arrangement of a stream into halo normal form. -/
structure HaloArrangement where
  frame : LeanProjectFiniteFrame
  normalForm : HaloNormalForm
  moveLog : SurgeryMoveLog
  rearrangesToHalo : Prop
  rearrangesToHalo_certified : rearrangesToHalo
  sourceLabel : String

/-- Groupoid/modular class of a surgery move log. -/
structure ModularMoveClass where
  moveLog : SurgeryMoveLog
  classLabel : String

/-- Torsion or Weil-style class used as an internal classification witness. -/
structure TorsionClassWitness where
  label : String

/-- Smooth degauss ruleset: inverse/decompression data is internally yielded. -/
structure SmoothDegaussRuleset where
  moveClass : ModularMoveClass
  yieldedTorsionClasses : List TorsionClassWitness
  polynomialInverse : Prop
  polynomialInverse_certified : polynomialInverse
  noExternalDisambiguator : Prop
  noExternalDisambiguator_certified : noExternalDisambiguator

/-- Glitched degauss ruleset: inverse data requires external disambiguation. -/
structure GlitchedDegaussRuleset where
  moveClass : ModularMoveClass
  missingTorsionClasses : List TorsionClassWitness
  requiresBacktracking : Prop
  requiresBacktracking_certified : requiresBacktracking
  requiresExternalDisambiguator : Prop
  requiresExternalDisambiguator_certified : requiresExternalDisambiguator

/-- Residue left by the final degauss step. -/
structure DegaussResidue where
  moveLog : SurgeryMoveLog
  residueLabel : String

/-- Irreducible glitch: no polynomial smoothing supplies the missing inverse data. -/
structure IrreducibleDegaussGlitch
    (_G : GlitchedDegaussRuleset) : Prop where
  noPolynomialSmoothing :
    ¬ ∃ S : SmoothDegaussRuleset, S.moveClass = _G.moveClass

/--
Degauss arrangement target.

Every finite frame is intended to support halo surgery, and the resulting
move class should classify as smooth or glitched.
-/
structure BinaryMatrixStreamArrangementTheoremTarget where
  frame : LeanProjectFiniteFrame
  arrangement : HaloArrangement
  moveClass : ModularMoveClass
  classified :
    (∃ S : SmoothDegaussRuleset, S.moveClass = moveClass) ∨
    (∃ G : GlitchedDegaussRuleset, G.moveClass = moveClass)
  sourceLabel : String

/--
Degauss fork target: the last move either smooths uniformly or leaves an
irreducible residue.
-/
structure DegaussForkTheoremTarget where
  arrangement : HaloArrangement
  residue : DegaussResidue
  residueSmoothable : Prop
  residueSmoothable_certified : residueSmoothable
  residueIrreducible : Prop
  residueIrreducible_certified : residueIrreducible
  sourceLabel : String

/-- `P = NP` route through degauss: every glitched residue can be smoothed. -/
structure DegaussPEqualsNPTarget where
  everyGlitchSmoothable :
    ∀ G : GlitchedDegaussRuleset,
      ∃ S : SmoothDegaussRuleset, S.moveClass = G.moveClass
  sourceLabel : String

/--
`P != NP` route through degauss: an NP-complete-style family has an
irreducible residue.
-/
structure DegaussPNotEqualsNPTarget where
  npCompleteFamilyLabel : String
  irreducibleGlitchExists :
    ∃ G : GlitchedDegaussRuleset, IrreducibleDegaussGlitch G
  sourceLabel : String

theorem finite_frame_if_supplied
    (F : LeanProjectFiniteFrame) :
    F.finiteFrame :=
  F.finiteFrame_certified

theorem move_log_polynomial_if_supplied
    (L : SurgeryMoveLog) :
    L.polynomialSize :=
  L.polynomialSize_certified

theorem halo_rearranges_if_supplied
    (A : HaloArrangement) :
    A.rearrangesToHalo :=
  A.rearrangesToHalo_certified

theorem smooth_degauss_polynomial_inverse_if_supplied
    (S : SmoothDegaussRuleset) :
    S.polynomialInverse :=
  S.polynomialInverse_certified

theorem glitched_degauss_requires_external_if_supplied
    (G : GlitchedDegaussRuleset) :
    G.requiresExternalDisambiguator :=
  G.requiresExternalDisambiguator_certified

theorem irreducible_degauss_no_polynomial_smoothing_if_supplied
    {G : GlitchedDegaussRuleset}
    (I : IrreducibleDegaussGlitch G) :
    ¬ ∃ S : SmoothDegaussRuleset, S.moveClass = G.moveClass :=
  I.noPolynomialSmoothing

theorem degauss_arrangement_classified_if_supplied
    (A : BinaryMatrixStreamArrangementTheoremTarget) :
    (∃ S : SmoothDegaussRuleset, S.moveClass = A.moveClass) ∨
      (∃ G : GlitchedDegaussRuleset, G.moveClass = A.moveClass) :=
  A.classified

theorem degauss_residue_smoothable_if_supplied
    (D : DegaussForkTheoremTarget) :
    D.residueSmoothable :=
  D.residueSmoothable_certified

theorem degauss_residue_irreducible_if_supplied
    (D : DegaussForkTheoremTarget) :
    D.residueIrreducible :=
  D.residueIrreducible_certified

theorem degauss_p_equals_np_target_if_supplied
    (T : DegaussPEqualsNPTarget)
    (G : GlitchedDegaussRuleset) :
    ∃ S : SmoothDegaussRuleset, S.moveClass = G.moveClass :=
  T.everyGlitchSmoothable G

theorem degauss_p_not_equals_np_target_if_supplied
    (T : DegaussPNotEqualsNPTarget) :
    ∃ G : GlitchedDegaussRuleset, IrreducibleDegaussGlitch G :=
  T.irreducibleGlitchExists

end Complexity
end GrandChallenge
end Folder
