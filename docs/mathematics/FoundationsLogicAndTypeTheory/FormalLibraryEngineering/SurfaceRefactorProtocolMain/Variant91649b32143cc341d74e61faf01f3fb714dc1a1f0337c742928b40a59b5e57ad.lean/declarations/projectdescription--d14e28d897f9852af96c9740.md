# projectDescription

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:246377b08afc455da7258ff9c4a92669f3d41d15d2a53648d66fac74b00bffa0",
  "kind": "def",
  "lexical_name": "projectDescription",
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
  "slug": "projectdescription--d14e28d897f9852af96c9740",
  "source": {
    "blob": "31b3a9c47aed8b40851ff68b38a41a2aa52430cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d14e28d897f9852af96c974073b3091d36d922982c57ebd9fb44692e735c45ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:246377b08afc455da7258ff9c4a92669f3d41d15d2a53648d66fac74b00bffa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projectDescription (env : Environment) : Json :=
  Json.mkObj [
    ("packageRoot", toJson "."),
    ("entryModule", toJson "Surface"),
    ("leanVersion", toJson Lean.versionString),
    ("environmentFingerprint", toJson (environmentFingerprint env)),
    ("moduleCount", toJson env.header.moduleNames.size),
    ("declarationCount", toJson (canonicalDeclarations env).length),
    ("canonical", toJson true)
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31b3a9c47aed8b40851ff68b38a41a2aa52430cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
