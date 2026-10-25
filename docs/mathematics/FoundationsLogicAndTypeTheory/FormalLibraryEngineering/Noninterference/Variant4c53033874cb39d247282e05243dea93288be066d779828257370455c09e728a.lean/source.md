# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variant4c53033874cb39d247282e05243dea93288be066d779828257370455c09e728a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0402c9425c79c622c02a94a032f56ec137eaf2f1` · SHA-256 `4c53033874cb39d247282e05243dea93288be066d779828257370455c09e728a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Checkpoint

/-!
# Read-only graph-access effect

Every machine result has the sole access effect `none`.  The owner mutation
module is intentionally absent from this import cone.
-/

namespace Mathematics.GraphAccess

inductive AccessEffect
  | none
deriving DecidableEq, Repr

def MachineResolution.authoritativeEffect
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    (_result : MachineResolution machine) :
    AccessEffect :=
  .none

theorem accessMachine_has_no_authoritative_effect
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    (result : MachineResolution machine) :
    result.authoritativeEffect = .none :=
  rfl

end Mathematics.GraphAccess
```
