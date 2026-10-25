# DiscrTreeCache.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66dc60d5e85a699b030de4662865d5a6d38aafe646e71cb01965cf400f14a0ea",
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
  "slug": "discrtreecache-mk--438c1312a1ba5ae0317ac9a7",
  "source": {
    "blob": "54bb2f100303fb134c5777ff9711e5a567260f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:438c1312a1ba5ae0317ac9a73a74540d8b8c98e2612f34286520daaa34b0396e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66dc60d5e85a699b030de4662865d5a6d38aafe646e71cb01965cf400f14a0ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DiscrTreeCache.mk [BEq α] (profilingName : String)
    (processDecl : Name → ConstantInfo → MetaM (Array (Array DiscrTree.Key × α)))
    (post? : Option (Array α → Array α) := none)
    (init : Option (DiscrTree α) := none) :
    IO (DiscrTreeCache α) :=
  let updateTree := fun name constInfo tree => do
    return (← processDecl name constInfo).foldl (init := tree) fun t (k, v) =>
      t.insertCore k v config
  let addDecl := fun name constInfo (tree₁, tree₂) =>
    return (← updateTree name constInfo tree₁, tree₂)
  let addLibraryDecl := fun name constInfo (tree₁, tree₂) =>
    return (tree₁, ← updateTree name constInfo tree₂)
  let post := match post? with
  | some f => fun (T₁, T₂) => return (T₁, T₂.mapArrays f)
  | none => fun T => pure T
  match init with
  | some t => return ⟨← Cache.mk (pure ({}, t)), addDecl, addLibraryDecl⟩
  | none => DeclCache.mk profilingName ({}, {}) addDecl addLibraryDecl (post := post)

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54bb2f100303fb134c5777ff9711e5a567260f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
