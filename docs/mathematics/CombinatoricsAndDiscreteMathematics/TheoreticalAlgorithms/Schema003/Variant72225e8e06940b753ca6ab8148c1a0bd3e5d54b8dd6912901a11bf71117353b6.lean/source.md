# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Schema003.Variant72225e8e06940b753ca6ab8148c1a0bd3e5d54b8dd6912901a11bf71117353b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b9b007f14a158e45a44f9ac93e1695ad2481d36` · SHA-256 `4f31fe39e867a14c1ba6b5803e20243982eeb509a718c90c9cc945de285762e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SchemaValueKind.Variantdfdf1afb4efb5bc502f9b50330c38f45868ae6f3bc6cc430bf3ec7a8e8f5ef44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfdf1afb4efb5bc502f9b50330c38f45868ae6f3bc6cc430bf3ec7a8e8f5ef44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SchemaValueKind.Variantdfdf1afb4efb5bc502f9b50330c38f45868ae6f3bc6cc430bf3ec7a8e8f5ef44","mathematical_subject":"Computation.DataStructures","original_sha256":"dfdf1afb4efb5bc502f9b50330c38f45868ae6f3bc6cc430bf3ec7a8e8f5ef44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/9591c6ff30638559b50c01f70f8215488732641430867dc44c348c446c634ebe/workspace/Surface/BitMatrix/Configuration/Schema003.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Schema 0.0.3 formal vocabulary

The YAML document is the source authority.  `Schema003Generated.lean` is a
deterministic flattened binding generated from those bytes; this module owns
only the stable types and the closed-policy invariants used to check it.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SchemaValueKind.Variantdfdf1afb4efb5bc502f9b50330c38f45868ae6f3bc6cc430bf3ec7a8e8f5ef44

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
  runtimeConsumer : Option String
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
