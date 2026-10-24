# Complete source: GRWTSK.Analysis.SpecialFunctions.MassRpowCheck.Variant72bb42589668ad88d2bac86a1dbd9d0b5c8dc15c00919fd86bab0c491a8936a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41404f6b800a6dc1184dc6e7859c4829a0fc4a91` · SHA-256 `f6365cf354a0d74f35929027235454f6d9954acb1e8779e74ff46d02e6c5e4c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.Gamma.Varianta5ea942615dc2d9be1ae0701cb55cb939d50873aed681b114ef6b472e6a6f0ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5ea942615dc2d9be1ae0701cb55cb939d50873aed681b114ef6b472e6a6f0ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.Gamma.Varianta5ea942615dc2d9be1ae0701cb55cb939d50873aed681b114ef6b472e6a6f0ec","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"a5ea942615dc2d9be1ae0701cb55cb939d50873aed681b114ef6b472e6a6f0ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass26/primitive_envelope/MassRpowCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

namespace GRWTSK.Analysis.SpecialFunctions.Gamma.Varianta5ea942615dc2d9be1ae0701cb55cb939d50873aed681b114ef6b472e6a6f0ec

set_option autoImplicit false
open MeasureTheory Set
noncomputable section
example (n : ℕ) :
    (∫ y : ℝ in Ioi 0,y^n*Real.exp (-y/2))=(2:ℝ)^(n+1)*(n.factorial:ℝ) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a:=(n:ℝ)+1) (r:=(1/2:ℝ)) (by positivity) (by norm_num)
  simp only [add_sub_cancel_right] at h
  simp_rw [Real.rpow_natCast (n:=n)] at h
  trace_state
  done
```
