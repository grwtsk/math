# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexSpinRef.Variant4fe929e48fbdd052a710aa5695fca2638b9330e9fabdc9397ac619fa023b1b30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8a34ecf009cdaa2b94222ab71ac682014b8944c` · SHA-256 `65e88f18c07daa691a1b11ae8cb092b15ed99b15347318235955c6d41bdd5fae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixAtomDictionary.Varianta0bab93155f82dadf46e3e0192fb3675e37b540a33eb83c9d09ccd25b89a9afa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0bab93155f82dadf46e3e0192fb3675e37b540a33eb83c9d09ccd25b89a9afa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MatrixAtomDictionary.Varianta0bab93155f82dadf46e3e0192fb3675e37b540a33eb83c9d09ccd25b89a9afa","mathematical_subject":"Computation.DataStructures","original_sha256":"a0bab93155f82dadf46e3e0192fb3675e37b540a33eb83c9d09ccd25b89a9afa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/IndexSpinRef.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Archive.MatrixOrbit

/-!
# Folder.Archive.IndexSpinRef

Radiation role: archive-reference
BinaryMatrix spine: This module realizes symbolic `{index, spin}` references into BinaryMatrix archive atoms.
Ontology: archive.index_spin_ref
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixAtomDictionary.Varianta0bab93155f82dadf46e3e0192fb3675e37b540a33eb83c9d09ccd25b89a9afa

namespace Folder
namespace Archive

structure MatrixAtomDictionary where
  atoms : List Carrier.BinaryMatrix
  unique_atoms : Prop

namespace MatrixAtomDictionary

def get? (D : MatrixAtomDictionary) (i : Nat) :
    Option Carrier.BinaryMatrix :=
  D.atoms[i]?

end MatrixAtomDictionary

structure IndexSpinRef (A : MatrixAction) where
  index : Nat
  spin : A.Spin

def realizeIndexSpin?
    (A : MatrixAction)
    (D : MatrixAtomDictionary)
    (r : IndexSpinRef A) :
    Option Carrier.BinaryMatrix :=
  match D.get? r.index with
  | some M => some (A.act r.spin M)
  | none => none

theorem realizeIndexSpin?_some
    {A : MatrixAction}
    {D : MatrixAtomDictionary}
    {r : IndexSpinRef A}
    {M : Carrier.BinaryMatrix}
    (h : D.get? r.index = some M) :
    realizeIndexSpin? A D r = some (A.act r.spin M) := by
  simp [realizeIndexSpin?, h]

theorem realize_copy_id
    (D : MatrixAtomDictionary)
    (i : Nat)
    (M : Carrier.BinaryMatrix)
    (h : D.get? i = some M) :
    realizeIndexSpin? copyAction D
      { index := i, spin := () } = some M := by
  simpa [copyAction] using (realizeIndexSpin?_some
    (A := copyAction)
    (D := D)
    (r := { index := i, spin := () })
    h)

end Archive
end Folder
```
