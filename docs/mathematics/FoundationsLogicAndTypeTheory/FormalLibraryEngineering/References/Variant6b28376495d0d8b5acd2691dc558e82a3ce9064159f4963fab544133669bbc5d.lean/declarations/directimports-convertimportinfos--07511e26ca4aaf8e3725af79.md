# DirectImports.convertImportInfos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ee1986c5f27da2478519748904c935694930dcdf177c7d5dda46616877ae471",
  "kind": "def",
  "lexical_name": "DirectImports.convertImportInfos",
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
  "slug": "directimports-convertimportinfos--07511e26ca4aaf8e3725af79",
  "source": {
    "blob": "633baf65e182b269ae7d068ca67b5ef31f1e07ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 481,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07511e26ca4aaf8e3725af797bdafc111b31089eebac8d096c688b25e0d48207",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ee1986c5f27da2478519748904c935694930dcdf177c7d5dda46616877ae471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DirectImports.convertImportInfos (infos : Array Lsp.ImportInfo) : IO DirectImports := do
  let ordered ← infos.filterMapM fun i => do
    let module := i.module.toName
    let some uri ← documentUriFromModule? module
      | return none
    return some {
      uri
      module
      isAll := i.isAll
      isPrivate := i.isPrivate
      metaKind := if i.isMeta then .meta else .nonMeta
    }
  let index := ordered.groupByKey (·.module)
    |>.toArray
    |> Std.TreeMap.ofArray (cmp := Name.quickCmp)
  return { ordered, index }

/-- Reference information from a loaded ILean file. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633baf65e182b269ae7d068ca67b5ef31f1e07ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
