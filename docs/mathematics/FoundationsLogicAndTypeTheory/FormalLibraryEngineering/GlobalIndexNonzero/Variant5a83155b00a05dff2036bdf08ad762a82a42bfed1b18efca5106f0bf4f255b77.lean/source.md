# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalIndexNonzero.Variant5a83155b00a05dff2036bdf08ad762a82a42bfed1b18efca5106f0bf4f255b77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `369489b7f8a340ac994406f4c450dd3133b6332f` · SHA-256 `97be2f5b227cfe5c058dfb142fb96065b9d8f369111983bcfbc2955149a0b236`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalKIndexNonzero.Variant3deda8d210ba0cf4e3ed44a4604b5368b19242e3d9a0d4caa0d1426b0d3e3df5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3deda8d210ba0cf4e3ed44a4604b5368b19242e3d9a0d4caa0d1426b0d3e3df5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GlobalKIndexNonzero.Variant3deda8d210ba0cf4e3ed44a4604b5368b19242e3d9a0d4caa0d1426b0d3e3df5","mathematical_subject":"Foundations.Unclassified","original_sha256":"3deda8d210ba0cf4e3ed44a4604b5368b19242e3d9a0d4caa0d1426b0d3e3df5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/GlobalIndexNonzero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.GlobalIndexNonzero

/-!
# Folder.Theorem.CanonicalPath.GlobalIndexNonzero

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path global index facts, not BinaryMatrix data.
Ontology: proof.canonical_path.global_index_nonzero
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalKIndexNonzero.Variant3deda8d210ba0cf4e3ed44a4604b5368b19242e3d9a0d4caa0d1426b0d3e3df5

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem global_k_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (G : Folder.CanonicalPath.GlobalKIndexNonzero M)
    {x : G.Object}
    (h : G.relevant x) :
    (G.kIndexAt x).indexClass.Nonzero :=
  Folder.CanonicalPath.global_k_index_nonzero G h

theorem elliptic_family_global_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (E : Folder.CanonicalPath.CertifiedEllipticCurveFamily M)
    {x : E.Curve}
    (h : E.relevantForGRHBoundary x) :
    (E.kIndex x).indexClass.Nonzero :=
  Folder.CanonicalPath.elliptic_family_global_index_nonzero E h

end CanonicalPath
end Theorem
end Folder
```
