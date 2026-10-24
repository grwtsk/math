# Complete source: GRWTSK.Analysis.CoveringMap.Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f5e937551f540452cb5752d812aa666d5f409a1` · SHA-256 `00eafb10b00980cdca629b0a9ba02f4cf5af2bad9a17b67fd51b6680bc5b5152`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.IsAddQuotientCoveringMapExp.Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.IsAddQuotientCoveringMapExp.Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Complex/CoveringMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.Analysis.Calculus.Deriv.Polynomial
public import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv
public import Mathlib.Analysis.SpecialFunctions.Pow.Complex
public import Mathlib.RingTheory.RootsOfUnity.Basic
public import Mathlib.Topology.Algebra.Group.Units
public import Mathlib.Topology.Algebra.Polynomial
public import Mathlib.Topology.Covering.Quotient
public import Mathlib.Topology.GDelta.MetrizableSpace
public import Mathlib.Topology.LocalAtTarget

/-!
# Covering maps involving the complex plane

In this file, we show that `Complex.exp` and `(· ^ n)` (for `n ≠ 0`) are a covering map on `{0}ᶜ`.
We also show that any complex polynomial is a covering map on the set of regular values.
-/


namespace GRWTSK.Analysis.IsAddQuotientCoveringMapExp.Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445

public section

open Topology

namespace Complex

