-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.WedderburnArtin.Variant9f117135746dc07e88b099ddd14fc8794e083510f3da6b16f494e2245f0b6ab7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f117135746dc07e88b099ddd14fc8794e083510f3da6b16f494e2245f0b6ab7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.WedderburnArtin.Variant9f117135746dc07e88b099ddd14fc8794e083510f3da6b16f494e2245f0b6ab7","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"9f117135746dc07e88b099ddd14fc8794e083510f3da6b16f494e2245f0b6ab7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/RingTheory/SimpleModule/WedderburnArtin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.RingTheory.SimpleModule.WedderburnArtin


namespace GRWTSK.Algebra.WedderburnArtin.Variant9f117135746dc07e88b099ddd14fc8794e083510f3da6b16f494e2245f0b6ab7

variable {R : Type*} [Ring R]

-- Need left-right symmetry of Jacobson radical
proof_wanted IsSemiprimaryRing.mulOpposite [IsSemiprimaryRing R] : IsSemiprimaryRing Rᵐᵒᵖ

proof_wanted isSemiprimaryRing_mulOpposite_iff : IsSemiprimaryRing Rᵐᵒᵖ ↔ IsSemiprimaryRing R

-- A left Artinian ring is right Noetherian iff it is right Artinian. To be left as an `example`.
proof_wanted IsArtinianRing.isNoetherianRing_iff_isArtinianRing_mulOpposite
    [IsArtinianRing R] : IsNoetherianRing Rᵐᵒᵖ ↔ IsArtinianRing Rᵐᵒᵖ
