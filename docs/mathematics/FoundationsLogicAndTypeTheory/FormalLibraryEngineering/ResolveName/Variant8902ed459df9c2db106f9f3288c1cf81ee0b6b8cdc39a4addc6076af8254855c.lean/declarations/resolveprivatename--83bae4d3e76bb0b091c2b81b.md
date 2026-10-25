# resolvePrivateName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e81d3b6a2e2ca53a113a1ea9c04dfd07a1451787cfd0f3b76ad9ef619e1f9be",
  "kind": "def",
  "lexical_name": "resolvePrivateName",
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
  "slug": "resolveprivatename--83bae4d3e76bb0b091c2b81b",
  "source": {
    "blob": "2319fa27798d8ccf8726fbe4ba7ff44c319b1269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83bae4d3e76bb0b091c2b81b23ec6c2c4896e26e8df7c25a7c1666b2a6d216b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e81d3b6a2e2ca53a113a1ea9c04dfd07a1451787cfd0f3b76ad9ef619e1f9be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def resolvePrivateName (env : Environment) (opts : Options) (declName : Name) : Option Name := do
  -- No point in checking private names when exporting. This is an optimization but also necessary
  -- for correct visibility checking while we still carry some private names (e.g. kernel-generated
  -- from `inductive`) in the public env.
  guard (!env.isExporting || backward.privateInPublic.get opts)
  if containsDeclOrReserved env (mkPrivateName env declName) then
    return mkPrivateName env declName
  -- Under the module system, we assume there are at most a few `import all`s and we can just test
  -- them one by one.
  guard <| env.header.isModule
  env.header.importAllModules.findSome? fun i => do
    let n := mkPrivateNameCore i.module declName
    guard <| containsDeclOrReserved env n
    return n

/-- Check whether `ns ++ id` is a valid namespace name and/or there are aliases names `ns ++ id`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2319fa27798d8ccf8726fbe4ba7ff44c319b1269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
