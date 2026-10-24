# inhabited

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7a5a61ba25ce2ecb83b05b43b9d3d34933c2079a54deeb3c49fd4e18c2230a1",
  "kind": "instance",
  "lexical_name": "inhabited",
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
  "slug": "inhabited--e8c2f2ed03273045be80906a",
  "source": {
    "blob": "61d06c9c811662c404043286e0bb9ebaa072aee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8c2f2ed03273045be80906af53cb45bf60d3d3152f7c1667ad33620101b9f9d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7a5a61ba25ce2ecb83b05b43b9d3d34933c2079a54deeb3c49fd4e18c2230a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance inhabited : Inhabited TopCat :=
  ⟨TopCat.of Empty⟩

-- porting note: added to ease the port of `AlgebraicTopology.TopologicalSimplex`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d06c9c811662c404043286e0bb9ebaa072aee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
