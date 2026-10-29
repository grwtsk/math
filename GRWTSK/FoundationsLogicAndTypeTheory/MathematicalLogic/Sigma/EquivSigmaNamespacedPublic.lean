-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sigma.Variant9c4e96fc6c166b03bcd83f0122f0e93107b9ea471fbca688ac514cb9a5a7cbac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c4e96fc6c166b03bcd83f0122f0e93107b9ea471fbca688ac514cb9a5a7cbac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Sigma.Variant9c4e96fc6c166b03bcd83f0122f0e93107b9ea471fbca688ac514cb9a5a7cbac","mathematical_subject":"Logic.Foundations","original_sha256":"9c4e96fc6c166b03bcd83f0122f0e93107b9ea471fbca688ac514cb9a5a7cbac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Logic/Equiv/Sigma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Tian Chen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tian Chen
-/
module

public import Mathlib.Data.Set.Sigma

/-!
# Equivalences and sigma types
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sigma.Variant9c4e96fc6c166b03bcd83f0122f0e93107b9ea471fbca688ac514cb9a5a7cbac

@[expose] public section

namespace Equiv

namespace Set

/-- The indexed sum of sets is equivalent to the sigma-type of their coercions to types. -/
protected def sigma {α} {β : α → Type*} (s : Set α) (t : (i : α) → Set (β i)) :
    ↥(s.sigma t) ≃ Σ i : s, t i :=
  subtypeSigmaEquivSigma

end Set

end Equiv
