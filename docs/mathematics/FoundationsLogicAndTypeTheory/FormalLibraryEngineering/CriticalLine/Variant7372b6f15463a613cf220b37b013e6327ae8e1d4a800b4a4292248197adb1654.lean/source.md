# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalLine.Variant7372b6f15463a613cf220b37b013e6327ae8e1d4a800b4a4292248197adb1654

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a05254db3a744bf6cb0cf61f1e01b3df6cad8efa` · SHA-256 `6a9b0ecbcedf436695c66507ee4868a3902f98dfee2448c8db656d7e146364ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCriticalLineRealPart.Variant3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IsCriticalLineRealPart.Variant3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288","mathematical_subject":"Foundations.Unclassified","original_sha256":"3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Research/CriticalLine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Core.DualPivot
import Folder.Harmonic.AnalyticPivot

/-!
# Folder.Research.CriticalLine

Radiation role: research-boundary
BinaryMatrix spine: This module expresses the critical-line real-part condition through the spectral pivot, not through a BinaryMatrix carrier.
Ontology: research.rh.critical_line
Pivot role: spectral
Zero typology: l-function
Contract boundary: proved
Composite stack role: research
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCriticalLineRealPart.Variant3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288

namespace Folder
namespace Research
namespace CriticalLine

def IsCriticalLineRealPart (x : ℝ) : Prop :=
  x = Core.spectralPivot

def CenteredWithZeroVariance (x : ℝ) : Prop :=
  Harmonic.CenteredAroundHalf 0 x

theorem criticalLine_of_centered_zero
    (x : ℝ)
    (h : CenteredWithZeroVariance x) :
    IsCriticalLineRealPart x := by
  unfold CenteredWithZeroVariance Harmonic.CenteredAroundHalf at h
  unfold IsCriticalLineRealPart
  have habs : |x - Harmonic.analyticEquilibrium| = 0 :=
    le_antisymm h (abs_nonneg _)
  have hsub : x - Harmonic.analyticEquilibrium = 0 :=
    abs_eq_zero.mp habs
  unfold Harmonic.analyticEquilibrium at hsub
  linarith

theorem centered_zero_of_criticalLine
    (x : ℝ)
    (h : IsCriticalLineRealPart x) :
    CenteredWithZeroVariance x := by
  unfold CenteredWithZeroVariance Harmonic.CenteredAroundHalf
  unfold IsCriticalLineRealPart at h
  rw [h]
  unfold Harmonic.analyticEquilibrium
  simp

theorem criticalLine_iff_centered_zero
    (x : ℝ) :
    IsCriticalLineRealPart x ↔ CenteredWithZeroVariance x :=
  ⟨centered_zero_of_criticalLine x,
    criticalLine_of_centered_zero x⟩

end CriticalLine
end Research
end Folder
```
