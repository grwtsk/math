# isClass?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c5b98b514c707002976b094a98d59bc02a438a2d53e19d0ff3177bda688be3e",
  "kind": "def",
  "lexical_name": "isClass?",
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
  "slug": "isclass--b9b768d1c9083efbb03befe3",
  "source": {
    "blob": "3f856ac344762269cc4dd880de8202a5cc0460eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsClass/Varianta725937bf8c44103f03a4894387bf5e12b5542a5b900f0e97cf4c4214c2b5d86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9b768d1c9083efbb03befe32a17928e315f1fb29348221d9e5689fbfe297402",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsClass/Varianta725937bf8c44103f03a4894387bf5e12b5542a5b900f0e97cf4c4214c2b5d86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c5b98b514c707002976b094a98d59bc02a438a2d53e19d0ff3177bda688be3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def isClass? (env : Environment) (type : Expr) : Option Name :=
  go type
where
  go : Expr → Option Name
  | .bvar ..         => none
  | .lit ..          => none
  | .fvar ..         => none
  | .sort ..         => none
  | .lam ..          => none
  | .proj ..         => none
  | .mvar ..         => none
  | .letE _ _ _ b _  => go b
  | .forallE _ _ b _ => go b
  | .mdata _ b       => go b
  | .const n _       => if isClass env n then some n else none
  | .app f _         => go f

end Lean.Meta.Sym
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsClass/Varianta725937bf8c44103f03a4894387bf5e12b5542a5b900f0e97cf4c4214c2b5d86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsClass/Varianta725937bf8c44103f03a4894387bf5e12b5542a5b900f0e97cf4c4214c2b5d86.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f856ac344762269cc4dd880de8202a5cc0460eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
