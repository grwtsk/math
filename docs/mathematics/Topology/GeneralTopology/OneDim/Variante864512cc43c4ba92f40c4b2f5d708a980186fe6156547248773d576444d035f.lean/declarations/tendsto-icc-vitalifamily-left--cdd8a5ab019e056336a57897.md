# tendsto_Icc_vitaliFamily_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e0b95f4-b0c3-c688-e436-6a830db28d4b",
  "kind": "theorem",
  "lexical_name": "tendsto_Icc_vitaliFamily_left",
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
  "slug": "tendsto-icc-vitalifamily-left--cdd8a5ab019e056336a57897",
  "source": {
    "blob": "d916989ab662813017bd300016f5537107460a65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdd8a5ab019e056336a57897e15eac400a6eda0080fac24b6557c108b2926024",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e0b95f4-b0c3-c688-e436-6a830db28d4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_Icc_vitaliFamily_left (x : ℝ) :
    Tendsto (fun y => Icc y x) (𝓝[<] x) ((vitaliFamily (volume : Measure ℝ) 1).filterAt x) := by
  refine (VitaliFamily.tendsto_filterAt_iff _).2 ⟨?_, ?_⟩
  · filter_upwards [self_mem_nhdsWithin] with y hy using Icc_mem_vitaliFamily_at_left hy
  · intro ε εpos
    filter_upwards [Icc_mem_nhdsLT <| show x - ε < x by linarith] with y hy
    rw [closedBall_eq_Icc]
    exact Icc_subset_Icc hy.1 (by linarith)

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d916989ab662813017bd300016f5537107460a65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
