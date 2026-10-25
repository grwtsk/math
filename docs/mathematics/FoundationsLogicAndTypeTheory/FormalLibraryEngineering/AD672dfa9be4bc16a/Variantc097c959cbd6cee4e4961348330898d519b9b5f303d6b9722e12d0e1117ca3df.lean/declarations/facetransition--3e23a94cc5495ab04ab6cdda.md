# FaceTransition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad8b9eea117d58a633e138b2d51ed9b0e8419e03de2c3e361e4139040eb0cba9",
  "kind": "structure",
  "lexical_name": "FaceTransition",
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
  "slug": "facetransition--3e23a94cc5495ab04ab6cdda",
  "source": {
    "blob": "5c8f0e6e9a98903113c590dddbe4f960a396ff07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD672dfa9be4bc16a/Variantc097c959cbd6cee4e4961348330898d519b9b5f303d6b9722e12d0e1117ca3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e23a94cc5495ab04ab6cdda39facd889df861bfc5d8f415dc7fec28527bce00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD672dfa9be4bc16a/Variantc097c959cbd6cee4e4961348330898d519b9b5f303d6b9722e12d0e1117ca3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad8b9eea117d58a633e138b2d51ed9b0e8419e03de2c3e361e4139040eb0cba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FaceTransition {concept : Record}
    (source target : Cell concept) : Prop where
  definition_preserved : source.definitionDigest = target.definitionDigest
  boundary_preserved : source.boundaryDigest = target.boundaryDigest
  incidence_preserved : source.incidenceDigest = target.incidenceDigest
  authority_preserved : source.authorityDigest = target.authorityDigest
  provenance_preserved : source.provenanceDigest = target.provenanceDigest

end Cell

/-- Theorem concept cell: theorem statement and proof remain distinct from the
surrounding evidence bits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD672dfa9be4bc16a/Variantc097c959cbd6cee4e4961348330898d519b9b5f303d6b9722e12d0e1117ca3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD672dfa9be4bc16a/Variantc097c959cbd6cee4e4961348330898d519b9b5f303d6b9722e12d0e1117ca3df.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c8f0e6e9a98903113c590dddbe4f960a396ff07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
