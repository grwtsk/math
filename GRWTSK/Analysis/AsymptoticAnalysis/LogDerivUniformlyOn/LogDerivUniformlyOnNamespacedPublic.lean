-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.LogDerivTprodEqTsum.Variant1126575b8598ea2ab269c15af814834b6eecd30736d09bf02b313ec22e62e28b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1126575b8598ea2ab269c15af814834b6eecd30736d09bf02b313ec22e62e28b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.LogDerivTprodEqTsum.Variant1126575b8598ea2ab269c15af814834b6eecd30736d09bf02b313ec22e62e28b","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"1126575b8598ea2ab269c15af814834b6eecd30736d09bf02b313ec22e62e28b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Calculus/LogDerivUniformlyOn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
module

public import Mathlib.Analysis.Complex.LocallyUniformLimit
public import Mathlib.Topology.Algebra.InfiniteSum.UniformOn

/-!
# The Logarithmic derivative of an infinite product

We show that if we have an infinite product of functions `f` that is locally uniformly convergent,
then the logarithmic derivative of the product is the sum of the logarithmic derivatives of the
individual functions.

-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.LogDerivTprodEqTsum.Variant1126575b8598ea2ab269c15af814834b6eecd30736d09bf02b313ec22e62e28b

public section

open Complex

theorem logDeriv_tprod_eq_tsum {ι : Type*} {s : Set ℂ} (hs : IsOpen s) {x : ℂ} (hx : x ∈ s)
    {f : ι → ℂ → ℂ} (hf : ∀ i, f i x ≠ 0) (hd : ∀ i, DifferentiableOn ℂ (f i) s)
    (hm : Summable fun i ↦ logDeriv (f i) x) (htend : MultipliableLocallyUniformlyOn f s)
    (hnez : ∏' i, f i x ≠ 0) :
    logDeriv (∏' i, f i ·) x = ∑' i, logDeriv (f i) x := by
  rw [Eq.comm, ← hm.hasSum_iff]
  refine logDeriv_tendsto hs hx htend.hasProdLocallyUniformlyOn (.of_forall <| by fun_prop) hnez
    |>.congr fun b ↦ ?_
  rw [logDeriv_fun_prod (fun i _ ↦ hf i) (fun i _ ↦ (hd i x hx).differentiableAt (hs.mem_nhds hx))]
