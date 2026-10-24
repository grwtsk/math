# Complete source: GRWTSK.Analysis.MeasureTheory.MeasurableEquiv.Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc4c024b5ca1c53ee0bd86c5a36b77eedf6f07dd` · SHA-256 `92e2d53048bc5bf5cb6e26cece3329587b49a1352fbaf4bcb722329090d700bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"a5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Group/MeasurableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.MeasureTheory.Group.Arithmetic

/-!
# (Scalar) multiplication and (vector) addition as measurable equivalences

In this file we define the following measurable equivalences:

* `MeasurableEquiv.smul`: if a group `G` acts on `α` by measurable maps, then each element `c : G`
  defines a measurable automorphism of `α`;
* `MeasurableEquiv.vadd`: additive version of `MeasurableEquiv.smul`;
* `MeasurableEquiv.smul₀`: if a group with zero `G` acts on `α` by measurable maps, then each
  nonzero element `c : G` defines a measurable automorphism of `α`;
* `MeasurableEquiv.mulLeft`: if `G` is a group with measurable multiplication, then left
  multiplication by `g : G` is a measurable automorphism of `G`;
* `MeasurableEquiv.addLeft`: additive version of `MeasurableEquiv.mulLeft`;
* `MeasurableEquiv.mulRight`: if `G` is a group with measurable multiplication, then right
  multiplication by `g : G` is a measurable automorphism of `G`;
* `MeasurableEquiv.addRight`: additive version of `MeasurableEquiv.mulRight`;
* `MeasurableEquiv.mulLeft₀`, `MeasurableEquiv.mulRight₀`: versions of
  `MeasurableEquiv.mulLeft` and `MeasurableEquiv.mulRight` for groups with zero;
* `MeasurableEquiv.inv`: `Inv.inv` as a measurable automorphism
  of a group (or a group with zero);
* `MeasurableEquiv.neg`: negation as a measurable automorphism of an additive group.

We also deduce that the corresponding maps are measurable embeddings.

## Tags

measurable, equivalence, group action
-/


namespace GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97

open scoped Pointwise NNReal

namespace MeasurableEquiv

variable {G G₀ α : Type*} [MeasurableSpace α] [Group G] [GroupWithZero G₀] [MulAction G α]
  [MulAction G₀ α] [MeasurableConstSMul G α] [MeasurableConstSMul G₀ α]

