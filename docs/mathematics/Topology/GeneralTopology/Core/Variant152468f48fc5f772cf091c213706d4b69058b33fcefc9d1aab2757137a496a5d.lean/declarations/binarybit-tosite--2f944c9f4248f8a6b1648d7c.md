# BinaryBit.toSite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b0e8e7b4203a5feafdff7f07fd9a80334fca35cb7fa24a9c6611a52005f32cd",
  "kind": "def",
  "lexical_name": "BinaryBit.toSite",
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
  "slug": "binarybit-tosite--2f944c9f4248f8a6b1648d7c",
  "source": {
    "blob": "4e9ab30619171f615c16819c7ce58c3bc16159a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f944c9f4248f8a6b1648d7c6b798b395dc20c2d658da1f578ec253c8882768e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b0e8e7b4203a5feafdff7f07fd9a80334fca35cb7fa24a9c6611a52005f32cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BinaryBit.toSite : BinaryBit -> BitSiteValue
  | .zero => .Zero
  | .one => .One

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e9ab30619171f615c16819c7ce58c3bc16159a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
