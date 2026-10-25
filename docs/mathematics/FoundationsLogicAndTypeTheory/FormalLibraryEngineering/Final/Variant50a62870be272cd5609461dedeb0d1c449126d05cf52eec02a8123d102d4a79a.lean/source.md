# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Final.Variant50a62870be272cd5609461dedeb0d1c449126d05cf52eec02a8123d102d4a79a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7b34eba8f6a8fd49183b63367dbd79adce54472` · SHA-256 `50a62870be272cd5609461dedeb0d1c449126d05cf52eec02a8123d102d4a79a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.ConeAudit

/-!
# Folder.RH.Final

Radiation role: final-cone-gate
BinaryMatrix spine: This module freezes the narrow final-cone audit shape.
Ontology: rh.final
Pivot role: verification
Zero typology: zeta
Contract boundary: reject-until-clean-audit
Composite stack role: rh
-/

namespace Folder
namespace RH

/--
Declaration name reserved for the future final theorem.
-/
def FinalRHConeDeclarationName : String :=
  "Folder.RH.riemann_hypothesis"

theorem final_cone_declaration_name_fixed :
    FinalRHConeDeclarationName = "Folder.RH.riemann_hypothesis" :=
  rfl

/--
The current final RH cone is not closed.

This is the only theorem exported by the final module about the current
proof status. A future theorem named `riemann_hypothesis` must be added only
after the generated declaration-level audit has no forbidden dependencies.
-/
def FinalRHConeClosed : Prop :=
  RHConeAuditClean FinalRHConeDeclarationName

theorem current_final_rh_cone_rejects_unconditional_rh :
    ¬ FinalRHConeClosed := by
  intro h
  exact h

end RH
end Folder
```
