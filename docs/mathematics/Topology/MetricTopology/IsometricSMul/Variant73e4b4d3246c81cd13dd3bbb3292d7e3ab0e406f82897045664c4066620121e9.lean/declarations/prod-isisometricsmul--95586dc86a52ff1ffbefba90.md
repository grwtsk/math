# Prod.isIsometricSMul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b152129f62f62421e7e296ad0f5ac97e617195e31b93610d9b39dbc4e69943a",
  "kind": "instance",
  "lexical_name": "Prod.isIsometricSMul'",
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
  "slug": "prod-isisometricsmul--95586dc86a52ff1ffbefba90",
  "source": {
    "blob": "7499bd80c7349444561b8d730b3fbf168afd10c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 392,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variant73e4b4d3246c81cd13dd3bbb3292d7e3ab0e406f82897045664c4066620121e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95586dc86a52ff1ffbefba906f118cae794e3c5678c59b7fe898e12aa5ef9b67",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/IsometricSMul/Variant73e4b4d3246c81cd13dd3bbb3292d7e3ab0e406f82897045664c4066620121e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b152129f62f62421e7e296ad0f5ac97e617195e31b93610d9b39dbc4e69943a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.isIsometricSMul' {N} [Mul M] [PseudoEMetricSpace M] [IsIsometricSMul M M] [Mul N]
    [PseudoEMetricSpace N] [IsIsometricSMul N N] : IsIsometricSMul (M × N) (M × N) :=
  ⟨fun c => (isometry_smul M c.1).prodMap (isometry_smul N c.2)⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Variant73e4b4d3246c81cd13dd3bbb3292d7e3ab0e406f82897045664c4066620121e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Variant73e4b4d3246c81cd13dd3bbb3292d7e3ab0e406f82897045664c4066620121e9.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7499bd80c7349444561b8d730b3fbf168afd10c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
