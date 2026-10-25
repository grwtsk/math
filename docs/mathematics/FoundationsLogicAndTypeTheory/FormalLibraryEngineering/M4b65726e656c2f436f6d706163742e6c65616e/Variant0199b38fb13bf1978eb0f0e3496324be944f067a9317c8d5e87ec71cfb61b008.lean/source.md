# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M4b65726e656c2f436f6d706163742e6c65616e.Variant0199b38fb13bf1978eb0f0e3496324be944f067a9317c8d5e87ec71cfb61b008

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0734a6108e431ba3103f87c7bc32cb492c613b0` · SHA-256 `db03c825c085a4efba5672023ab29bbbf9d2b29d9d8eeeb9b2762ccfaf5e42cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactAuthority.Variant8ab6d523c68db9f1fdff38e7ba9f44ea5f3c31ceb6acf9e27f0256ae940cb88d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ab6d523c68db9f1fdff38e7ba9f44ea5f3c31ceb6acf9e27f0256ae940cb88d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompactAuthority.Variant8ab6d523c68db9f1fdff38e7ba9f44ea5f3c31ceb6acf9e27f0256ae940cb88d","mathematical_subject":"Foundations.Unclassified","original_sha256":"8ab6d523c68db9f1fdff38e7ba9f44ea5f3c31ceb6acf9e27f0256ae940cb88d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit0/Bit1/Bit0/Bit1/Bit1/M4b65726e656c2f436f6d706163742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=1101011|role=proof_code_atom|slug=kernel-compact|owner=canonical_owner|core=Kernel/Compact.lean|leaf=M4b65726e656c2f436f6d706163742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactAuthority.Variant8ab6d523c68db9f1fdff38e7ba9f44ea5f3c31ceb6acf9e27f0256ae940cb88d

set_option autoImplicit false

namespace Think.Compact

inductive CompactAuthority where
  | finiteWitness
  | externalBoundary
  | residueOnly
  | validationSurface
deriving DecidableEq, Repr

structure CompactKernel where
  authority : CompactAuthority
  finiteOnly : Bool
  theoremAuthorityImported : Bool
deriving Repr

def rootKernel : CompactKernel :=
  { authority := CompactAuthority.finiteWitness
    finiteOnly := true
    theoremAuthorityImported := false }

theorem rootKernel_finiteOnly :
    rootKernel.finiteOnly = true := by
  rfl

theorem rootKernel_noTheoremAuthority :
    rootKernel.theoremAuthorityImported = false := by
  rfl

end Think.Compact
```
