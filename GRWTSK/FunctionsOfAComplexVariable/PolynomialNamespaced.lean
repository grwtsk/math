-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.ExistsRoot.Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.ExistsRoot.Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Complex/Polynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Chris Hughes All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Junyan Xu
-/
import Mathlib.Analysis.Complex.Liouville
import Mathlib.FieldTheory.IsAlgClosed.Basic
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Topology.Algebra.Polynomial


namespace GRWTSK.Analysis.ComplexAnalysis.ExistsRoot.Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a

#align_import analysis.complex.polynomial from "leanprover-community/mathlib"@"17ef379e997badd73e5eabb4d38f11919ab3c4b3"

/-!
# The fundamental theorem of algebra

This file proves that every nonconstant complex polynomial has a root using Liouville's theorem.

As a consequence, the complex numbers are algebraically closed.
-/

open Polynomial

open scoped Polynomial

namespace Complex

/-- **Fundamental theorem of algebra**: every non constant complex polynomial
  has a root -/
theorem exists_root {f : ℂ[X]} (hf : 0 < degree f) : ∃ z : ℂ, IsRoot f z := by
  contrapose! hf
  have : Metric.Bounded (Set.range (eval · f)⁻¹)
  · obtain ⟨z₀, h₀⟩ := f.exists_forall_norm_le
    simp only [Pi.inv_apply, bounded_iff_forall_norm_le, Set.forall_range_iff, norm_inv]
    exact ⟨‖eval z₀ f‖⁻¹, fun z => inv_le_inv_of_le (norm_pos_iff.2 <| hf z₀) (h₀ z)⟩
  obtain ⟨c, hc⟩ := (f.differentiable.inv hf).exists_const_forall_eq_of_bounded this
  · obtain rfl : f = C c⁻¹ := Polynomial.funext fun z => by rw [eval_C, ← hc z, inv_inv]
    exact degree_C_le
#align complex.exists_root Complex.exists_root

instance isAlgClosed : IsAlgClosed ℂ :=
  IsAlgClosed.of_exists_root _ fun _p _ hp => Complex.exists_root <| degree_pos_of_irreducible hp
#align complex.is_alg_closed Complex.isAlgClosed

end Complex
