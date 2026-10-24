# Complete source: GRWTSK.Topology.AlgebraicTopology.Op.Variant06d3deebd47b609ddc77e199084a9bfd2b114cf30c9da677eefefc80b8544a5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d56447644599c4552ff71aa92c50db498d69e67` · SHA-256 `562b0abd7cfe7c7fd3e27fc0d616afeae8231c58fa965981a8c4225a8a44a535`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.Op.Variant528228f15ca72e7a63160af6f3049e899e82205094bb67eda38f7c8184da1e8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"528228f15ca72e7a63160af6f3049e899e82205094bb67eda38f7c8184da1e8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.Op.Variant528228f15ca72e7a63160af6f3049e899e82205094bb67eda38f7c8184da1e8c","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"528228f15ca72e7a63160af6f3049e899e82205094bb67eda38f7c8184da1e8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/AnodyneExtensions/Op.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.SubcomplexOp
public import Mathlib.AlgebraicTopology.SimplicialSet.AnodyneExtensions.Pairing

/-!
# The opposite of a pairing

Let `A` be a subcomplex of a simplicial set `X`. If `P` is a pairing of `A`,
we construct a pairing `P.op` for the subcomplex `A.op` of `X.op`.

-/


namespace GRWTSK.Topology.AlgebraicTopology.Op.Variant528228f15ca72e7a63160af6f3049e899e82205094bb67eda38f7c8184da1e8c

@[expose] public section

universe u

namespace SSet.Subcomplex.Pairing

variable {X : SSet.{u}} {A : X.Subcomplex} (P : A.Pairing)

/-- If `P` is a pairing for a subcomplex `A` of a simplicial set `X`,
this is the corresponding pairing of `A.op`. -/
@[implicit_reducible, simps I II]
def op : A.op.Pairing where
  I := Subcomplex.N.opEquiv ⁻¹' P.I
  II := Subcomplex.N.opEquiv ⁻¹' P.II
  inter := by simp [← Set.preimage_inter, P.inter]
  union := by simp [← Set.preimage_union, P.union]
  p := (N.opEquiv.subtypeEquiv (by simp)).trans
    (P.p.trans (N.opEquiv.symm.subtypeEquiv (by simp)))

@[simp]
lemma op_p (x : P.II) :
    dsimp% P.op.p ⟨Subcomplex.N.opEquiv.symm x.1, x.2⟩ =
      ⟨Subcomplex.N.opEquiv.symm (P.p x), by simp⟩ := rfl

lemma op_ancestralRel_iff (x y : P.II) :
    P.op.AncestralRel ⟨Subcomplex.N.opEquiv.symm x.1, x.2⟩
      ⟨Subcomplex.N.opEquiv.symm y.1, y.2⟩ ↔ P.AncestralRel x y :=
  and_congr (not_congr (by simp [Subtype.ext_iff])) (by simp)

instance [P.IsProper] : P.op.IsProper where
  isUniquelyCodimOneFace x := (P.isUniquelyCodimOneFace ⟨_, x.2⟩).op

instance [P.IsRegular] : P.op.IsRegular where
  wf := by
    have hP := P.wf
    rw [wellFounded_iff_isEmpty_descending_chain] at hP ⊢
    by_contra!
    obtain ⟨f, hf⟩ := this
    refine hP.false ⟨fun n ↦ ⟨_, (f n).2⟩, fun n ↦ ?_⟩
    simpa [← P.op_ancestralRel_iff] using hf n

end SSet.Subcomplex.Pairing
```
