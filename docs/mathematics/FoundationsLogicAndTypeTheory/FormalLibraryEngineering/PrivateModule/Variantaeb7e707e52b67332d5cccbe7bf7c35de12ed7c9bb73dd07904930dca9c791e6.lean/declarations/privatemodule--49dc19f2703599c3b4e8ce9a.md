# privateModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d2c269e30cc5ca716d369bb5bbce1163832061cb92920df8a1157e441cbe439",
  "kind": "def",
  "lexical_name": "privateModule",
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
  "slug": "privatemodule--49dc19f2703599c3b4e8ce9a",
  "source": {
    "blob": "410ccd2a88484216b750af01a9a8d744f6243068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrivateModule/Variantaeb7e707e52b67332d5cccbe7bf7c35de12ed7c9bb73dd07904930dca9c791e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49dc19f2703599c3b4e8ce9a2a215e66c997d1252c66781d475b74f8ed8ab85d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrivateModule/Variantaeb7e707e52b67332d5cccbe7bf7c35de12ed7c9bb73dd07904930dca9c791e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d2c269e30cc5ca716d369bb5bbce1163832061cb92920df8a1157e441cbe439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def privateModule : Linter where run stx := do
  if stx.isOfKind ``Parser.Command.eoi then
    unless getLinterValue linter.privateModule (← getLinterOptions) do
      return
    if (← getEnv).header.isModule
      -- If there are new initializers, this module has a downstream effect and is not private.
      && (regularInitAttr.ext.getState (← getEnv)).1.isEmpty
      -- Don't lint an imports-only module:
      && !(← getEnv).constants.map₂.isEmpty
    then
      -- Exit if any declaration from the current module is public:
      for (decl, _) in (← getEnv).constants.map₂ do
        -- Ignore both private and reserved names; see implementation notes
        if !isPrivateName decl && !isReservedName (← getEnv) decl then return
      -- Lint if all names are private:
      let topOfFileRef := Syntax.atom (.synthetic ⟨0⟩ ⟨0⟩) ""
      logLint linter.privateModule topOfFileRef
        "The current module only contains private declarations.\n\n\
        Consider adding `public section` at the beginning of the module, \
        or selectively marking declarations as `public`. Mark a `def` with \
        `@[expose]` if downstream code needs it to be definitionally equal \
        to its body (e.g. for `unfold`). Alternatively, \
        add `@[expose] public section` to mark every definition as exposed."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrivateModule/Variantaeb7e707e52b67332d5cccbe7bf7c35de12ed7c9bb73dd07904930dca9c791e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrivateModule/Variantaeb7e707e52b67332d5cccbe7bf7c35de12ed7c9bb73dd07904930dca9c791e6.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410ccd2a88484216b750af01a9a8d744f6243068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
