# indexCone_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84a221b1561ecbbe49228db56a586cabc068e6c336fbfc1cf6aaefc0a7288bd1",
  "kind": "def",
  "lexical_name": "indexCone_isLimit",
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
  "slug": "indexcone-islimit--f7e22af3bf40b0786fc32c67",
  "source": {
    "blob": "d2db24307e1ac293e2dbdf1f6e551e9b89d53552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7e22af3bf40b0786fc32c67739772ad6ed0db8cd10e9b03d29ab10fa0a980ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84a221b1561ecbbe49228db56a586cabc068e6c336fbfc1cf6aaefc0a7288bd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def indexCone_isLimit : CategoryTheory.Limits.IsLimit (indexCone hC) :=
  Limits.IsLimit.ofIsoLimit (Profinite.limitConeIsLimit _) (asLimitindexConeIso hC).symm

end Profinite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2db24307e1ac293e2dbdf1f6e551e9b89d53552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
