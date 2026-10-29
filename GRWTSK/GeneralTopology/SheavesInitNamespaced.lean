-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Sheaves/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/

import Mathlib.Init
import Aesop

/-!
# Rule sets related to topological (pre)sheaves

This module defines the `Restrict` Aesop rule set. Aesop rule sets only become
visible once the file in which they're declared is imported, so we must put this
declaration into its own file.
-/

/- to prove subset relations -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7

declare_aesop_rule_sets [Restrict]
