# classificationTags

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f61ea83595448c91b42776f42ec8a58766721541048d9b1531eeb1d6f12f1fbf",
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
  "slug": "classificationtags--e76e557e029aa2d796d43c62",
  "source": {
    "blob": "6096d41a1740b22e4289e06cebe2efc1de8741b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceIndexMain/Variant1c2e3295c483f063edefe2d6c232373c34e682e83b4d71a1caf18ac0d413b209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e76e557e029aa2d796d43c6218c06c0f960f784ae8a96e61aa134b86f54b4652",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceIndexMain/Variant1c2e3295c483f063edefe2d6c232373c34e682e83b4d71a1caf18ac0d413b209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f61ea83595448c91b42776f42ec8a58766721541048d9b1531eeb1d6f12f1fbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classificationTags (env : Environment) (name : Name) : List String :=
  let adapter :=
    if Surface.Core.surfaceAdapterAttr.hasTag env name then ["surface_adapter"] else []
  let novel :=
    if Surface.Core.surfaceNovelAttr.hasTag env name then ["surface_novel"] else []
  let candidate :=
    if Surface.Core.surfaceCandidateAttr.hasTag env name then ["surface_candidate"] else []
  let published :=
    if Surface.Core.surfacePublishedAttr.hasTag env name then ["surface_published"] else []
  let certificate :=
    if Surface.Core.surfaceCertificateAttr.hasTag env name then ["surface_certificate"] else []
  let interface :=
    if Surface.Core.surfaceInterfaceAttr.hasTag env name then ["surface_interface"] else []
  adapter ++ novel ++ candidate ++ published ++ certificate ++ interface

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceIndexMain/Variant1c2e3295c483f063edefe2d6c232373c34e682e83b4d71a1caf18ac0d413b209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceIndexMain/Variant1c2e3295c483f063edefe2d6c232373c34e682e83b4d71a1caf18ac0d413b209.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6096d41a1740b22e4289e06cebe2efc1de8741b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
