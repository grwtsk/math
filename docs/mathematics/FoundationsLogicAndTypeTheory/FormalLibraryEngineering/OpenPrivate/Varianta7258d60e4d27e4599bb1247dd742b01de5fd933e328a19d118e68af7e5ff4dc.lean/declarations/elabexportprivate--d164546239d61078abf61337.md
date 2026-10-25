# elabExportPrivate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f2e959c1bdd30c6f79e8aabdad0b3bf86648dc575f08ea9eed1c9d096dd6904",
  "kind": "def",
  "lexical_name": "elabExportPrivate",
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
  "slug": "elabexportprivate--d164546239d61078abf61337",
  "source": {
    "blob": "cae8e3d2256195c7441271608174bcb5b76d3c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d164546239d61078abf61337fd0975ab83d7a46fd7c3c55332ac186b909c2367",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f2e959c1bdd30c6f79e8aabdad0b3bf86648dc575f08ea9eed1c9d096dd6904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[command_elab exportPrivate] def elabExportPrivate : CommandElab
| `(export private $ids* $[in $tgts*]? $[from $mods*]?) =>
  elabOpenPrivateLike ids tgts mods fun c name _ => liftCoreM do
    let cinfo ← getConstInfo c
    if (← getEnv).contains name then
      throwError s!"'{name}' has already been declared"
    let decl := Declaration.defnDecl {
      name := name,
      levelParams := cinfo.levelParams,
      type := cinfo.type,
      value := mkConst c (cinfo.levelParams.map mkLevelParam),
      hints := ReducibilityHints.abbrev,
      safety := if cinfo.isUnsafe then DefinitionSafety.unsafe else DefinitionSafety.safe
    }
    addDecl decl
    compileDecl decl
    pure name
| _ => throwUnsupportedSyntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae8e3d2256195c7441271608174bcb5b76d3c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
