# tendsto_rat_cast_atTop_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:061cb567-d13f-1a0c-b9b9-ff61899b3721",
  "kind": "theorem",
  "lexical_name": "tendsto_rat_cast_atTop_iff",
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
  "slug": "tendsto-rat-cast-attop-iff--953076c4c7b663d4d920edb5",
  "source": {
    "blob": "bce43f28cc1b383a8996b53539d51b5168afc779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:953076c4c7b663d4d920edb51d0f6bde88223da53499faaea081204fbf5f5aed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:061cb567-d13f-1a0c-b9b9-ff61899b3721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_rat_cast_atTop_iff [LinearOrderedField R] [Archimedean R] {f : α → ℚ}
    {l : Filter α} : Tendsto (fun n => (f n : R)) l atTop ↔ Tendsto f l atTop := by
  rw [← @Rat.comap_cast_atTop R, tendsto_comap_iff]; rfl
#align tendsto_coe_rat_at_top_iff tendsto_rat_cast_atTop_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bce43f28cc1b383a8996b53539d51b5168afc779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
