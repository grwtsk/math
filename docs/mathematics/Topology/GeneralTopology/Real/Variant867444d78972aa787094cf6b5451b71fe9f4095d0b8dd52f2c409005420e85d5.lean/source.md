# Complete source: GRWTSK.Topology.GeneralTopology.Real.Variant867444d78972aa787094cf6b5451b71fe9f4095d0b8dd52f2c409005420e85d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `efa5f458bddc4b5000927bfd1e124273ccf3c89a` · SHA-256 `69d3b98c5f83b74c0fbfb1808aa1c6aaae2fb71391c47aa6000c7f9a73859b35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UnitAddCircle.Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.UnitAddCircle.Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Instances/AddCircle/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
module

public import Mathlib.Topology.Connected.PathConnected
public import Mathlib.Topology.Instances.AddCircle.Defs
public import Mathlib.Topology.Instances.ZMultiples

/-!
# The additive circle over `ℝ`

Results specific to the additive circle over `ℝ`.
-/


namespace GRWTSK.Topology.GeneralTopology.UnitAddCircle.Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625

@[expose] public section


noncomputable section

open AddCommGroup Set Function AddSubgroup

namespace AddCircle

variable (p : ℝ)

instance pathConnectedSpace : PathConnectedSpace <| AddCircle p :=
  inferInstanceAs <| PathConnectedSpace (Quotient _)

/-- The "additive circle" `ℝ ⧸ ℤ ∙ p` is compact. -/
instance compactSpace [Fact (0 < p)] : CompactSpace <| AddCircle p := by
  rw [← isCompact_univ_iff, ← coe_image_Icc_eq p 0]
  exact isCompact_Icc.image (AddCircle.continuous_mk' p)

/-- The action on `ℝ` by right multiplication of its the subgroup `zmultiples p` (the multiples of
`p:ℝ`) is properly discontinuous. -/
instance : ProperlyDiscontinuousVAdd (zmultiples p).op ℝ :=
  (zmultiples p).properlyDiscontinuousVAdd_opposite_of_tendsto_cofinite
    (AddSubgroup.tendsto_zmultiples_subtype_cofinite p)

end AddCircle

section UnitAddCircle

/-- The unit circle `ℝ ⧸ ℤ`. -/
abbrev UnitAddCircle :=
  AddCircle (1 : ℝ)

/-- The product indexed by `d` of copies of the unit circle. -/
abbrev UnitAddTorus (d : Type*) := d → UnitAddCircle

end UnitAddCircle

namespace ZMod

variable {N : ℕ} [NeZero N]

/-- The `AddMonoidHom` from `ZMod N` to `ℝ / ℤ` sending `j mod N` to `j / N mod 1`. -/
noncomputable def toAddCircle : ZMod N →+ UnitAddCircle :=
  lift N ⟨AddMonoidHom.mk' (fun j ↦ ↑(j / N : ℝ)) (by simp [add_div]),
    by simp [div_self (NeZero.ne _)]⟩

lemma toAddCircle_intCast (j : ℤ) :
    toAddCircle (j : ZMod N) = ↑(j / N : ℝ) := by
  simp [toAddCircle]

lemma toAddCircle_natCast (j : ℕ) :
    toAddCircle (j : ZMod N) = ↑(j / N : ℝ) := by
  simpa using toAddCircle_intCast (N := N) j

/--
Explicit formula for `toCircle j`. Note that this is "evil" because it uses `ZMod.val`. Where
possible, it is recommended to lift `j` to `ℤ` and use `toAddCircle_intCast` instead.
-/
lemma toAddCircle_apply (j : ZMod N) :
    toAddCircle j = ↑(j.val / N : ℝ) := by
  rw [← toAddCircle_natCast, natCast_zmod_val]

variable (N) in
lemma toAddCircle_injective : Function.Injective (toAddCircle : ZMod N → _) := by
  intro x y hxy
  have : (0 : ℝ) < N := Nat.cast_pos.mpr (NeZero.pos _)
  rwa [toAddCircle_apply, toAddCircle_apply, AddCircle.coe_eq_coe_iff_of_mem_Ico,
    div_left_inj' this.ne', Nat.cast_inj, (val_injective N).eq_iff] at hxy <;>
  exact ⟨by positivity, by simpa only [zero_add, div_lt_one this, Nat.cast_lt] using val_lt _⟩

@[simp] lemma toAddCircle_inj {j k : ZMod N} : toAddCircle j = toAddCircle k ↔ j = k :=
  (toAddCircle_injective N).eq_iff

@[simp] lemma toAddCircle_eq_zero {j : ZMod N} : toAddCircle j = 0 ↔ j = 0 :=
  map_eq_zero_iff _ (toAddCircle_injective N)

end ZMod
```
