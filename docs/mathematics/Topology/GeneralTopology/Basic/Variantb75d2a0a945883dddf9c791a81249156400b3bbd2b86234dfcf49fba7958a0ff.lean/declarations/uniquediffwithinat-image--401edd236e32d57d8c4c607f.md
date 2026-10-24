# uniqueDiffWithinAt_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fd3b80f-3fe1-8f11-a06d-7b0ae3404834",
  "kind": "theorem",
  "lexical_name": "uniqueDiffWithinAt_image",
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
  "slug": "uniquediffwithinat-image--401edd236e32d57d8c4c607f",
  "source": {
    "blob": "f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 437,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:401edd236e32d57d8c4c607fb51b5f02fa518f22fb164da04396508c33e4c1bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fd3b80f-3fe1-8f11-a06d-7b0ae3404834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniqueDiffWithinAt_image {x : H} : UniqueDiffWithinAt 𝕜 (range I) (I x) :=
  I.uniqueDiffOn _ (mem_range_self _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
