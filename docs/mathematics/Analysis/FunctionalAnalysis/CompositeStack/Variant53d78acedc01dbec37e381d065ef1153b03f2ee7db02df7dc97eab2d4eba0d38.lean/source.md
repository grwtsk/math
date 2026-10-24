# Complete source: GRWTSK.Analysis.FunctionalAnalysis.CompositeStack.Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0db8ff91e03e7dca6de64cfa55fced5a7d506dd5` · SHA-256 `16f2ec6c55dd5071bdc860882e88faeb56e648bc208287178c98236ff06bdd7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.CompositeStack.Variant810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompositeStack.Variant810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc","mathematical_subject":"Foundations.Unclassified","original_sha256":"810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CompositeStack.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Core.DualPivot
import Folder.Spectral.Tensor
import Folder.Spectral.Residual
import Folder.Cellular.HeatQuantizedTorsion
import Folder.Monodromy.EllipticShellBridge

/-!
# Folder.Core.CompositeStack

Radiation role: core-architecture
BinaryMatrix spine: This module packages the typed composite stack whose finite carrier component may be realized by BinaryMatrix data.
Ontology: core.composite_stack
Pivot role: dual
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.CompositeStack.Variant810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc

namespace Folder
namespace Core

structure CompositeStack where
  Carrier : Type
  SpectralField : Type
  HeatResidual : Type
  ShellFiber : Type
  PhaseConnection : Type
  TorsionWitness : Type
  ArithmeticLabel : Type
  carrier : Carrier
  spectralField : SpectralField
  heatResidual : HeatResidual
  shellFiber : ShellFiber
  phaseConnection : PhaseConnection
  torsionWitness : TorsionWitness
  arithmeticLabel : ArithmeticLabel
  pivots : DualPivot

def CompositeStack.hasArithmeticPivot
    (S : CompositeStack) : Prop :=
  S.pivots.arithmetic.val = 1

def CompositeStack.hasSpectralPivot
    (S : CompositeStack) : Prop :=
  S.pivots.spectral = (1 / 2 : ℝ)

theorem default_stack_pivots
    (S : CompositeStack)
    (h : S.pivots = defaultDualPivot) :
    S.hasArithmeticPivot ∧ S.hasSpectralPivot := by
  constructor
  · dsimp [CompositeStack.hasArithmeticPivot]
    rw [h]
    rfl
  · dsimp [CompositeStack.hasSpectralPivot]
    rw [h]
    rfl

end Core
end Folder
```
