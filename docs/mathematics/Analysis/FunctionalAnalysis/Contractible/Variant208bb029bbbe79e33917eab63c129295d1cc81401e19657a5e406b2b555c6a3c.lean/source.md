# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Contractible.Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7db14106f435336a4bba22bec4e6fa9428af1acf` · SHA-256 `87afbb72b97c1d1fd5a576eb523b57ac2fb89f1754dde056fe854e2560d370ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.StarConvexContractibleSpace.Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ConvexAnalysis.SourceCorpus.StarConvexContractibleSpace.Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c","mathematical_subject":"Analysis.ConvexAnalysis","original_sha256":"5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Convex/Contractible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Convex.Star
import Mathlib.Topology.Homotopy.Contractible

/-!
# A convex set is contractible

In this file we prove that a (star) convex set in a real topological vector space is a contractible
topological space.
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.StarConvexContractibleSpace.Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c

variable {E : Type*} [AddCommGroup E] [Module ℝ E] [TopologicalSpace E] [ContinuousAdd E]
  [ContinuousSMul ℝ E] {s : Set E} {x : E}

/-- A non-empty star convex set is a contractible space. -/
protected theorem StarConvex.contractibleSpace (h : StarConvex ℝ x s) (hne : s.Nonempty) :
    ContractibleSpace s := by
  refine
    (contractible_iff_id_nullhomotopic s).2
      ⟨⟨x, h.mem hne⟩,
        ⟨⟨⟨fun p => ⟨p.1.1 • x + (1 - p.1.1) • (p.2 : E), ?_⟩, ?_⟩, fun x => ?_, fun x => ?_⟩⟩⟩
  · exact h p.2.2 p.1.2.1 (sub_nonneg.2 p.1.2.2) (add_sub_cancel _ _)
  · exact
      ((continuous_subtype_val.fst'.smul continuous_const).add
            ((continuous_const.sub continuous_subtype_val.fst').smul
              continuous_subtype_val.snd')).subtype_mk
        _
  · ext1
    simp
  · ext1
    simp

/-- A non-empty convex set is a contractible space. -/
protected theorem Convex.contractibleSpace (hs : Convex ℝ s) (hne : s.Nonempty) :
    ContractibleSpace s :=
  let ⟨_, hx⟩ := hne
  (hs.starConvex hx).contractibleSpace hne

instance (priority := 100) RealTopologicalVectorSpace.contractibleSpace : ContractibleSpace E :=
  (Homeomorph.Set.univ E).contractibleSpace_iff.mp <|
    convex_univ.contractibleSpace Set.univ_nonempty
```
