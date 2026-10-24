# topToDeltaGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d1b09121520b8d708707d68d9f908616300e2d7d4bb16e3d1de996f800a84a4",
  "kind": "def",
  "lexical_name": "topToDeltaGenerated",
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
  "slug": "toptodeltagenerated--2ed9966919ec2a59f9cf181b",
  "source": {
    "blob": "5ce573d2609889b103ef82ffec012bd2e12776d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ed9966919ec2a59f9cf181b6b9d436eb0b8e228dd2ee61582bb8d6bae07f9ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d1b09121520b8d708707d68d9f908616300e2d7d4bb16e3d1de996f800a84a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topToDeltaGenerated : TopCat.{u} ⥤ DeltaGenerated.{u} where
  obj X := of (DeltaGeneratedSpace.of X)
  map {_ Y} f := TopCat.ofHom ⟨f, (continuous_to_deltaGenerated (Y := Y)).mpr <|
    continuous_le_dom deltaGenerated_le f.hom.continuous⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ce573d2609889b103ef82ffec012bd2e12776d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
