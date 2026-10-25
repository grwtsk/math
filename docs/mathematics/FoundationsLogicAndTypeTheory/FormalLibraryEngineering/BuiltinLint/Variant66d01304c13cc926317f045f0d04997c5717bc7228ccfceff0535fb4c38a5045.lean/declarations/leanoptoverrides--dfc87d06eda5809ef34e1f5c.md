# leanOptOverrides

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8108d9a27b868dc2098497eaec836df67470b87366518f0da692e1758d73ecf",
  "kind": "def",
  "lexical_name": "leanOptOverrides",
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
  "slug": "leanoptoverrides--dfc87d06eda5809ef34e1f5c",
  "source": {
    "blob": "76cd83c50465023c96983d3e96eef7cdb23b5439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant66d01304c13cc926317f045f0d04997c5717bc7228ccfceff0535fb4c38a5045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfc87d06eda5809ef34e1f5c4643e31625dbc0a84c843b9e1d935c0277ba5707",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant66d01304c13cc926317f045f0d04997c5717bc7228ccfceff0535fb4c38a5045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8108d9a27b868dc2098497eaec836df67470b87366518f0da692e1758d73ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def leanOptOverrides (args : Args) : LeanOptions :=
  let merged : NameMap Bool := args.linterOverrides.foldl (init := {}) fun m (n, b) => m.insert n b
  let base : Array LeanOption :=
    merged.toArray.map fun (n, b) => ⟨`weak ++ n, .ofBool b⟩
  let base :=
    if args.recordExceptions then
      base.push ⟨`internal.cmdlineSnapshots, .ofBool false⟩
    else base
  LeanOptions.ofArray base

/-- A linter warning to be recorded as a source exception.

Recording it inserts `set_option option false in` immediately before the declaration beginning
at `pos` in `file`, silencing the `option` linter for that declaration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant66d01304c13cc926317f045f0d04997c5717bc7228ccfceff0535fb4c38a5045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant66d01304c13cc926317f045f0d04997c5717bc7228ccfceff0535fb4c38a5045.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76cd83c50465023c96983d3e96eef7cdb23b5439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
