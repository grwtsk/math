# collectUsedDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:190bdc7f976ad00bd4e86b8a263eeb6b4c245fdde946d956d48a898f35d1305f",
  "kind": "def",
  "lexical_name": "collectUsedDecls",
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
  "slug": "collectuseddecls--25afece9ab0902694335f92d",
  "source": {
    "blob": "9cee0e368553e0945d87d6ae26c77fa7d04c0c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25afece9ab0902694335f92d58cfa6d31ba20c57bd6c09cdfb5c567a3909c4fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:190bdc7f976ad00bd4e86b8a263eeb6b4c245fdde946d956d48a898f35d1305f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def collectUsedDecls (code : Code pu) (s : NameSet := {}) : NameSet :=
  match code with
  | .let decl k => collectUsedDecls k <| collectLetValue decl.value s
  | .jp decl k | .fun decl k _ => collectUsedDecls decl.value <| collectUsedDecls k s
  | .cases c =>
    c.alts.foldl (init := s) fun s alt =>
      match alt with
      | .default k | .alt _ _ k _ | .ctorAlt _ k _ => collectUsedDecls k s
  | _ => s
where
  collectLetValue (e : LetValue pu) (s : NameSet) : NameSet :=
    match e with
    | .const declName .. | .fap declName .. | .pap declName .. => s.insert declName
    | _ => s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cee0e368553e0945d87d6ae26c77fa7d04c0c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
