# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Schema003.Variantdfdf1afb4efb5bc502f9b50330c38f45868ae6f3bc6cc430bf3ec7a8e8f5ef44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d933788ea24f1377bfd51becc210ff08bd506be` · SHA-256 `dfdf1afb4efb5bc502f9b50330c38f45868ae6f3bc6cc430bf3ec7a8e8f5ef44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Schema 0.0.3 formal vocabulary

The YAML document is the source authority.  `Schema003Generated.lean` is a
deterministic flattened binding generated from those bytes; this module owns
only the stable types and the closed-policy invariants used to check it.
-/

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