/-- If a group `G` acts on `α` by measurable maps, then each element `c : G` defines a measurable
automorphism of `α`. -/
@[to_additive (attr := simps! -fullyApplied toEquiv apply)
      "If an additive group `G` acts on `α` by measurable maps, then each element `c : G`
      defines a measurable automorphism of `α`."]
def smul (c : G) : α ≃ᵐ α where
  toEquiv := MulAction.toPerm c
  measurable_toFun := measurable_const_smul c
  measurable_invFun := measurable_const_smul c⁻¹

@[to_additive]
theorem _root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_const_smul (c : G) : MeasurableEmbedding (c • · : α → α) :=
  (smul c).measurableEmbedding

@[to_additive (attr := simp)]
theorem symm_smul (c : G) : (smul c : α ≃ᵐ α).symm = smul c⁻¹ :=
  ext rfl

/-- If a group with zero `G₀` acts on `α` by measurable maps, then each nonzero element `c : G₀`
defines a measurable automorphism of `α` -/
def smul₀ (c : G₀) (hc : c ≠ 0) : α ≃ᵐ α :=
  MeasurableEquiv.smul (Units.mk0 c hc)

@[simp] lemma coe_smul₀ {c : G₀} (hc : c ≠ 0) : ⇑(smul₀ c hc : α ≃ᵐ α) = (c • ·) := rfl

@[simp]
theorem symm_smul₀ {c : G₀} (hc : c ≠ 0) :
    (smul₀ c hc : α ≃ᵐ α).symm = smul₀ c⁻¹ (inv_ne_zero hc) :=
  ext rfl

theorem _root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_const_smul₀ {c : G₀} (hc : c ≠ 0) :
    MeasurableEmbedding (c • · : α → α) :=
  (smul₀ c hc).measurableEmbedding

variable [MeasurableSpace G] [MeasurableSpace G₀]

section Mul

variable [MeasurableMul G] [MeasurableMul G₀]

/-- If `G` is a group with measurable multiplication, then left multiplication by `g : G` is a
measurable automorphism of `G`. -/
@[to_additive
      "If `G` is an additive group with measurable addition, then addition of `g : G`
      on the left is a measurable automorphism of `G`."]
def mulLeft (g : G) : G ≃ᵐ G :=
  smul g

@[to_additive (attr := simp)]
theorem coe_mulLeft (g : G) : ⇑(mulLeft g) = (g * ·) :=
  rfl

@[to_additive (attr := simp)]
theorem symm_mulLeft (g : G) : (mulLeft g).symm = mulLeft g⁻¹ :=
  ext rfl

@[to_additive (attr := simp)]
theorem toEquiv_mulLeft (g : G) : (mulLeft g).toEquiv = Equiv.mulLeft g :=
  rfl

@[to_additive]
theorem _root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_mulLeft (g : G) : MeasurableEmbedding (g * ·) :=
  (mulLeft g).measurableEmbedding

/-- If `G` is a group with measurable multiplication, then right multiplication by `g : G` is a
measurable automorphism of `G`. -/
@[to_additive
      "If `G` is an additive group with measurable addition, then addition of `g : G`
      on the right is a measurable automorphism of `G`."]
def mulRight (g : G) : G ≃ᵐ G where
  toEquiv := Equiv.mulRight g
  measurable_toFun := measurable_mul_const g
  measurable_invFun := measurable_mul_const g⁻¹

@[to_additive]
theorem _root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_mulRight (g : G) : MeasurableEmbedding fun x => x * g :=
  (mulRight g).measurableEmbedding

@[to_additive (attr := simp)]
theorem coe_mulRight (g : G) : ⇑(mulRight g) = fun x => x * g :=
  rfl

@[to_additive (attr := simp)]
theorem symm_mulRight (g : G) : (mulRight g).symm = mulRight g⁻¹ :=
  ext rfl

@[to_additive (attr := simp)]
theorem toEquiv_mulRight (g : G) : (mulRight g).toEquiv = Equiv.mulRight g :=
  rfl

/-- If `G₀` is a group with zero with measurable multiplication, then left multiplication by a
nonzero element `g : G₀` is a measurable automorphism of `G₀`. -/
def mulLeft₀ (g : G₀) (hg : g ≠ 0) : G₀ ≃ᵐ G₀ :=
  smul₀ g hg

theorem _root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_mulLeft₀ {g : G₀} (hg : g ≠ 0) :
    MeasurableEmbedding (g * ·) :=
  (mulLeft₀ g hg).measurableEmbedding

@[simp] lemma coe_mulLeft₀ {g : G₀} (hg : g ≠ 0) : ⇑(mulLeft₀ g hg) = (g * ·) := rfl

@[simp]
theorem symm_mulLeft₀ {g : G₀} (hg : g ≠ 0) :
    (mulLeft₀ g hg).symm = mulLeft₀ g⁻¹ (inv_ne_zero hg) :=
  ext rfl

@[simp]
theorem toEquiv_mulLeft₀ {g : G₀} (hg : g ≠ 0) : (mulLeft₀ g hg).toEquiv = Equiv.mulLeft₀ g hg :=
  rfl

/-- If `G₀` is a group with zero with measurable multiplication, then right multiplication by a
nonzero element `g : G₀` is a measurable automorphism of `G₀`. -/
def mulRight₀ (g : G₀) (hg : g ≠ 0) : G₀ ≃ᵐ G₀ where
  toEquiv := Equiv.mulRight₀ g hg
  measurable_toFun := measurable_mul_const g
  measurable_invFun := measurable_mul_const g⁻¹

theorem _root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_mulRight₀ {g : G₀} (hg : g ≠ 0) :
    MeasurableEmbedding fun x => x * g :=
  (mulRight₀ g hg).measurableEmbedding

@[simp]
theorem coe_mulRight₀ {g : G₀} (hg : g ≠ 0) : ⇑(mulRight₀ g hg) = fun x => x * g :=
  rfl

@[simp]
theorem symm_mulRight₀ {g : G₀} (hg : g ≠ 0) :
    (mulRight₀ g hg).symm = mulRight₀ g⁻¹ (inv_ne_zero hg) :=
  ext rfl

@[simp]
theorem toEquiv_mulRight₀ {g : G₀} (hg : g ≠ 0) : (mulRight₀ g hg).toEquiv = Equiv.mulRight₀ g hg :=
  rfl

end Mul

/-- Inversion as a measurable automorphism of a group or group with zero. -/
@[to_additive (attr := simps! -fullyApplied toEquiv apply)
    "Negation as a measurable automorphism of an additive group."]
def inv (G) [MeasurableSpace G] [InvolutiveInv G] [MeasurableInv G] : G ≃ᵐ G where
  toEquiv := Equiv.inv G
  measurable_toFun := measurable_inv
  measurable_invFun := measurable_inv

@[to_additive (attr := simp)]
theorem symm_inv {G} [MeasurableSpace G] [InvolutiveInv G] [MeasurableInv G] :
    (inv G).symm = inv G :=
  rfl

/-- `equiv.divRight` as a `MeasurableEquiv`. -/
@[to_additive "`equiv.subRight` as a `MeasurableEquiv`"]
def divRight [MeasurableMul G] (g : G) : G ≃ᵐ G where
  toEquiv := Equiv.divRight g
  measurable_toFun := measurable_div_const' g
  measurable_invFun := measurable_mul_const g

@[to_additive]
lemma _root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_divRight [MeasurableMul G] (g : G) :
    MeasurableEmbedding fun x ↦ x / g :=
  (divRight g).measurableEmbedding

/-- `equiv.divLeft` as a `MeasurableEquiv` -/
@[to_additive "`equiv.subLeft` as a `MeasurableEquiv`"]
def divLeft [MeasurableMul G] [MeasurableInv G] (g : G) : G ≃ᵐ G where
  toEquiv := Equiv.divLeft g
  measurable_toFun := measurable_id.const_div g
  measurable_invFun := measurable_inv.mul_const g

@[to_additive]
lemma _root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_divLeft [MeasurableMul G] [MeasurableInv G] (g : G) :
    MeasurableEmbedding fun x ↦ g / x :=
  (divLeft g).measurableEmbedding

end MeasurableEquiv

namespace MeasureTheory.Measure
variable {G A : Type*} [Group G] [AddCommGroup A] [DistribMulAction G A] [MeasurableSpace A]
  [MeasurableConstSMul G A] {μ ν : Measure A} {g : G}

noncomputable instance : DistribMulAction Gᵈᵐᵃ (Measure A) where
  smul g μ := μ.map (DomMulAct.mk.symm g⁻¹ • ·)
  one_smul μ := show μ.map _ = _ by simp
  mul_smul g g' μ := show μ.map _ = ((μ.map _).map _) by
    rw [map_map]
    · simp [Function.comp_def, mul_smul]
    · exact measurable_const_smul ..
    · exact measurable_const_smul ..
  smul_zero g := show (0 : Measure A).map _ = 0 by simp
  smul_add g μ ν := show (μ + ν).map _ = μ.map _ + ν.map _ by
    rw [Measure.map_add]; exact measurable_const_smul ..

lemma dmaSMul_apply (μ : Measure A) (g : Gᵈᵐᵃ) (s : Set A) :
    (g • μ) s = μ (DomMulAct.mk.symm g • s) := by
  refine ((MeasurableEquiv.smul ((DomMulAct.mk.symm g : G)⁻¹)).map_apply _).trans ?_
  congr 1
  exact Set.preimage_smul_inv (DomMulAct.mk.symm g) s

instance : SMulCommClass ℝ≥0 Gᵈᵐᵃ (Measure A) where
  smul_comm r g μ := show r • μ.map _ = (r • μ).map _ by simp

instance : SMulCommClass Gᵈᵐᵃ ℝ≥0 (Measure A) := .symm ..

end MeasureTheory.Measure
```
