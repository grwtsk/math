# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveNat.Variant3aa482acdeeb1efa8f2ae0cce2a2400e374f839870398c51fc519aaa8c358820

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceea35cc0d5ec8dbe2dc08f72b2cb7d901cbc668` · SHA-256 `4190c38120640d123757af9e78f51011b20fbc67984e4ad41c2793347fe8756c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveNat.Variant34970b8e8db295ae8780b4556739fc122f3ba98cc9ff1400bbd1cc0104d1a2c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34970b8e8db295ae8780b4556739fc122f3ba98cc9ff1400bbd1cc0104d1a2c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PositiveNat.Variant34970b8e8db295ae8780b4556739fc122f3ba98cc9ff1400bbd1cc0104d1a2c5","mathematical_subject":"Foundations.Unclassified","original_sha256":"34970b8e8db295ae8780b4556739fc122f3ba98cc9ff1400bbd1cc0104d1a2c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/NumberTheory/PositiveNat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.NumberTheory.PositiveNat

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.positive_nat
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveNat.Variant34970b8e8db295ae8780b4556739fc122f3ba98cc9ff1400bbd1cc0104d1a2c5

namespace Folder
namespace NumberTheory

abbrev PositiveNat := { n : Nat // 0 < n }

namespace PositiveNat

def one : PositiveNat := ⟨1, by omega⟩

def val (n : PositiveNat) : Nat := n.1

@[simp]
theorem val_pos (n : PositiveNat) : 0 < n.val := n.2

@[ext]
theorem ext {a b : PositiveNat} (h : a.val = b.val) : a = b := by
  cases a
  cases b
  simp [val] at h
  subst h
  rfl

end PositiveNat
end NumberTheory
end Folder
```
