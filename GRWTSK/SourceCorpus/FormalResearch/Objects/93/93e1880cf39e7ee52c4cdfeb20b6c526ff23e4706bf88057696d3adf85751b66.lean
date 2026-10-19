import Think.Kernel.Compact

set_option autoImplicit false

namespace Think.Compact

inductive ActiveResidueFamily where
  | externalTheoremNotImported
  | finiteToAsymptoticTransferMissing
  | compactShellOrderErasure
  | memoryAsTruthBlocked
  | jepaPredictionNotProof
  | emlCompressionNotAuthority
  | radoExtensionNotImported
  | montgomeryRegularizerOnly
  | gammaPntMotifOnly
  | modularLabelNotAuthority
  | correctiveContainmentNotClearance
deriving DecidableEq, Repr

def ActiveResidueFamily.externalAuthorityImported :
    ActiveResidueFamily → Bool
  | _ => false

def ActiveResidueFamily.clearsResidue :
    ActiveResidueFamily → Bool
  | _ => false

theorem active_residue_profile_has_no_external_theorem_authority
    (r : ActiveResidueFamily) :
    r.externalAuthorityImported = false := by
  cases r <;> rfl

theorem active_residue_profile_does_not_clear_residue
    (r : ActiveResidueFamily) :
    r.clearsResidue = false := by
  cases r <;> rfl

end Think.Compact

