# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryCharge.Variant78e4847a758db9e64e0db8a0723e34e591c7c52bb1378e69fed09c59e5e5d0bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23ba0b155064701d0f56e0a81b9930b83f16f1cb` · SHA-256 `6ba9800434fe3fd891824c1088ed68412b4bcd93530f3d9ad12c3887a832a8f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryVertexCharge.Variant70b40bb1cbf791e134460a4416946a96b5838e6c0ef57d6425f767fe0d0609fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70b40bb1cbf791e134460a4416946a96b5838e6c0ef57d6425f767fe0d0609fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BinaryVertexCharge.Variant70b40bb1cbf791e134460a4416946a96b5838e6c0ef57d6425f767fe0d0609fc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"70b40bb1cbf791e134460a4416946a96b5838e6c0ef57d6425f767fe0d0609fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Terrain/BinaryCharge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.Core
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Real.Basic

/-!
# Binary charges on concrete terrain vertices

Charges are vertex observations, not permutation matrices or action matrices.
The Boolean and `ZMod 2` presentations are tied pointwise by a proof field.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryVertexCharge.Variant70b40bb1cbf791e134460a4416946a96b5838e6c0ef57d6425f767fe0d0609fc

universe u

namespace DAF.Terrain

/-- A finite family of one-bit channels on each concrete vertex. -/
structure BinaryVertexCharge
    (V : Type u) [Fintype V] [DecidableEq V] where
  channels : Nat
  bits : V → Fin channels → Bool
  f2 : V → Fin channels → ZMod 2
  f2_spec : ∀ v i, f2 v i = if bits v i then 1 else 0

/-- Terrain adjacency and vertex charge remain separate fields. -/
structure ChargedTerrain
    (V : Type u) [Fintype V] [DecidableEq V] where
  terrain : Terrain V
  charge : BinaryVertexCharge V

/-- Exact Boolean embedding used by raster and threshold layers. -/
def boolToReal : Bool → Real
  | false => 0
  | true => 1

@[simp] theorem boolToReal_false : boolToReal false = 0 := rfl
@[simp] theorem boolToReal_true : boolToReal true = 1 := rfl

end DAF.Terrain
```
