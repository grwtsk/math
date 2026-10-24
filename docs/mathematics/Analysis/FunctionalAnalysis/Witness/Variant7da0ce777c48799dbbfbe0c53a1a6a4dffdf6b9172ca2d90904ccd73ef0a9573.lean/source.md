# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Witness.Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `109c6c95f92940d780e6bbf9afcb1b3222764051` · SHA-256 `80c48442d727fb0bc7d888992b1ae5d3c2faf53c902320e30c420a21d349a681`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Witness.Variantf7bf62ac93fea2dfc54ffd123ed007a80ade877816c31bab62c4705468fb2728","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7bf62ac93fea2dfc54ffd123ed007a80ade877816c31bab62c4705468fb2728","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Witness.Variantf7bf62ac93fea2dfc54ffd123ed007a80ade877816c31bab62c4705468fb2728","mathematical_subject":"Foundations.Unclassified","original_sha256":"f7bf62ac93fea2dfc54ffd123ed007a80ade877816c31bab62c4705468fb2728","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Witness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Energy
import Folder.Spectral.Expansion

/-!
# Folder.Spectral.Witness

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.witness
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.Witness.Variantf7bf62ac93fea2dfc54ffd123ed007a80ade877816c31bab62c4705468fb2728

namespace Folder
namespace Spectral

open Carrier

structure Witness (α β : Type _) where
  observe : α → β

def Consistent {α β γ : Type _}
    (W : Witness α β)
    (encode : α → γ)
    (decode : γ → α) :
    Prop :=
  ∀ x, W.observe (decode (encode x)) = W.observe x

noncomputable def meanWitness (s : GridShape) (k : Nat) :
    Witness (SpectralTensor s k) ℝ where
  observe := SpectralTensor.mean

noncomputable def energyWitness {s : GridShape} (k : Nat)
    (G : CellGraph s) :
    Witness (SpectralTensor s k) ℝ where
  observe := energy G

def cellCountWitness (s : GridShape) (k : Nat) :
    Witness (SpectralTensor s k) Nat where
  observe := fun _ => s.rows * s.cols * k

end Spectral
end Folder
```
