# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactProfile.Variant93e1880cf39e7ee52c4cdfeb20b6c526ff23e4706bf88057696d3adf85751b66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4bce702d008f817139d273a7fe2a6115e69522c` · SHA-256 `93e1880cf39e7ee52c4cdfeb20b6c526ff23e4706bf88057696d3adf85751b66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

```
