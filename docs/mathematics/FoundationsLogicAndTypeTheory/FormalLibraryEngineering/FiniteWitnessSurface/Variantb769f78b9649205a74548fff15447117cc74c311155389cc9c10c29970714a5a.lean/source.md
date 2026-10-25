# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteWitnessSurface.Variantb769f78b9649205a74548fff15447117cc74c311155389cc9c10c29970714a5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcf3534216c065511589e957c1df53633092d6c4` · SHA-256 `cb3275eeca76d294ea442c837a792dcf240172204e2db8c5254dc080c95152f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteModularWaveSurface.Variantca7525557bf9a72b2c14784235ab2fcfd7f8153ea8b3301eddc2ec1c08a80bb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca7525557bf9a72b2c14784235ab2fcfd7f8153ea8b3301eddc2ec1c08a80bb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteModularWaveSurface.Variantca7525557bf9a72b2c14784235ab2fcfd7f8153ea8b3301eddc2ec1c08a80bb5","mathematical_subject":"Foundations.Unclassified","original_sha256":"ca7525557bf9a72b2c14784235ab2fcfd7f8153ea8b3301eddc2ec1c08a80bb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ModularWave/FiniteWitnessSurface.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteModularWaveSurface.Variantca7525557bf9a72b2c14784235ab2fcfd7f8153ea8b3301eddc2ec1c08a80bb5

set_option autoImplicit false

namespace Think.Compact

inductive FiniteModularWaveSurface where
  | finiteQWave
  | lFunctionLowering
  | emlLowering
  | nandLowering
  | bitMatrix
  | quotientLimit
  | compactProjection
  | theoremSourceBoundary
deriving DecidableEq, Repr

def FiniteModularWaveSurface.isFiniteWitness :
    FiniteModularWaveSurface → Bool
  | _ => true

def FiniteModularWaveSurface.importsExternalTheorem :
    FiniteModularWaveSurface → Bool
  | _ => false

theorem finiteModularWave_surfaceFinite
    (s : FiniteModularWaveSurface) :
    s.isFiniteWitness = true := by
  cases s <;> rfl

theorem finiteModularWave_importsNoExternalTheorem
    (s : FiniteModularWaveSurface) :
    s.importsExternalTheorem = false := by
  cases s <;> rfl

end Think.Compact
```
