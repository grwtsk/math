# scopeCandidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4aa8563bd4dc34221a21b2b2667fa105b377c76186843e79cabf95927db0933",
  "kind": "def",
  "lexical_name": "scopeCandidates",
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
  "slug": "scopecandidates--f12beda251a3553208036201",
  "source": {
    "blob": "74efea0f45d86bd4b6688672f4d92ac35af7ca1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant362147a73a8f050eefc937513981b699120b206f04a366d2b660e83c476a428e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f12beda251a3553208036201cf211ff285a599d4dca39f85e8d2ae382d012244",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant362147a73a8f050eefc937513981b699120b206f04a366d2b660e83c476a428e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4aa8563bd4dc34221a21b2b2667fa105b377c76186843e79cabf95927db0933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def scopeCandidates (env : Environment) (id : Name) : Name → List Name
  | ns@(.str p _) =>
    let rest := scopeCandidates env id p
    if env.isNamespace (ns ++ id) then (ns ++ id) :: rest else rest
  | _ =>
    let id := id.replacePrefix rootNamespace .anonymous
    if env.isNamespace id then [id] else []

/--
Warns if the namespace identifier `nsStx` of an `open` declaration can also be interpreted as an
existing namespace that the `open` declaration silently does not open. `resolved` must be the
interpretations the `open` declaration actually uses, as returned by `resolveNamespace`.
Shadowed interpretations whose declarations are accessible anyway — because the namespace is
already opened without exceptions or encloses the current scope — are not reported.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant362147a73a8f050eefc937513981b699120b206f04a366d2b660e83c476a428e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant362147a73a8f050eefc937513981b699120b206f04a366d2b660e83c476a428e.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74efea0f45d86bd4b6688672f4d92ac35af7ca1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
