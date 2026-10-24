# thickenedIndicator_one_of_mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d93efc8-4c9d-b005-8e07-c57d84915e3a",
  "kind": "theorem",
  "lexical_name": "thickenedIndicator_one_of_mem_closure",
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
  "slug": "thickenedindicator-one-of-mem-closure--53dd41f3ab0b6119e9971ada",
  "source": {
    "blob": "53f462b5b3df883526f3ba4dda6e1167eb2edefb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53dd41f3ab0b6119e9971ada42d40396fe3feead57ce897b5ecb57e9b8da69bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d93efc8-4c9d-b005-8e07-c57d84915e3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thickenedIndicator_one_of_mem_closure {δ : ℝ} (δ_pos : 0 < δ) (E : Set α) {x : α}
    (x_mem : x ∈ closure E) : thickenedIndicator δ_pos E x = 1 := by
  rw [thickenedIndicator_apply, thickenedIndicatorAux_one_of_mem_closure δ E x_mem, toNNReal_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f462b5b3df883526f3ba4dda6e1167eb2edefb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
