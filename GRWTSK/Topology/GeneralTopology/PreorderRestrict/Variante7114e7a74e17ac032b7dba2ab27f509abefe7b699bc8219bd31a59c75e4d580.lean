-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousRestrictLe.Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousRestrictLe.Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935","mathematical_subject":"Topology.GeneralTopology","original_sha256":"001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/PreorderRestrict.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
import Mathlib.Order.Restriction
import Mathlib.Topology.Constructions

/-!
# Continuity of the restriction function for functions indexed by a preorder

We prove that the map which restricts a function `f : (i : α) → X i` to elements `≤ a` is
continuous.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousRestrictLe.Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935

namespace Preorder

variable {α : Type*} [Preorder α] {X : α → Type*} [∀ i, TopologicalSpace (X i)]

@[continuity, fun_prop]
theorem continuous_restrictLe (a : α) : Continuous (restrictLe (π := X) a) :=
  Pi.continuous_restrict _

@[continuity, fun_prop]
theorem continuous_restrictLe₂ {a b : α} (hab : a ≤ b) : Continuous (restrictLe₂ (π := X) hab) :=
  Pi.continuous_restrict₂ _

variable [LocallyFiniteOrderBot α]

@[continuity, fun_prop]
theorem continuous_frestrictLe (a : α) : Continuous (frestrictLe (π := X) a) :=
  Finset.continuous_restrict _

@[continuity, fun_prop]
theorem continuous_frestrictLe₂ {a b : α} (hab : a ≤ b) :
    Continuous (frestrictLe₂ (π := X) hab) :=
  Finset.continuous_restrict₂ _

end Preorder
