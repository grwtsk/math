# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cube.Variant6d68935161e549551e32ed32f26c86469c88c4485435fc625d383529cf5baafa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1474f4bbd6c37e914c7daf4137328d4a8205d10` · SHA-256 `eec7f8890c8ae1889210402b01177c0998707505e1fe6dab97243f0793ac7d53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CubeSideSucc.Variantb478ed3f10576779705ac30120d57ffee3af769cb6b8cecfbed26aa542a44eaa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b478ed3f10576779705ac30120d57ffee3af769cb6b8cecfbed26aa542a44eaa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CubeSideSucc.Variantb478ed3f10576779705ac30120d57ffee3af769cb6b8cecfbed26aa542a44eaa","mathematical_subject":"Foundations.Unclassified","original_sha256":"b478ed3f10576779705ac30120d57ffee3af769cb6b8cecfbed26aa542a44eaa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Cellular/Cube.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Cellular.Cube

/-!
# Folder.Theorem.Cellular.Cube

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.cube
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CubeSideSucc.Variantb478ed3f10576779705ac30120d57ffee3af769cb6b8cecfbed26aa542a44eaa

namespace Folder
namespace Theorem
namespace Cellular
namespace Cube

theorem cubeSide_succ
    (k : Nat) :
    Folder.Cellular.cubeSide (k + 1) =
      2 * Folder.Cellular.cubeSide k :=
  Folder.Cellular.cubeSide_succ k

theorem appendBits_coord_val
    {d k : Nat}
    (x : Folder.Cellular.CubeAddress d k)
    (b : Fin d → Fin 2)
    (i : Fin d) :
    (Folder.Cellular.appendBits x b i).val =
      2 * (x i).val + (b i).val :=
  Folder.Cellular.appendBits_coord_val x b i

theorem embedLow_coord_val
    {d k : Nat}
    (x : Folder.Cellular.CubeAddress d k)
    (i : Fin d) :
    (Folder.Cellular.embedLow x i).val = 2 * (x i).val :=
  Folder.Cellular.embedLow_coord_val x i

end Cube
end Cellular
end Theorem
end Folder
```
