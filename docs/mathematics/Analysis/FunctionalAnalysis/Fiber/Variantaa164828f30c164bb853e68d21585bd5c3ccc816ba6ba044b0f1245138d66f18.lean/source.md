# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Fiber.Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2059813bffdc434384c79d9bd20c9248469c075a` · SHA-256 `155a7a2296738c7fa34b6486156944fbc36e99f782023da4a615d7a848b975aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.SpectralShellFiber.Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SpectralShellFiber.Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440","mathematical_subject":"Foundations.Unclassified","original_sha256":"09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Fiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Expansion.Shell
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Fiber

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.fiber
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.SpectralShellFiber.Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440

namespace Folder
namespace Spectral

open Carrier

structure SpectralShellFiber (s : GridShape) (k : Nat) where
  value :
    {c : Cell (Expansion.expandedShape s) //
      Expansion.IsShellCell c} →
    Fin k →
    ℝ

namespace SpectralShellFiber

@[ext]
theorem ext {s : GridShape} {k : Nat}
    {F G : SpectralShellFiber s k}
    (h : ∀ c q, F.value c q = G.value c q) :
    F = G := by
  cases F
  cases G
  congr
  funext c q
  exact h c q

def zero (s : GridShape) (k : Nat) : SpectralShellFiber s k where
  value := fun _ _ => 0

def add {s : GridShape} {k : Nat}
    (F G : SpectralShellFiber s k) :
    SpectralShellFiber s k where
  value := fun c q => F.value c q + G.value c q

def map {s : GridShape} {k : Nat}
    (f : ℝ → ℝ)
    (F : SpectralShellFiber s k) :
    SpectralShellFiber s k where
  value := fun c q => f (F.value c q)

instance {s : GridShape} {k : Nat} : Zero (SpectralShellFiber s k) :=
  ⟨zero s k⟩

instance {s : GridShape} {k : Nat} : Add (SpectralShellFiber s k) :=
  ⟨add⟩

@[simp]
theorem value_zero {s : GridShape} {k : Nat}
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (0 : SpectralShellFiber s k).value c q = 0 :=
  rfl

@[simp]
theorem value_add {s : GridShape} {k : Nat}
    (F G : SpectralShellFiber s k)
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (F + G).value c q = F.value c q + G.value c q :=
  rfl

@[simp]
theorem value_map {s : GridShape} {k : Nat}
    (f : ℝ → ℝ)
    (F : SpectralShellFiber s k)
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (map f F).value c q = f (F.value c q) :=
  rfl

end SpectralShellFiber

end Spectral
end Folder
```
