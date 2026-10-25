# broadImportsCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4677a52acf4ff464a84e95d94916ff982f63deeec447e6bb6121db431b74e3a",
  "kind": "def",
  "lexical_name": "broadImportsCheck",
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
  "slug": "broadimportscheck--d0e6f56530ac83bdf3341bae",
  "source": {
    "blob": "0f832dc1c07e9c9806c0a72ebf47a8ec88c57c8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantf9aac5b0f54beb7cc1f302a580cf8df7ac3642f5c4c211c3675655eaa4e39d5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0e6f56530ac83bdf3341bae2ad29ae244f891ab94fd1688ddb6cbcc729b9ddc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantf9aac5b0f54beb7cc1f302a580cf8df7ac3642f5c4c211c3675655eaa4e39d5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4677a52acf4ff464a84e95d94916ff982f63deeec447e6bb6121db431b74e3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def broadImportsCheck (imports : Array ImportRef) (mainModule : Name) : CommandElabM Unit := do
  unless mainModule.getRoot == `Mathlib || headerTestFiles.contains mainModule do
    return
  for i in imports do
    match i.module with
    | `Mathlib.Tactic | `Lean | `Lean.Meta | `Lean.Elab | `Lean.Elab.Tactic | `Std | `Batteries =>
      Linter.logLint linter.style.header i.getIdent
        s!"Files in mathlib cannot import the whole `{i.module}` folder. \
        Doing so would cause imports to be unnecessarily slow."
    | `Mathlib.Tactic.Replace =>
      if mainModule != `Mathlib.Tactic then
        Linter.logLint linter.style.header i.getIdent
          "`Mathlib.Tactic.Replace` defines a deprecated form of the `replace` tactic; \
          please do not use it in mathlib."
    | `Mathlib.Tactic.Have =>
      if ![`Mathlib.Tactic, `Mathlib.Tactic.Replace].contains mainModule then
        Linter.logLint linter.style.header i.getIdent
          "`Mathlib.Tactic.Have` defines a deprecated form of the `have` tactic; \
          please do not use it in mathlib."
    | modName =>
      if modName.getRoot == `Lake then
      Linter.logLint linter.style.header i.getIdent
        "In the past, importing `Lake` in mathlib has led to dramatic slow-downs of the linter \
        (see e.g. https://github.com/leanprover-community/mathlib4/pull/13779). \
        Please consider carefully if this import is useful and \
        make sure to benchmark it. If this is fine, feel free to silence this linter."

/-- Check the syntax `imports` for syntactically duplicate imports.
Two imports are considered duplicates only if they import the same module with the same modifiers.
For example, `public import Foo` and `import all Foo` are NOT duplicates.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantf9aac5b0f54beb7cc1f302a580cf8df7ac3642f5c4c211c3675655eaa4e39d5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantf9aac5b0f54beb7cc1f302a580cf8df7ac3642f5c4c211c3675655eaa4e39d5a.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f832dc1c07e9c9806c0a72ebf47a8ec88c57c8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
