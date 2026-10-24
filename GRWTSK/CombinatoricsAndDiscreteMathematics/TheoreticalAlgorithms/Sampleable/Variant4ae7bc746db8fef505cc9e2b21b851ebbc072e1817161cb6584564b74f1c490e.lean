-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rat.Variant40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Rat.Variant40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd","mathematical_subject":"Computation.DataStructures","original_sha256":"40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Testing/Plausible/Sampleable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Simon Hudon
-/
import Batteries.Data.Rat.Basic
import Mathlib.Data.Int.Order.Basic
import Mathlib.Data.List.Monad
import Mathlib.Data.PNat.Defs
import Plausible.Sampleable

/-!
This module contains `Plausible.Shrinkable` and `Plausible.SampleableExt` instances for mathlib
types.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rat.Variant40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd

namespace Plausible

open Random Gen

section Shrinkers

instance Rat.shrinkable : Shrinkable Rat where
  shrink r :=
    (Shrinkable.shrink r.num).flatMap fun d => Nat.shrink r.den |>.map fun n => Rat.divInt d n

instance PNat.shrinkable : Shrinkable PNat where
  shrink m := Nat.shrink m.natPred |>.map Nat.succPNat

end Shrinkers

section Samplers

open SampleableExt

instance Rat.sampleableExt : SampleableExt Rat :=
  mkSelfContained (do
    let d ← choose Int (-(← getSize)) (← getSize)
      (le_trans (Int.neg_nonpos_of_nonneg (Int.ofNat_zero_le _)) (Int.ofNat_zero_le _))
    let n ← choose Nat 0 (← getSize) (Nat.zero_le _)
    return Rat.divInt d n)


instance PNat.sampleableExt : SampleableExt PNat :=
  mkSelfContained (do
    let n ← chooseNat
    return Nat.succPNat n)

end Samplers

end Plausible
