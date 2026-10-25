# WantedDep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe408ac2cd8b8b595c5142d3783e2ffcaf31c2a59cc0d03400b9bffddb41d97e",
  "kind": "structure",
  "lexical_name": "WantedDep",
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
  "slug": "wanteddep--267789bed472d3dec631e7d6",
  "source": {
    "blob": "8e065e6f3824217f42b7f7610f4e2562d0d6c91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:267789bed472d3dec631e7d6deed0100fcbc7546020f4db260d17591df03703e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe408ac2cd8b8b595c5142d3783e2ffcaf31c2a59cc0d03400b9bffddb41d97e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure WantedDep where
  /-- The wanted declaration this dependency stands for; used to deduplicate against other
  references made by the enclosing declaration. -/
  name : Name
  /-- Fresh identifier naming the surfaced binder. Also spliced into the referenced wanted's
  application, so the dependency is passed through. -/
  ident : TSyntax `ident
  /-- The surfaced binder's type (Π over the dependency's own binders, ending in its accessor). -/
  binderType : TSyntax `term
  /-- Whether the surfaced binder is class-valued, so it becomes an instance binder `[…]` on the
  enclosing declaration (rather than implicit `{…}`). Only ever `true` for the leaf holes of a
  *transparent* reference, where every hole — class-valued or not — must be threaded explicitly into
  the inlined application; the opaque path keeps class deps quantified inside the `.Val` binder. -/
  isClass : Bool := false

/-- Information returned by `classifyWantedRef`: the wrapper kind, the parameter-binder type
syntax to use when referencing it (a Π-type over `nm`'s user binders, ending in the appropriate
`.Stmt`/`.Val` accessor), a flag saying whether the recorded payload is a typeclass — the
generated parameter is then an instance binder — and the non-class dependencies to surface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e065e6f3824217f42b7f7610f4e2562d0d6c91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
