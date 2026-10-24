# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Schema003.Variant3784bc44ed0d64ce1b77de82dedfd054452bfce81e9853a0cb0613fd38a24787

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac182f622c5c50f56b9819fe7ca664450661b6c8` · SHA-256 `3784bc44ed0d64ce1b77de82dedfd054452bfce81e9853a0cb0613fd38a24787`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
