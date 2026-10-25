# ExportedAxiomsState.find?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:288986ae415ba86d7f60be0315fbc2f7159462eee6d7329b4ec6dbb9e0aa6c90",
  "kind": "def",
  "lexical_name": "ExportedAxiomsState.find?",
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
  "slug": "exportedaxiomsstate-find--78478bbd242654e206cec356",
  "source": {
    "blob": "7d745d4aeb1f84de1c73bfa15fcb9a1f66a7968a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant6cb8666a982506bfafaec2226949f1cca954fd0481ff1bba36c136752816ab53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78478bbd242654e206cec3569b489e3c9eda178c7701dec5c54b0ae628b54685",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant6cb8666a982506bfafaec2226949f1cca954fd0481ff1bba36c136752816ab53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:288986ae415ba86d7f60be0315fbc2f7159462eee6d7329b4ec6dbb9e0aa6c90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ExportedAxiomsState.find? (s : ExportedAxiomsState) (env : Environment)
    (c : Name) : Option (Array Name) :=
  match env.getModuleIdxFor? c with
  | some modIdx =>
    if h : modIdx.toNat < s.importedModuleEntries.size then
      match s.importedModuleEntries[modIdx].binSearch (c, #[]) (fun a b => Name.quickLt a.1 b.1) with
      | some entry => some entry.2
      | none       => none
    else none
  | none => none

/--
Environment extension that records axiom dependencies for all declarations in a module.
Entries are computed once by `beforeExportFn` when the olean is serialized, not during
elaboration. During elaboration, `collectAxioms` walks bodies directly. Downstream modules
look up pre-computed entries for imported declarations, so axiom collection never crosses
module boundaries.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant6cb8666a982506bfafaec2226949f1cca954fd0481ff1bba36c136752816ab53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant6cb8666a982506bfafaec2226949f1cca954fd0481ff1bba36c136752816ab53.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d745d4aeb1f84de1c73bfa15fcb9a1f66a7968a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
