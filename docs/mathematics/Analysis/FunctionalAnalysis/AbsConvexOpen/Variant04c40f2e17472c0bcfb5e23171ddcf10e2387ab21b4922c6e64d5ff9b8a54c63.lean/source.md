# Complete source: GRWTSK.Analysis.FunctionalAnalysis.AbsConvexOpen.Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6786ed8b453cbfc68274ae7b8adf9d8f5eeeea9b` · SHA-256 `6205ac13564016146231b1e13da6289531491c6871a79345996a010ce2b2b1ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.AbsConvexOpenSets.Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ConvexAnalysis.SourceCorpus.AbsConvexOpenSets.Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797","mathematical_subject":"Analysis.ConvexAnalysis","original_sha256":"5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/LocallyConvex/AbsConvexOpen.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
module

public import Mathlib.Analysis.LocallyConvex.AbsConvex
public import Mathlib.Analysis.LocallyConvex.WithSeminorms
public import Mathlib.Analysis.Convex.Gauge

/-!
# Absolutely convex open sets

A set `s` in a commutative monoid `E` equipped with a topology is said to be an absolutely convex
open set if it is absolutely convex and open. When `E` is a topological additive group, the topology
coincides with the topology induced by the family of seminorms arising as gauges of absolutely
convex open neighborhoods of zero.

## Main definitions

* `AbsConvexOpenSets`: sets which are absolutely convex and open
* `gaugeSeminormFamily`: the seminorm family induced by all open absolutely convex neighborhoods
  of zero.

## Main statements

* `with_gaugeSeminormFamily`: the topology of a locally convex space is induced by the family
  `gaugeSeminormFamily`.
* `LocallyConvexSpace.toPolynormableSpace`: a locally convex space is polynormable

-/


namespace GRWTSK.Analysis.FunctionalAnalysis.AbsConvexOpenSets.Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797

@[expose] public section

open NormedField Set

open scoped Topology

variable {𝕜 E : Type*}

section AbsolutelyConvexSets

variable [TopologicalSpace E] [AddCommMonoid E] [SeminormedRing 𝕜]
variable [SMul 𝕜 E]
variable (𝕜 E) [PartialOrder 𝕜]

/-- The type of absolutely convex open sets. -/
def AbsConvexOpenSets :=
  { s : Set E // (0 : E) ∈ s ∧ IsOpen s ∧ AbsConvex 𝕜 s }

noncomputable instance AbsConvexOpenSets.instCoeOut : CoeOut (AbsConvexOpenSets 𝕜 E) (Set E) :=
  ⟨Subtype.val⟩

namespace AbsConvexOpenSets

variable {𝕜 E}

theorem coe_zero_mem (s : AbsConvexOpenSets 𝕜 E) : (0 : E) ∈ (s : Set E) :=
  s.2.1

theorem coe_isOpen (s : AbsConvexOpenSets 𝕜 E) : IsOpen (s : Set E) :=
  s.2.2.1

theorem coe_nhds (s : AbsConvexOpenSets 𝕜 E) : (s : Set E) ∈ 𝓝 (0 : E) :=
  s.coe_isOpen.mem_nhds s.coe_zero_mem

theorem coe_balanced (s : AbsConvexOpenSets 𝕜 E) : Balanced 𝕜 (s : Set E) :=
  s.2.2.2.1

theorem coe_convex (s : AbsConvexOpenSets 𝕜 E) : Convex 𝕜 (s : Set E) :=
  s.2.2.2.2

end AbsConvexOpenSets

instance AbsConvexOpenSets.instNonempty : Nonempty (AbsConvexOpenSets 𝕜 E) := by
  rw [← exists_true_iff_nonempty]
  dsimp only [AbsConvexOpenSets]
  rw [Subtype.exists]
  exact ⟨Set.univ, ⟨mem_univ 0, isOpen_univ, balanced_univ, convex_univ⟩, trivial⟩

end AbsolutelyConvexSets

variable [RCLike 𝕜]
variable [AddCommGroup E] [TopologicalSpace E]
variable [Module 𝕜 E] [Module ℝ E] [IsScalarTower ℝ 𝕜 E]
variable [ContinuousSMul ℝ E]
variable (𝕜 E)

open scoped ComplexOrder

/-- The family of seminorms defined by the gauges of absolute convex open sets. -/
noncomputable def gaugeSeminormFamily : SeminormFamily 𝕜 E (AbsConvexOpenSets 𝕜 E) := fun s =>
  gaugeSeminorm s.coe_balanced (s.coe_convex.lift ℝ) (absorbent_nhds_zero s.coe_nhds)

variable {𝕜 E}

theorem gaugeSeminormFamily_ball (s : AbsConvexOpenSets 𝕜 E) :
    (gaugeSeminormFamily 𝕜 E s).ball 0 1 = (s : Set E) := by
  dsimp only [gaugeSeminormFamily]
  rw [Seminorm.ball_zero_eq]
  simp_rw [gaugeSeminorm_toFun]
  exact setOfPred_gauge_lt_one_eq_self_of_isOpen (s.coe_convex.lift ℝ) s.coe_zero_mem s.coe_isOpen

variable [IsTopologicalAddGroup E] [ContinuousSMul 𝕜 E]
variable [LocallyConvexSpace 𝕜 E]

set_option backward.isDefEq.respectTransparency false in
/-- The topology of a locally convex space is induced by the gauge seminorm family. -/
theorem with_gaugeSeminormFamily : WithSeminorms (gaugeSeminormFamily 𝕜 E) := by
  refine SeminormFamily.withSeminorms_of_hasBasis _ ?_
  refine (nhds_hasBasis_absConvex_open 𝕜 E).to_hasBasis (fun s hs => ?_) fun s hs => ?_
  · refine ⟨s, ⟨?_, rfl.subset⟩⟩
    convert! (gaugeSeminormFamily _ _).basisSets_singleton_mem ⟨s, hs⟩ one_pos
    rw [gaugeSeminormFamily_ball, Subtype.coe_mk]
  refine ⟨s, ⟨?_, rfl.subset⟩⟩
  rw [SeminormFamily.basisSets_iff] at hs
  rcases hs with ⟨t, r, hr, rfl⟩
  rw [Seminorm.ball_finset_sup_eq_iInter _ _ _ hr]
  -- We have to show that the intersection contains zero, is open, balanced, and convex
  refine
    ⟨mem_iInter₂.mpr fun _ _ => by simp [hr],
      isOpen_biInter_finset fun S _ => ?_,
      balanced_iInter₂ fun _ _ => Seminorm.balanced_ball_zero _ _,
      convex_iInter₂ fun _ _ => (convex_of_nonneg_surjective_algebraMap _
        (fun _ => RCLike.nonneg_iff_exists_ofReal.mp) (Seminorm.convex_ball _ _ _) ..)⟩
  -- The only nontrivial part is to show that the ball is open
  have hr' : r = ‖(r : 𝕜)‖ * 1 := by simp [abs_of_pos hr]
  have hr'' : (r : 𝕜) ≠ 0 := by simp [hr.ne']
  rw [hr', ← Seminorm.smul_ball_zero hr'', gaugeSeminormFamily_ball]
  exact S.coe_isOpen.smul₀ hr''

/-- Any locally convex real or complex vector space is polynormable. -/
instance LocallyConvexSpace.toPolynormableSpace : PolynormableSpace 𝕜 E :=
  with_gaugeSeminormFamily.toPolynormableSpace
```
