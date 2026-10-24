# Complete source: GRWTSK.Topology.GeneralTopology.ZMultiples.Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2309a0c7354963e1a1d789063a957d741e4fd637` · SHA-256 `37ba0964fe15cbcfe3a826fb7f11f8d1cb0347814c0ab996014d19dff9c0bfc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoCoeCofinite.Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoCoeCofinite.Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Instances/ZMultiples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Module.Submodule.Lattice
import Mathlib.Topology.Algebra.IsUniformGroup.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Metrizable.Basic

/-!
The subgroup "multiples of `a`" (`zmultiples a`) is a discrete subgroup of `ℝ`, i.e. its
intersection with compact sets is finite.
-/



namespace GRWTSK.Topology.GeneralTopology.TendstoCoeCofinite.Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595

noncomputable section

open Filter Int Metric Set TopologicalSpace Bornology
open scoped Topology Uniformity Interval

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w}

namespace Int

open Metric

/-- This is a special case of `NormedSpace.discreteTopology_zmultiples`. It exists only to simplify
dependencies. -/
instance {a : ℝ} : DiscreteTopology (AddSubgroup.zmultiples a) := by
  rcases eq_or_ne a 0 with (rfl | ha)
  · rw [AddSubgroup.zmultiples_zero_eq_bot]
    exact Subsingleton.discreteTopology (α := (⊥ : Submodule ℤ ℝ))
  rw [discreteTopology_iff_isOpen_singleton_zero, isOpen_induced_iff]
  refine ⟨ball 0 |a|, isOpen_ball, ?_⟩
  ext ⟨x, hx⟩
  obtain ⟨k, rfl⟩ := AddSubgroup.mem_zmultiples_iff.mp hx
  simp [ha, Real.dist_eq, abs_mul, (by norm_cast : |(k : ℝ)| < 1 ↔ |k| < 1)]

/-- Under the coercion from `ℤ` to `ℝ`, inverse images of compact sets are finite. -/
theorem tendsto_coe_cofinite : Tendsto ((↑) : ℤ → ℝ) cofinite (cocompact ℝ) := by
  apply (castAddHom ℝ).tendsto_coe_cofinite_of_discrete cast_injective
  rw [range_castAddHom]
  infer_instance

/-- For nonzero `a`, the "multiples of `a`" map `zmultiplesHom` from `ℤ` to `ℝ` is discrete, i.e.
inverse images of compact sets are finite. -/
theorem tendsto_zmultiplesHom_cofinite {a : ℝ} (ha : a ≠ 0) :
    Tendsto (zmultiplesHom ℝ a) cofinite (cocompact ℝ) := by
  apply (zmultiplesHom ℝ a).tendsto_coe_cofinite_of_discrete <| smul_left_injective ℤ ha
  rw [AddSubgroup.range_zmultiplesHom]
  infer_instance

end Int

namespace AddSubgroup

/-- The subgroup "multiples of `a`" (`zmultiples a`) is a discrete subgroup of `ℝ`, i.e. its
intersection with compact sets is finite. -/
theorem tendsto_zmultiples_subtype_cofinite (a : ℝ) :
    Tendsto (zmultiples a).subtype cofinite (cocompact ℝ) :=
  (zmultiples a).tendsto_coe_cofinite_of_discrete

end AddSubgroup
```
