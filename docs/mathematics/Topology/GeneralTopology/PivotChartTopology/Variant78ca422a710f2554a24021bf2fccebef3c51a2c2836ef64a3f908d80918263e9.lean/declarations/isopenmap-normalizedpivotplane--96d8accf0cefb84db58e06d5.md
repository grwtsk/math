# isOpenMap_normalizedPivotPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5de8979-cae3-fa1c-fa0a-93c7d5d3e93c",
  "kind": "theorem",
  "lexical_name": "isOpenMap_normalizedPivotPlane",
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
  "slug": "isopenmap-normalizedpivotplane--96d8accf0cefb84db58e06d5",
  "source": {
    "blob": "a9375aaa69432d483aafa80b58186bcf84407599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/PivotChartTopology/Variant78ca422a710f2554a24021bf2fccebef3c51a2c2836ef64a3f908d80918263e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96d8accf0cefb84db58e06d52a78534efe672420051b48000ede192a3e43b599",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotChartTopology/Variant78ca422a710f2554a24021bf2fccebef3c51a2c2836ef64a3f908d80918263e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5de8979-cae3-fa1c-fa0a-93c7d5d3e93c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenMap_normalizedPivotPlane (I : Fin k ↪o Fin n) :
    IsOpenMap (normalizedPivotPlane I) := by
  intro V hV
  rw [isOpen_coinduced, isOpen_sigma_iff]
  intro J
  change IsOpen (normalizedPivotPlane J ⁻¹' (normalizedPivotPlane I '' V))
  rw [chart_image_preimage_eq_overlap_image I J V]
  have hdomain : IsOpen {B : NormalizedPivotFrame J | columnMinor B.val I ≠ 0} :=
    (isOpen_framePivotDomain I).preimage continuous_subtype_val
  have htransition : Continuous (fun B : NormalizedPivotOverlap J I =>
      (normalizedOverlapChange J I B).val) :=
    continuous_subtype_val.comp (continuous_normalizedOverlapChange J I)
  exact hdomain.isOpenMap_subtype_val _ (hV.preimage htransition)

/-- Actual intrinsic charts are open embeddings, including rank zero and full dimension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotChartTopology/Variant78ca422a710f2554a24021bf2fccebef3c51a2c2836ef64a3f908d80918263e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotChartTopology/Variant78ca422a710f2554a24021bf2fccebef3c51a2c2836ef64a3f908d80918263e9.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9375aaa69432d483aafa80b58186bcf84407599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
