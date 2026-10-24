# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpectralTripleToposBoundary.Variant239a4f9c26eef52f5cf53dd63b6187213f0ef7a26092243301b922d550a00578

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4121a7d9a7cd5a0c3e483ef6020b7477b42670e` · SHA-256 `239a4f9c26eef52f5cf53dd63b6187213f0ef7a26092243301b922d550a00578`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.EmlTorsionScatteringBoundary

set_option autoImplicit false

namespace Think.Arithmetic.SpectralTripleToposBoundary

open Think.Arithmetic.EmlFunctionalRhBoundary
open Think.Arithmetic.EmlTorsionScatteringBoundary
open Think.Arithmetic.SpectralTripleAdmissibility

structure SpectralTripleInput where
  spectralTriple : CandidateSpectralTripleSurface
  residueGate : CompressionSpectralResidueGate
  rootedCoverGate : Bool
  nonOverlapGate : Bool
  toposDescentGate : Bool
  lineageGate : Bool
  orderedTorsionData : List TorsionClass
  activeResidue : Nat
  spectralLanguageAuthorityClaim : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def requiredBoundaryGatesSatisfied
    (input : SpectralTripleInput) : Bool :=
  input.spectralTriple.validatesCandidateGate &&
    input.spectralTriple.admittedSpectralTriple &&
    input.residueGate.locallyAdmitted &&
    input.rootedCoverGate &&
    input.nonOverlapGate &&
    input.toposDescentGate &&
    input.lineageGate &&
    strictlyOrderedTorsionClasses input.orderedTorsionData &&
    !input.spectralLanguageAuthorityClaim &&
    !input.theoremAuthority

inductive ToposInterfaceResidue where
  | spectral_triple_boundary_gates_failed
  | arbitrary_spectral_language_refused
  | ordered_torsion_data_missing
  | unresolved_residue_preserved
  | no_admissible_scatter_remains
  | theorem_authority_not_claimed
deriving Repr, DecidableEq

def ToposInterfaceResidue.token :
    ToposInterfaceResidue -> String
  | .spectral_triple_boundary_gates_failed =>
      "spectral_triple_boundary_gates_failed"
  | .arbitrary_spectral_language_refused =>
      "arbitrary_spectral_language_refused"
  | .ordered_torsion_data_missing =>
      "ordered_torsion_data_missing"
  | .unresolved_residue_preserved =>
      "unresolved_residue_preserved"
  | .no_admissible_scatter_remains =>
      "no_admissible_scatter_remains"
  | .theorem_authority_not_claimed =>
      "theorem_authority_not_claimed"

def admissionResidues
    (input : SpectralTripleInput) :
    List ToposInterfaceResidue :=
  (if input.spectralTriple.validatesCandidateGate &&
      input.spectralTriple.admittedSpectralTriple &&
      input.residueGate.locallyAdmitted &&
      input.rootedCoverGate &&
      input.nonOverlapGate &&
      input.toposDescentGate &&
      input.lineageGate then
    []
  else
    [ToposInterfaceResidue.spectral_triple_boundary_gates_failed]) ++
    (if strictlyOrderedTorsionClasses input.orderedTorsionData then
      []
    else
      [ToposInterfaceResidue.ordered_torsion_data_missing]) ++
    (if input.spectralLanguageAuthorityClaim then
      [ToposInterfaceResidue.arbitrary_spectral_language_refused]
    else
      []) ++
    [ToposInterfaceResidue.theorem_authority_not_claimed]

inductive EmlTreeNode where
  | nullRoot
  | boundaryBit (stage : Nat) (bit : EmlBoundaryBit)
  | monomialTorsionScatter (stage : Nat) (classId : String)
  | stableNullResidueLoop
  | explicitResiduePacket
deriving Repr, DecidableEq

structure EmlTreeEdge where
  source : EmlTreeNode
  target : EmlTreeNode
deriving Repr, DecidableEq

inductive BoundaryTransitionAction where
  | return_to_parent_preserve_residue
  | advance_to_scatter_reduce_residue
deriving Repr, DecidableEq

def bitOfScatteringProgression :
    ScatteringProgression -> EmlBoundaryBit
  | ScatteringProgression.positive_progression => EmlBoundaryBit.one
  | ScatteringProgression.negative_progression => EmlBoundaryBit.zero
  | ScatteringProgression.refusal_residue => EmlBoundaryBit.zero

def actionOfBoundaryBit :
    EmlBoundaryBit -> BoundaryTransitionAction
  | EmlBoundaryBit.zero =>
      BoundaryTransitionAction.return_to_parent_preserve_residue
  | EmlBoundaryBit.one =>
      BoundaryTransitionAction.advance_to_scatter_reduce_residue

def nextResidue
    (bit : EmlBoundaryBit)
    (residue : Nat) : Nat :=
  match bit, residue with
  | EmlBoundaryBit.zero, r => r
  | EmlBoundaryBit.one, 0 => 0
  | EmlBoundaryBit.one, r + 1 => r

structure RecursiveScatterStep where
  stage : Nat
  torsionClass : TorsionClass
  scatterOutput : ScatteringProgression
  emittedBit : EmlBoundaryBit
  action : BoundaryTransitionAction
  residueBefore : Nat
  residueAfter : Nat
  theoremAuthority : Bool
deriving Repr, DecidableEq

def monomialTorsionScatterStep
    (stage : Nat)
    (residue : Nat)
    (tau : TorsionClass) :
    RecursiveScatterStep :=
  let output := scatterTorsionClass tau
  let bit := bitOfScatteringProgression output
  { stage := stage
    torsionClass := tau
    scatterOutput := output
    emittedBit := bit
    action := actionOfBoundaryBit bit
    residueBefore := residue
    residueAfter := nextResidue bit residue
    theoremAuthority := false }

def recursiveMonomialTorsionScatter
    (residue : Nat) :
    Nat -> List TorsionClass -> List RecursiveScatterStep
  | _, [] => []
  | stage, tau :: rest =>
      if residue = 0 then
        []
      else
        let step := monomialTorsionScatterStep stage residue tau
        step :: recursiveMonomialTorsionScatter
          step.residueAfter
          (stage + 1)
          rest

def finalResidueAfterScatter :
    Nat -> List TorsionClass -> Nat
  | residue, [] => residue
  | residue, tau :: rest =>
      if residue = 0 then
        0
      else
        let step := monomialTorsionScatterStep 0 residue tau
        finalResidueAfterScatter step.residueAfter rest

def initialBinaryEdges : List EmlTreeEdge := [
  { source := EmlTreeNode.nullRoot
    target := EmlTreeNode.boundaryBit 0 EmlBoundaryBit.zero },
  { source := EmlTreeNode.nullRoot
    target := EmlTreeNode.boundaryBit 0 EmlBoundaryBit.one }
]

def scatterEdgesOfTrace :
    List RecursiveScatterStep -> List EmlTreeEdge
  | [] => []
  | step :: rest =>
      [ { source := EmlTreeNode.boundaryBit step.stage step.emittedBit
          target :=
            EmlTreeNode.monomialTorsionScatter
              step.stage
              step.torsionClass.classId }
      , { source :=
            EmlTreeNode.monomialTorsionScatter
              step.stage
              step.torsionClass.classId
          target := EmlTreeNode.boundaryBit (step.stage + 1)
            EmlBoundaryBit.zero }
      , { source :=
            EmlTreeNode.monomialTorsionScatter
              step.stage
              step.torsionClass.classId
          target := EmlTreeNode.boundaryBit (step.stage + 1)
            EmlBoundaryBit.one }
      ] ++ scatterEdgesOfTrace rest

def nodesOfTrace :
    List RecursiveScatterStep -> List EmlTreeNode
  | [] => []
  | step :: rest =>
      [ EmlTreeNode.monomialTorsionScatter
          step.stage
          step.torsionClass.classId
      , EmlTreeNode.boundaryBit step.stage step.emittedBit
      ] ++ nodesOfTrace rest

inductive EmlTreeClosure where
  | stable_null_residue_loop
  | explicit_residue_packet
deriving Repr, DecidableEq

def closureOfResidue (residue : Nat) : EmlTreeClosure :=
  if residue = 0 then
    EmlTreeClosure.stable_null_residue_loop
  else
    EmlTreeClosure.explicit_residue_packet

def terminalNodeOfClosure :
    EmlTreeClosure -> EmlTreeNode
  | EmlTreeClosure.stable_null_residue_loop =>
      EmlTreeNode.stableNullResidueLoop
  | EmlTreeClosure.explicit_residue_packet =>
      EmlTreeNode.explicitResiduePacket

structure EmlTree where
  input : SpectralTripleInput
  root : EmlTreeNode
  initialBranches : List EmlBoundaryBit
  vertices : List EmlTreeNode
  edges : List EmlTreeEdge
  scatterTrace : List RecursiveScatterStep
  finalResidue : Nat
  closure : EmlTreeClosure
  explicitResidues : List ToposInterfaceResidue
  arbitrarySpectralLanguageAccepted : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def residuePacketForFinal
    (finalResidue : Nat) :
    List ToposInterfaceResidue :=
  if finalResidue = 0 then
    [ToposInterfaceResidue.theorem_authority_not_claimed]
  else
    [ ToposInterfaceResidue.unresolved_residue_preserved
    , ToposInterfaceResidue.no_admissible_scatter_remains
    , ToposInterfaceResidue.theorem_authority_not_claimed
    ]

def buildAdmittedEmlTree
    (input : SpectralTripleInput) :
    EmlTree :=
  let trace :=
    recursiveMonomialTorsionScatter
      input.activeResidue
      0
      input.orderedTorsionData
  let finalResidue :=
    finalResidueAfterScatter
      input.activeResidue
      input.orderedTorsionData
  let closure := closureOfResidue finalResidue
  let terminal := terminalNodeOfClosure closure
  { input := input
    root := EmlTreeNode.nullRoot
    initialBranches := [EmlBoundaryBit.zero, EmlBoundaryBit.one]
    vertices :=
      [ EmlTreeNode.nullRoot
      , EmlTreeNode.boundaryBit 0 EmlBoundaryBit.zero
      , EmlTreeNode.boundaryBit 0 EmlBoundaryBit.one
      , terminal
      ] ++ nodesOfTrace trace
    edges := initialBinaryEdges ++ scatterEdgesOfTrace trace
    scatterTrace := trace
    finalResidue := finalResidue
    closure := closure
    explicitResidues := residuePacketForFinal finalResidue
    arbitrarySpectralLanguageAccepted := false
    theoremAuthority := false }

def spectralTripleInputToEmlTree
    (input : SpectralTripleInput) :
    Option EmlTree :=
  if requiredBoundaryGatesSatisfied input then
    some (buildAdmittedEmlTree input)
  else
    none

def positiveScatterClassAt
    (classId : String)
    (orderIndex : Nat) : TorsionClass :=
  { classId := classId
    orderIndex := orderIndex
    declaredPolarity := EmlResiduePolarity.positive
    admissible := true
    theoremAuthority := false }

def negativeScatterClassAt
    (classId : String)
    (orderIndex : Nat) : TorsionClass :=
  { classId := classId
    orderIndex := orderIndex
    declaredPolarity := EmlResiduePolarity.negative
    admissible := true
    theoremAuthority := false }

def refusalScatterClassAt
    (classId : String)
    (orderIndex : Nat) : TorsionClass :=
  { classId := classId
    orderIndex := orderIndex
    declaredPolarity := EmlResiduePolarity.none
    admissible := true
    theoremAuthority := false }

def admittedSpectralTripleInput
    (torsionData : List TorsionClass)
    (activeResidue : Nat) :
    SpectralTripleInput :=
  { spectralTriple := candidateSpectralTripleSurface true true
    residueGate :=
      compressionSpectralResidueGate true true true true true true
    rootedCoverGate := true
    nonOverlapGate := true
    toposDescentGate := true
    lineageGate := true
    orderedTorsionData := torsionData
    activeResidue := activeResidue
    spectralLanguageAuthorityClaim := false
    theoremAuthority := false }

def closingTorsionData : List TorsionClass := [
  positiveScatterClassAt "tau_close_0" 0,
  positiveScatterClassAt "tau_close_1" 1
]

def parentReturnTorsionData : List TorsionClass := [
  negativeScatterClassAt "tau_return_0" 0
]

def refusalTorsionData : List TorsionClass := [
  refusalScatterClassAt "tau_refusal_0" 0
]

def stableSpectralTripleInput : SpectralTripleInput :=
  admittedSpectralTripleInput closingTorsionData 2

def parentReturnSpectralTripleInput : SpectralTripleInput :=
  admittedSpectralTripleInput parentReturnTorsionData 1

def refusalSpectralTripleInput : SpectralTripleInput :=
  admittedSpectralTripleInput refusalTorsionData 1

def rejectedSpectralTripleInput : SpectralTripleInput :=
  { spectralTriple := candidateSpectralTripleSurface true false
    residueGate :=
      compressionSpectralResidueGate true true true true true true
    rootedCoverGate := true
    nonOverlapGate := true
    toposDescentGate := true
    lineageGate := true
    orderedTorsionData := closingTorsionData
    activeResidue := 2
    spectralLanguageAuthorityClaim := false
    theoremAuthority := false }

theorem only_admitted_inputs_cross_topos_boundary
    (input : SpectralTripleInput) :
    spectralTripleInputToEmlTree input ≠ none ->
      requiredBoundaryGatesSatisfied input = true := by
  unfold spectralTripleInputToEmlTree
  by_cases h : requiredBoundaryGatesSatisfied input = true
  · intro _
    exact h
  · intro hSome
    simp [h] at hSome

theorem admitted_interface_returns_eml_tree :
    (spectralTripleInputToEmlTree stableSpectralTripleInput).isSome =
      true := by
  native_decide

theorem rejected_input_returns_no_eml_tree :
    spectralTripleInputToEmlTree rejectedSpectralTripleInput = none ∧
      ToposInterfaceResidue.spectral_triple_boundary_gates_failed ∈
        admissionResidues rejectedSpectralTripleInput := by
  native_decide

theorem initial_eml_tree_form_is_nullroot_to_zero_one :
    (buildAdmittedEmlTree stableSpectralTripleInput).root =
        EmlTreeNode.nullRoot ∧
      (buildAdmittedEmlTree stableSpectralTripleInput).initialBranches =
        [EmlBoundaryBit.zero, EmlBoundaryBit.one] ∧
      initialBinaryEdges =
        [ { source := EmlTreeNode.nullRoot
            target := EmlTreeNode.boundaryBit 0 EmlBoundaryBit.zero }
        , { source := EmlTreeNode.nullRoot
            target := EmlTreeNode.boundaryBit 0 EmlBoundaryBit.one }
        ] := by
  native_decide

theorem bit_zero_returns_parent_and_preserves_residue
    (residue : Nat) :
    actionOfBoundaryBit EmlBoundaryBit.zero =
        BoundaryTransitionAction.return_to_parent_preserve_residue ∧
      nextResidue EmlBoundaryBit.zero residue = residue := by
  constructor <;> rfl

theorem bit_one_advances_and_reduces_active_residue :
    actionOfBoundaryBit EmlBoundaryBit.one =
        BoundaryTransitionAction.advance_to_scatter_reduce_residue ∧
      nextResidue EmlBoundaryBit.one 0 = 0 ∧
      nextResidue EmlBoundaryBit.one 3 = 2 := by
  native_decide

theorem monomial_torsion_scatter_emits_boundary_bits :
    (monomialTorsionScatterStep 0 2
        (positiveScatterClassAt "tau_positive" 0)).emittedBit =
        EmlBoundaryBit.one ∧
      (monomialTorsionScatterStep 0 2
        (negativeScatterClassAt "tau_negative" 0)).emittedBit =
        EmlBoundaryBit.zero ∧
      (monomialTorsionScatterStep 0 2
        (refusalScatterClassAt "tau_refusal" 0)).emittedBit =
        EmlBoundaryBit.zero := by
  native_decide

theorem stable_tree_closes_null_residue_loop :
    (buildAdmittedEmlTree stableSpectralTripleInput).finalResidue = 0 ∧
      (buildAdmittedEmlTree stableSpectralTripleInput).closure =
        EmlTreeClosure.stable_null_residue_loop ∧
      (buildAdmittedEmlTree stableSpectralTripleInput).scatterTrace.length =
        2 := by
  native_decide

theorem no_admissible_scatter_emits_explicit_residue :
    (buildAdmittedEmlTree refusalSpectralTripleInput).finalResidue = 1 ∧
      (buildAdmittedEmlTree refusalSpectralTripleInput).closure =
        EmlTreeClosure.explicit_residue_packet ∧
      ToposInterfaceResidue.no_admissible_scatter_remains ∈
        (buildAdmittedEmlTree refusalSpectralTripleInput).explicitResidues ∧
      ToposInterfaceResidue.unresolved_residue_preserved ∈
        (buildAdmittedEmlTree refusalSpectralTripleInput).explicitResidues := by
  native_decide

theorem parent_return_preserves_unresolved_residue :
    (buildAdmittedEmlTree parentReturnSpectralTripleInput).finalResidue =
        1 ∧
      (buildAdmittedEmlTree parentReturnSpectralTripleInput).closure =
        EmlTreeClosure.explicit_residue_packet ∧
      ((buildAdmittedEmlTree parentReturnSpectralTripleInput).scatterTrace.map
        (fun step => step.action)) =
        [BoundaryTransitionAction.return_to_parent_preserve_residue] := by
  native_decide

theorem topos_boundary_refuses_arbitrary_spectral_authority :
    let authorityInput :=
      { stableSpectralTripleInput with
        spectralLanguageAuthorityClaim := true }
    spectralTripleInputToEmlTree authorityInput = none ∧
      ToposInterfaceResidue.arbitrary_spectral_language_refused ∈
        admissionResidues authorityInput := by
  native_decide

theorem eml_tree_has_no_theorem_authority :
    (buildAdmittedEmlTree stableSpectralTripleInput).theoremAuthority =
        false ∧
      (buildAdmittedEmlTree stableSpectralTripleInput).arbitrarySpectralLanguageAccepted =
        false ∧
      stableSpectralTripleInput.spectralTriple.theoremAuthority = false := by
  native_decide

end Think.Arithmetic.SpectralTripleToposBoundary
```
