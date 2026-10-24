-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Ring.Variant760c98ae775e7278b4933573e804fea0e1526624bbbdf4ed3c4c99653b63c78d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"760c98ae775e7278b4933573e804fea0e1526624bbbdf4ed3c4c99653b63c78d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Ring.Variant760c98ae775e7278b4933573e804fea0e1526624bbbdf4ed3c4c99653b63c78d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"760c98ae775e7278b4933573e804fea0e1526624bbbdf4ed3c4c99653b63c78d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Jesse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jesse Vogel, Jannis Limperg
-/

import Aesop


namespace GRWTSK.Algebra.Ring.Variant760c98ae775e7278b4933573e804fea0e1526624bbbdf4ed3c4c99653b63c78d

set_option aesop.check.all true

axiom Ring : Type
axiom Morphism (R S : Ring) : Type

@[aesop 99%]
axiom ZZ : Ring

@[aesop 99%]
axiom f : Morphism ZZ ZZ

noncomputable example : Σ (R : Ring), Morphism R R := by
  aesop

axiom domain (R : Ring) : Prop

@[aesop 99%]
axiom ZZ_domain : domain ZZ

noncomputable example : ∃ (R : Ring), domain R := by
  aesop
