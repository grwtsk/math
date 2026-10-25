# allM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c4a1724a8a029ad4c3fd1e8a11fd6d9374b9c62465c33cde57408fad8a0aec0",
  "kind": "def",
  "lexical_name": "allM",
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
  "slug": "allm--d1f7c488ebec00c01fa9132e",
  "source": {
    "blob": "b70a646cd7bceed2d536a20ce52dc2fffe6b4df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 601,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1f7c488ebec00c01fa9132e1402dcabc4b74e4dda078f6cdcd4a7354d75d525",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c4a1724a8a029ad4c3fd1e8a11fd6d9374b9c62465c33cde57408fad8a0aec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def allM [Monad m] (lctx : LocalContext) (p : LocalDecl → m Bool) : m Bool :=
  lctx.decls.allM fun d => match d with
    | some decl => p decl
    | none      => pure true

/-- Return `true` if `lctx` contains a local declaration satisfying `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b70a646cd7bceed2d536a20ce52dc2fffe6b4df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
