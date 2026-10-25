# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variantf3b61035658ac5b23d64a9f2adb34959e475206234b304781eea8b9c233ef407

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d9f95787adb90c4d0cd361a90af64930d8e826b` · SHA-256 `276ff7294f0c0c910c51b14a0c5abce0db2ebd519e1e2c8c64b7ee001404096d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EncodedGluingCert.Variantd8e4739043d38a08a44444c7d04ec63be0c07fc7c73efad5fe971ba823346b7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8e4739043d38a08a44444c7d04ec63be0c07fc7c73efad5fe971ba823346b7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EncodedGluingCert.Variantd8e4739043d38a08a44444c7d04ec63be0c07fc7c73efad5fe971ba823346b7b","mathematical_subject":"Foundations.Unclassified","original_sha256":"d8e4739043d38a08a44444c7d04ec63be0c07fc7c73efad5fe971ba823346b7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Knowledge/Sheaf/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EncodedGluingCert.Variantd8e4739043d38a08a44444c7d04ec63be0c07fc7c73efad5fe971ba823346b7b

namespace Think.Knowledge.Sheaf

/-!
Encoded bridge certificate schema for Rust-generated Knowledge sheaf receipts.

The formal sheaf gluing certificate lives in `Think.Knowledge.Sheaf.Gluing`.
This file only provides the compact encoded boundary consumed by the runtime
artifact generator.
-/

structure EncodedGluingCert where
  certHash : String
  noBypass : Bool
deriving Repr, DecidableEq

def checkGluingCertificate (cert : EncodedGluingCert) : Bool :=
  cert.noBypass && !cert.certHash.isEmpty

end Think.Knowledge.Sheaf
```
