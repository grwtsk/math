-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Congruence.Variant82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Congruence.Variant82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/RingTheory/Congruence/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.RingTheory.Congruence.Basic


namespace GRWTSK.Algebra.Congruence.Variant82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537

variable {R R' : Type*}

namespace RingCon

variable [Add R] [Mul R] [Add R'] [Mul R']

open scoped Function

-- This probably needs the RingCon version of `Setoid.comap_surjective`
proof_wanted comap_ringConGen_equiv
    {F} [FunLike F R' R] [MulHomClass F R' R] [AddHomClass F R' R] [EquivLike F R' R]
    (r : R → R → Prop) (f : F) :
    (ringConGen r).comap f = ringConGen (r on f)

end RingCon
