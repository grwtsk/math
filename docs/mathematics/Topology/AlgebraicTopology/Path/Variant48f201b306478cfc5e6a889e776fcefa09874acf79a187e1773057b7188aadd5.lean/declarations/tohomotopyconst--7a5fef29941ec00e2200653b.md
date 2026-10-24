# toHomotopyConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5df702f9fd62fc9d3792c981cdf4d0512cea8e0f445a86937d0701d4c7d02cd6",
  "kind": "def",
  "lexical_name": "toHomotopyConst",
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
  "slug": "tohomotopyconst--7a5fef29941ec00e2200653b",
  "source": {
    "blob": "e72f2e002c138a3f907088a3e9ef56841bed2091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 304,
    "path": "GRWTSK/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a5fef29941ec00e2200653bc051b0913ec922983cb0e16f38303e8eb1c19732",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5df702f9fd62fc9d3792c981cdf4d0512cea8e0f445a86937d0701d4c7d02cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toHomotopyConst (p : Path x₀ x₁) :
    (ContinuousMap.const Y x₀).Homotopy (ContinuousMap.const Y x₁) where
  toContinuousMap := p.toContinuousMap.comp ContinuousMap.fst
  map_zero_left _ := p.source
  map_one_left _ := p.target

end Path

/-- Two constant continuous maps with nonempty domain are homotopic if and only if their values are
joined by a path in the codomain. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72f2e002c138a3f907088a3e9ef56841bed2091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
