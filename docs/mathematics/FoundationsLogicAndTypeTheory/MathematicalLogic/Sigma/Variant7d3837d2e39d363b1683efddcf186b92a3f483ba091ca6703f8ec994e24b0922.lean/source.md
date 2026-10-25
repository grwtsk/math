# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sigma.Variant7d3837d2e39d363b1683efddcf186b92a3f483ba091ca6703f8ec994e24b0922

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab199fb4ac3f486de668d164aa660089e5d0bcec` · SHA-256 `781a8dc0408fd4ab32d4376141fe33e0c4a8eb68988f090fc116acdc723261d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
