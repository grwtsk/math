# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticMultiplicity.Variant3180e85b484db5fde55b39085318662d55836f69047117a72f7f84343756aa6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ba0e905bcc52ab90d772a214783ffbac2950889` · SHA-256 `0a873f10afe104d3d5784008734296c69c907784242d8b5812affa12f055292e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticMultiplicity.Variantc82f7007bb1dc65e8e44b7a8177f3003541f19c4f87c51516b598d5a07839a77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c82f7007bb1dc65e8e44b7a8177f3003541f19c4f87c51516b598d5a07839a77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.AnalyticMultiplicity.Variantc82f7007bb1dc65e8e44b7a8177f3003541f19c4f87c51516b598d5a07839a77","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"c82f7007bb1dc65e8e44b7a8177f3003541f19c4f87c51516b598d5a07839a77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass22/multiplicity_guard/source/pr268/tests/analytic_multiplicity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.AnalyticMultiplicity


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticMultiplicity.Variantc82f7007bb1dc65e8e44b7a8177f3003541f19c4f87c51516b598d5a07839a77

open FormalResearch.MathematicalTooling.AnalyticMultiplicity

/-- A genuine nonvanishing normalization transports a simple coordinate zero. -/
example : analyticOrderAt (fun z : ℂ ↦ 3 * (z - 2)) 2 = 1 := by
  have h := order_mul_nonvanishing (f := fun z : ℂ ↦ z - 2)
    (c := fun _ : ℂ ↦ 3) (z := 2) (by fun_prop) (by fun_prop) (by norm_num)
  simpa using h

/-- Both roots of a descended simple zero have order one, each counted once. -/
example :
    analyticOrderAt (fun z : ℂ ↦ z ^ 2 - 1) 1 = 1 ∧
      analyticOrderAt (fun z : ℂ ↦ z ^ 2 - 1) (-1) = 1 := by
  constructor
  · simpa using order_comp_square (f := fun z : ℂ ↦ z - 1)
      (u := 1) (by norm_num)
  · simpa using order_comp_square (f := fun z : ℂ ↦ z - 1)
      (u := -1) (by norm_num)

/-- A vanishing normalization may change multiplicity despite equal zero sets. -/
example :
    (∀ z : ℂ, z = 0 ↔ z ^ 2 = 0) ∧
      analyticOrderAt (fun z : ℂ ↦ z) 0 ≠
        analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 := by
  obtain ⟨hsupport, hsimple, hdouble⟩ := same_zero_support_different_order
  refine ⟨hsupport, ?_⟩
  rw [hsimple, hdouble]
  norm_num

/-- The branch point is ramified, so its order is doubled rather than preserved. -/
example : analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 = 2 := by
  have hid : analyticOrderAt (fun z : ℂ ↦ z) 0 = 1 := analyticOrderAt_id
  simpa only [hid, one_mul] using order_comp_square_zero (f := fun z : ℂ ↦ z) analyticAt_id

#print order_mul_nonvanishing
#print order_eq_of_local_normalization
#print order_eq_of_local_coordinate
#print simple_iff_of_local_coordinate
#print order_comp_square
#print order_comp_square_neg
#print order_comp_square_zero
#print same_zero_support_different_order
#print axioms order_mul_nonvanishing
#print axioms order_eq_of_local_normalization
#print axioms order_eq_of_local_coordinate
#print axioms simple_iff_of_local_coordinate
#print axioms order_comp_square
#print axioms order_comp_square_neg
#print axioms order_comp_square_zero
#print axioms same_zero_support_different_order
```
