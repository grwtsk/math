-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoOfRealCoboundedCobounded.Variantb500abf9c75362dbdf15a4e8020eff6af554503b32646378cf63f1e17c85c0c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b500abf9c75362dbdf15a4e8020eff6af554503b32646378cf63f1e17c85c0c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoOfRealCoboundedCobounded.Variantb500abf9c75362dbdf15a4e8020eff6af554503b32646378cf63f1e17c85c0c7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b500abf9c75362dbdf15a4e8020eff6af554503b32646378cf63f1e17c85c0c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/SpecificLimits/RCLike.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Xavier Généreux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Généreux, Patrick Massot
-/
module

public import Mathlib.Analysis.RCLike.Basic
public import Mathlib.Data.EReal.Inv

/-!
# A collection of specific limit computations for `RCLike`

-/


namespace GRWTSK.Topology.GeneralTopology.TendstoOfRealCoboundedCobounded.Variantb500abf9c75362dbdf15a4e8020eff6af554503b32646378cf63f1e17c85c0c7

public section

open Filter
open scoped Topology

namespace RCLike

variable (𝕜 : Type*) [RCLike 𝕜]

theorem tendsto_ofReal_cobounded_cobounded :
    Tendsto ofReal (Bornology.cobounded ℝ) (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_norm_cobounded_atTop)

theorem tendsto_ofReal_atTop_cobounded :
    Tendsto ofReal atTop (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_abs_atTop_atTop)

theorem tendsto_ofReal_atBot_cobounded :
    Tendsto ofReal atBot (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_abs_atBot_atTop)

end RCLike
