# collectFunDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8880a3aa3fb5fa63c647407035e59eaffbfe1846c278dd3a856cae5daa47c37e",
  "kind": "def",
  "lexical_name": "collectFunDecl",
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
  "slug": "collectfundecl--3d7c05887e19faa7436726ed",
  "source": {
    "blob": "dc9124eafcdba626e0e002bce4d4e09d74491153",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant3c34251a50953fd2e63e6679fdcc7b64f73cd06184aca64c07a72154ce9bec45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d7c05887e19faa7436726ed1c45881b8cd7317340b03c6b8d1200160c79c9c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant3c34251a50953fd2e63e6679fdcc7b64f73cd06184aca64c07a72154ce9bec45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8880a3aa3fb5fa63c647407035e59eaffbfe1846c278dd3a856cae5daa47c37e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def collectFunDecl (decl : FunDecl .pure) : ClosureM Unit := do
    collectType decl.type
    collectParams decl.params
    collectCode decl.value

  /--
  Process the given free variable.
  If it has not already been visited and is in scope, we collect its dependencies.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant3c34251a50953fd2e63e6679fdcc7b64f73cd06184aca64c07a72154ce9bec45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant3c34251a50953fd2e63e6679fdcc7b64f73cd06184aca64c07a72154ce9bec45.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc9124eafcdba626e0e002bce4d4e09d74491153` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
