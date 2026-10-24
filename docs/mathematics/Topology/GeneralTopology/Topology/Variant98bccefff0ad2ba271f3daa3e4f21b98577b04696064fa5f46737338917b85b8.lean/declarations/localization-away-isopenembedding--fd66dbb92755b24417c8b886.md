# localization_away_isOpenEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2343975-e8e6-d489-c6de-85c560ca0b2b",
  "kind": "theorem",
  "lexical_name": "localization_away_isOpenEmbedding",
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
  "slug": "localization-away-isopenembedding--fd66dbb92755b24417c8b886",
  "source": {
    "blob": "6004cfed563644228ff88a81cb0169958b10de93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 609,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd66dbb92755b24417c8b886d7c1cae05c9a2215715cacfff5df74a46bc84a2c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2343975-e8e6-d489-c6de-85c560ca0b2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localization_away_isOpenEmbedding (S : Type v) [CommSemiring S] [Algebra R S] (r : R)
    [IsLocalization.Away r S] : IsOpenEmbedding (comap (algebraMap R S)) where
  toIsEmbedding := localization_comap_isEmbedding S (Submonoid.powers r)
  isOpen_range := by
    rw [localization_away_comap_range S r]
    exact isOpen_basicOpen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6004cfed563644228ff88a81cb0169958b10de93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
