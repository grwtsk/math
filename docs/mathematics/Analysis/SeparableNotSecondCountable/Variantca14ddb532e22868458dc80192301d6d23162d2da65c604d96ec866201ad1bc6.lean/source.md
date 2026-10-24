# Complete source: GRWTSK.Analysis.SeparableNotSecondCountable.Variantca14ddb532e22868458dc80192301d6d23162d2da65c604d96ec866201ad1bc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dae37ff8e037d51432129b92865ea0cdb17794b1` · SHA-256 `997245409fd612e4b02acdf638b6da0dfdaf7b60770d390f6e319f441aef40fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.NotSecondCountableTopology.Variant20cc88738049d121569820877efd9788f94f85937f7dbce695bde24b80f948b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20cc88738049d121569820877efd9788f94f85937f7dbce695bde24b80f948b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.GeneralAnalysis.SourceCorpus.NotSecondCountableTopology.Variant20cc88738049d121569820877efd9788f94f85937f7dbce695bde24b80f948b6","mathematical_subject":"Analysis.GeneralAnalysis","original_sha256":"20cc88738049d121569820877efd9788f94f85937f7dbce695bde24b80f948b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Counterexamples/SeparableNotSecondCountable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov
-/
module

public import Mathlib.Analysis.Real.Cardinality

/-!
# Example of a linear order which is a separable space but is not a second countable topology

In this file we provide an example of a linear order
such that the order topology is a separable space but is not a second countable topology.

The example is `ℝ ×ₗ Bool` which is the real line with each point duplicated
so that the duplicate is greater than the original point
and points with different real values are compared by these values.
-/


namespace GRWTSK.Analysis.NotSecondCountableTopology.Variant20cc88738049d121569820877efd9788f94f85937f7dbce695bde24b80f948b6

public section

open Set TopologicalSpace

namespace RealProdLexBool

instance instTopologicalSpace : TopologicalSpace (ℝ ×ₗ Bool) := Preorder.topology _
instance instOrderTopology : OrderTopology (ℝ ×ₗ Bool) := ⟨rfl⟩
noncomputable instance instLinearOrder : LinearOrder (ℝ ×ₗ Bool) := inferInstance

instance instSeparableSpace : SeparableSpace (ℝ ×ₗ Bool) := by
  refine ⟨⟨range fun q : ℚ ↦ toLex (q, false), countable_range _, ?_⟩⟩
  simp only [dense_iff_inter_open, Set.Nonempty, toLex.surjective.exists]
  rintro U hUo ⟨⟨x, _ | _⟩, hx⟩
  · rcases exists_Ioc_subset_of_mem_nhds (hUo.mem_nhds hx) (exists_lt _) with ⟨y, hyx, hyU⟩
    rcases toLex.surjective y with ⟨y, rfl⟩
    have : y.1 < x := by simpa [Prod.Lex.toLex_lt_toLex, y.2.false_le.not_gt] using hyx
    rcases exists_rat_btwn this with ⟨q, hyq, hqx⟩
    refine ⟨(q, false), hyU ?_, mem_range_self _⟩
    simp [Prod.Lex.toLex_le_toLex, Prod.Lex.toLex_lt_toLex, hyq, hqx]
  · rcases exists_Ico_subset_of_mem_nhds (hUo.mem_nhds hx) (exists_gt _) with ⟨y, hyx, hyU⟩
    rcases toLex.surjective y with ⟨y, rfl⟩
    have : x < y.1 := by simpa [Prod.Lex.toLex_lt_toLex, y.2.le_true.not_gt] using hyx
    rcases exists_rat_btwn this with ⟨q, hyq, hqx⟩
    refine ⟨(q, false), hyU ?_, mem_range_self _⟩
    simp [Prod.Lex.toLex_le_toLex, Prod.Lex.toLex_lt_toLex, hyq, hqx]

theorem not_secondCountableTopology : ¬SecondCountableTopology (ℝ ×ₗ Bool) := by
  intro h
  have : {x : ℝ ×ₗ Bool | (ofLex x).2}.Countable := by
    simpa [Prod.Lex.covBy_iff, not_covBy_of_denselyOrdered, (Bool.le_true _).not_gt,
      (Bool.false_le _).lt_iff_ne] using countable_setOfPred_covBy_left (α := ℝ ×ₗ Bool)
  refine not_countable_univ <| (this.image fun x ↦ (ofLex x).1).mono fun x _ ↦ ?_
  exact ⟨toLex (x, true), rfl, rfl⟩

end RealProdLexBool
```
