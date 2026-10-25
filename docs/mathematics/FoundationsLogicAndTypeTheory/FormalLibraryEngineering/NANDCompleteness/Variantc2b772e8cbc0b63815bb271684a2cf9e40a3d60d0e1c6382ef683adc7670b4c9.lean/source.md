# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NANDCompleteness.Variantc2b772e8cbc0b63815bb271684a2cf9e40a3d60d0e1c6382ef683adc7670b4c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6c1dc2cc94d9b5c41fa65241b9d38d6704f68be` · SHA-256 `c2b772e8cbc0b63815bb271684a2cf9e40a3d60d0e1c6382ef683adc7670b4c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Boolean.Completeness

/-!
# Folder.Theorem.Boolean.NANDCompleteness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.boolean.nandcompleteness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Boolean

theorem nand_functionally_complete
    (e : BoolExpr)
    (ρ : Env) :
    (compileToNand e).eval ρ = e.eval ρ :=
  compileToNand_correct e ρ

end Boolean
end Folder
```
