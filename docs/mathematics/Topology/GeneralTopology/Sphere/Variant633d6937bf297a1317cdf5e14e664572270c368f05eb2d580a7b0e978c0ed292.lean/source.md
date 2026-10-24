# Complete source: GRWTSK.Topology.GeneralTopology.Sphere.Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4225241e12593843b56b3ad96f223e8fb527b00a` · SHA-256 `0b585074c3f8d76b1256e0970f9db3d2222be26708dffce691999d4fa7de2a48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Disk.Variant788eccd81ae24889c42cd05325312164169373ae676058caf26537550f2b5487","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"788eccd81ae24889c42cd05325312164169373ae676058caf26537550f2b5487","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Disk.Variant788eccd81ae24889c42cd05325312164169373ae676058caf26537550f2b5487","mathematical_subject":"Topology.GeneralTopology","original_sha256":"788eccd81ae24889c42cd05325312164169373ae676058caf26537550f2b5487","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/TopCat/Sphere.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Elliot Dean Young and Jiazhen Xia. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jiazhen Xia, Elliot Dean Young
-/

import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Topology.Category.TopCat.Basic

/-!
# Euclidean spheres

This files defines the `n`-sphere `𝕊 n`, the `n`-disk `𝔻 n` and its
boundary `∂𝔻 n` as objects in `TopCat`.

-/


namespace GRWTSK.Topology.GeneralTopology.Disk.Variant788eccd81ae24889c42cd05325312164169373ae676058caf26537550f2b5487

universe u

namespace TopCat

/-- The `n`-disk is the set of points in ℝⁿ whose norm is at most `1`,
endowed with the subspace topology. -/
noncomputable def disk (n : ℕ) : TopCat.{u} :=
  TopCat.of <| ULift <| Metric.closedBall (0 : EuclideanSpace ℝ (Fin n)) 1

/-- The boundary of the `n`-disk. -/
noncomputable def diskBoundary (n : ℕ) : TopCat.{u} :=
  TopCat.of <| ULift <| Metric.sphere (0 : EuclideanSpace ℝ (Fin n)) 1

/-- The `n`-sphere is the set of points in ℝⁿ⁺¹ whose norm equals `1`,
endowed with the subspace topology. -/
noncomputable def sphere (n : ℕ) : TopCat.{u} :=
  diskBoundary (n + 1)

/-- `𝔻 n` denotes the `n`-disk. -/
scoped prefix:arg "𝔻 " => disk

/-- `∂𝔻 n` denotes the boundary of the `n`-disk. -/
scoped prefix:arg "∂𝔻 " => diskBoundary

/-- `𝕊 n` denotes the `n`-sphere. -/
scoped prefix:arg "𝕊 " => sphere

/-- The inclusion `∂𝔻 n ⟶ 𝔻 n` of the boundary of the `n`-disk. -/
def diskBoundaryInclusion (n : ℕ) : ∂𝔻 n ⟶ 𝔻 n :=
  ofHom
    { toFun := fun ⟨p, hp⟩ ↦ ⟨p, le_of_eq hp⟩
      continuous_toFun := ⟨fun t ⟨s, ⟨r, hro, hrs⟩, hst⟩ ↦ by
        rw [isOpen_induced_iff, ← hst, ← hrs]
        tauto⟩ }

end TopCat
```
