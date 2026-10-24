# Complete source: GRWTSK.Analysis.MeasureTheory.Borelize.Variantc579e0558c1efa8133b2b37eb20ef014e45f92917b39704c54474a2346b9a453

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2d7c2cd47398aa58aa30dedd11c83cea18e997b` · SHA-256 `2b2bad18f355648b6e4b8d8e8360478ab6432713732eb0e33c40e270f12727fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.BorelSpace.Variantfe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.BorelSpace.Variantfe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"fe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/borelize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic


namespace GRWTSK.Analysis.MeasureTheory.BorelSpace.Variantfe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f

set_option autoImplicit true

example [TopologicalSpace α] [inst : MeasurableSpace α] [BorelSpace α] :
    MeasurableSet (∅ : Set α) := by
  guard_target = @MeasurableSet α inst ∅
  borelize α
  guard_target = @MeasurableSet α (borel α) ∅
  apply MeasurableSet.empty

example [TopologicalSpace α] : True := by
  borelize α
  have h : MeasurableSet (∅ : Set α) := MeasurableSet.empty
  guard_hyp h : @MeasurableSet α (borel α) ∅
  trivial

example : True := by
  obtain ⟨α, ⟨hα⟩⟩ : ∃ α : Type, Nonempty (TopologicalSpace α) := ⟨ℕ, ⟨inferInstance⟩⟩
  borelize α
  have h : MeasurableSet (∅ : Set α) := MeasurableSet.empty
  guard_hyp h : @MeasurableSet α (borel α) ∅
  trivial

example : True := by
  set α := ℕ
  borelize α
  have h : MeasurableSet (∅ : Set α) := MeasurableSet.empty
  guard_hyp h : @MeasurableSet α (borel α) ∅
  trivial

example : True := by
  have h1 : MeasurableSet (∅ : Set ℕ) := MeasurableSet.empty
  guard_hyp h1 : @MeasurableSet ℕ Nat.instMeasurableSpace ∅
  borelize ℕ
  have h2 : MeasurableSet (∅ : Set ℕ) := MeasurableSet.empty
  guard_hyp h2 : @MeasurableSet ℕ (borel ℕ) ∅
  trivial
```
