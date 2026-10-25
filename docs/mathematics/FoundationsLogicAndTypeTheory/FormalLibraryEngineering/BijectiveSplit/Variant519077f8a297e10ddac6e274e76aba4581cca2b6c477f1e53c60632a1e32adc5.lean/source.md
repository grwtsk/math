# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BijectiveSplit.Variant519077f8a297e10ddac6e274e76aba4581cca2b6c477f1e53c60632a1e32adc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b302c9aa1db8671d0d0a1a10f7c100e772e952c` · SHA-256 `e4ef90f0da1d64b64c1a4c56fe5d37ff0833b49277db0dd98f0cfbffe747b90a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuantizedSplit.Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.QuantizedSplit.Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47","mathematical_subject":"Foundations.Unclassified","original_sha256":"a61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Shader/BijectiveSplit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Shader.BijectiveSplit

Radiation role: shader-spec
BinaryMatrix spine: This module proves the arithmetic visible/residual split mirrored by runtime shader code downstream of BinaryMatrix-radiated phase data.
Ontology: shader.bijective_split
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: residual
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuantizedSplit.Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47

namespace Folder
namespace Shader

structure QuantizedSplit where
  raw : Nat
  step : Nat
  step_pos : 0 < step
  visible : Nat
  residual : Nat
  visible_eq : visible = raw / step
  residual_eq : residual = raw % step

def split
    (raw step : Nat)
    (hstep : 0 < step) :
    QuantizedSplit where
  raw := raw
  step := step
  step_pos := hstep
  visible := raw / step
  residual := raw % step
  visible_eq := rfl
  residual_eq := rfl

def reconstruct (S : QuantizedSplit) : Nat :=
  S.visible * S.step + S.residual

theorem reconstruct_split
    (raw step : Nat)
    (hstep : 0 < step) :
    reconstruct (split raw step hstep) = raw := by
  simpa [reconstruct, split, Nat.mul_comm] using Nat.div_add_mod raw step

theorem residual_lt_step
    (S : QuantizedSplit) :
    S.residual < S.step := by
  rw [S.residual_eq]
  exact Nat.mod_lt S.raw S.step_pos

end Shader
end Folder
```
