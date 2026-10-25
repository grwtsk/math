# Config

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a630fdbaa2e0489549e61ec2a6607c271a183ab7f88290c5591569dc4ec3075e",
  "kind": "structure",
  "lexical_name": "Config",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "config--45b8f3ef421269d5f2beaa8a",
  "source": {
    "blob": "b666c64abc5bdecd2b7cbf8a39b6630e0227a986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45b8f3ef421269d5f2beaa8a1f68df1bab642f2196b95c14ee78f0210ee32ba0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a630fdbaa2e0489549e61ec2a6607c271a183ab7f88290c5591569dc4ec3075e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Config : Type where
  /-- View the trace of the translation procedure.
  Equivalent to `set_option trace.translate true`. -/
  trace : Bool := false
  /-- The given name of the target: an anonymous name means no explicit name was provided,
  and the translate tactic auto-generates a name instead -/
  target : Name := Name.anonymous
  /-- An optional doc string. -/
  doc : Option (TSyntax ``Lean.Parser.Command.docComment) := .none
  /-- If `allowAutoName` is `false` (default) then
  we check whether the given name can be auto-generated. -/
  allowAutoName : Bool := false
  /-- The arguments that should be reordered when translating, using cycle notation. -/
  reorder? : Option ArgReorder := .none
  /-- The argument used to determine whether this constant should be translated. -/
  relevantArg? : Option RelevantArg := .none
  /-- The attributes which we want to give to the original and translated declaration.
  For `simps` this will also add generated lemmas to the translation dictionary. -/
  attrs : Array Syntax := #[]
  /-- A list of positions of type variables that should not be translated. -/
  dontTranslate : List Nat := []
  /-- The `Syntax` element corresponding to the translation attribute,
  which we need for adding definition ranges, and for logging messages. -/
  ref : Syntax
  /-- An optional flag stating that the translated declaration already exists.
  If this flag is wrong about whether the translated declaration exists, we raise a linter error.
  Note: the linter will never raise an error for inductive types and structures. -/
  existing : Bool := false
  /-- An optional flag stating that the target of the translation is the target itself.
  This can be used to reorder arguments, such as in
  `attribute [to_dual self (reorder := 3 4)] LE.le`.
  If `self := true`, we should also have `existing := true`. -/
  self : Bool := false
  /-- An optional flag for not giving the new declaration a user-facing name.
  This is achieved by appending e.g. `_to_dual_1` to the name of the original declaration. -/
  none : Bool := false
  /-- A map specifying the binder names of the translated declaration. -/
  rename : NameMap Name := {}

/-- Eta expands `e` exactly `n` times. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b666c64abc5bdecd2b7cbf8a39b6630e0227a986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
