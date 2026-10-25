# resolveOpenDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7a475c3ab9be8528ea5bc39b05eafaf8e64977ffa2f4d2900fa4f273fda51c2",
  "kind": "def",
  "lexical_name": "resolveOpenDecls",
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
  "slug": "resolveopendecls--cf9e0ee76038277ad47f186a",
  "source": {
    "blob": "2319fa27798d8ccf8726fbe4ba7ff44c319b1269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf9e0ee76038277ad47f186a56556b9d59c04d8e3f762e2208cc46c15567d390",
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

Occurrence: `declaration:f7a475c3ab9be8528ea5bc39b05eafaf8e64977ffa2f4d2900fa4f273fda51c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def resolveOpenDecls (env : Environment) (opts : Options) (id : Name) : List OpenDecl → List Name → List Name
  | [], resolvedIds => resolvedIds
  | OpenDecl.simple ns exs :: openDecls, resolvedIds =>
    if exs.contains id then
      resolveOpenDecls env opts id openDecls resolvedIds
    else
      let newResolvedIds := resolveQualifiedName env opts ns id
      resolveOpenDecls env opts id openDecls (newResolvedIds ++ resolvedIds)
  | OpenDecl.explicit openedId resolvedId :: openDecls, resolvedIds =>
    let resolvedIds :=
      if openedId == id then
        resolvedId :: resolvedIds
      else if openedId.isPrefixOf id then
        let candidate := id.replacePrefix openedId resolvedId
        if env.contains candidate then
          candidate :: resolvedIds
        else
          resolvedIds
      else
        resolvedIds
    resolveOpenDecls env opts id openDecls resolvedIds

/--
Primitive global name resolution procedure. It does not trigger actions associated with reserved names.
Recall that Lean has reserved names. For example, a definition `foo` has a reserved name `foo.def` for theorem
containing stating that `foo` is equal to its definition. The action associated with `foo.def`
automatically proves the theorem. At the macro level, the name is resolved, but the action is not
executed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2319fa27798d8ccf8726fbe4ba7ff44c319b1269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
