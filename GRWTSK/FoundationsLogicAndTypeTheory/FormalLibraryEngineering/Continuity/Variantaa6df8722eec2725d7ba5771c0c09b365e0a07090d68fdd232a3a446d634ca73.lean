-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuity.Variante6c9cb7fb312df24058a47a88b38e3b9467922e25b2a30c8ccd1f5bf9a501b8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6c9cb7fb312df24058a47a88b38e3b9467922e25b2a30c8ccd1f5bf9a501b8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Continuity.Variante6c9cb7fb312df24058a47a88b38e3b9467922e25b2a30c8ccd1f5bf9a501b8b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e6c9cb7fb312df24058a47a88b38e3b9467922e25b2a30c8ccd1f5bf9a501b8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Continuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/

import Mathlib.Tactic.Continuity.Init

/-!
# Continuity

We define the `continuity` tactic using `aesop`. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuity.Variante6c9cb7fb312df24058a47a88b38e3b9467922e25b2a30c8ccd1f5bf9a501b8b

attribute [aesop (rule_sets := [Continuous]) unfold norm] Function.comp

/--
The `continuity` attribute used to tag continuity statements for the `continuity` tactic. -/
macro "continuity" : attr =>
  `(attr|aesop safe apply (rule_sets := [$(Lean.mkIdent `Continuous):ident]))

/--
The tactic `continuity` solves goals of the form `Continuous f` by applying lemmas tagged with the
`continuity` user attribute. -/
macro "continuity" : tactic =>
  `(tactic| aesop (config := { terminal := true })
     (rule_sets := [$(Lean.mkIdent `Continuous):ident]))

/--
The tactic `continuity` solves goals of the form `Continuous f` by applying lemmas tagged with the
`continuity` user attribute. -/
macro "continuity?" : tactic =>
  `(tactic| aesop? (config := { terminal := true })
    (rule_sets := [$(Lean.mkIdent `Continuous):ident]))

-- Todo: implement `continuity!` and `continuity!?` and add configuration, original
-- syntax was (same for the missing `continuity` variants):
-- syntax (name := continuity) "continuity" optConfig : tactic
