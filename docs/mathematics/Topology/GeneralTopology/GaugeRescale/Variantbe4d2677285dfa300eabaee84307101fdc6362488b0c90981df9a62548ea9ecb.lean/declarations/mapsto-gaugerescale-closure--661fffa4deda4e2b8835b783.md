# mapsTo_gaugeRescale_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0462f4f0-0de5-c9d8-887c-458cb5dfc8a8",
  "kind": "theorem",
  "lexical_name": "mapsTo_gaugeRescale_closure",
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
  "slug": "mapsto-gaugerescale-closure--661fffa4deda4e2b8835b783",
  "source": {
    "blob": "7af1ff2d5adf1fd5feff9d2ddac67c6ea3d86b3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:661fffa4deda4e2b8835b78328bab3805493978fbc6f8d2e514cd781786e9d7b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0462f4f0-0de5-c9d8-887c-458cb5dfc8a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapsTo_gaugeRescale_closure {s t : Set E} (hsc : Convex ℝ s) (hs₀ : s ∈ 𝓝 0)
    (htc : Convex ℝ t) (ht₀ : 0 ∈ t) (hta : Absorbent ℝ t) :
    MapsTo (gaugeRescale s t) (closure s) (closure t) := fun _x hx ↦
  mem_closure_of_gauge_le_one htc ht₀ hta <| (gauge_gaugeRescale_le _ _ _).trans <|
    (gauge_le_one_iff_mem_closure hsc hs₀).2 hx

variable [T1Space E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7af1ff2d5adf1fd5feff9d2ddac67c6ea3d86b3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
