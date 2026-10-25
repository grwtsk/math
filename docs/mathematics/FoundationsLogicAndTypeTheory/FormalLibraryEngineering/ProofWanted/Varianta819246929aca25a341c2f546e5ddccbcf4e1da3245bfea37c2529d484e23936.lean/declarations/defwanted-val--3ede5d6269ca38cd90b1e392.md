# DefWanted.Val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85c97085eac98c90cb3d544b5e294cd4d15e51fa4ab8810f1967782f68c2d50e",
  "kind": "def",
  "lexical_name": "DefWanted.Val",
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
  "slug": "defwanted-val--3ede5d6269ca38cd90b1e392",
  "source": {
    "blob": "0127b0d5b9669304194635d542c0d0d58a98fc0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ede5d6269ca38cd90b1e3929ac59df942434ce5267327df925181ca687c3263",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85c97085eac98c90cb3d544b5e294cd4d15e51fa4ab8810f1967782f68c2d50e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def DefWanted.Val {α : Sort u} (_ : DefWanted α) : Sort u := α

/-- Wrapper carrying the body of a *transparent* `def_wanted` (one given a `:= body`). Unlike the
empty `DefWanted`, it stores the value, so `❰foo❱` projects it back out and downstream definitional
equalities go through; but the placeholder still has type `DerivedWanted T`, not `T`, so it
cannot be used directly as an inhabitant of `T` — the intended access is via the `❰…❱` syntax,
which projects
the value back out. (`val` is `public`, so direct projection is possible, but `❰…❱` is what callers
should use.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0127b0d5b9669304194635d542c0d0d58a98fc0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
