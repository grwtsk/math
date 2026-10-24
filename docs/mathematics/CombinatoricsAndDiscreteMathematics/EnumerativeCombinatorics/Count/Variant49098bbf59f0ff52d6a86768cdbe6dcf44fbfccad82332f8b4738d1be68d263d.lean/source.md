# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Count.Variant49098bbf59f0ff52d6a86768cdbe6dcf44fbfccad82332f8b4738d1be68d263d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `186b723871c9d34762a0f4e2b92c16aeb7b49c28` · SHA-256 `7c0123c0a7b4afe853026d2597343e5c90a2cb3f5f92fff6d6d6a966ce085e91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanCountZero.Variant5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.CatalanCountZero.Variant5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Catalan/Count.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Catalan.Count

/-!
# Folder.Theorem.Catalan.Count

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.count
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanCountZero.Variant5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f

namespace Folder
namespace Catalan

theorem catalan_count_zero :
    catalan 0 = 1 :=
  catalan_zero

theorem catalan_count_succ (n : Nat) :
    catalan (n + 1) =
      Finset.sum (Finset.range (n + 1))
        (fun i => catalan i * catalan (n - i)) :=
  catalan_succ n

end Catalan
end Folder
```
