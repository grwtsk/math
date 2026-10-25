# classificationTags

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2d6e2e0d1d408c5d4b84db851736d4b6a8301a6e6aeb3f5493d3b223ea33b99",
  "kind": "def",
  "lexical_name": "classificationTags",
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
  "slug": "classificationtags--478198ee9a5441bc93bc625c",
  "source": {
    "blob": "1ed9b38854e76e5e8d07eec0251cdbc277b661f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantf04b73a5bac800c9109b3482089aa850aab6a0ccbe1cff4e1a765b5e795a3e0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:478198ee9a5441bc93bc625c732fc77efce6ab0e1e98ae837c6c766a686f6859",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantf04b73a5bac800c9109b3482089aa850aab6a0ccbe1cff4e1a765b5e795a3e0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2d6e2e0d1d408c5d4b84db851736d4b6a8301a6e6aeb3f5493d3b223ea33b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classificationTags (env : Environment) (name : Name) : List String :=
  (if surfaceAdapterAttr.hasTag env name then ["surface_adapter"] else []) ++
  (if surfaceNovelAttr.hasTag env name then ["surface_novel"] else []) ++
  (if surfaceCandidateAttr.hasTag env name then ["surface_candidate"] else []) ++
  (if surfacePublishedAttr.hasTag env name then ["surface_published"] else []) ++
  (if surfaceCertificateAttr.hasTag env name then ["surface_certificate"] else []) ++
  (if surfaceInterfaceAttr.hasTag env name then ["surface_interface"] else [])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantf04b73a5bac800c9109b3482089aa850aab6a0ccbe1cff4e1a765b5e795a3e0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantf04b73a5bac800c9109b3482089aa850aab6a0ccbe1cff4e1a765b5e795a3e0b.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed9b38854e76e5e8d07eec0251cdbc277b661f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
