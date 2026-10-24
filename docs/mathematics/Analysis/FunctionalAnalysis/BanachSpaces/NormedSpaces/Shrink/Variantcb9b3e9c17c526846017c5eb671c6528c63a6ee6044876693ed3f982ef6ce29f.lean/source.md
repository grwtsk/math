# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Shrink.Variantcb9b3e9c17c526846017c5eb671c6528c63a6ee6044876693ed3f982ef6ce29f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58f008c137c593198f39eb0a090d558428fb0b07` · SHA-256 `502bf5aed488edd73ce8b77687146806389421ade2328fe7d5d422cc106b0c5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.TransferInstance.Variantf20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.TransferInstance.Variantf20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"f20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Module/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Analysis.Normed.Module.TransferInstance
public import Mathlib.Algebra.Group.Shrink

/-!
# Transfer normed algebraic structures from `α` to `Shrink α`
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.TransferInstance.Variantf20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4

public section

noncomputable section

namespace Shrink

universe v
variable {𝕜 α : Type*} [Small.{v} α] [NormedField 𝕜]

instance [SeminormedAddCommGroup α] : SeminormedAddCommGroup (Shrink.{v} α) :=
  (equivShrink α).symm.seminormedAddCommGroup

instance [NormedAddCommGroup α] : NormedAddCommGroup (Shrink.{v} α) :=
  (equivShrink α).symm.normedAddCommGroup

instance [SeminormedAddCommGroup α] [NormedSpace 𝕜 α] : NormedSpace 𝕜 (Shrink.{v} α) :=
  (Shrink.addEquiv (α := α)).normedSpace 𝕜

end Shrink
```
