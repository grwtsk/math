# Complete source: GRWTSK.Topology.OnePointEquiv.Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29ec0669301175c5db299579e7af96d6e8c149eb` · SHA-256 `c32acbd57b6bbc94f552ec7220eb165be662c1b59057c48f76b488d5404db359`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.EquivProjectivization.Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.EquivProjectivization.Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Compactification/OnePointEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Bjørn Kjos-Hanssen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bjørn Kjos-Hanssen, Oliver Nash
-/
import Mathlib.LinearAlgebra.Projectivization.Basic
import Mathlib.Topology.Compactification.OnePoint

/-!
# One-point compactification and projectivization

We construct a set-theoretic equivalence between
`OnePoint K` and the projectivization `ℙ K (K × K)` for an arbitrary division ring `K`.

TODO: Add the extension of this equivalence to a homeomorphism in the case `K = ℝ`,
where `OnePoint ℝ` gets the topology of one-point compactification.


## Main definitions and results

* `OnePoint.equivProjectivization` : the equivalence `OnePoint K ≃ ℙ K (K × K)`.

## Tags

one-point extension, projectivization
-/


namespace GRWTSK.Topology.EquivProjectivization.Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec

open scoped LinearAlgebra.Projectivization OnePoint
open Projectivization

namespace OnePoint
variable (K : Type*) [DivisionRing K] [DecidableEq K]

/-- The one-point compactification of a division ring `K` is equivalent to
the projectivivization `ℙ K (K × K)`. -/
def equivProjectivization :
    OnePoint K ≃ ℙ K (K × K) where
  toFun p := p.elim (mk K (1, 0) (by simp)) (fun t ↦ mk K (t, 1) (by simp))
  invFun p := by
    refine Projectivization.lift
      (fun u : {v : K × K // v ≠ 0} ↦ if u.1.2 = 0 then ∞ else ((u.1.2)⁻¹ * u.1.1)) ?_ p
    rintro ⟨-, hv⟩ ⟨⟨x, y⟩, hw⟩ t rfl
    have ht : t ≠ 0 := by rintro rfl; simp at hv
    by_cases h₀ : y = 0 <;> simp [h₀, ht, mul_assoc]
  left_inv p := by cases p <;> simp
  right_inv p := by
    induction p using ind with | h p hp =>
    obtain ⟨x, y⟩ := p
    by_cases h₀ : y = 0 <;> simp only [mk_eq_mk_iff', h₀, Projectivization.lift_mk, if_true,
      if_false, OnePoint.elim_infty, OnePoint.elim_some, Prod.smul_mk, Prod.mk.injEq, smul_eq_mul,
      mul_zero, and_true]
    · use x⁻¹
      simp_all
    · exact ⟨y⁻¹, rfl, inv_mul_cancel₀ h₀⟩

@[simp]
lemma equivProjectivization_apply_infinity :
    equivProjectivization K ∞ = mk K ⟨1, 0⟩ (by simp) :=
  rfl

@[simp]
lemma equivProjectivization_apply_coe (t : K) :
    equivProjectivization K t = mk K ⟨t, 1⟩ (by simp) :=
  rfl

@[simp]
lemma equivProjectivization_symm_apply_mk (x y : K) (h : (x, y) ≠ 0) :
    (equivProjectivization K).symm (mk K ⟨x, y⟩ h) = if y = 0 then ∞ else y⁻¹ * x := by
  simp [equivProjectivization]

end OnePoint
```
