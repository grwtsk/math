# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Quantization.Variant7388485f04c6ffb2abe3b26b7e583243c3f6ea2856f1be1df7222c13bc5e98e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93a3915536481bd67ec3ecb005b770264fa1fb53` · SHA-256 `484d7ee4bd1debe45afa06353053d66c8bc21e579e8170b471a73b389d975dd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TensorQuantizer.Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.TensorQuantizer.Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893","mathematical_subject":"Logic.Foundations","original_sha256":"da282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Quantization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.BinaryMatrix
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Quantization

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.quantization
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TensorQuantizer.Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893

namespace Folder
namespace Spectral

open Carrier

structure TensorQuantizer where
  threshold : ℝ
  bitOf : ℝ → Carrier.Bit
  bitOf_spec_zero : ∀ x, x < threshold → bitOf x = 0
  bitOf_spec_one : ∀ x, threshold ≤ x → bitOf x = 1

def quantizeChannel {s : GridShape} {k : Nat}
    (Q : TensorQuantizer)
    (q : Fin k)
    (X : SpectralTensor s k) :
    BinaryMatrix :=
  BinaryMatrix.ofFunction s.rows s.cols
    (fun i j => Q.bitOf (X.value (i, j) q))

noncomputable def unitThresholdQuantizer : TensorQuantizer where
  threshold := (1 : ℝ)
  bitOf := fun x => if x < (1 : ℝ) then 0 else 1
  bitOf_spec_zero := by
    intro x hx
    simp [hx]
  bitOf_spec_one := by
    intro x hx
    simp [not_lt.mpr hx]

theorem quantization_not_declared_injective :
    ¬ Function.Injective
      (fun X : SpectralTensor ⟨1, 1⟩ 1 =>
        quantizeChannel unitThresholdQuantizer 0 X) := by
  intro hinj
  let X0 : SpectralTensor ⟨1, 1⟩ 1 :=
    SpectralTensor.constant ⟨1, 1⟩ (fun _ => 0)
  let Xq : SpectralTensor ⟨1, 1⟩ 1 :=
    SpectralTensor.constant ⟨1, 1⟩ (fun _ => (1 / 4 : ℝ))
  have hq :
      quantizeChannel unitThresholdQuantizer 0 X0 =
        quantizeChannel unitThresholdQuantizer 0 Xq := by
    apply BinaryMatrix.ext_entries
    intro i j
    fin_cases i
    fin_cases j
    norm_num [quantizeChannel, unitThresholdQuantizer, X0, Xq]
  have hx := hinj hq
  have hv := congrArg
    (fun X : SpectralTensor ⟨1, 1⟩ 1 =>
      X.value (⟨0, by decide⟩, ⟨0, by decide⟩) 0) hx
  simp [X0, Xq] at hv

end Spectral
end Folder
```
