-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantc18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Core.Variantc18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/GCongr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro, Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Heather Macbeth
-/
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.GCongr.CoreAttrs

/-! # Setup for the `gcongr` tactic

The core implementation of the `gcongr` ("generalized congruence") tactic is in the file
`Tactic.GCongr.Core`. In this file we set it up for use across the library by listing
`positivity` as a first-pass discharger for side goals (`gcongr_discharger`). -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantc18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870

macro_rules | `(tactic| gcongr_discharger) => `(tactic| positivity)

/-!
We register `gcongr` with the `hint` tactic.
-/

register_hint gcongr
