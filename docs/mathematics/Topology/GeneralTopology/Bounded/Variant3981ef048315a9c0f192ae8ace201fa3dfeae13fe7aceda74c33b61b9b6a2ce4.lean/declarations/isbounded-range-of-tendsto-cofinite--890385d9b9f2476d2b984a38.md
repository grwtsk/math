# isBounded_range_of_tendsto_cofinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b78f5723-21f7-5567-1dec-9341aeafe557",
  "kind": "theorem",
  "lexical_name": "isBounded_range_of_tendsto_cofinite",
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
  "slug": "isbounded-range-of-tendsto-cofinite--890385d9b9f2476d2b984a38",
  "source": {
    "blob": "48ee0f5f4c034d3d1bb51ad350b86cc4fcc2a187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:890385d9b9f2476d2b984a38e07a7d1c8119d91cc560fb1627a2b5f901b1fcb2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b78f5723-21f7-5567-1dec-9341aeafe557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_range_of_tendsto_cofinite {f : β → α} {a : α} (hf : Tendsto f cofinite (𝓝 a)) :
    IsBounded (range f) :=
  isBounded_range_of_tendsto_cofinite_uniformity <|
    (hf.prodMap hf).mono_right <| nhds_prod_eq.symm.trans_le (nhds_le_uniformity a)

/-- In a compact space, all sets are bounded -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ee0f5f4c034d3d1bb51ad350b86cc4fcc2a187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
