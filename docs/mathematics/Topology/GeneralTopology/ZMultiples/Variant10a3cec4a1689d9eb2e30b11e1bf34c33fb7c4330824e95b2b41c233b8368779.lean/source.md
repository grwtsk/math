# Complete source: GRWTSK.Topology.GeneralTopology.ZMultiples.Variant10a3cec4a1689d9eb2e30b11e1bf34c33fb7c4330824e95b2b41c233b8368779

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `808397606770f458f9a4de051fd3fe022b219109` · SHA-256 `1ddd4976754fa6e3e8b54a1288104e905e8ee131600b0bbbe4a9970f01f5e4a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoCoeCofinite.Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoCoeCofinite.Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Instances/ZMultiples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Subgroup.ZPowers.Lemmas
public import Mathlib.Algebra.Module.Submodule.Lattice
public import Mathlib.Topology.Algebra.OpenSubgroup
public import Mathlib.Topology.Algebra.Ring.Real
public import Mathlib.Topology.Metrizable.Basic

/-!
# Multiples of a real number form a discrete subgroup of `ℝ`

The subgroup "multiples of `a`" (`zmultiples a`) is a discrete subgroup of `ℝ`, i.e. its
intersection with compact sets is finite.
-/


namespace GRWTSK.Topology.GeneralTopology.TendstoCoeCofinite.Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b

public section


noncomputable section

open Filter Int Metric Set TopologicalSpace
open scoped Topology Uniformity Interval

universe u v w

variable {α : Type u}

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
  apply (castAddHom ℝ).tendsto_coe_cofinite_of_isDiscrete cast_injective
  rw [range_castAddHom, SetLike.isDiscrete_iff_discreteTopology]
  infer_instance

/-- For nonzero `a`, the "multiples of `a`" map `zmultiplesHom` from `ℤ` to `ℝ` is discrete, i.e.
inverse images of compact sets are finite. -/
theorem tendsto_zmultiplesHom_cofinite {a : ℝ} (ha : a ≠ 0) :
    Tendsto (zmultiplesHom ℝ a) cofinite (cocompact ℝ) := by
  apply (zmultiplesHom ℝ a).tendsto_coe_cofinite_of_isDiscrete <| smul_left_injective ℤ ha
  rw [AddSubgroup.range_zmultiplesHom, SetLike.isDiscrete_iff_discreteTopology]
  infer_instance

end Int

namespace AddSubgroup

/-- The subgroup "multiples of `a`" (`zmultiples a`) is a discrete subgroup of `ℝ`, i.e. its
intersection with compact sets is finite. -/
theorem tendsto_zmultiples_subtype_cofinite (a : ℝ) :
    Tendsto (zmultiples a).subtype cofinite (cocompact ℝ) := by
  refine (zmultiples a).tendsto_coe_cofinite_of_isDiscrete ?_
  rw [SetLike.isDiscrete_iff_discreteTopology]
  infer_instance

end AddSubgroup
```
