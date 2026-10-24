# toCocompactMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5286ee24e76050701a734961e34e6be927a3701de31946b62f7d301b19bddf8a",
  "kind": "def",
  "lexical_name": "toCocompactMap",
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
  "slug": "tococompactmap--3999c22531186be6c57377da",
  "source": {
    "blob": "17da3fba8b28cdb74bf728063358baf8709073ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variant9aca3367835a42d56b1df17ebacb6bf65c2ed508c65f15e77b70d95fa006ff75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3999c22531186be6c57377daf131cf43cabc5b2b8bf5fa8a484fc5d482ecaf36",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CocompactMap/Variant9aca3367835a42d56b1df17ebacb6bf65c2ed508c65f15e77b70d95fa006ff75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5286ee24e76050701a734961e34e6be927a3701de31946b62f7d301b19bddf8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCocompactMap (f : F) : CocompactMap α β :=
  { (f : C(α, β)) with
    cocompact_tendsto' := cocompact_tendsto f }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CocompactMap/Variant9aca3367835a42d56b1df17ebacb6bf65c2ed508c65f15e77b70d95fa006ff75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CocompactMap/Variant9aca3367835a42d56b1df17ebacb6bf65c2ed508c65f15e77b70d95fa006ff75.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17da3fba8b28cdb74bf728063358baf8709073ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
