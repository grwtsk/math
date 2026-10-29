-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FancyAnd.Variant05b11b776ebb2900c1a1d19f8bac8720856d252a2e9c65dbeb575283327a6633","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05b11b776ebb2900c1a1d19f8bac8720856d252a2e9c65dbeb575283327a6633","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FancyAnd.Variant05b11b776ebb2900c1a1d19f8bac8720856d252a2e9c65dbeb575283327a6633","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"05b11b776ebb2900c1a1d19f8bac8720856d252a2e9c65dbeb575283327a6633","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Cases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FancyAnd.Variant05b11b776ebb2900c1a1d19f8bac8720856d252a2e9c65dbeb575283327a6633

set_option aesop.check.all true

@[aesop 50% cases]
inductive FancyAnd (α β : Prop) : Prop
  | dummy (p : Empty)
  | and (a : α) (b : β)

attribute [aesop safe -51 cases] Empty

example {α β} (h : FancyAnd α β) : α ∧ β := by
  aesop

@[aesop safe cases (cases_patterns := [All _ [], All _ (_ :: _)])]
inductive All (P : α → Prop) : List α → Prop
  | nil : All P []
  | cons : P x → All P xs → All P (x :: xs)

@[aesop 99% constructors]
structure MyTrue : Prop

-- Without the patterns on the `cases` rule for `All`, this test would loop
-- since the `constructors` rule would never be applied.
example {P : α → Prop} (h : All P (x :: xs)) : MyTrue := by
  aesop
