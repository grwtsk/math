# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeBounds.Variant65325adf5a1c00e7cf347b1cc08bbd44125b1b605af4c403876148393396df08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19c8f060a2aa8670cd3b744e0bbe4e029c700bd3` · SHA-256 `9a9bd193f7d7123659ce085ea8c8b0afaf36548630d557bb933c146ea0a0977c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Icc01.Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Icc01.Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52","mathematical_subject":"Foundations.Unclassified","original_sha256":"778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_edge_bounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Icc01.Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52

open LeanCert.Core

def Icc01 : Set ℝ := Set.Icc (0:ℝ) 1

theorem edge_bound_def_seticc : ∀ x ∈ Icc01, x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_neg_interval : ∀ x ∈ Set.Icc (-2:ℝ) 2, x * x ≤ (4 : ℚ) := by
  interval_bound

theorem edge_bound_abs_interval : ∀ x ∈ Set.Icc (-1:ℝ) 1, abs x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_sqrt_upper : ∀ x ∈ Set.Icc (0:ℝ) 4, Real.sqrt x ≤ (2 : ℚ) := by
  interval_bound

theorem edge_bound_rpow_half : ∀ x ∈ Set.Icc (0:ℝ) 4, x ^ ((1:ℝ) / 2) ≤ (2 : ℚ) := by
  interval_bound

theorem edge_bound_rpow_inv_two : ∀ x ∈ Set.Icc (0:ℝ) 4, x ^ ((2:ℝ)⁻¹) ≤ (2 : ℚ) := by
  interval_bound

theorem edge_bound_rpow_three_halves :
    ∀ x ∈ Set.Icc (0:ℝ) 1, x ^ ((3:ℝ) / 2) ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_rpow_one_point_five :
    ∀ x ∈ Set.Icc (0:ℝ) 1, x ^ (1.5:ℝ) ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_sinh_upper : ∀ x ∈ Set.Icc (0:ℝ) 2, Real.sinh x ≤ (4 : ℚ) := by
  interval_bound 15

theorem edge_bound_cosh_lower : ∀ x ∈ Set.Icc (-1:ℝ) 1, (1 : ℚ) ≤ Real.cosh x := by
  interval_bound

theorem edge_bound_tanh_upper : ∀ x ∈ Set.Icc (-2:ℝ) 2, Real.tanh x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_tanh_lower : ∀ x ∈ Set.Icc (-2:ℝ) 2, (-1 : ℚ) ≤ Real.tanh x := by
  interval_bound

theorem edge_bound_pi_shift : ∀ x ∈ Icc01, x + Real.pi ≤ (5 : ℚ) := by
  interval_bound

theorem edge_bound_strict : ∀ x ∈ Icc01, x * x < (2 : ℚ) := by
  interval_bound
```
