-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingTheory.Variant76c268807fe1b494a1fa83d09bcb4a17df16fa3cc12b8f86128d3e202f5bf38d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76c268807fe1b494a1fa83d09bcb4a17df16fa3cc12b8f86128d3e202f5bf38d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Ring.Variant76c268807fe1b494a1fa83d09bcb4a17df16fa3cc12b8f86128d3e202f5bf38d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"76c268807fe1b494a1fa83d09bcb4a17df16fa3cc12b8f86128d3e202f5bf38d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/TwoSidedIdeal/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: euprunin
-/
import Mathlib.Algebra.Ring.Defs
import Mathlib.RingTheory.NonUnitalSubring.Defs
import Mathlib.RingTheory.TwoSidedIdeal.Basic

/-!
# Additional instances for two sided ideals.
-/

namespace GRWTSK.Algebra.RingTheory.Variant76c268807fe1b494a1fa83d09bcb4a17df16fa3cc12b8f86128d3e202f5bf38d

instance {R} [NonUnitalNonAssocRing R] : NonUnitalSubringClass (TwoSidedIdeal R) R where
  mul_mem _ hb := TwoSidedIdeal.mul_mem_left _ _ _ hb
