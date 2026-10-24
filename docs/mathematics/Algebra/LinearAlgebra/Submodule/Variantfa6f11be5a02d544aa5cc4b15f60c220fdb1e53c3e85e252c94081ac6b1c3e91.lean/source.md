# Complete source: GRWTSK.Algebra.LinearAlgebra.Submodule.Variantfa6f11be5a02d544aa5cc4b15f60c220fdb1e53c3e85e252c94081ac6b1c3e91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a065a6f36150c36c4cfcb7449b5039b961257a5a` · SHA-256 `bb1def275915bf396d5645158b7c4ed2bd4dff35cc78bf8cdedaf507a600e795`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CoeNorm.Variant0e77c96ab2fb01011fccaa457782be9b5f41e463809fe7e8b86f3e8398b3791e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e77c96ab2fb01011fccaa457782be9b5f41e463809fe7e8b86f3e8398b3791e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CoeNorm.Variant0e77c96ab2fb01011fccaa457782be9b5f41e463809fe7e8b86f3e8398b3791e","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"0e77c96ab2fb01011fccaa457782be9b5f41e463809fe7e8b86f3e8398b3791e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Group/Submodule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Johannes Hölzl, Yaël Dillies
-/
module

public import Mathlib.Algebra.Module.Submodule.LinearMap
public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Topology.Algebra.Module.ClosedSubmodule

/-! # Submodules of normed groups -/


namespace GRWTSK.Algebra.LinearAlgebra.CoeNorm.Variant0e77c96ab2fb01011fccaa457782be9b5f41e463809fe7e8b86f3e8398b3791e

public section

variable {𝕜 E : Type*}

namespace Submodule

/-- A submodule of a seminormed group is also a seminormed group, with the restriction of the norm.
-/
instance seminormedAddCommGroup [Ring 𝕜] [SeminormedAddCommGroup E] [Module 𝕜 E]
    (s : Submodule 𝕜 E) : SeminormedAddCommGroup s :=
  fast_instance% SeminormedAddCommGroup.induced _ _ s.subtype.toAddMonoidHom

/-- If `x` is an element of a submodule `s` of a normed group `E`, its norm in `s` is equal to its
norm in `E`. -/
@[deprecated "use `norm_coe`" (since := "2026-08-25")]
theorem coe_norm [Ring 𝕜] [SeminormedAddCommGroup E] [Module 𝕜 E] {s : Submodule 𝕜 E}
    (x : s) : ‖x‖ = ‖(x : E)‖ :=
  rfl

/-- If `x` is an element of a submodule `s` of a normed group `E`, its norm in `E` is equal to its
norm in `s`. -/
@[simp ←, norm_cast]
theorem norm_coe [Ring 𝕜] [SeminormedAddCommGroup E] [Module 𝕜 E] {s : Submodule 𝕜 E}
    (x : s) : ‖(x : E)‖ = ‖x‖ :=
  rfl

/-- A submodule of a normed group is also a normed group, with the restriction of the norm. -/
instance normedAddCommGroup [Ring 𝕜] [NormedAddCommGroup E] [Module 𝕜 E]
    (s : Submodule 𝕜 E) : NormedAddCommGroup s :=
  { Submodule.seminormedAddCommGroup s with
    eq_of_dist_eq_zero := eq_of_dist_eq_zero }

end Submodule

namespace ClosedSubmodule

/-- A closed submodule of a seminormed group is also a seminormed group, with the restriction of the
norm. -/
instance seminormedAddCommGroup [Ring 𝕜] [SeminormedAddCommGroup E] [Module 𝕜 E]
    (s : ClosedSubmodule 𝕜 E) : SeminormedAddCommGroup s :=
  fast_instance% s.toSubmodule.seminormedAddCommGroup

/-- If `x` is an element of a closed submodule `s` of a normed group `E`, its norm in `s` is equal
to its norm in `E`. -/
@[simp ←, norm_cast]
theorem norm_coe [Ring 𝕜] [SeminormedAddCommGroup E] [Module 𝕜 E] {s : ClosedSubmodule 𝕜 E}
    (x : s) : ‖(x : E)‖ = ‖x‖ :=
  rfl

/-- A closed submodule of a normed group is also a normed group, with the restriction of the norm.
-/
instance normedAddCommGroup [Ring 𝕜] [NormedAddCommGroup E] [Module 𝕜 E]
    (s : ClosedSubmodule 𝕜 E) : NormedAddCommGroup s :=
  fast_instance% s.toSubmodule.normedAddCommGroup

end ClosedSubmodule

@[continuity, fun_prop]
theorem LinearMap.continuous_domRestrict {R R' M M' : Type*} [Semiring R] [Semiring R']
    [AddCommMonoid M] [AddCommMonoid M'] [Module R M] [Module R' M'] {σ₁₂ : R →+* R'}
    (f : M →ₛₗ[σ₁₂] M') [TopologicalSpace M] [TopologicalSpace M'] (hf : Continuous f)
    (p : Submodule R M) : Continuous (f.domRestrict p) := by
  rw [coe_domRestrict]
  fun_prop
```
