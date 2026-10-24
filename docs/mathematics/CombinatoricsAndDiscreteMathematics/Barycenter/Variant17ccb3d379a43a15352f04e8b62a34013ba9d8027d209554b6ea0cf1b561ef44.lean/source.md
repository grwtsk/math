# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Barycenter.Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f0e4b31e805781bee1e5c74b84361acb1229646` · SHA-256 `a8aa01b1a73803cf5536996ac03c92aecb282d3d986f1f026305815de1b3cbed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SubBarycenter.Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SubBarycenter.Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Geometry/Convex/ConvexSpace/Barycenter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Geometry.Convex.ConvexSpace.Defs

/-!
# The barycenter of the standard simplex

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SubBarycenter.Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44

@[expose] public section

namespace Convexity.StdSimplex

variable {K M : Type*} [Field K] [CharZero K] [LinearOrder K] [IsStrictOrderedRing K]

/-- In the standard simplex with vertices `M`, this is the barycenter of
a nonempty finite subset `S` of `M`. -/
@[simps -isSimp]
noncomputable def subBarycenter (S : Finset M) (hS : S.Nonempty) : StdSimplex K M where
  weights := S.sum (fun m ↦ .single m S.card⁻¹)
  nonneg := Finset.sum_nonneg (by simp)
  total := by
    rw [← Finsupp.sum_finsetSum_index (by simp) (by simp)]
    simpa using IsUnit.mul_inv_cancel (Ne.isUnit (by simpa [← Finset.nonempty_iff_ne_empty]))

lemma subBarycenter_weights_apply_eq_zero
    (S : Finset M) (hS : S.Nonempty) (m : M) (hm : m ∉ S) :
    (subBarycenter (K := K) S hS).weights m = 0 := by
  simp only [weights_subBarycenter, Finsupp.coe_finsetSum, Finset.sum_apply]
  rw [Finset.sum_eq_zero]
  intro x hx
  rw [Finsupp.single_apply_eq_zero]
  rintro rfl
  exact (hm hx).elim

@[simp]
lemma subBarycenter_singleton (m : M) :
    subBarycenter (K := K) {m} (by simp) = .single m := by
  ext
  simp [weights_subBarycenter]

/-- The barycenter of the standard simplex. -/
noncomputable abbrev barycenter [Nonempty M] [Fintype M] : StdSimplex K M :=
  subBarycenter .univ (by simp)

lemma weights_barycenter_apply [Nonempty M] [Fintype M] (m : M) :
    (barycenter (K := K) (M := M)).weights m = (Fintype.card M : K)⁻¹ := by
  simp [barycenter, weights_subBarycenter]

lemma barycenter_of_unique [Unique M] :
    barycenter (K := K) (M := M) = .single default := by
  subsingleton

@[simp]
lemma barycenter_fin_one :
    barycenter (K := K) (M := Fin 1) = .single 0 :=
  barycenter_of_unique

end Convexity.StdSimplex
```
