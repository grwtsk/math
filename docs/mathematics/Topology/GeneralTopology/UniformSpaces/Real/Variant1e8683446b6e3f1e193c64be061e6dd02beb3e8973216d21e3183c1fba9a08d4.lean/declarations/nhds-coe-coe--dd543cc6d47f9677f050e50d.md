# nhds_coe_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15e06507-e20e-6c3b-c095-c59bcbe53db8",
  "kind": "theorem",
  "lexical_name": "nhds_coe_coe",
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
  "slug": "nhds-coe-coe--dd543cc6d47f9677f050e50d",
  "source": {
    "blob": "47b0664cc2c86c2ef699f8a5b65056c4cfe4ae20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd543cc6d47f9677f050e50d683547c1dfe447e12cf5884affbe50c9a4107605",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15e06507-e20e-6c3b-c095-c59bcbe53db8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_coe_coe {r p : ℝ≥0} :
    𝓝 ((r : ℝ≥0∞), (p : ℝ≥0∞)) = (𝓝 (r, p)).map fun p : ℝ≥0 × ℝ≥0 => (↑p.1, ↑p.2) :=
  ((isOpenEmbedding_coe.prodMap isOpenEmbedding_coe).map_nhds_eq (r, p)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47b0664cc2c86c2ef699f8a5b65056c4cfe4ae20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