theorem isAddQuotientCoveringMap_exp :
    IsAddQuotientCoveringMap (fun z : ℂ ↦ (⟨_, z.exp_ne_zero⟩ : {z : ℂ // z ≠ 0}))
      (AddSubgroup.zmultiples (2 * Real.pi * I)) := by
  refine Topology.IsQuotientMap.isAddQuotientCoveringMap_of_addSubgroup ?_
    _ ⟨NormedSpace.discreteTopology_zmultiples _⟩ fun {z _} ↦ ?_
  · refine IsOpenMap.isQuotientMap ?_ (by fun_prop) fun z ↦ ⟨_, Subtype.ext (exp_log z.2)⟩
    exact (IsOpen.isOpenEmbedding_subtypeVal isClosed_singleton.1).isOpenMap_iff.mpr isOpenMap_exp
  · simp_rw [Subtype.ext_iff, eq_comm (a := exp z), exp_eq_exp_iff_exists_int,
      AddSubgroup.mem_zmultiples_iff, eq_add_neg_iff_add_eq, eq_comm, add_comm, zsmul_eq_mul]

/-- `exp : ℂ → ℂ \ {0}` is a covering map. -/
theorem isCoveringMap_exp : IsCoveringMap fun z : ℂ ↦ (⟨_, z.exp_ne_zero⟩ : {z : ℂ // z ≠ 0}) :=
  isAddQuotientCoveringMap_exp.isCoveringMap

theorem isCoveringMapOn_exp : IsCoveringMapOn Complex.exp {0}ᶜ :=
  .of_isCoveringMap_subtype (by simp) _ isCoveringMap_exp

end Complex

section

open Polynomial

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] [ProperSpace 𝕜]

theorem Polynomial.isCoveringMapOn_eval (p : 𝕜[X]) :
    IsCoveringMapOn p.eval (p.eval '' {k | p.derivative.eval k = 0})ᶜ := by
  refine p.isClosedMap_eval.isCoveringMapOn_of_isLocalHomeomorphOn (fun x hx ↦ ?_)
    fun x hx ↦ ⟨_, ((p.hasStrictDerivAt x).hasStrictFDerivAt_equiv
      fun h ↦ hx ⟨x, h, rfl⟩).mem_toOpenPartialHomeomorph_source, by simp⟩
  obtain rfl | ne := eq_or_ne p (C x)
  · simp at hx
  · simpa only [preimage_eval_singleton ne] using rootSet_finite ..

theorem isCoveringMapOn_npow (n : ℕ) (hn : (n : 𝕜) ≠ 0) :
    IsCoveringMapOn (fun x : 𝕜 ↦ x ^ n) {0}ᶜ := by
  convert! (X ^ n).isCoveringMapOn_eval.mono fun x' h ↦ _ with x
  · simp
  · assumption
  · simpa [derivative_X_pow, hn, show n ≠ 0 by aesop] using fun _ ↦ Ne.symm h

/-- `(· ^ n) : 𝕜 \ {0} → 𝕜 \ {0}` is a covering map (if `n ≠ 0` in `𝕜`). -/
theorem isCoveringMap_npow (n : ℕ) (hn : (n : 𝕜) ≠ 0) :
    IsCoveringMap fun x : {x : 𝕜 // x ≠ 0} ↦ (⟨x ^ n, pow_ne_zero n x.2⟩ : {x : 𝕜 // x ≠ 0}) := by
  convert!
    (isCoveringMapOn_npow n hn).isCoveringMap_restrictPreimage.comp_homeomorph
      (.setCongr (s := {x | x ≠ 0}) _) using 1
  ext; simp [show n ≠ 0 by aesop]

/-- `(· ^ n) : 𝕜 \ {0} → 𝕜 \ {0}` is a covering map (if `n ≠ 0` in `𝕜`). -/
theorem isCoveringMap_zpow (n : ℤ) (hn : (n : 𝕜) ≠ 0) :
    IsCoveringMap fun x : {x : 𝕜 // x ≠ 0} ↦ (⟨x ^ n, zpow_ne_zero n x.2⟩ : {x : 𝕜 // x ≠ 0}) := by
  obtain ⟨n, rfl | rfl⟩ := n.eq_nat_or_neg
  · convert! isCoveringMap_npow n _ <;> aesop
  · convert! (isCoveringMap_npow n _).comp_homeomorph (.inv₀ 𝕜)
    · simp [Homeomorph.inv₀]
    · simpa using hn

theorem isCoveringMapOn_zpow (n : ℤ) (hn : (n : 𝕜) ≠ 0) :
    IsCoveringMapOn (fun x : 𝕜 ↦ x ^ n) {0}ᶜ := by
  have (x : 𝕜) : x ^ n = 0 ↔ x = 0 := zpow_eq_zero_iff (by aesop)
  refine .of_isCoveringMap_restrictPreimage _ (by simp) ?_ ?_
  · convert isClosed_singleton (x := (0 : 𝕜)).isOpen_compl
    ext; simp [this]
  · convert! (isCoveringMap_zpow n hn).comp_homeomorph (.setCongr _) using 1
    ext; simpa using! (this _).not

attribute [-instance] Units.mulAction'

theorem isQuotientCoveringMap_npow (n : ℕ) (hn : (n : 𝕜) ≠ 0)
    (surj : (fun x : 𝕜 ↦ x ^ n).Surjective) :
    IsQuotientCoveringMap (fun x : 𝕜ˣ ↦ x ^ n) (powMonoidHom (α := 𝕜ˣ) n).ker := by
  rw [← rootsOfUnity_eq_ker]
  have : NeZero n := ⟨by aesop⟩
  have := ((isClosedMap_pow 𝕜 n).restrictPreimage {0}ᶜ).isQuotientMap
    (by fun_prop) (.restrictPreimage _ surj)
  have : IsQuotientMap fun x : 𝕜ˣ ↦ x ^ n := by
    let e := unitsHomeomorphNeZero (G₀ := 𝕜)
    convert! (e.symm.isQuotientMap.comp this).comp (e.trans (.ofEqSubtypes _)).isQuotientMap
    · exact (e.left_inv _).symm
    · ext; simp [NeZero.ne]
  refine this.isQuotientCoveringMap_of_subgroup _
    (Set.Finite.isDiscrete <| inferInstanceAs (Finite (rootsOfUnity ..))) ?_
  simp [mul_pow, mul_inv_eq_one, eq_comm]

protected theorem Complex.isQuotientCoveringMap_npow (n : ℕ) [NeZero n] :
    IsQuotientCoveringMap (fun z : ℂˣ ↦ z ^ n) (powMonoidHom (α := ℂˣ) n).ker :=
  isQuotientCoveringMap_npow n (by simp [NeZero.ne]) fun _ ↦ ⟨_, cpow_nat_inv_pow _ (NeZero.ne n)⟩

theorem isQuotientCoveringMap_zpow (n : ℤ) (hn : (n : 𝕜) ≠ 0)
    (surj : (fun x : 𝕜 ↦ x ^ n).Surjective) :
    IsQuotientCoveringMap (fun x : 𝕜ˣ ↦ x ^ n) (zpowGroupHom (α := 𝕜ˣ) n).ker := by
  obtain ⟨n, rfl | rfl⟩ := n.eq_nat_or_neg
  · exact isQuotientCoveringMap_npow n (by aesop) (by simpa using surj)
  rw [show (zpowGroupHom (α := 𝕜ˣ) (-n)).ker = (powMonoidHom n).ker by ext; simp]
  convert (isQuotientCoveringMap_npow n (by aesop) _).homeomorph_comp (.inv 𝕜ˣ)
  · ext; simp
  convert! inv_involutive.surjective.comp surj; simp

end
```
