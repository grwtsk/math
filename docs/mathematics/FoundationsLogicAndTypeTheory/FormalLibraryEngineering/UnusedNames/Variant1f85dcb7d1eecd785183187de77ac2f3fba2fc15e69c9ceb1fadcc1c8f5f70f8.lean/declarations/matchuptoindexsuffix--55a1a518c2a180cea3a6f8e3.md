# matchUpToIndexSuffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:646fc1dbf4f16d400bf48050c7d4ecaa5199ed5f32c3e7a93b525e4f6941a317",
  "kind": "def",
  "lexical_name": "matchUpToIndexSuffix",
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
  "slug": "matchuptoindexsuffix--55a1a518c2a180cea3a6f8e3",
  "source": {
    "blob": "a95958f825cd508a447529b59e99d92a2acae23c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant1f85dcb7d1eecd785183187de77ac2f3fba2fc15e69c9ceb1fadcc1c8f5f70f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55a1a518c2a180cea3a6f8e3a3e3c5bcba41e9f40b8eace2a8d6bdd9e13d6ee2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant1f85dcb7d1eecd785183187de77ac2f3fba2fc15e69c9ceb1fadcc1c8f5f70f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:646fc1dbf4f16d400bf48050c7d4ecaa5199ed5f32c3e7a93b525e4f6941a317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchUpToIndexSuffix (n : Name) (query : Name) :
    MatchUpToIndexSuffix :=
  match n, query with
  | .str pre₁ s₁, .str pre₂ s₂ =>
    if pre₁ != pre₂ then
      .noMatch
    else
      if let some suffix := s₁.dropPrefix? s₂ then
        if suffix.isEmpty then
          .exactMatch
        else
          if let some i := parseIndexSuffix suffix then
            .suffixMatch i
          else
            .noMatch
      else
        .noMatch
  | n, query => if n == query then .exactMatch else .noMatch

end Name


namespace LocalContext

/--
Obtain the least natural number `i` such that `suggestion ++ "_i"` is an unused
name in the given local context. If `suggestion` itself is unused, the result
is `none`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant1f85dcb7d1eecd785183187de77ac2f3fba2fc15e69c9ceb1fadcc1c8f5f70f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant1f85dcb7d1eecd785183187de77ac2f3fba2fc15e69c9ceb1fadcc1c8f5f70f8.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95958f825cd508a447529b59e99d92a2acae23c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
