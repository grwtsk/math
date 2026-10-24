# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Coord.Variantff64e537baf6840c239c54d8a96b3964bb101c38197e537de887efc570d41d73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de8ac21841cd89ecdcd2779fed1d6ec89de4a484` · SHA-256 `aa32326fdd3f231c363f97120080105f499a19d674aea2aad64ebebbe80f1561`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SmoothBarycentricCoord.Variant43526974412434b13af34cac38b84bd8d0ea9179038f8e34ebe8584635c2fb8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43526974412434b13af34cac38b84bd8d0ea9179038f8e34ebe8584635c2fb8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.SmoothBarycentricCoord.Variant43526974412434b13af34cac38b84bd8d0ea9179038f8e34ebe8584635c2fb8a","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"43526974412434b13af34cac38b84bd8d0ea9179038f8e34ebe8584635c2fb8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Calculus/AddTorsor/Coord.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
module

public import Mathlib.Analysis.Calculus.AddTorsor.AffineMap
public import Mathlib.Analysis.Normed.Affine.AddTorsorBases

/-!
# Barycentric coordinates are smooth
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SmoothBarycentricCoord.Variant43526974412434b13af34cac38b84bd8d0ea9179038f8e34ebe8584635c2fb8a

public section

variable {ι 𝕜 E : Type*} [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜]
variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable [FiniteDimensional 𝕜 E]

theorem smooth_barycentric_coord (b : AffineBasis ι 𝕜 E) (i : ι) : ContDiff 𝕜 ⊤ (b.coord i) :=
  (⟨b.coord i, continuous_barycentric_coord b i⟩ : E →ᴬ[𝕜] 𝕜).contDiff
```
