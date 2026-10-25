# AuthorityPreservingStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4c1d20e7585618f5acd9f74ca13686f19e80c6697f28d3170c75b908e908d65",
  "kind": "structure",
  "lexical_name": "AuthorityPreservingStep",
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
  "slug": "authoritypreservingstep--dd26c3af8840467d2bd84b13",
  "source": {
    "blob": "e8c0346acdfbcdc4e83b4d71ea71770855fc00db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e/Variant83b5a71dab671884a4d28ff291812f62c6d995fff017044519e826109bcbbacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd26c3af8840467d2bd84b137163ff72f87f9c24b650f67686d758bcc404b0f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e/Variant83b5a71dab671884a4d28ff291812f62c6d995fff017044519e826109bcbbacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4c1d20e7585618f5acd9f74ca13686f19e80c6697f28d3170c75b908e908d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AuthorityPreservingStep where
  before : FormalStatementSurface
  after : FormalStatementSurface
  preservesKind : after.kind = before.kind
  preservesAuthority : after.authority = before.authority

/--
Main authority-gate soundness theorem.

If a theorem-like fiber forwards, then its authority field is exactly a checked
proof or a trusted import. The theorem-like kind is necessary but not sufficient.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e/Variant83b5a71dab671884a4d28ff291812f62c6d995fff017044519e826109bcbbacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e/Variant83b5a71dab671884a4d28ff291812f62c6d995fff017044519e826109bcbbacd.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c0346acdfbcdc4e83b4d71ea71770855fc00db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
