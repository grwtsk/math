-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BytesToMatrixWith.Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BytesToMatrixWith.Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e","mathematical_subject":"Computation.DataStructures","original_sha256":"abdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/ByteMatrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Archive.Byte
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Archive.ByteMatrix

Radiation role: archive-codec
BinaryMatrix spine: This module represents byte payloads as 8-column BinaryMatrix values.
Ontology: archive.byte_matrix
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BytesToMatrixWith.Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e

namespace Folder
namespace Archive

def bytesToMatrixWith
    (C : Byte.ByteCodec)
    (bs : List Byte) :
    Carrier.BinaryMatrix :=
  Carrier.BinaryMatrix.ofFunction bs.length 8
    (fun i j => C.toBits (bs.get i) j)

def matrixToBytesWith
    (C : Byte.ByteCodec)
    (M : Carrier.BinaryMatrix) :
    Option (List Byte) :=
  some (List.ofFn
    (fun i : Fin M.m =>
      C.ofBits (fun j : Fin 8 =>
        if h : j.val < M.n then
          M.get i ⟨j.val, h⟩
        else
          0)))

theorem matrixToBytes?_bytesToMatrix_of_codec
    (C : Byte.ByteCodec)
    (bs : List Byte) :
    matrixToBytesWith C (bytesToMatrixWith C bs) = some bs := by
  change
    some (List.ofFn
      (fun i : Fin bs.length =>
        C.ofBits (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0))) = some bs
  congr
  have hfun :
      (fun i : Fin bs.length =>
        C.ofBits (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0)) =
        (fun i : Fin bs.length => bs.get i) := by
    funext i
    have hbits :
        (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0) = C.toBits (bs.get i) := by
      funext j
      by_cases h : j.val < 8
      · have hj : (⟨j.val, h⟩ : Fin 8) = j := Fin.ext rfl
        simp [h, hj]
      · exact False.elim (h j.isLt)
    rw [hbits, C.roundtrip]
  rw [hfun]
  exact List.ofFn_get bs

end Archive
end Folder
