-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.Computability
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Computability.Computable.Variantb1975bbde95ac9dbd7cc43e592dedda9d8b40b3e27894f12b8d5c972b1794e3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1975bbde95ac9dbd7cc43e592dedda9d8b40b3e27894f12b8d5c972b1794e3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Computability.SourceCorpus.Computable.Variantb1975bbde95ac9dbd7cc43e592dedda9d8b40b3e27894f12b8d5c972b1794e3f","mathematical_subject":"Computation.Computability","original_sha256":"b1975bbde95ac9dbd7cc43e592dedda9d8b40b3e27894f12b8d5c972b1794e3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/Computability/TuringMachine/Computable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Bolton Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bolton Bailey
-/
module

public import Mathlib.Computability.TuringMachine.Computable


namespace GRWTSK.FoundationsLogicAndTypeTheory.Computability.Computable.Variantb1975bbde95ac9dbd7cc43e592dedda9d8b40b3e27894f12b8d5c972b1794e3f

namespace Turing

/--
For any two polynomial time Multi-tape Turing Machines,
there exists another polynomial time multi-tape Turing Machine that composes their operations.
This machine can work by simply having one tape for each tape in both of the composed TMs.
It first carries out the operations of the first TM on the tapes associated with the first TM,
then copies the output tape of the first TM to the input tape of the second TM,
then runs the second TM.
-/
proof_wanted TM2ComputableInPolyTime.comp
    {α β γ αΓ βΓ γΓ : Type} {eα : α → List αΓ} {eβ : β → List βΓ}
    {eγ : γ → List γΓ} {f : α → β} {g : β → γ} (h1 : TM2ComputableInPolyTime eα eβ f)
    (h2 : TM2ComputableInPolyTime eβ eγ g) :
  Nonempty (TM2ComputableInPolyTime eα eγ (g ∘ f))

end Turing
