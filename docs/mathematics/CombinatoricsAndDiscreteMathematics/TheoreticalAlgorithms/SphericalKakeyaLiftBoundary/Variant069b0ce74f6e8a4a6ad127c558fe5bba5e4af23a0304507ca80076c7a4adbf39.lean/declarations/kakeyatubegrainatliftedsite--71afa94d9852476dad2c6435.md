# kakeyaTubeGrainAtLiftedSite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:669fb0b3fb0776944b8dbe81df8973e99802bdc2031ea9bbb9d173c3c86c5e87",
  "kind": "def",
  "lexical_name": "kakeyaTubeGrainAtLiftedSite",
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
  "slug": "kakeyatubegrainatliftedsite--71afa94d9852476dad2c6435",
  "source": {
    "blob": "b92293af7a14a1f69e09f58e2135424ba91d48e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71afa94d9852476dad2c6435025ed5a56302fa066a926dd1ee26e7170c4955b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:669fb0b3fb0776944b8dbe81df8973e99802bdc2031ea9bbb9d173c3c86c5e87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kakeyaTubeGrainAtLiftedSite
    (radius length : Nat)
    (site : SphericalLiftedSite) :
    KakeyaTubeGrain3D :=
  { basePoint := site.point
    direction := tangentScatterDirection site
    radius := radius
    length := length
    geodesicSegmentFinite := true
    orientedTubeAroundSphericalLift := true
    kakeyaTheoremClaim := false
    theoremAuthority := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b92293af7a14a1f69e09f58e2135424ba91d48e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
