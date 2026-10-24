# Tendsto.prod_map_prod_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f5ceb4d-33e0-6e5e-4087-e611fd2f909a",
  "kind": "theorem",
  "lexical_name": "Tendsto.prod_map_prod_atTop",
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
  "slug": "tendsto-prod-map-prod-attop--bff672b660dea3c556de87bb",
  "source": {
    "blob": "30b322c48855245e5abb8604e6a95cab9c178c9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bff672b660dea3c556de87bbc2900dd5bbbb634bdb2cea31317e07211567ae24",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f5ceb4d-33e0-6e5e-4087-e611fd2f909a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.prod_map_prod_atTop [Preorder γ] {F : Filter α} {G : Filter β} {f : α → γ}
    {g : β → γ} (hf : Tendsto f F atTop) (hg : Tendsto g G atTop) :
    Tendsto (Prod.map f g) (F ×ˢ G) atTop := by
  rw [← prod_atTop_atTop_eq]
  exact hf.prodMap hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b322c48855245e5abb8604e6a95cab9c178c9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
