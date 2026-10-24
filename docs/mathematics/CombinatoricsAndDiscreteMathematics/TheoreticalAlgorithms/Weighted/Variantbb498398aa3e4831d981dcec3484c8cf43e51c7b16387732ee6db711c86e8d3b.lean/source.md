# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Weighted.Variantbb498398aa3e4831d981dcec3484c8cf43e51c7b16387732ee6db711c86e8d3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27c4918aacb22fd2db62ab8d16423d9cfec98c6d` · SHA-256 `afac898c098aae8ff653fb081fe865804ee817085e85c8cd9ec4e64a56ba7ba7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WeightedVertex.Variant8b9f2c319000eedba3d0d0f06021587b77a33b3b50b4b62fff33867ffbe596f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b9f2c319000eedba3d0d0f06021587b77a33b3b50b4b62fff33867ffbe596f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WeightedVertex.Variant8b9f2c319000eedba3d0d0f06021587b77a33b3b50b4b62fff33867ffbe596f4","mathematical_subject":"Computation.DataStructures","original_sha256":"8b9f2c319000eedba3d0d0f06021587b77a33b3b50b4b62fff33867ffbe596f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Weighted.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Vertex


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WeightedVertex.Variant8b9f2c319000eedba3d0d0f06021587b77a33b3b50b4b62fff33867ffbe596f4

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

structure WeightedVertex where
  vertex : MemoryVertex
  coefficient : Nat
deriving DecidableEq, Repr

structure RuntimePressure where
  queryMatch : Nat
  residuePressure : Nat
  schedulerPressure : Nat
deriving DecidableEq, Repr

def clipNat (upper value : Nat) : Nat :=
  Nat.min upper value

def updateHeat
    (upper lambdaH alphaQ alphaR alphaP current : Nat)
    (pressure : RuntimePressure) : Nat :=
  clipNat upper
    (lambdaH * current +
      alphaQ * pressure.queryMatch +
      alphaR * pressure.residuePressure +
      alphaP * pressure.schedulerPressure)

def pressureResidues : List ResidueAtom :=
  [ ResidueAtom.runtimePressureNotReasoningAuthority ]

theorem updateHeat_le_upper
    (upper lambdaH alphaQ alphaR alphaP current : Nat)
    (pressure : RuntimePressure) :
    updateHeat upper lambdaH alphaQ alphaR alphaP current pressure ≤ upper := by
  unfold updateHeat clipNat
  exact Nat.min_le_left upper
    (lambdaH * current +
      alphaQ * pressure.queryMatch +
      alphaR * pressure.residuePressure +
      alphaP * pressure.schedulerPressure)

theorem pressureResidues_contains_nonAuthority :
    ResidueAtom.runtimePressureNotReasoningAuthority ∈ pressureResidues := by
  simp [pressureResidues]

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
```
