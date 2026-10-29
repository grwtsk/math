import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit1.M4b65726e656c2f5461726765742e6c65616e


/- source-tree-label: STL1|L|addr=00101011|role=proof_code_atom|slug=kernel-residue|owner=canonical_owner|core=Kernel/Residue.lean|leaf=M4b65726e656c2f526573696475652e6c65616e.lean -/

set_option autoImplicit false

namespace FWR

universe u v

inductive ResidueKind where
  | missingDefinition
  | missingFiniteWitness
  | missingLowering
  | missingDecode
  | missingTraceQuotient
  | missingSection
  | missingTransition
  | missingUniformBound
  | missingContinuumLimit
  | missingAnalyticContinuation
  | missingFunctionalEquation
  | missingAutomorphicAuthority
  | missingSieveEstimate
  | missingDistributionEstimate
  | missingParityBarrierResolution
  | missingPDEEstimate
  | missingGeometricMeasureEstimate
  | missingAsymptoticTransfer
  | externalTheoremNotImported
  | authorityOverclaim
  | replacementOverclaim
  | conjecturalAtom
deriving DecidableEq, Repr

structure Residue where
  target : Target
  atomId : String
  kind : ResidueKind
  blocks : String
  clearsBy : String
deriving Repr, DecidableEq

structure AtomLedger (Ctx : Type u) (Atom : Type v) where
  allAtoms : List Atom
  claim : Ctx -> Atom -> Prop
  residue : Ctx -> Atom -> Residue

structure ResidueFor (Ctx : Type u) (Atom : Type v) where
  atom : Atom
  claim : Ctx -> Prop
  residue : Ctx -> Residue

namespace AtomLedger

def residues {Ctx : Type u} {Atom : Type v}
    (L : AtomLedger Ctx Atom) (ctx : Ctx) :
    List Residue :=
  L.allAtoms.map (L.residue ctx)

end AtomLedger

end FWR
