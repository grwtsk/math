# Complete source: GRWTSK.Topology.GeneralTopology.UniformSpaces.Matrix.Variant7b059b1016059f18c2e508c53da9faa67c186002232587694b07c1eb89b18c20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a24a177d11fc4202c963cdf38dfb6eb240fa98a` · SHA-256 `f7b105a6c05e614b13b4a3e8dad3fa57ce4164357dad0f761e05579faaed0027`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology.UniformSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformSpaces.Uniformity.Variant2251c718bc02710c9f2fe89792616967746dcf0c0b2077d9f8b58ca430770f39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2251c718bc02710c9f2fe89792616967746dcf0c0b2077d9f8b58ca430770f39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.UniformSpaces.SourceCorpus.Uniformity.Variant2251c718bc02710c9f2fe89792616967746dcf0c0b2077d9f8b58ca430770f39","mathematical_subject":"Topology.UniformSpaces","original_sha256":"2251c718bc02710c9f2fe89792616967746dcf0c0b2077d9f8b58ca430770f39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/UniformSpace/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser, Heather Macbeth
-/
module

public import Mathlib.LinearAlgebra.Matrix.Defs
public import Mathlib.Topology.Instances.Matrix
public import Mathlib.Topology.UniformSpace.Pi
public import Mathlib.Topology.Algebra.IsUniformGroup.Constructions

/-!
# Uniform space structure on matrices
-/


namespace GRWTSK.Topology.GeneralTopology.UniformSpaces.Uniformity.Variant2251c718bc02710c9f2fe89792616967746dcf0c0b2077d9f8b58ca430770f39

public section


open scoped Uniformity

variable (m n 𝕜 : Type*) [UniformSpace 𝕜]

namespace Matrix

instance instUniformSpace : UniformSpace (Matrix m n 𝕜) :=
  inferInstanceAs <| UniformSpace (m → n → 𝕜)

instance instIsUniformAddGroup [AddGroup 𝕜] [IsUniformAddGroup 𝕜] :
    IsUniformAddGroup (Matrix m n 𝕜) :=
  inferInstanceAs <| IsUniformAddGroup (m → n → 𝕜)

theorem uniformity :
    𝓤 (Matrix m n 𝕜) = ⨅ (i : m) (j : n), (𝓤 𝕜).comap fun a => (a.1 i j, a.2 i j) := by
  erw [Pi.uniformity]
  simp_rw [Pi.uniformity, Filter.comap_iInf, Filter.comap_comap]
  rfl

theorem uniformContinuous {β : Type*} [UniformSpace β] {f : β → Matrix m n 𝕜} :
    UniformContinuous f ↔ ∀ i j, UniformContinuous fun x => f x i j := by
  simp only [UniformContinuous, Matrix.uniformity, Filter.tendsto_iInf, Filter.tendsto_comap_iff]
  apply Iff.intro <;> intro a <;> apply a

instance [CompleteSpace 𝕜] : CompleteSpace (Matrix m n 𝕜) :=
  inferInstanceAs <| CompleteSpace (m → n → 𝕜)

end Matrix
```
