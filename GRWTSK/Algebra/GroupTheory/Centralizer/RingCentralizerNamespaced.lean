-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.AddMemCentralizer.Variant4db7a2cb71d9a5e0b7b4b3e081e37db028ba0825a5721400ede81805fdeacb73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4db7a2cb71d9a5e0b7b4b3e081e37db028ba0825a5721400ede81805fdeacb73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.AddMemCentralizer.Variant4db7a2cb71d9a5e0b7b4b3e081e37db028ba0825a5721400ede81805fdeacb73","mathematical_subject":"Algebra.Groups","original_sha256":"4db7a2cb71d9a5e0b7b4b3e081e37db028ba0825a5721400ede81805fdeacb73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Centralizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning, Jireh Loreaux
-/
import Mathlib.Algebra.Group.Center
import Mathlib.Algebra.Ring.Defs

/-!
# Centralizers of rings
-/


namespace GRWTSK.Algebra.GroupTheory.AddMemCentralizer.Variant4db7a2cb71d9a5e0b7b4b3e081e37db028ba0825a5721400ede81805fdeacb73

assert_not_exists RelIso

variable {M : Type*} {S : Set M}

namespace Set

variable {a b}

@[simp]
theorem add_mem_centralizer [Distrib M] (ha : a ∈ centralizer S) (hb : b ∈ centralizer S) :
    a + b ∈ centralizer S := fun c hc => by rw [add_mul, mul_add, ha c hc, hb c hc]

@[simp]
theorem neg_mem_centralizer [Mul M] [HasDistribNeg M] (ha : a ∈ centralizer S) :
    -a ∈ centralizer S := fun c hc => by rw [mul_neg, ha c hc, neg_mul]

end Set
