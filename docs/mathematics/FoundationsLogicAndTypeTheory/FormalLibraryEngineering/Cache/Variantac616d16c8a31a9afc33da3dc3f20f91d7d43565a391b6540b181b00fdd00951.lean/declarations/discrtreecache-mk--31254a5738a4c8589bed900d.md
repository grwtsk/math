# DiscrTreeCache.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0a103e831d52d5e946f1a9ba5864ece02c18f56d830b4606db6bb1bf7b14f73",
  "kind": "def",
  "lexical_name": "DiscrTreeCache.mk",
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
  "slug": "discrtreecache-mk--31254a5738a4c8589bed900d",
  "source": {
    "blob": "65dbe4a04757983fe7041533501351d435eb6e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantac616d16c8a31a9afc33da3dc3f20f91d7d43565a391b6540b181b00fdd00951.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31254a5738a4c8589bed900da6ba77ed276cef47a76dcc9f2b8d28e3947a3f73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantac616d16c8a31a9afc33da3dc3f20f91d7d43565a391b6540b181b00fdd00951.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0a103e831d52d5e946f1a9ba5864ece02c18f56d830b4606db6bb1bf7b14f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DiscrTreeCache.mk [BEq α] (profilingName : String)
    (processDecl : Name → ConstantInfo → MetaM (Array (Array DiscrTree.Key × α)))
    (post? : Option (Array α → Array α) := none)
    (init : MetaM (DiscrTree α) := failure) :
    IO (DiscrTreeCache α) :=
  let updateTree := fun name constInfo tree => do
    return (← processDecl name constInfo).foldl (init := tree) fun t (k, v) =>
      t.insertKeyValue k v
  let addDecl := fun name constInfo (tree₁, tree₂) =>
    return (← updateTree name constInfo tree₁, tree₂)
  let addLibraryDecl := fun name constInfo (tree₁, tree₂) =>
    return (tree₁, ← updateTree name constInfo tree₂)
  let post := match post? with
  | some f => fun (T₁, T₂) => return (T₁, T₂.mapArrays f)
  | none => fun T => pure T
  let init' := return ({}, ← init)
  DeclCache.mk profilingName init' ({}, {}) addDecl addLibraryDecl (post := post)

/--
Get matches from both the discrimination tree for declarations in the current file,
and for the imports.

Note that if you are calling this multiple times with the same environment,
it will rebuild the discrimination tree for the current file multiple times,
and it would be more efficient to call `c.get` once,
and then call `DiscrTree.getMatch` multiple times.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantac616d16c8a31a9afc33da3dc3f20f91d7d43565a391b6540b181b00fdd00951.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantac616d16c8a31a9afc33da3dc3f20f91d7d43565a391b6540b181b00fdd00951.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65dbe4a04757983fe7041533501351d435eb6e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
