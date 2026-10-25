# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bool.Variantd082843ef9d3d269e0c32b3db7c4df4d2ebd1699e95b292cfe4521481f91a601

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef6aa758ba1f3b95bde4b9ca33d17eaf717548f3` · SHA-256 `b6f3a4e9363920c9fe810adfe48c4743840f9b985bfbcbd329079830dfeb13e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Algebra.Variant271b476e4a44868a3aed617e57e4f8f49751251f00579d953de54342a98f2cd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"271b476e4a44868a3aed617e57e4f8f49751251f00579d953de54342a98f2cd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Algebra.Variant271b476e4a44868a3aed617e57e4f8f49751251f00579d953de54342a98f2cd0","mathematical_subject":"Foundations.Unclassified","original_sha256":"271b476e4a44868a3aed617e57e4f8f49751251f00579d953de54342a98f2cd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Algebra/Bool.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Algebra.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Algebra.Variant271b476e4a44868a3aed617e57e4f8f49751251f00579d953de54342a98f2cd0

namespace Surface.Boolean

universe u

instance : BooleanAlgebraCore Bool where
  join := fun a b => a || b
  meet := fun a b => a && b
  compl := fun a => !a
  bot := false
  top := true

  bot_ne_top := by
    intro h
    cases h

  join_bot := by
    intro a
    cases a <;> rfl

  meet_top := by
    intro a
    cases a <;> rfl

  join_comm := by
    intro a b
    cases a <;> cases b <;> rfl

  meet_comm := by
    intro a b
    cases a <;> cases b <;> rfl

  join_assoc := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  meet_assoc := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  join_meet_distrib := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  meet_join_distrib := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  join_compl := by
    intro a
    cases a <;> rfl

  meet_compl := by
    intro a
    cases a <;> rfl

end Surface.Boolean
```
