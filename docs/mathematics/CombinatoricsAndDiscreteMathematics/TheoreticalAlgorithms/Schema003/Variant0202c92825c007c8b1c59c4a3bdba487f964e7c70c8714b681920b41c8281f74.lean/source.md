# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Schema003.Variant0202c92825c007c8b1c59c4a3bdba487f964e7c70c8714b681920b41c8281f74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05d000771f16afcd96377dbbcdccd4891244728e` · SHA-256 `571232b7120147bbacd4cd4d1640a5d294a1032954c80524101c80859d32f20c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SchemaValueKind.Variant3784bc44ed0d64ce1b77de82dedfd054452bfce81e9853a0cb0613fd38a24787","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3784bc44ed0d64ce1b77de82dedfd054452bfce81e9853a0cb0613fd38a24787","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SchemaValueKind.Variant3784bc44ed0d64ce1b77de82dedfd054452bfce81e9853a0cb0613fd38a24787","mathematical_subject":"Computation.DataStructures","original_sha256":"3784bc44ed0d64ce1b77de82dedfd054452bfce81e9853a0cb0613fd38a24787","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Configuration/Schema003.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Schema 0.0.3 formal vocabulary

The YAML document is the source authority.  `Schema003Generated.lean` is a
deterministic flattened binding generated from those bytes; this module owns
only the stable types and the closed-policy invariants used to check it.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SchemaValueKind.Variant3784bc44ed0d64ce1b77de82dedfd054452bfce81e9853a0cb0613fd38a24787

namespace BitMatrix.Configuration.Schema003

/-- YAML node kinds retained by the generated binding. -/
inductive SchemaValueKind where
  | mapping
  | sequence
  | string
  | integer
  | number
  | boolean
  | null
  deriving DecidableEq, Repr

/-- One legal schema path and its authority/binding classification. -/
structure SchemaEntry where
  path : String
  kind : SchemaValueKind
  required : Bool
  value : Option String
  sourceBinding : Option String
  /-- Build-time readers of the authoritative YAML path. -/
  buildTimeGenerators : List String
  /-- Deterministic generated modules emitted by those readers. -/
  generatedBindings : List String
  /-- Executable modules that import a generated binding.  Keeping this
  distinct from the generator prevents a build-time projection from being
  mislabeled as runtime YAML loading. -/
  runtimeConsumers : List String
  defaultAuthority : String
  validationRule : String
  derived : Bool
  configurable : Bool
  glossaryConcept : String
  deriving DecidableEq, Repr

/-- Closed configuration policy asserted by schema 0.0.3. -/
structure ConfigurationPolicy where
  schemaVersion : Nat
  supersedesSchemaVersion : Nat
  bitLength : Nat
  failClosed : Bool
  rejectUnknownKeys : Bool
  decoderExplicitMaximumRequired : Bool
  currentSupportedBitLengths : List Nat
  deriving DecidableEq, Repr

/-- Validation is fail-closed and never returns a partially accepted value. -/
inductive ValidationResult (α : Type) where
  | accepted (value : α)
  | rejected (path reason : String)
  deriving Repr

end BitMatrix.Configuration.Schema003
```
