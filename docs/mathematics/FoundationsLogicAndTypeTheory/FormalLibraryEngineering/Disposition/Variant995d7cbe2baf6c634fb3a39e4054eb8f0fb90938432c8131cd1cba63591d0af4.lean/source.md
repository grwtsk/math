# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Disposition.Variant995d7cbe2baf6c634fb3a39e4054eb8f0fb90938432c8131cd1cba63591d0af4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1b0215fb115ecc8323120620c842260bcc07504` · SHA-256 `995d7cbe2baf6c634fb3a39e4054eb8f0fb90938432c8131cd1cba63591d0af4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Jurisdictional disposition

Only an explicit `allowed` result can participate in an execution admission.
Unknown legal or policy state remains unresolved and fails closed.
-/

namespace Mathematics.Juris

inductive JurisDisposition
  | allowed
  | prohibited
  | unresolved
  | conflicting
  deriving DecidableEq, Repr

def JurisDisposition.MayExecute : JurisDisposition → Prop
  | .allowed => True
  | _ => False

@[simp] theorem unresolved_blocks_execution :
    ¬ JurisDisposition.unresolved.MayExecute := by
  simp [JurisDisposition.MayExecute]

@[simp] theorem conflicting_blocks_execution :
    ¬ JurisDisposition.conflicting.MayExecute := by
  simp [JurisDisposition.MayExecute]

@[simp] theorem prohibited_blocks_execution :
    ¬ JurisDisposition.prohibited.MayExecute := by
  simp [JurisDisposition.MayExecute]

end Mathematics.Juris
```
