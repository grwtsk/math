# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinaryFrontier.Variantf16ba1983d42b98dab2131e5528b64774614714ce7da9f4555153dafc0216441

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e978ba080ba591ed03493b7405e3867c03be2b2f` · SHA-256 `be1891d23d1ab5cd5deb75ad6718c57e6ae72575099a051f1bba008dae8c265c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinaryFrontierAccessRef.Variant5e8da8199adfb259bccd380ec19670f6df803bd8038ba853205ed0134d13ed22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e8da8199adfb259bccd380ec19670f6df803bd8038ba853205ed0134d13ed22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.BinaryFrontierAccessRef.Variant5e8da8199adfb259bccd380ec19670f6df803bd8038ba853205ed0134d13ed22","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"5e8da8199adfb259bccd380ec19670f6df803bd8038ba853205ed0134d13ed22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Integration/BinaryFrontier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Binary-frontier access references

The integration layer retains finite frontier and obstruction identities; it
does not reinterpret their certificates.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinaryFrontierAccessRef.Variant5e8da8199adfb259bccd380ec19670f6df803bd8038ba853205ed0134d13ed22

namespace Mathematics.GraphAccess

structure BinaryFrontierAccessRef where
  frontierRef : String
  distinctionBitfieldRef : String
  continuationCoverRef : Option String
  primitiveObstructionRef : Option String
deriving DecidableEq, Repr

end Mathematics.GraphAccess
```
