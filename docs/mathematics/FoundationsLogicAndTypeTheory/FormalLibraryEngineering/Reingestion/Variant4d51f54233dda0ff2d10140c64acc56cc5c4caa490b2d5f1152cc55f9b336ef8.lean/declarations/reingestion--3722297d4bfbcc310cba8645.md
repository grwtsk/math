# Reingestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdcd1822eb0f87ccff525c27efb4ffb1b34763b29f81bd52a5474a0a3675d5b4",
  "kind": "structure",
  "lexical_name": "Reingestion",
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
  "slug": "reingestion--3722297d4bfbcc310cba8645",
  "source": {
    "blob": "015f721abc8f39a67fb1b8f21c82cb5346bb3980",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reingestion/Variant4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3722297d4bfbcc310cba864521193b25e34305d53b3b7e689fcda388be28e356",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reingestion/Variant4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdcd1822eb0f87ccff525c27efb4ffb1b34763b29f81bd52a5474a0a3675d5b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Reingestion where
  bundle : UpstreamBundle
  upstream_accepted : bundle.maintainerStatus = .accepted
  acceptedSnapshot : Ecosystem.ProjectSnapshot
  receipt : Ingestion.IngestionReceipt
  sameProject :
    acceptedSnapshot.identity.projectId =
      bundle.patch.candidate.targetSnapshot.identity.projectId
  newRevision :
    acceptedSnapshot.revision.revisionId ≠
      bundle.patch.baseSnapshot.revision.revisionId
  receipt_snapshot_exact :
    receipt.raw.snapshot = acceptedSnapshot
  reflectedObjectsRecovered :
    ∀ element ∈ bundle.patch.elements,
      ∀ outputDigest,
        element.outputDigest = some outputDigest →
          ∃ artifact ∈ acceptedSnapshot.manifest.artifacts,
            artifact.address.contentDigest = outputDigest
  upstreamAcceptanceDigest : Digest
  reingestionDigest : Digest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reingestion/Variant4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reingestion/Variant4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015f721abc8f39a67fb1b8f21c82cb5346bb3980` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
