# Complete source: GRWTSK.Topology.GeneralTopology.Topology.Variantb879889aaa72cd1516ee603d59a0b3bc91ca80d01b5002442616a8819baa68fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `336b1ec91c511b7b52421cfc31577d65152680c3` · SHA-256 `2942042908e3253fef9ab8d2b4d166bfbb1630e0404978d00f3c1d75006335ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.OpenEmbeddingCoe.Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.OpenEmbeddingCoe.Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764","mathematical_subject":"Topology.GeneralTopology","original_sha256":"5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Complex/UpperHalfPlane/Topology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov
-/
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Convex.Contractible
import Mathlib.Analysis.Convex.Normed
import Mathlib.Analysis.Convex.Complex
import Mathlib.Analysis.Complex.ReImTopology
import Mathlib.Topology.Homotopy.Contractible


namespace GRWTSK.Topology.GeneralTopology.OpenEmbeddingCoe.Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764

#align_import analysis.complex.upper_half_plane.topology from "leanprover-community/mathlib"@"57f9349f2fe19d2de7207e99b0341808d977cdcf"

/-!
# Topology on the upper half plane

In this file we introduce a `TopologicalSpace` structure on the upper half plane and provide
various instances.
-/


noncomputable section

open Set Filter Function TopologicalSpace Complex

open scoped Filter Topology UpperHalfPlane

namespace UpperHalfPlane

instance : TopologicalSpace ℍ :=
  instTopologicalSpaceSubtype

theorem openEmbedding_coe : OpenEmbedding ((↑) : ℍ → ℂ) :=
  IsOpen.openEmbedding_subtype_val <| isOpen_lt continuous_const Complex.continuous_im
#align upper_half_plane.open_embedding_coe UpperHalfPlane.openEmbedding_coe

theorem embedding_coe : Embedding ((↑) : ℍ → ℂ) :=
  embedding_subtype_val
#align upper_half_plane.embedding_coe UpperHalfPlane.embedding_coe

theorem continuous_coe : Continuous ((↑) : ℍ → ℂ) :=
  embedding_coe.continuous
#align upper_half_plane.continuous_coe UpperHalfPlane.continuous_coe

theorem continuous_re : Continuous re :=
  Complex.continuous_re.comp continuous_coe
#align upper_half_plane.continuous_re UpperHalfPlane.continuous_re

theorem continuous_im : Continuous im :=
  Complex.continuous_im.comp continuous_coe
#align upper_half_plane.continuous_im UpperHalfPlane.continuous_im

instance : TopologicalSpace.SecondCountableTopology ℍ :=
  TopologicalSpace.Subtype.secondCountableTopology _

instance : T3Space ℍ :=
  Subtype.t3Space

instance : NormalSpace ℍ :=
  normalSpaceOfT3SecondCountable ℍ

instance : ContractibleSpace ℍ :=
  (convex_halfspace_im_gt 0).contractibleSpace ⟨I, one_pos.trans_eq I_im.symm⟩

instance : LocPathConnectedSpace ℍ :=
  locPathConnected_of_isOpen <| isOpen_lt continuous_const Complex.continuous_im

instance : NoncompactSpace ℍ := by
  refine' ⟨fun h => _⟩
  have : IsCompact (Complex.im ⁻¹' Ioi 0) := isCompact_iff_isCompact_univ.2 h
  replace := this.isClosed.closure_eq
  rw [closure_preimage_im, closure_Ioi, Set.ext_iff] at this
  exact absurd ((this 0).1 (@left_mem_Ici ℝ _ 0)) (@lt_irrefl ℝ _ 0)

instance : LocallyCompactSpace ℍ :=
  openEmbedding_coe.locallyCompactSpace

end UpperHalfPlane
```
