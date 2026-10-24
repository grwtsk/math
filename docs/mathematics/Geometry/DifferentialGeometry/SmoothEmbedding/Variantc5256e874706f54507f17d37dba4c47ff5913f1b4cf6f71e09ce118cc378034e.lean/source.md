# Complete source: GRWTSK.Geometry.DifferentialGeometry.SmoothEmbedding.Variantc5256e874706f54507f17d37dba4c47ff5913f1b4cf6f71e09ce118cc378034e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa5cc8e759f4888c6dc482d71507a872d75ea320` · SHA-256 `6c66c2b03f12fb12ae8d483b95148bc34a61cb5aa6373be6c71fef9aad270cb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.DifferentialGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.DifferentialGeometry.Diffeomorph.Variant2010149a348e41d4208e7cdcaae6ab0784d66020dce32bf20002ac0e2ebbc502","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2010149a348e41d4208e7cdcaae6ab0784d66020dce32bf20002ac0e2ebbc502","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.DifferentialGeometry.SourceCorpus.Diffeomorph.Variant2010149a348e41d4208e7cdcaae6ab0784d66020dce32bf20002ac0e2ebbc502","mathematical_subject":"Geometry.DifferentialGeometry","original_sha256":"2010149a348e41d4208e7cdcaae6ab0784d66020dce32bf20002ac0e2ebbc502","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/Geometry/Manifold/SmoothEmbedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Geometry.Manifold.Diffeomorph
public import Mathlib.Geometry.Manifold.SmoothEmbedding


namespace GRWTSK.Geometry.DifferentialGeometry.Diffeomorph.Variant2010149a348e41d4208e7cdcaae6ab0784d66020dce32bf20002ac0e2ebbc502

open scoped ContDiff
open Topology

namespace Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E₁ E₃ E₄ : Type*} [NormedAddCommGroup E₁] [NormedSpace 𝕜 E₁]
  [NormedAddCommGroup E₃] [NormedSpace 𝕜 E₃] [NormedAddCommGroup E₄] [NormedSpace 𝕜 E₄]
  {H G G' : Type*} [TopologicalSpace H] [TopologicalSpace G] [TopologicalSpace G']
  {I : ModelWithCorners 𝕜 E₁ H} {J : ModelWithCorners 𝕜 E₃ G} {J' : ModelWithCorners 𝕜 E₄ G'}
  {M N N' : Type*} [TopologicalSpace M] [ChartedSpace H M]
  [TopologicalSpace N] [ChartedSpace G N] [TopologicalSpace N'] [ChartedSpace G' N']
  {n : ℕ∞ω}

namespace IsSmoothEmbedding

variable {f : M → N}

-- use IsImmersion.comp and IsEmbedding.comp
/-- The composition of two smooth embeddings between Banach manifolds is a smooth embedding. -/
proof_wanted comp -- [CompleteSpace E] [CompleteSpace E'] [CompleteSpace F] [CompleteSpace F']
    {g : N → N'} (hg : IsSmoothEmbedding J J' n g) (hf : IsSmoothEmbedding I J n f) :
    IsSmoothEmbedding I J' n (g ∘ f)

end IsSmoothEmbedding

-- TODO: prove the same result for local diffeomorphisms and deduce it as a corollary
proof_wanted Diffeomorph.isSmoothEmbedding [IsManifold I n M]
    (φ : Diffeomorph I I M M n) : IsSmoothEmbedding I I n φ

end Manifold
```
