-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.AlephToPartENat.Varianta8907d4d4d3ba0b76f1ca8f56d50faf72b7c9e41036d5c815b58202d4a790950","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8907d4d4d3ba0b76f1ca8f56d50faf72b7c9e41036d5c815b58202d4a790950","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.AlephToPartENat.Varianta8907d4d4d3ba0b76f1ca8f56d50faf72b7c9e41036d5c815b58202d4a790950","mathematical_subject":"Logic.SetTheory","original_sha256":"a8907d4d4d3ba0b76f1ca8f56d50faf72b7c9e41036d5c815b58202d4a790950","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Deprecated/Cardinal/Continuum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Floris van Doorn, Violeta Hernández Palacios
-/
import Mathlib.SetTheory.Cardinal.Continuum
import Mathlib.Deprecated.Cardinal.PartENat

/-!
# Deprecated material from Mathlib.SetTheory.Cardinal.Aleph and Mathlib.SetTheory.Cardinal.Continuum

Moved here so we can reduce imports sooner.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.AlephToPartENat.Varianta8907d4d4d3ba0b76f1ca8f56d50faf72b7c9e41036d5c815b58202d4a790950

namespace Cardinal

@[simp, deprecated aleph_toENat (since := "2024-12-01")]
theorem aleph_toPartENat (o : Ordinal) : toPartENat (ℵ_ o) = ⊤ :=
  toPartENat_apply_of_aleph0_le <| aleph0_le_aleph o

@[simp, deprecated aleph_toENat (since := "2024-12-01")]
theorem continuum_toPartENat : toPartENat continuum = ⊤ :=
  toPartENat_apply_of_aleph0_le aleph0_le_continuum

end Cardinal
