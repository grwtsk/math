# instCompactSpaceNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:026b3c79e4442660d3c2df09032be501af1b06a771a02e5fbce1e29b339c8d12",
  "kind": "instance",
  "lexical_name": "instCompactSpaceNNReal",
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
  "slug": "instcompactspacennreal--b4279e9d7ebe932f7665dd38",
  "source": {
    "blob": "bbf73cbe5aeb32e8126e6abfc578ff3bdb31ce8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4279e9d7ebe932f7665dd382fd63a8adc54a55c63c7a1063f4bdb669ca711c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:026b3c79e4442660d3c2df09032be501af1b06a771a02e5fbce1e29b339c8d12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompactSpaceNNReal {A : Type*} [NormedRing A] [NormedAlgebra ℝ A]
    (a : A) [CompactSpace (spectrum ℝ a)] : CompactSpace (spectrum ℝ≥0 a) := by
  rw [← isCompact_iff_compactSpace] at *
  rw [← preimage_algebraMap ℝ]
  exact isClosed_nonneg.isClosedEmbedding_subtypeVal.isCompact_preimage <| by assumption

section QuasispectrumCompact

variable {B : Type*} [NonUnitalNormedRing B] [NormedSpace 𝕜 B] [CompleteSpace B]
variable [IsScalarTower 𝕜 B B] [SMulCommClass 𝕜 B B] [ProperSpace 𝕜]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf73cbe5aeb32e8126e6abfc578ff3bdb31ce8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
