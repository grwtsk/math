# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixSymmetry.Variantbfcb2cbae0aa409de3c6beedde339cdba8a8b3914152dc56c36c07a447f03980

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `964bfd0aa9314bd61bf9a417c4fbd9a18f67ad9d` · SHA-256 `134756827c082883474609228fa83a0bfd98c0d003e45edf08f390bd076558c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixAction.Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MatrixAction.Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed","mathematical_subject":"Foundations.Unclassified","original_sha256":"8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/MatrixSymmetry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Archive.Spin
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Archive.MatrixSymmetry

Radiation role: archive-symmetry
BinaryMatrix spine: This module describes matrix symmetry actions on BinaryMatrix archive atoms.
Ontology: archive.matrix_symmetry
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/


namespace GRWTSK.Algebra.LinearAlgebra.MatrixAction.Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed

namespace Folder
namespace Archive

structure MatrixAction where
  Spin : Type
  decEqSpin : DecidableEq Spin
  id : Spin
  comp : Spin → Spin → Spin
  inv : Spin → Spin
  act : Spin → Carrier.BinaryMatrix → Carrier.BinaryMatrix
  id_act : ∀ M, act id M = M
  comp_act : ∀ g h M, act (comp g h) M = act h (act g M)
  inv_act_left : ∀ g M, act (inv g) (act g M) = M
  preserves_rows : ∀ g M, (act g M).m = M.m
  preserves_cols : ∀ g M, (act g M).n = M.n

def copyAction : MatrixAction where
  Spin := Unit
  decEqSpin := inferInstance
  id := ()
  comp := fun _ _ => ()
  inv := fun _ => ()
  act := fun _ M => M
  id_act := by intro M; rfl
  comp_act := by intro g h M; rfl
  inv_act_left := by intro g M; rfl
  preserves_rows := by intro g M; rfl
  preserves_cols := by intro g M; rfl

theorem copyAction_id_act
    (M : Carrier.BinaryMatrix) :
    copyAction.act copyAction.id M = M :=
  copyAction.id_act M

structure RectV4ActionContract where
  action : MatrixAction
  spinEquiv : action.Spin ≃ RectSpin
  runtime_semantics : String

def rectV4ActionContractTarget : Prop :=
  ∃ _C : RectV4ActionContract, True

end Archive
end Folder
```
