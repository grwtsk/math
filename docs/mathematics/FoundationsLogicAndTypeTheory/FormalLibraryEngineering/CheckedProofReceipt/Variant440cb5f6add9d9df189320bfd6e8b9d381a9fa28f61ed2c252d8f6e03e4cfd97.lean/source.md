# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckedProofReceipt.Variant440cb5f6add9d9df189320bfd6e8b9d381a9fa28f61ed2c252d8f6e03e4cfd97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `842665e4440d5d164d0503356cf2efc0ed5a2ae6` · SHA-256 `440cb5f6add9d9df189320bfd6e8b9d381a9fa28f61ed2c252d8f6e03e4cfd97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.Decoupling.Corollaries

set_option autoImplicit false

namespace Think.Analysis.Decoupling

def arxiv181204760CheckedProofReceipt : CheckedProofReceipt :=
  { arxivId := "1812.04760"
    theoremMapId := "arxiv-1812-04760-decoupling-v1"
    leanModule := "Think.Analysis.Decoupling"
    lakeBuildRequired := true
    noSorryRequired := true
    trustedImportRequiredForBourgainDemeter := true
    promotableToCheckedProof := false
    unresolvedResidueCount := 4 }

theorem arxiv181204760_receipt_not_promotable_to_checked_proof :
    arxiv181204760CheckedProofReceipt.promotableToCheckedProof = false := rfl

theorem arxiv181204760_receipt_has_open_residue :
    arxiv181204760CheckedProofReceipt.unresolvedResidueCount = 4 := rfl

end Think.Analysis.Decoupling
```
